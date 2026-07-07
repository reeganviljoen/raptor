# frozen_string_literal: true

require_relative "test_helper"
require "fileutils"
require "json"
require "socket"
require "stringio"
require "raptor/simulation"
require "raptor/simulation/cli"

load File.expand_path("../bin/raptor-benchmark-suite", __dir__)

class SimulationTest < Minitest::Test
  def test_runner_progress_logging_writes_timestamped_lines_and_flushes
    io = StringIO.new
    flushed = false
    io.define_singleton_method(:flush) { flushed = true }
    runner = Raptor::Simulation::Runner.new(
      profiles: [Raptor::Simulation::Configuration.profile("quick").first],
      scenarios: [Raptor::Simulation::Configuration.scenarios.fetch("tiny")],
      requests: 1,
      concurrency: 1,
      warmup_requests: 0,
      progress_io: io
    )

    runner.send(:log_progress, "case start 1/1 runtime=default")

    assert_match(/\A\[raptor-benchmark\] \d{4}-\d{2}-\d{2}T/, io.string)
    assert_includes io.string, "case start 1/1 runtime=default"
    assert_equal true, flushed

    closed_io = StringIO.new
    closed_io.close
    runner.send(:log_progress, "this should not fail the benchmark")
    assert true
  end

  def test_runner_progress_logging_records_case_errors
    io = StringIO.new
    profile = Raptor::Simulation::Configuration.profile("quick").first
    scenario = Raptor::Simulation::Configuration.scenarios.fetch("tiny")
    runner = Raptor::Simulation::Runner.new(
      profiles: [profile],
      scenarios: [scenario],
      requests: 1,
      concurrency: 1,
      warmup_requests: 0,
      progress_io: io
    )
    runner.define_singleton_method(:warmup) do |_server, _scenario|
      raise RuntimeError, "warmup failed"
    end
    server = Struct.new(:profile, :pid).new(profile, Process.pid)

    Dir.mktmpdir do |dir|
      assert_raises(RuntimeError) do
        runner.send(:run_case, dir, server, Raptor::Simulation::Configuration.runtime("default"), profile, scenario, 1, 1, 1)
      end
    end

    assert_includes io.string, "case start 1/1 runtime=default"
    assert_includes io.string, "case error 1/1 runtime=default"
    assert_includes io.string, "error=RuntimeError: warmup failed"
  end

  def test_runner_progress_logging_records_run_errors
    io = StringIO.new
    runner = Raptor::Simulation::Runner.new(
      profiles: [],
      scenarios: [],
      requests: 1,
      concurrency: 1,
      warmup_requests: 0,
      progress_io: io
    )
    runner.define_singleton_method(:metadata) do |_run_id|
      raise RuntimeError, "metadata failed"
    end

    assert_raises(RuntimeError) { runner.run }

    assert_includes io.string, "run error id="
    assert_includes io.string, "error=RuntimeError: metadata failed"
  end

  def test_percentile_summary_interpolates_tail_values
    summary = Raptor::Simulation::Percentiles.summarize([1.0, 2.0, 3.0, 4.0])

    assert_equal 2.5, summary["p50_ms"]
    assert_equal 3.85, summary["p95_ms"]
    assert_equal 3.97, summary["p99_ms"]
    assert_equal 4.0, summary["max_ms"]
  end

  def test_load_generator_treats_requests_as_floor_when_min_duration_is_set
    server = TCPServer.new("127.0.0.1", 0)
    handled = 0
    mutex = Mutex.new

    server_thread = Thread.new do
      loop do
        client = server.accept
        begin
          while (line = client.gets)
            break if line == "\r\n"
          end
          body = "ok"
          client.write("HTTP/1.1 200 OK\r\nContent-Length: #{body.bytesize}\r\nConnection: close\r\n\r\n#{body}")
          mutex.synchronize { handled += 1 }
        ensure
          client.close
        end
      end
    rescue IOError, Errno::EBADF
      nil
    end

    scenario = Raptor::Simulation::Scenario.new(name: "tiny", path: "/tiny")
    result = Raptor::Simulation::LoadGenerator.new(
      host: "127.0.0.1",
      port: server.addr[1],
      scenario: scenario,
      requests: 1,
      concurrency: 2,
      timeout: 1,
      keep_alive: false,
      min_duration_s: 0.2
    ).run

    assert_operator result.fetch("duration_s"), :>=, 0.18
    assert_operator result.fetch("requests"), :>, 1
    assert_operator mutex.synchronize { handled }, :>, 1
  ensure
    server&.close
    server_thread&.join(1)
  end

  def test_process_tree_parses_ps_rows_and_finds_descendants
    output = <<~PS
       10     1 1000  0.0 ruby
       11    10 2000  1.5 ruby
       12    11 3000  2.5 ruby
       99     1 9000  9.0 other
    PS

    rows = Raptor::Simulation::ProcessTree.parse_ps(output)

    assert_equal [10, 11, 12], Raptor::Simulation::ProcessTree.descendants(10, rows)
    assert_equal 2_000, rows.fetch(1).fetch("rss_kb")
    assert_equal 2.5, rows.fetch(2).fetch("cpu_pct")
  end

  def test_memory_sampler_normalizes_to_evenly_spaced_target_count
    samples = (0...10).map { |index| { "time" => "sample-#{index}", "available" => true } }

    normalized = Raptor::Simulation::MemorySampler.normalize_samples(samples, 4)

    assert_equal %w[sample-0 sample-3 sample-6 sample-9], normalized.map { |sample| sample.fetch("time") }
  end

  def test_quick_profile_has_one_raptor_and_one_puma_profile
    profiles = Raptor::Simulation::Configuration.profile("quick")
    cpu_count = [Etc.nprocessors, 1].max
    capacity = cpu_count * Raptor::Simulation::Configuration::RAILS_DEFAULT_THREADS

    assert_equal ["raptor", "puma"], profiles.map(&:adapter)
    assert_equal "raptor-#{capacity}r", profiles.first.label
    assert_equal "puma-#{cpu_count}w-3t", profiles.last.label
    assert_equal [capacity, capacity], profiles.map(&:capacity)
  end

  def test_full_profile_uses_rails_default_threads_and_matching_ractors
    profiles = Raptor::Simulation::Configuration.profile("full")
    cpu_count = [Etc.nprocessors, 1].max
    capacity = cpu_count * Raptor::Simulation::Configuration::RAILS_DEFAULT_THREADS
    puma = profiles.find { |profile| profile.adapter == "puma" }

    assert_equal 2, profiles.length
    assert_equal ["raptor", "puma"], profiles.map(&:adapter)
    assert_equal cpu_count, puma.workers
    assert_equal 3, puma.threads
    assert_equal [capacity, capacity], profiles.map(&:capacity)
  end

  def test_runtime_profiles_can_select_yjit_on_and_off
    runtimes = Raptor::Simulation::Configuration.runtimes(%w[yjit-off yjit-on])

    assert_equal %w[yjit-off yjit-on], runtimes.map(&:label)
    assert_equal [["--disable=yjit"], ["--yjit"]], runtimes.map(&:ruby_options)
    assert_equal [false, true], runtimes.map(&:yjit)
  end

  def test_runtime_all_expands_to_yjit_on_and_off
    runtimes = Raptor::Simulation::Configuration.runtimes(["all"])

    assert_equal %w[yjit-off yjit-on], runtimes.map(&:label)
  end

  def test_web_benchmark_scenarios_include_json_and_erb
    scenarios = Raptor::Simulation::Configuration.scenarios

    assert_equal "/json", scenarios.fetch("json").path
    assert_equal "/erb", scenarios.fetch("erb").path
  end

  def test_puma_benchmark_scenarios_match_response_matrix_and_long_tail_shape
    scenarios = Raptor::Simulation::Configuration.scenarios
    response = scenarios.fetch("puma-response-string-1024kb")
    long_tail = scenarios.fetch("puma-long-tail-fib-200ms-x6p0")
    sleep_fibonacci = scenarios.fetch("puma-sleep-fibonacci-5ms")

    assert_equal 28, Raptor::Simulation::Configuration.puma_response_body_scenarios.length
    assert_equal 7, Raptor::Simulation::Configuration.puma_long_tail_scenarios.length
    assert_equal 6, Raptor::Simulation::Configuration.puma_sleep_fibonacci_scenarios.length
    assert_equal 41, Raptor::Simulation::Configuration.puma_benchmark_scenario_names.length
    assert_equal "puma-response-time-wrk", response.family
    assert_equal "/puma-response", response.path
    assert_equal({ "Body-Conf" => "s1024" }, response.headers)
    assert_equal "puma/benchmarks/local/response_time_wrk", response.source
    assert_equal "puma-long-tail-hey", long_tail.family
    assert_equal "/sleep0.2", long_tail.path
    assert_equal 6.0, long_tail.concurrency_multiplier
    assert_equal 20, long_tail.requests_per_connection
    assert_equal "puma-sleep-fibonacci-test", sleep_fibonacci.family
    assert_equal "/sleep0.005", sleep_fibonacci.path
    assert_equal 1, sleep_fibonacci.concurrency
    assert_equal 10, sleep_fibonacci.requests
  end

  def test_yjit_preset_applies_benchmark_defaults_without_overriding_explicit_values
    cli = Raptor::Simulation::CLI.new(%w[--preset yjit --profile quick --requests 4])

    cli.send(:parse!)
    cli.send(:apply_preset!)
    options = cli.instance_variable_get(:@options)

    assert_equal "quick", options[:profile]
    assert_equal %w[yjit-off yjit-on], options[:runtimes]
    assert_equal 4, options[:requests]
    assert_equal 2_000, options[:warmup_requests]
    assert_equal 5, options[:repeats]
    assert_equal 0.25, options[:sample_interval]
    assert_equal 20, options[:sample_count]
    assert_equal 5.0, options[:min_duration_s]
    assert_equal 2.0, options[:warmup_duration_s]
  end

  def test_benchmark_suite_enforces_quality_floors_after_overrides
    cli = Raptor::Simulation::BenchmarkSuiteCLI.new(
      %w[
        --suite full
        --requests 1
        --warmup-requests 0
        --min-duration 0
        --warmup-duration 0
        --sample-count 1
      ]
    )

    cli.send(:parse!)
    settings = cli.send(:suite_settings)

    assert_equal 5_000, settings.fetch(:requests)
    assert_equal 2_000, settings.fetch(:warmup_requests)
    assert_equal 15.0, settings.fetch(:min_duration_s)
    assert_equal 5.0, settings.fetch(:warmup_duration_s)
    assert_equal 20, settings.fetch(:sample_count)
  end

  def test_benchmark_suite_keeps_quality_overrides_that_raise_floors
    cli = Raptor::Simulation::BenchmarkSuiteCLI.new(
      %w[
        --suite smoke
        --requests 300
        --warmup-requests 150
        --min-duration 6
        --warmup-duration 3
        --sample-count 30
      ]
    )

    cli.send(:parse!)
    settings = cli.send(:suite_settings)

    assert_equal 300, settings.fetch(:requests)
    assert_equal 150, settings.fetch(:warmup_requests)
    assert_equal 6.0, settings.fetch(:min_duration_s)
    assert_equal 3.0, settings.fetch(:warmup_duration_s)
    assert_equal 30, settings.fetch(:sample_count)
  end

  def test_workload_rackup_contains_required_probe_endpoints
    Dir.mktmpdir do |dir|
      rackup = Raptor::Simulation::Workload.write(dir)
      source = File.read(rackup)

      assert_includes source, "/__health__"
      assert_includes source, "/__metrics__"
      assert_includes source, "/allocation"
      assert_includes source, "/json"
      assert_includes source, "/erb"
      assert_includes source, "/upload"
      assert_includes source, "/puma-response"
      assert_includes source, "HTTP_BODY_CONF"
      assert_includes source, "/sleep"
      assert_includes source, "def fibonacci"
    end
  end

  def test_runner_sizes_puma_scenarios_from_server_capacity
    profile = Raptor::Simulation::ServerProfile.new(name: "puma-cluster", adapter: "puma", workers: 2, threads: 5)
    scenario = Raptor::Simulation::Configuration.scenarios.fetch("puma-long-tail-fib-200ms-x3p0")
    serial_scenario = Raptor::Simulation::Configuration.scenarios.fetch("puma-sleep-fibonacci-5ms")
    runner = Raptor::Simulation::Runner.new(
      profiles: [profile],
      scenarios: [scenario],
      requests: 1_000,
      concurrency: 8,
      warmup_requests: 100
    )

    assert_equal 30, runner.send(:case_concurrency, profile, scenario)
    assert_equal 600, runner.send(:case_requests, profile, scenario)
    assert_equal 100, runner.send(:case_warmup_requests, profile, scenario)
    assert_equal 10, profile.capacity
    assert_equal 1, runner.send(:case_concurrency, profile, serial_scenario)
    assert_equal 10, runner.send(:case_requests, profile, serial_scenario)
    assert_equal 10, runner.send(:case_warmup_requests, profile, serial_scenario)
  end

  def test_runner_oversamples_process_snapshots_before_normalizing
    runner = Raptor::Simulation::Runner.new(
      profiles: [],
      scenarios: [],
      requests: 1,
      concurrency: 1,
      warmup_requests: 0,
      sample_interval: 0.25,
      sample_count: 20,
      min_duration_s: 5.0
    )

    assert_equal 0.0625, runner.send(:effective_sample_interval)
  end

  def test_runner_summary_records_matched_capacity_and_scaled_load
    profiles = [
      Raptor::Simulation::ServerProfile.new(name: "raptor-ractors-5", adapter: "raptor", workers: 5, threads: nil),
      Raptor::Simulation::ServerProfile.new(name: "puma-single-threads-5", adapter: "puma", workers: 0, threads: 5)
    ]
    scenario = Raptor::Simulation::Configuration.scenarios.fetch("puma-long-tail-fib-200ms-x1p5")
    runtime = Raptor::Simulation::RuntimeProfile.new(name: "yjit-off", yjit: false)
    runner = Raptor::Simulation::Runner.new(
      profiles: profiles,
      scenarios: [scenario],
      requests: 1_000,
      concurrency: 2,
      warmup_requests: 100,
      min_duration_s: 5.0,
      warmup_duration_s: 2.0
    )

    summaries = profiles.map do |profile|
      runner.send(
        :summarize,
        "#{runtime.label}/#{scenario.name}/#{profile.label}/repeat-1",
        runtime,
        profile,
        scenario,
        measurement_payload,
        warmup_payload,
        memory_payload,
        metrics_payload(1),
        metrics_payload(2)
      )
    end

    assert_equal ["raptor-5r", "puma-single-5t"], summaries.map { |row| row.fetch("server") }
    assert_equal [5, 5], summaries.map { |row| row.fetch("server_capacity") }
    assert_equal [8, 8], summaries.map { |row| row.fetch("concurrency") }
    assert_equal [172, 172], summaries.map { |row| row.fetch("requests") }
    assert_equal [160, 160], summaries.map { |row| row.fetch("target_requests") }
    assert_equal [5.0, 5.0], summaries.map { |row| row.fetch("min_duration_s") }
    assert_equal [120, 120], summaries.map { |row| row.fetch("warmup_requests") }
    assert_equal [100, 100], summaries.map { |row| row.fetch("target_warmup_requests") }
    assert_equal [2.0, 2.0], summaries.map { |row| row.fetch("warmup_min_duration_s") }
    assert_equal [20, 20], summaries.map { |row| row.fetch("target_sample_count") }
    assert_equal [20, 20], summaries.map { |row| row.fetch("sample_count") }
    assert_equal [24, 24], summaries.map { |row| row.fetch("raw_sample_count") }
    assert_equal ["puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci"], summaries.map { |row| row.fetch("benchmark_source") }.uniq
  end

  def test_puma_cluster_gc_delta_is_not_flattened_as_whole_server_metric
    profile = Raptor::Simulation::ServerProfile.new(name: "cluster", adapter: "puma", workers: 2, threads: 1)
    runner = Raptor::Simulation::Runner.new(
      profiles: [profile],
      scenarios: [],
      requests: 1,
      concurrency: 1,
      warmup_requests: 0
    )

    scope = runner.send(:gc_delta_scope, profile, { "pid" => 10 }, { "pid" => 10 })
    delta = runner.send(:empty_gc_delta)

    assert_equal "multiprocess_sample_only", scope
    assert_nil delta.fetch("gc_count")
    assert_nil delta.fetch("total_allocated_objects")
  end

  def test_yjit_metadata_warns_about_short_comparison_runs
    runner = Raptor::Simulation::Runner.new(
      profiles: [],
      runtime_profiles: Raptor::Simulation::Configuration.runtimes(%w[yjit-off yjit-on]),
      scenarios: [],
      requests: 200,
      concurrency: 8,
      warmup_requests: 50,
      repeats: 1
    )

    metadata = runner.send(:metadata, "test-run")
    codes = metadata.fetch("quality_warnings").map { |warning| warning.fetch("code") }

    assert_includes metadata.keys, "harness_yjit"
    refute_includes metadata.keys, "yjit"
    assert_includes codes, "closed_loop_client"
    assert_includes codes, "low_repeats"
    assert_includes codes, "short_yjit_warmup"
    assert_includes codes, "short_yjit_measurement"
  end

  def test_adapter_summary_aggregates_repeats_before_selecting_best_profile
    rows = [
      benchmark_row("yjit-on", "tiny", "raptor-stable", "raptor", 99.0, 10.0, 20.0),
      benchmark_row("yjit-on", "tiny", "raptor-stable", "raptor", 100.0, 10.0, 20.0),
      benchmark_row("yjit-on", "tiny", "raptor-stable", "raptor", 101.0, 10.0, 20.0),
      benchmark_row("yjit-on", "tiny", "raptor-flaky", "raptor", 10.0, 1.0, 10.0),
      benchmark_row("yjit-on", "tiny", "raptor-flaky", "raptor", 12.0, 100.0, 30.0),
      benchmark_row("yjit-on", "tiny", "raptor-flaky", "raptor", 1_000.0, 100.0, 30.0)
    ]

    summary = Raptor::Simulation::Report.adapter_summary(rows)

    assert_equal 1, summary.length
    assert_equal 100.0, summary.first.fetch("best_rps")
    assert_equal "raptor-stable", summary.first.fetch("best_rps_server")
    assert_equal 10.0, summary.first.fetch("lowest_p99_ms")
    assert_equal "raptor-stable", summary.first.fetch("lowest_p99_server")
    assert_equal 6, summary.first.fetch("runs")
  end

  def test_adapter_summary_keeps_capacity_groups_separate
    rows = [
      benchmark_row("yjit-on", "tiny", "raptor-5r", "raptor", 100.0, 10.0, 20.0),
      benchmark_row("yjit-on", "tiny", "puma-single-5t", "puma", 110.0, 9.0, 30.0),
      benchmark_row("yjit-on", "tiny", "raptor-10r", "raptor", 200.0, 5.0, 25.0),
      benchmark_row("yjit-on", "tiny", "puma-2w-5t", "puma", 210.0, 4.0, 35.0)
    ]

    summary = Raptor::Simulation::Report.adapter_summary(rows)

    assert_equal 4, summary.length
    assert_equal [5, 10], summary.select { |row| row.fetch("adapter") == "raptor" }.map { |row| row.fetch("server_capacity") }.sort
    assert_equal [5, 10], summary.select { |row| row.fetch("adapter") == "puma" }.map { |row| row.fetch("server_capacity") }.sort
  end


  def test_simulation_command_is_not_packaged_without_puma_runtime_dependency
    spec = Gem::Specification.load(File.expand_path("../raptor.gemspec", __dir__))

    assert_includes spec.executables, "raptor"
    refute_includes spec.executables, "raptor-simulate"
  end

  def test_html_report_contains_tables_and_inline_graphs
    scenarios = [
      ["puma-response-string-1kb", 1],
      ["puma-response-string-10kb", 2],
      ["puma-long-tail-fib-200ms-x1p5", 3],
      ["puma-sleep-fibonacci-25ms", 4]
    ]
    metadata = {
      "run_id" => "test-run",
      "created_at" => "2026-07-06T00:00:00Z",
      "git_sha" => "abc123",
      "ruby" => RUBY_DESCRIPTION,
      "raptor_version" => "0.1.0",
      "puma_version" => "8.0.2",
      "rack_version" => "3.2.6",
      "cpu_count" => 8,
      "platform" => RUBY_PLATFORM,
      "requests" => 10,
      "warmup_requests" => 2,
      "sample_count" => 20,
      "sample_interval_s" => 0.25,
      "concurrency" => 2,
      "repeats" => 1,
      "keep_alive" => true,
      "runtime_profiles" => [
        { "label" => "yjit-off", "yjit" => false },
        { "label" => "yjit-on", "yjit" => true }
      ],
      "quality_warnings" => [
        {
          "code" => "short_yjit_warmup",
          "severity" => "warning",
          "message" => "YJIT comparisons need more warmup."
        }
      ],
      "scenarios" => scenarios.map(&:first)
    }
    rows = scenarios.flat_map do |scenario, multiplier|
      [
        benchmark_row("yjit-off", scenario, "raptor-5r", "raptor", 100.0 * multiplier, 1.2 * multiplier, 22.0 * multiplier),
        benchmark_row("yjit-on", scenario, "raptor-5r", "raptor", 1000.0 * multiplier, 1.1 * multiplier, 24.0 * multiplier),
        benchmark_row("yjit-off", scenario, "puma-single-5t", "puma", 200.0 * multiplier, 0.9 * multiplier, 30.0 * multiplier),
        benchmark_row("yjit-on", scenario, "puma-single-5t", "puma", 2000.0 * multiplier, 0.8 * multiplier, 33.0 * multiplier)
      ]
    end

    Dir.mktmpdir do |dir|
      path = File.join(dir, "report.html")
      Raptor::Simulation::Report.write_html(path, metadata, rows, [])
      html = File.read(path)

      assert_includes html, "<table>"
      assert_includes html, "<svg"
      assert_includes html, "Puma vs Raptor Simulation"
      assert_includes html, "raptor-5r"
      assert_includes html, "puma-single-5t"
      assert_includes html, "Capacity"
      assert_includes html, "yjit-on"
      assert_includes html, "yjit-off"
      assert_includes html, "Benchmark Quality Warnings"
      assert_includes html, "short_yjit_warmup"
      assert_includes html, "Benchmark Source Coverage"
      assert_includes html, "Throughput And Latency"
      assert_includes html, "Charted Comparisons"
      assert_includes html, "Response body: String"
      assert_includes html, "Long-tail concurrency sweep"
      assert_includes html, "Sleep/fibonacci delay sweep"
      assert_includes html, "YJIT on"
      assert_includes html, "YJIT off"
      assert_includes html, "Best median throughput (requests/sec)"
      assert_includes html, "Lowest median p99 latency (ms)"
      assert_includes html, "Lowest median peak RSS (MB)"
      assert_includes html, ">1 KB<"
      assert_includes html, ">10 KB<"
      assert_includes html, ">x1.5<"
      assert_includes html, ">25 ms<"
      assert_includes html, "metric-grid"
      assert_includes html, "chart-compact"
      assert_equal 18, html.scan(/<figure class="chart chart-compact"/).length
      assert_includes html, 'data-fixed-max="4000.0"'
      assert_match(/<h4>YJIT off<\/h4>.*?<figcaption>Best median throughput \(requests\/sec\).*?<text class="tick" data-axis-max[^>]*>4000.0<\/text>/m, html)
      refute_includes html, "Throughput By Scenario"
      assert_includes html, "data-chart-toggle"
      assert_includes html, "data-scenario-label"
      assert_includes html, "RSS/CPU sample target"
    end
  end

  def test_benchmark_site_indexes_run_reports_and_combined_data
    Dir.mktmpdir do |dir|
      run_root = File.join(dir, "runs")
      run_dir = File.join(run_root, "20260706-000000")
      site_dir = File.join(dir, "site")
      FileUtils.mkdir_p(run_dir)

      metadata = {
        "run_id" => "20260706-000000",
        "created_at" => "2026-07-06T00:00:00Z",
        "git_sha" => "abc123",
        "ruby" => RUBY_DESCRIPTION,
        "raptor_version" => "0.1.0",
        "puma_version" => "8.0.2",
        "rack_version" => "3.2.6",
        "cpu_count" => 8,
        "platform" => RUBY_PLATFORM,
        "machine_arch" => "arm64",
        "machine_os" => "darwin",
        "benchmark_suite" => "smoke",
        "benchmark_axis" => "arm64-all-runtimes",
        "runner_label" => "local",
        "requests" => 10,
        "warmup_requests" => 2,
        "min_duration_s" => 5.0,
        "warmup_duration_s" => 2.0,
        "sample_count" => 20,
        "sample_interval_s" => 0.25,
        "concurrency" => 2,
        "repeats" => 1,
        "keep_alive" => true,
        "runtime_profiles" => [
          { "label" => "yjit-off", "yjit" => false },
          { "label" => "yjit-on", "yjit" => true }
        ],
        "scenarios" => ["json"]
      }
      rows = [benchmark_row("yjit-on", "json", "raptor-5r", "raptor", 1200.0, 2.0, 24.0)]

      File.write(File.join(run_dir, "metadata.json"), "#{JSON.pretty_generate(metadata)}\n")
      File.write(File.join(run_dir, "summary.json"), "#{JSON.pretty_generate(rows)}\n")
      File.write(File.join(run_dir, "summary.csv"), "runtime,scenario\n")
      File.write(File.join(run_dir, "report.html"), "<!doctype html><p>report</p>\n")

      result = Raptor::Simulation::BenchmarkSite.build(input_roots: [run_root], output_dir: site_dir, title: "Test Benchmarks")
      index = File.read(result.fetch("index"))
      architecture = File.read(File.join(site_dir, "architectures", "arm64", "index.html"))
      combined = JSON.parse(File.read(File.join(site_dir, "data", "runs.json")))

      assert_equal 1, result.fetch("runs")
      assert_includes index, "Test Benchmarks"
      assert_includes index, "arm64-all-runtimes"
      assert_includes index, "Min duration"
      assert_includes index, "Warmup duration"
      assert_includes index, "Samples"
      assert_includes index, "architectures/arm64/index.html"
      assert_includes architecture, "Architecture benchmark report"
      assert_includes architecture, "arm64 Test Benchmarks"
      assert_includes index, "runs/20260706-000000-smoke-arm64-all-runtimes/report.html"
      assert_equal "arm64-all-runtimes", combined.fetch("runs").first.fetch("benchmark_axis")
      assert File.exist?(File.join(site_dir, "data", "summary.csv"))
      assert File.exist?(File.join(site_dir, "data", "architectures", "arm64.json"))
      assert File.exist?(File.join(site_dir, "data", "architectures", "arm64.summary.csv"))
    end
  end

  private

  def benchmark_row(runtime, scenario, server, adapter, rps, p99, rss)
    workers, threads, capacity = server_shape(server, adapter)

    {
      "run_id" => "#{runtime}/#{scenario}/#{server}/repeat-1",
      "runtime" => runtime,
      "yjit" => runtime == "yjit-on",
      "scenario" => scenario,
      "scenario_family" => scenario.start_with?("puma-") ? "puma-response-time-wrk" : nil,
      "benchmark_source" => scenario.start_with?("puma-") ? "puma/benchmarks/local/response_time_wrk" : "raptor-generated",
      "benchmark_source_url" => scenario.start_with?("puma-") ? "https://github.com/puma/puma/blob/main/benchmarks/local/response_time_wrk.rb" : nil,
      "server" => server,
      "server_capacity" => capacity,
      "adapter" => adapter,
      "workers" => workers,
      "threads" => threads,
      "requests" => 10,
      "target_requests" => 10,
      "duration_s" => 1.0,
      "min_duration_s" => 0.0,
      "target_warmup_requests" => 2,
      "warmup_requests" => 2,
      "warmup_duration_s" => 0.1,
      "warmup_min_duration_s" => 0.0,
      "concurrency" => 2,
      "keep_alive" => true,
      "completed" => 10,
      "errors" => 0,
      "achieved_rps" => rps,
      "p50_ms" => p99 / 2.0,
      "p95_ms" => p99 * 0.8,
      "p99_ms" => p99,
      "p999_ms" => p99,
      "max_ms" => p99,
      "rss_mb_peak" => rss,
      "rss_mb_end" => rss,
      "cpu_pct_avg" => 10.0,
      "target_sample_count" => 20,
      "sample_count" => 20,
      "raw_sample_count" => 24,
      "gc_delta_scope" => "same_worker",
      "gc_count_delta" => 1,
      "total_allocated_objects_delta" => 100
    }
  end

  def server_shape(server, adapter)
    case adapter
    when "raptor"
      workers = server[/raptor-(\d+)r/, 1].to_i
      [workers, nil, workers]
    when "puma"
      if (match = server.match(/puma-(\d+)w-(\d+)t/))
        workers = match[1].to_i
        threads = match[2].to_i
        [workers, threads, workers * threads]
      else
        threads = server[/puma-single-(\d+)t/, 1].to_i
        [0, threads, threads]
      end
    else
      [nil, nil, nil]
    end
  end

  def measurement_payload
    {
      "target_requests" => 160,
      "min_duration_s" => 5.0,
      "requests" => 172,
      "completed" => 172,
      "errors" => {},
      "status_counts" => { "200" => 172 },
      "duration_s" => 5.25,
      "achieved_rps" => 100.0,
      "latency_ms" => {
        "p50_ms" => 1.0,
        "p95_ms" => 2.0,
        "p99_ms" => 3.0,
        "p999_ms" => 4.0,
        "max_ms" => 5.0
      }
    }
  end

  def warmup_payload
    {
      "target_requests" => 100,
      "min_duration_s" => 2.0,
      "requests" => 120,
      "completed" => 120,
      "errors" => {},
      "status_counts" => { "200" => 120 },
      "duration_s" => 2.1,
      "achieved_rps" => 57.143,
      "latency_ms" => Raptor::Simulation::Percentiles.summarize([1.0]),
      "histogram_ms" => { "5" => 1 }
    }
  end

  def memory_payload
    {
      "rss_mb_peak" => 30.0,
      "rss_mb_end" => 29.0,
      "cpu_pct_avg" => 12.0,
      "target_sample_count" => 20,
      "sample_count" => 20,
      "raw_sample_count" => 24
    }
  end

  def metrics_payload(gc_count)
    {
      "pid" => 123,
      "gc_count" => gc_count,
      "gc_stat" => {
        "count" => gc_count,
        "total_allocated_objects" => gc_count * 100
      }
    }
  end
end

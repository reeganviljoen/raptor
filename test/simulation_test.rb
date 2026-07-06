# frozen_string_literal: true

require_relative "test_helper"
require "raptor/simulation"
require "raptor/simulation/cli"

class SimulationTest < Minitest::Test
  def test_percentile_summary_interpolates_tail_values
    summary = Raptor::Simulation::Percentiles.summarize([1.0, 2.0, 3.0, 4.0])

    assert_equal 2.5, summary["p50_ms"]
    assert_equal 3.85, summary["p95_ms"]
    assert_equal 3.97, summary["p99_ms"]
    assert_equal 4.0, summary["max_ms"]
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

  def test_quick_profile_has_one_raptor_and_one_puma_profile
    profiles = Raptor::Simulation::Configuration.profile("quick")

    assert_equal ["raptor", "puma"], profiles.map(&:adapter)
    assert_equal "raptor-1r", profiles.first.label
    assert_equal "puma-single-5t", profiles.last.label
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
  end

  def test_workload_rackup_contains_required_probe_endpoints
    Dir.mktmpdir do |dir|
      rackup = Raptor::Simulation::Workload.write(dir)
      source = File.read(rackup)

      assert_includes source, "/__health__"
      assert_includes source, "/__metrics__"
      assert_includes source, "/allocation"
      assert_includes source, "/upload"
    end
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

  def test_simulation_command_is_not_packaged_without_puma_runtime_dependency
    spec = Gem::Specification.load(File.expand_path("../raptor.gemspec", __dir__))

    assert_includes spec.executables, "raptor"
    refute_includes spec.executables, "raptor-simulate"
  end

  def test_html_report_contains_tables_and_inline_graphs
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
      "scenarios" => ["tiny"]
    }
    rows = [
      benchmark_row("yjit-off", "tiny", "raptor-1r", "raptor", 1200.0, 1.2, 22.0),
      benchmark_row("yjit-on", "tiny", "raptor-1r", "raptor", 1300.0, 1.1, 24.0),
      benchmark_row("yjit-off", "tiny", "puma-single-5t", "puma", 1400.0, 0.9, 30.0),
      benchmark_row("yjit-on", "tiny", "puma-single-5t", "puma", 1500.0, 0.8, 33.0)
    ]

    Dir.mktmpdir do |dir|
      path = File.join(dir, "report.html")
      Raptor::Simulation::Report.write_html(path, metadata, rows, [])
      html = File.read(path)

      assert_includes html, "<table>"
      assert_includes html, "<svg"
      assert_includes html, "Puma vs Raptor Simulation"
      assert_includes html, "raptor-1r"
      assert_includes html, "puma-single-5t"
      assert_includes html, "yjit-on"
      assert_includes html, "yjit-off"
      assert_includes html, "Benchmark Quality Warnings"
      assert_includes html, "short_yjit_warmup"
    end
  end

  private

  def benchmark_row(runtime, scenario, server, adapter, rps, p99, rss)
    {
      "run_id" => "#{runtime}/#{scenario}/#{server}/repeat-1",
      "runtime" => runtime,
      "yjit" => runtime == "yjit-on",
      "scenario" => scenario,
      "server" => server,
      "adapter" => adapter,
      "workers" => adapter == "raptor" ? 1 : 0,
      "threads" => adapter == "puma" ? 5 : nil,
      "requests" => 10,
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
      "gc_delta_scope" => "same_worker",
      "gc_count_delta" => 1,
      "total_allocated_objects_delta" => 100
    }
  end
end

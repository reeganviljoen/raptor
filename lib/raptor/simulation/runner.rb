# frozen_string_literal: true

require "etc"
require "fileutils"
require "json"
require "net/http"
require "rbconfig"
require "time"
require "tmpdir"

require_relative "../version"
require_relative "configuration"
require_relative "load_generator"
require_relative "memory_sampler"
require_relative "report"
require_relative "server_process"
require_relative "workload"

module Raptor
  module Simulation
    class Runner
      MIN_YJIT_REQUESTS = 1_000
      MIN_YJIT_WARMUP_REQUESTS = 1_000
      MIN_YJIT_DURATION_S = 5.0
      MIN_YJIT_WARMUP_DURATION_S = 2.0
      MIN_BENCHMARK_REPEATS = 3
      DEFAULT_SAMPLE_COUNT = 20
      MIN_SAMPLE_INTERVAL_S = 0.01
      SAMPLE_OVERSAMPLE_FACTOR = 4.0

      attr_reader :profiles, :runtime_profiles, :scenarios, :requests, :concurrency, :warmup_requests, :repeats,
                  :output_root, :keep_alive, :timeout, :sample_interval, :sample_count, :min_duration_s,
                  :warmup_duration_s

      def initialize(profiles:, scenarios:, requests:, concurrency:, warmup_requests:, runtime_profiles: nil, repeats: 1,
                     output_root: "tmp/simulations", keep_alive: true, timeout: 5, sample_interval: 0.5,
                     sample_count: DEFAULT_SAMPLE_COUNT, min_duration_s: 0, warmup_duration_s: 0)
        @profiles = profiles
        @runtime_profiles = runtime_profiles || [Configuration.runtime("default")]
        @scenarios = scenarios
        @requests = Integer(requests)
        @concurrency = Integer(concurrency)
        @warmup_requests = Integer(warmup_requests)
        @repeats = Integer(repeats)
        @output_root = output_root
        @keep_alive = keep_alive
        @timeout = timeout
        @sample_interval = [Float(sample_interval), MIN_SAMPLE_INTERVAL_S].max
        @sample_count = sample_count.nil? ? nil : [Integer(sample_count), 1].max
        @min_duration_s = [Float(min_duration_s), 0.0].max
        @warmup_duration_s = [Float(warmup_duration_s), 0.0].max
      end

      def run
        run_id = Time.now.utc.strftime("%Y%m%d-%H%M%S")
        output_dir = File.join(output_root, run_id)
        FileUtils.mkdir_p(output_dir)

        metadata = metadata(run_id)
        summary_rows = []
        sample_rows = []

        Dir.mktmpdir("raptor-simulation") do |dir|
          rackup_path = Workload.write(dir)
          FileUtils.cp(rackup_path, File.join(output_dir, "config.ru"))

          runtime_profiles.each do |runtime_profile|
            profiles.each do |profile|
              repeats.times do |index|
                server = start_server(output_dir, rackup_path, runtime_profile, profile, index + 1)
                scenarios.each do |scenario|
                  result = run_case(output_dir, server, runtime_profile, profile, scenario, index + 1)
                  summary_rows << result.fetch("summary")
                  sample_rows.concat(result.fetch("samples"))
                end
              ensure
                server&.stop
              end
            end
          end
        end

        Report.write_json(File.join(output_dir, "metadata.json"), metadata)
        Report.write_json(File.join(output_dir, "summary.json"), summary_rows)
        Report.write_summary_csv(File.join(output_dir, "summary.csv"), summary_rows)
        Report.write_samples(File.join(output_dir, "samples.ndjson"), sample_rows)
        Report.write_markdown(File.join(output_dir, "report.md"), metadata, summary_rows)
        Report.write_html(File.join(output_dir, "report.html"), metadata, summary_rows, sample_rows)

        {
          "run_id" => run_id,
          "output_dir" => output_dir,
          "html_report" => File.join(output_dir, "report.html"),
          "metadata" => metadata,
          "summary" => summary_rows
        }
      end

      private

      def start_server(output_dir, rackup_path, runtime_profile, profile, repeat)
        artifact_dir = File.join(output_dir, runtime_profile.label, "_servers", profile.label, "repeat-#{repeat}")
        ServerProcess.new(profile: profile, runtime_profile: runtime_profile, rackup_path: rackup_path, artifact_dir: artifact_dir).start
      end

      def run_case(output_dir, server, runtime_profile, profile, scenario, repeat)
        case_id = "#{runtime_profile.label}/#{scenario.name}/#{profile.label}/repeat-#{repeat}"
        case_dir = File.join(output_dir, runtime_profile.label, scenario.name, profile.label, "repeat-#{repeat}")
        samples = []

        warmup_result = warmup(server, scenario)

        before_metrics = fetch_metrics(server)
        sampler = MemorySampler.new(server.pid, interval: effective_sample_interval, target_count: sample_count)
        sampler.start
        measurement = measured_load(server, scenario)
        sampler.stop

        after_metrics = fetch_metrics(server)
        samples = sampler.samples.map do |sample|
          sample.merge(
            "run_id" => case_id,
            "runtime" => runtime_profile.label,
            "scenario" => scenario.name,
            "server" => profile.label,
            "target_sample_count" => sample_count
          )
        end
        summary = summarize(case_id, runtime_profile, profile, scenario, measurement, warmup_result, sampler.summary, before_metrics, after_metrics)
        FileUtils.mkdir_p(case_dir)
        Report.write_json(File.join(case_dir, "result.json"), summary.merge("measurement" => measurement, "warmup" => warmup_result))

        { "summary" => summary, "samples" => samples }
      end

      def warmup(server, scenario)
        count = case_warmup_requests(server.profile, scenario)
        return empty_load_result(count, warmup_duration_s) if count <= 0 && warmup_duration_s <= 0

        LoadGenerator.new(
          host: "127.0.0.1",
          port: server.port,
          scenario: scenario,
          requests: count,
          concurrency: case_warmup_concurrency(server.profile, scenario, count),
          timeout: timeout,
          keep_alive: keep_alive,
          min_duration_s: warmup_duration_s
        ).run
      end

      def measured_load(server, scenario)
        LoadGenerator.new(
          host: "127.0.0.1",
          port: server.port,
          scenario: scenario,
          requests: case_requests(server.profile, scenario),
          concurrency: case_concurrency(server.profile, scenario),
          timeout: timeout,
          keep_alive: keep_alive,
          min_duration_s: min_duration_s
        ).run
      end

      def summarize(case_id, runtime_profile, profile, scenario, measurement, warmup_result, memory, before_metrics, after_metrics)
        latency = measurement.fetch("latency_ms")
        gc_scope = gc_delta_scope(profile, before_metrics, after_metrics)
        gc_delta = gc_scope == "same_worker" ? gc_delta(before_metrics, after_metrics) : empty_gc_delta
        error_count = measurement.fetch("errors").values.sum
        measured_requests = case_requests(profile, scenario)
        measured_concurrency = case_concurrency(profile, scenario)
        measured_warmup_requests = case_warmup_requests(profile, scenario)

        {
          "run_id" => case_id,
          "runtime" => runtime_profile.label,
          "yjit" => runtime_profile.yjit,
          "scenario" => scenario.name,
          "scenario_family" => scenario.family,
          "benchmark_source" => scenario.source_label,
          "benchmark_source_url" => scenario.source_url,
          "server" => profile.label,
          "server_capacity" => server_capacity(profile),
          "adapter" => profile.adapter,
          "workers" => profile.workers,
          "threads" => profile.threads,
          "target_requests" => measured_requests,
          "requests" => measurement.fetch("requests", measured_requests),
          "duration_s" => measurement["duration_s"],
          "min_duration_s" => min_duration_s,
          "target_warmup_requests" => measured_warmup_requests,
          "warmup_requests" => warmup_result.fetch("requests", measured_warmup_requests),
          "warmup_duration_s" => warmup_result["duration_s"],
          "warmup_min_duration_s" => warmup_duration_s,
          "concurrency" => measured_concurrency,
          "keep_alive" => keep_alive,
          "completed" => measurement.fetch("completed"),
          "errors" => error_count,
          "achieved_rps" => measurement.fetch("achieved_rps"),
          "p50_ms" => latency["p50_ms"],
          "p95_ms" => latency["p95_ms"],
          "p99_ms" => latency["p99_ms"],
          "p999_ms" => latency["p999_ms"],
          "max_ms" => latency["max_ms"],
          "rss_mb_peak" => memory["rss_mb_peak"],
          "rss_mb_end" => memory["rss_mb_end"],
          "cpu_pct_avg" => memory["cpu_pct_avg"],
          "target_sample_count" => sample_count,
          "sample_count" => memory["sample_count"],
          "raw_sample_count" => memory["raw_sample_count"],
          "gc_count_delta" => gc_delta["gc_count"],
          "total_allocated_objects_delta" => gc_delta["total_allocated_objects"],
          "status_counts" => measurement.fetch("status_counts"),
          "measurement" => measurement,
          "memory" => memory,
          "gc_delta" => gc_delta,
          "gc_delta_scope" => gc_scope,
          "gc_metrics_before" => before_metrics,
          "gc_metrics_after" => after_metrics
        }
      end

      def case_requests(profile, scenario)
        return Integer(scenario.requests) if scenario.requests
        return case_concurrency(profile, scenario) * Integer(scenario.requests_per_connection) if scenario.requests_per_connection

        requests
      end

      def case_warmup_requests(profile, scenario)
        return Integer(scenario.warmup_requests) if scenario.warmup_requests

        [warmup_requests, case_requests(profile, scenario)].min
      end

      def case_warmup_concurrency(profile, scenario, warmup_count)
        target_concurrency = case_concurrency(profile, scenario)
        return target_concurrency if warmup_duration_s.positive?

        [target_concurrency, warmup_count].min
      end

      def empty_load_result(target_requests, min_duration)
        {
          "target_requests" => target_requests,
          "min_duration_s" => min_duration,
          "requests" => 0,
          "completed" => 0,
          "errors" => {},
          "status_counts" => {},
          "bytes" => 0,
          "duration_s" => 0.0,
          "achieved_rps" => 0.0,
          "latency_ms" => Percentiles.summarize([]),
          "histogram_ms" => {}
        }
      end

      def case_concurrency(profile, scenario)
        return [Integer(scenario.concurrency), 1].max if scenario.concurrency
        return concurrency unless scenario.concurrency_multiplier

        [(server_capacity(profile) * Float(scenario.concurrency_multiplier)).round, 1].max
      end

      def server_capacity(profile)
        profile.capacity
      end

      def effective_sample_interval
        interval = sample_interval
        if sample_count && sample_count > 1 && min_duration_s.positive?
          target_interval = min_duration_s / (sample_count * SAMPLE_OVERSAMPLE_FACTOR)
          interval = [interval, target_interval].min
        end

        [interval, MIN_SAMPLE_INTERVAL_S].max
      end

      def fetch_metrics(server)
        response = Net::HTTP.get_response(URI(server.url("/__metrics__")))
        return { "error" => "HTTP #{response.code}" } unless response.code == "200"

        JSON.parse(response.body)
      rescue StandardError => error
        { "error" => "#{error.class}: #{error.message}" }
      end

      def gc_delta(before_metrics, after_metrics)
        before_gc = before_metrics.fetch("gc_stat", {})
        after_gc = after_metrics.fetch("gc_stat", {})
        keys = %w[
          count
          minor_gc_count
          major_gc_count
          total_allocated_objects
          total_freed_objects
          heap_live_slots
          heap_free_slots
          malloc_increase_bytes
          oldmalloc_increase_bytes
        ]

        keys.each_with_object({}) do |key, deltas|
          before_value = before_gc[key] || before_gc[key.to_sym]
          after_value = after_gc[key] || after_gc[key.to_sym]
          deltas[key] = after_value && before_value ? after_value - before_value : nil
        end.merge("gc_count" => gc_count_delta(before_metrics, after_metrics))
      end

      def empty_gc_delta
        {
          "count" => nil,
          "minor_gc_count" => nil,
          "major_gc_count" => nil,
          "total_allocated_objects" => nil,
          "total_freed_objects" => nil,
          "heap_live_slots" => nil,
          "heap_free_slots" => nil,
          "malloc_increase_bytes" => nil,
          "oldmalloc_increase_bytes" => nil,
          "gc_count" => nil
        }
      end

      def gc_delta_scope(profile, before_metrics, after_metrics)
        return "unavailable" if before_metrics["error"] || after_metrics["error"]
        return "multiprocess_sample_only" if profile.adapter.to_s == "puma" && profile.workers.to_i.positive?
        return "different_sampled_workers" if before_metrics["pid"] && after_metrics["pid"] && before_metrics["pid"] != after_metrics["pid"]

        "same_worker"
      end

      def gc_count_delta(before_metrics, after_metrics)
        before_value = before_metrics["gc_count"]
        after_value = after_metrics["gc_count"]
        after_value && before_value ? after_value - before_value : nil
      end

      def metadata(run_id)
        {
          "run_id" => run_id,
          "created_at" => Time.now.utc.iso8601,
          "ruby" => RUBY_DESCRIPTION,
          "raptor_version" => Raptor::VERSION,
          "rack_version" => gem_version("rack"),
          "puma_version" => gem_version("puma"),
          "git_sha" => git_sha,
          "cpu_count" => Etc.nprocessors,
          "platform" => RUBY_PLATFORM,
          "machine_arch" => ENV.fetch("RAPTOR_BENCH_ARCH", RbConfig::CONFIG["host_cpu"]),
          "machine_os" => ENV.fetch("RAPTOR_BENCH_OS", RbConfig::CONFIG["host_os"]),
          "benchmark_suite" => ENV.fetch("RAPTOR_BENCH_SUITE", nil),
          "benchmark_axis" => ENV.fetch("RAPTOR_BENCH_AXIS", nil),
          "runner_label" => ENV.fetch("RAPTOR_BENCH_RUNNER", ENV.fetch("RUNNER_NAME", nil)),
          "github_run_id" => ENV.fetch("GITHUB_RUN_ID", nil),
          "github_run_attempt" => ENV.fetch("GITHUB_RUN_ATTEMPT", nil),
          "allocator" => ENV.fetch("RUBY_ALLOCATOR", nil),
          "malloc_arena_max" => ENV.fetch("MALLOC_ARENA_MAX", nil),
          "harness_yjit" => defined?(RubyVM::YJIT) ? RubyVM::YJIT.enabled? : nil,
          "requests" => requests,
          "concurrency" => concurrency,
          "warmup_requests" => warmup_requests,
          "min_duration_s" => min_duration_s,
          "warmup_duration_s" => warmup_duration_s,
          "sample_interval_s" => sample_interval,
          "sample_count" => sample_count,
          "repeats" => repeats,
          "keep_alive" => keep_alive,
          "quality_warnings" => quality_warnings,
          "runtime_profiles" => runtime_profiles.map(&:to_h),
          "profiles" => profiles.map(&:to_h),
          "scenarios" => scenarios.map(&:name),
          "benchmark_sources" => benchmark_sources
        }
      end

      def benchmark_sources
        scenarios.map do |scenario|
          {
            "label" => scenario.source_label,
            "family" => scenario.family,
            "url" => scenario.source_url
          }
        end.uniq { |source| [source["label"], source["family"], source["url"]] }
      end

      def quality_warnings
        warnings = [
          warning(
            "closed_loop_client",
            "caution",
            "This harness uses a closed-loop Ruby Net::HTTP client. Confirm production tail-latency claims with a constant-rate load tool."
          )
        ]

        if repeats < MIN_BENCHMARK_REPEATS
          warnings << warning(
            "low_repeats",
            "warning",
            "This run has #{repeats} repeat(s) per case. Use at least #{MIN_BENCHMARK_REPEATS} repeats before treating deltas as stable."
          )
        end

        if yjit_runtime_profile?
          if warmup_requests < MIN_YJIT_WARMUP_REQUESTS && warmup_duration_s < MIN_YJIT_WARMUP_DURATION_S
            warnings << warning(
              "short_yjit_warmup",
              "warning",
              "YJIT comparisons need enough warmup for compilation effects to settle. Use at least #{MIN_YJIT_WARMUP_REQUESTS} warmup requests or #{format_duration(MIN_YJIT_WARMUP_DURATION_S)} of warmup per case."
            )
          end

          if requests < MIN_YJIT_REQUESTS && min_duration_s < MIN_YJIT_DURATION_S
            warnings << warning(
              "short_yjit_measurement",
              "warning",
              "This YJIT measurement uses #{requests} request(s) and a #{format_duration(min_duration_s)} minimum duration per case. Use at least #{MIN_YJIT_REQUESTS} measured requests or #{format_duration(MIN_YJIT_DURATION_S)} per case for comparison runs."
            )
          end

          if RUBY_PLATFORM.include?("darwin")
            warnings << warning(
              "macos_yjit_noise",
              "caution",
              "macOS developer machines can hide small YJIT deltas behind CPU scaling and background noise. Treat differences below a few percent as exploratory."
            )
          end
        end

        warnings
      end

      def format_duration(value)
        value.to_i == value ? "#{value.to_i}s" : "#{value}s"
      end

      def yjit_runtime_profile?
        runtime_profiles.any? { |profile| [true, false].include?(profile.yjit) }
      end

      def warning(code, severity, message)
        {
          "code" => code,
          "severity" => severity,
          "message" => message
        }
      end

      def gem_version(name)
        Gem.loaded_specs[name]&.version&.to_s || Gem::Specification.find_all_by_name(name).last&.version&.to_s
      rescue Gem::LoadError
        nil
      end

      def git_sha
        IO.popen(["git", "rev-parse", "--short", "HEAD"], chdir: project_root, err: File::NULL, &:read).strip
      rescue StandardError
        "unknown"
      end

      def project_root
        File.expand_path("../../..", __dir__)
      end
    end
  end
end

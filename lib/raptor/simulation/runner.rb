# frozen_string_literal: true

require "etc"
require "fileutils"
require "json"
require "net/http"
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
      attr_reader :profiles, :scenarios, :requests, :concurrency, :warmup_requests, :repeats,
                  :output_root, :keep_alive, :timeout, :sample_interval

      def initialize(profiles:, scenarios:, requests:, concurrency:, warmup_requests:, repeats: 1,
                     output_root: "tmp/simulations", keep_alive: true, timeout: 5, sample_interval: 0.5)
        @profiles = profiles
        @scenarios = scenarios
        @requests = Integer(requests)
        @concurrency = Integer(concurrency)
        @warmup_requests = Integer(warmup_requests)
        @repeats = Integer(repeats)
        @output_root = output_root
        @keep_alive = keep_alive
        @timeout = timeout
        @sample_interval = sample_interval
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

          profiles.each do |profile|
            scenarios.each do |scenario|
              repeats.times do |index|
                result = run_case(output_dir, rackup_path, profile, scenario, index + 1)
                summary_rows << result.fetch("summary")
                sample_rows.concat(result.fetch("samples"))
              end
            end
          end
        end

        Report.write_json(File.join(output_dir, "metadata.json"), metadata)
        Report.write_json(File.join(output_dir, "summary.json"), summary_rows)
        Report.write_summary_csv(File.join(output_dir, "summary.csv"), summary_rows)
        Report.write_samples(File.join(output_dir, "samples.ndjson"), sample_rows)
        Report.write_markdown(File.join(output_dir, "report.md"), metadata, summary_rows)

        {
          "run_id" => run_id,
          "output_dir" => output_dir,
          "metadata" => metadata,
          "summary" => summary_rows
        }
      end

      private

      def run_case(output_dir, rackup_path, profile, scenario, repeat)
        case_id = "#{scenario.name}/#{profile.label}/repeat-#{repeat}"
        case_dir = File.join(output_dir, scenario.name, profile.label, "repeat-#{repeat}")
        server = ServerProcess.new(profile: profile, rackup_path: rackup_path, artifact_dir: case_dir)
        samples = []

        server.start
        before_metrics = fetch_metrics(server)
        warmup(server, scenario)

        sampler = MemorySampler.new(server.pid, interval: sample_interval)
        sampler.start
        measurement = measured_load(server, scenario)
        sampler.stop

        after_metrics = fetch_metrics(server)
        samples = sampler.samples.map { |sample| sample.merge("run_id" => case_id, "scenario" => scenario.name, "server" => profile.label) }
        summary = summarize(case_id, profile, scenario, measurement, sampler.summary, before_metrics, after_metrics)
        Report.write_json(File.join(case_dir, "result.json"), summary.merge("measurement" => measurement))

        { "summary" => summary, "samples" => samples }
      ensure
        server&.stop
      end

      def warmup(server, scenario)
        return if warmup_requests <= 0

        LoadGenerator.new(
          host: "127.0.0.1",
          port: server.port,
          scenario: scenario,
          requests: warmup_requests,
          concurrency: [concurrency, warmup_requests].min,
          timeout: timeout,
          keep_alive: keep_alive
        ).run
      end

      def measured_load(server, scenario)
        LoadGenerator.new(
          host: "127.0.0.1",
          port: server.port,
          scenario: scenario,
          requests: requests,
          concurrency: concurrency,
          timeout: timeout,
          keep_alive: keep_alive
        ).run
      end

      def summarize(case_id, profile, scenario, measurement, memory, before_metrics, after_metrics)
        latency = measurement.fetch("latency_ms")
        gc_delta = gc_delta(before_metrics, after_metrics)
        error_count = measurement.fetch("errors").values.sum

        {
          "run_id" => case_id,
          "scenario" => scenario.name,
          "server" => profile.label,
          "adapter" => profile.adapter,
          "workers" => profile.workers,
          "threads" => profile.threads,
          "requests" => requests,
          "concurrency" => concurrency,
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
          "gc_count_delta" => gc_delta["gc_count"],
          "total_allocated_objects_delta" => gc_delta["total_allocated_objects"],
          "status_counts" => measurement.fetch("status_counts"),
          "measurement" => measurement,
          "memory" => memory,
          "gc_delta" => gc_delta
        }
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
          "allocator" => ENV.fetch("RUBY_ALLOCATOR", nil),
          "malloc_arena_max" => ENV.fetch("MALLOC_ARENA_MAX", nil),
          "yjit" => defined?(RubyVM::YJIT) ? RubyVM::YJIT.enabled? : nil,
          "requests" => requests,
          "concurrency" => concurrency,
          "warmup_requests" => warmup_requests,
          "repeats" => repeats,
          "keep_alive" => keep_alive,
          "profiles" => profiles.map(&:to_h),
          "scenarios" => scenarios.map(&:name)
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

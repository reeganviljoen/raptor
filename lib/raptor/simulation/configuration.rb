# frozen_string_literal: true

require "etc"

module Raptor
  module Simulation
    Scenario = Struct.new(
      :name,
      :path,
      :method,
      :headers,
      :body,
      :family,
      :source,
      :source_url,
      :body_type,
      :body_size_kb,
      :delay_s,
      :concurrency,
      :concurrency_multiplier,
      :requests,
      :requests_per_connection,
      :warmup_requests,
      keyword_init: true
    ) do
      def initialize(**kwargs)
        super
        self.method ||= "GET"
        self.headers ||= {}
        self.body ||= ""
      end

      def source_label
        source || "raptor-generated"
      end
    end

    ServerProfile = Struct.new(:name, :adapter, :workers, :threads, keyword_init: true) do
      def capacity
        case adapter.to_s
        when "puma"
          processes = workers.to_i.positive? ? workers.to_i : 1
          processes * [threads.to_i, 1].max
        else
          [workers.to_i, 1].max
        end
      end

      def label
        case adapter.to_s
        when "puma"
          worker_label = workers.to_i.positive? ? "#{workers}w" : "single"
          "#{adapter}-#{worker_label}-#{threads}t"
        else
          "#{adapter}-#{workers}r"
        end
      end

      def to_h
        {
          name: name,
          adapter: adapter,
          workers: workers,
          threads: threads,
          capacity: capacity,
          label: label
        }
      end
    end

    RuntimeProfile = Struct.new(:name, :ruby_options, :yjit, keyword_init: true) do
      def initialize(**kwargs)
        super
        self.ruby_options ||= []
      end

      def label
        name.to_s
      end

      def to_h
        {
          name: name,
          label: label,
          ruby_options: ruby_options,
          yjit: yjit
        }
      end
    end

    module Configuration
      module_function

      PUMA_BENCHMARK_BASE = "https://github.com/puma/puma/blob/main/benchmarks/local"
      PUMA_RESPONSE_BODY_TYPES = {
        "array" => "a",
        "chunk" => "c",
        "string" => "s",
        "io" => "i"
      }.freeze
      PUMA_RESPONSE_BODY_SIZES = [1, 10, 100, 256, 512, 1024, 2048].freeze
      PUMA_LONG_TAIL_MULTIPLIERS = [6.0, 4.0, 3.0, 2.0, 1.5, 1.0, 0.5].freeze
      PUMA_LONG_TAIL_DELAY = 0.2
      PUMA_LONG_TAIL_REQUESTS_PER_CONNECTION = 20
      PUMA_SLEEP_FIBONACCI_DELAYS = [0.001, 0.005, 0.01, 0.05, 0.1, 0.2].freeze
      PUMA_SLEEP_FIBONACCI_REPEATS = 10

      def scenarios
        legacy_scenarios
          .merge(puma_response_body_scenarios)
          .merge(puma_long_tail_scenarios)
          .merge(puma_sleep_fibonacci_scenarios)
      end

      def legacy_scenarios
        upload_body = "x" * (64 * 1024)

        {
          "tiny" => Scenario.new(name: "tiny", path: "/tiny"),
          "cpu" => Scenario.new(name: "cpu", path: "/cpu"),
          "io" => Scenario.new(name: "io", path: "/io"),
          "mixed" => Scenario.new(name: "mixed", path: "/mixed"),
          "allocation" => Scenario.new(name: "allocation", path: "/allocation"),
          "json" => Scenario.new(name: "json", path: "/json"),
          "erb" => Scenario.new(name: "erb", path: "/erb"),
          "large" => Scenario.new(name: "large", path: "/large"),
          "upload" => Scenario.new(
            name: "upload",
            path: "/upload",
            method: "POST",
            headers: { "Content-Type" => "application/octet-stream" },
            body: upload_body
          )
        }
      end

      def puma_response_body_scenarios
        PUMA_RESPONSE_BODY_SIZES.each_with_object({}) do |size, scenarios|
          PUMA_RESPONSE_BODY_TYPES.each do |label, header_prefix|
            name = "puma-response-#{label}-#{size}kb"
            scenarios[name] = Scenario.new(
              name: name,
              path: "/puma-response",
              headers: { "Body-Conf" => "#{header_prefix}#{size}" },
              family: "puma-response-time-wrk",
              source: "puma/benchmarks/local/response_time_wrk",
              source_url: "#{PUMA_BENCHMARK_BASE}/response_time_wrk.rb",
              body_type: label,
              body_size_kb: size,
              concurrency_multiplier: 1.6
            )
          end
        end
      end

      def puma_long_tail_scenarios
        PUMA_LONG_TAIL_MULTIPLIERS.each_with_object({}) do |multiplier, scenarios|
          multiplier_label = multiplier.to_s.sub(".", "p")
          name = "puma-long-tail-fib-#{(PUMA_LONG_TAIL_DELAY * 1000).to_i}ms-x#{multiplier_label}"
          scenarios[name] = Scenario.new(
            name: name,
            path: "/sleep#{PUMA_LONG_TAIL_DELAY}",
            family: "puma-long-tail-hey",
            source: "puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci",
            source_url: "#{PUMA_BENCHMARK_BASE}/long_tail_hey.rb",
            delay_s: PUMA_LONG_TAIL_DELAY,
            concurrency_multiplier: multiplier,
            requests_per_connection: PUMA_LONG_TAIL_REQUESTS_PER_CONNECTION
          )
        end
      end

      def puma_sleep_fibonacci_scenarios
        PUMA_SLEEP_FIBONACCI_DELAYS.each_with_object({}) do |delay, scenarios|
          delay_ms = (delay * 1000).to_i
          name = "puma-sleep-fibonacci-#{delay_ms}ms"
          scenarios[name] = Scenario.new(
            name: name,
            path: "/sleep#{delay}",
            family: "puma-sleep-fibonacci-test",
            source: "puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci",
            source_url: "#{PUMA_BENCHMARK_BASE}/sleep_fibonacci_test.rb",
            delay_s: delay,
            concurrency: 1,
            requests: PUMA_SLEEP_FIBONACCI_REPEATS
          )
        end
      end

      def profile(name)
        cpu_count = [Etc.nprocessors, 1].max

        case name.to_s
        when "quick"
          matched_profiles([
            ServerProfile.new(name: "puma-single-threads-5", adapter: "puma", workers: 0, threads: 5)
          ])
        when "full"
          matched_profiles([
            ServerProfile.new(name: "puma-single-threads-1", adapter: "puma", workers: 0, threads: 1),
            ServerProfile.new(name: "puma-single-threads-5", adapter: "puma", workers: 0, threads: 5),
            ServerProfile.new(name: "puma-cluster-n-threads-1", adapter: "puma", workers: cpu_count, threads: 1),
            ServerProfile.new(name: "puma-cluster-n-threads-5", adapter: "puma", workers: cpu_count, threads: 5)
          ])
        else
          raise ArgumentError, "unknown simulation profile: #{name.inspect}"
        end
      end

      def matched_profiles(puma_profiles)
        raptor_profiles = puma_profiles.map(&:capacity).uniq.sort.map do |capacity|
          ServerProfile.new(name: "raptor-ractors-#{capacity}", adapter: "raptor", workers: capacity, threads: nil)
        end

        raptor_profiles + puma_profiles
      end

      def scenario_names
        scenarios.keys
      end

      def legacy_scenario_names
        legacy_scenarios.keys
      end

      def puma_benchmark_scenario_names
        puma_response_body_scenarios.keys + puma_long_tail_scenarios.keys + puma_sleep_fibonacci_scenarios.keys
      end

      def runtime(name)
        case name.to_s
        when "default"
          RuntimeProfile.new(name: "default", ruby_options: [], yjit: nil)
        when "yjit-off"
          RuntimeProfile.new(name: "yjit-off", ruby_options: ["--disable=yjit"], yjit: false)
        when "yjit-on"
          RuntimeProfile.new(name: "yjit-on", ruby_options: ["--yjit"], yjit: true)
        else
          raise ArgumentError, "unknown runtime profile: #{name.inspect}"
        end
      end

      def runtimes(names)
        names = Array(names)
        return [runtime("default")] if names.empty?

        names.flat_map do |name|
          name.to_s == "all" ? [runtime("yjit-off"), runtime("yjit-on")] : runtime(name)
        end
      end

      def runtime_names
        %w[default yjit-off yjit-on all]
      end
    end
  end
end

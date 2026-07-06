# frozen_string_literal: true

require "optparse"

require_relative "../simulation"

module Raptor
  module Simulation
    class CLI
      def self.run(argv = ARGV)
        new(argv).run
      end

      def initialize(argv)
        @argv = argv
        @options = {
          profile: "quick",
          scenarios: [],
          runtimes: [],
          requests: 200,
          concurrency: 8,
          warmup_requests: 50,
          repeats: 1,
          output: "tmp/simulations",
          keep_alive: true,
          timeout: 5,
          sample_interval: 0.5,
          list: false
        }
      end

      def run
        parse!

        if @options[:list]
          puts "profiles: quick, full"
          puts "scenarios: #{Configuration.scenario_names.join(", ")}"
          puts "runtimes: #{Configuration.runtime_names.join(", ")}"
          return
        end

        selected_scenarios = scenarios
        result = Runner.new(
          profiles: Configuration.profile(@options[:profile]),
          runtime_profiles: Configuration.runtimes(@options[:runtimes]),
          scenarios: selected_scenarios,
          requests: @options[:requests],
          concurrency: @options[:concurrency],
          warmup_requests: @options[:warmup_requests],
          repeats: @options[:repeats],
          output_root: @options[:output],
          keep_alive: @options[:keep_alive],
          timeout: @options[:timeout],
          sample_interval: @options[:sample_interval]
        ).run

        puts "wrote #{result.fetch("output_dir")}"
        puts "html report: #{result.fetch("html_report")}"
        puts "summary:"
        result.fetch("summary").each do |row|
          puts format(
            "%<runtime>-9s %<scenario>-10s %<server>-24s rps=%<rps>8.2f p95=%<p95>8.3fms p99=%<p99>8.3fms rss=%<rss>8sMB",
            runtime: row.fetch("runtime"),
            scenario: row.fetch("scenario"),
            server: row.fetch("server"),
            rps: row.fetch("achieved_rps"),
            p95: row.fetch("p95_ms") || 0.0,
            p99: row.fetch("p99_ms") || 0.0,
            rss: row.fetch("rss_mb_peak") || "n/a"
          )
        end
      end

      private

      def parse!
        parser = OptionParser.new do |opts|
          opts.banner = "Usage: raptor-simulate [options]"

          opts.on("--profile NAME", "Simulation profile: quick or full") { |value| @options[:profile] = value }
          opts.on("--scenario NAME", "Scenario to include; repeatable") { |value| @options[:scenarios] << value }
          opts.on("--runtime NAME", "Ruby runtime profile: default, yjit-off, yjit-on, or all; repeatable") { |value| @options[:runtimes] << value }
          opts.on("--requests COUNT", Integer, "Measured requests per case") { |value| @options[:requests] = value }
          opts.on("--concurrency COUNT", Integer, "Concurrent client threads") { |value| @options[:concurrency] = value }
          opts.on("--warmup-requests COUNT", Integer, "Warmup requests per case") { |value| @options[:warmup_requests] = value }
          opts.on("--repeat COUNT", Integer, "Repeats per case") { |value| @options[:repeats] = value }
          opts.on("--output DIR", "Output directory root") { |value| @options[:output] = value }
          opts.on("--timeout SECONDS", Float, "HTTP open/read timeout") { |value| @options[:timeout] = value }
          opts.on("--sample-interval SECONDS", Float, "RSS/CPU sample interval") { |value| @options[:sample_interval] = value }
          opts.on("--[no-]keep-alive", "Reuse HTTP connections inside each client thread") { |value| @options[:keep_alive] = value }
          opts.on("--list", "List profiles and scenarios") { @options[:list] = true }
          opts.on("-h", "--help", "Print help") do
            puts opts
            exit
          end
        end

        parser.parse!(@argv)
      end

      def scenarios
        all = Configuration.scenarios
        names = @options[:scenarios].empty? ? all.keys : @options[:scenarios]

        names.map do |name|
          all.fetch(name) { raise ArgumentError, "unknown scenario #{name.inspect}; choose one of #{all.keys.join(", ")}" }
        end
      end
    end
  end
end

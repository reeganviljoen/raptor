# frozen_string_literal: true

require "etc"

module Raptor
  module Simulation
    Scenario = Struct.new(:name, :path, :method, :headers, :body, keyword_init: true) do
      def initialize(**kwargs)
        super
        self.method ||= "GET"
        self.headers ||= {}
        self.body ||= ""
      end
    end

    ServerProfile = Struct.new(:name, :adapter, :workers, :threads, keyword_init: true) do
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

      def scenarios
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

      def profile(name)
        cpu_count = [Etc.nprocessors, 1].max

        case name.to_s
        when "quick"
          [
            ServerProfile.new(name: "raptor-ractors-1", adapter: "raptor", workers: 1, threads: nil),
            ServerProfile.new(name: "puma-single-threads-5", adapter: "puma", workers: 0, threads: 5)
          ]
        when "full"
          [
            ServerProfile.new(name: "raptor-ractors-1", adapter: "raptor", workers: 1, threads: nil),
            ServerProfile.new(name: "raptor-ractors-n", adapter: "raptor", workers: cpu_count, threads: nil),
            ServerProfile.new(name: "raptor-ractors-2n", adapter: "raptor", workers: cpu_count * 2, threads: nil),
            ServerProfile.new(name: "puma-single-threads-5", adapter: "puma", workers: 0, threads: 5),
            ServerProfile.new(name: "puma-cluster-n-threads-1", adapter: "puma", workers: cpu_count, threads: 1),
            ServerProfile.new(name: "puma-cluster-n-threads-5", adapter: "puma", workers: cpu_count, threads: 5)
          ]
        else
          raise ArgumentError, "unknown simulation profile: #{name.inspect}"
        end
      end

      def scenario_names
        scenarios.keys
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

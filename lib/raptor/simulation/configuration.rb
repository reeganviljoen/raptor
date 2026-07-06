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
    end
  end
end

# frozen_string_literal: true

require_relative "process_tree"

module Raptor
  module Simulation
    class MemorySampler
      attr_reader :samples, :raw_sample_count, :target_count

      def self.normalize_samples(samples, target_count)
        return samples unless target_count

        target_count = [Integer(target_count), 1].max
        return samples if samples.length <= target_count
        return [samples.first] if target_count == 1

        last_index = samples.length - 1
        (0...target_count).map do |index|
          samples[((index * last_index).to_f / (target_count - 1)).round]
        end
      end

      def initialize(root_pid, interval: 0.5, target_count: nil, process_tree: ProcessTree)
        @root_pid = root_pid
        @interval = interval
        @target_count = target_count.nil? ? nil : [Integer(target_count), 1].max
        @process_tree = process_tree
        @samples = []
        @raw_sample_count = 0
        @running = false
        @thread = nil
      end

      def start
        return self if @running

        @running = true
        @thread = Thread.new do
          while @running
            @samples << @process_tree.snapshot(@root_pid)
            sleep @interval
          end
        end
        self
      end

      def stop
        @running = false
        @thread&.join
        @samples << @process_tree.snapshot(@root_pid)
        @raw_sample_count = @samples.length
        @samples = self.class.normalize_samples(@samples, @target_count)
        self
      end

      def summary
        available = samples.select { |sample| sample["available"] }
        return { "available" => false } if available.empty?

        rss_values = available.map { |sample| sample.fetch("rss_kb_total") }
        cpu_values = available.map { |sample| sample.fetch("cpu_pct_total") }

        {
          "available" => true,
          "rss_kb_peak" => rss_values.max,
          "rss_kb_end" => rss_values.last,
          "rss_mb_peak" => (rss_values.max / 1024.0).round(3),
          "rss_mb_end" => (rss_values.last / 1024.0).round(3),
          "cpu_pct_avg" => (cpu_values.sum / cpu_values.length).round(3),
          "target_sample_count" => target_count,
          "raw_sample_count" => raw_sample_count,
          "sample_count" => available.length
        }
      end
    end
  end
end

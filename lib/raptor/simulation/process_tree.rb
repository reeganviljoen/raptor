# frozen_string_literal: true

require "time"

module Raptor
  module Simulation
    module ProcessTree
      module_function

      def snapshot(root_pid)
        rows = process_rows
        pids = descendants(root_pid, rows)
        selected = rows.select { |row| pids.include?(row.fetch("pid")) }

        {
          "available" => true,
          "time" => Time.now.utc.iso8601,
          "root_pid" => root_pid,
          "pids" => selected,
          "rss_kb_total" => selected.sum { |row| row.fetch("rss_kb") },
          "cpu_pct_total" => selected.sum { |row| row.fetch("cpu_pct") }.round(2)
        }
      rescue StandardError => error
        {
          "available" => false,
          "time" => Time.now.utc.iso8601,
          "root_pid" => root_pid,
          "error" => "#{error.class}: #{error.message}"
        }
      end

      def process_rows
        output = IO.popen(["ps", "-axo", "pid=,ppid=,rss=,%cpu=,comm="], &:read)
        parse_ps(output)
      end

      def parse_ps(output)
        output.lines.filter_map do |line|
          pid, ppid, rss, cpu, command = line.strip.split(/\s+/, 5)
          next unless pid && ppid && rss && cpu

          {
            "pid" => Integer(pid),
            "ppid" => Integer(ppid),
            "rss_kb" => Integer(rss),
            "cpu_pct" => Float(cpu),
            "command" => command.to_s
          }
        rescue ArgumentError
          nil
        end
      end

      def descendants(root_pid, rows)
        root_pid = Integer(root_pid)
        known = [root_pid]

        loop do
          children = rows.select { |row| known.include?(row.fetch("ppid")) }.map { |row| row.fetch("pid") }
          next_known = (known + children).uniq
          return next_known if next_known.length == known.length

          known = next_known
        end
      end
    end
  end
end

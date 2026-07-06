# frozen_string_literal: true

require "csv"
require "json"

module Raptor
  module Simulation
    module Report
      SUMMARY_COLUMNS = %w[
        run_id
        scenario
        server
        adapter
        workers
        threads
        requests
        concurrency
        keep_alive
        completed
        errors
        achieved_rps
        p50_ms
        p95_ms
        p99_ms
        p999_ms
        max_ms
        rss_mb_peak
        rss_mb_end
        cpu_pct_avg
        gc_delta_scope
        gc_count_delta
        total_allocated_objects_delta
      ].freeze

      module_function

      def write_json(path, value)
        File.write(path, "#{JSON.pretty_generate(value)}\n")
      end

      def write_summary_csv(path, rows)
        CSV.open(path, "w") do |csv|
          csv << SUMMARY_COLUMNS
          rows.each { |row| csv << SUMMARY_COLUMNS.map { |column| row[column] } }
        end
      end

      def write_samples(path, rows)
        File.open(path, "w") do |file|
          rows.each { |row| file.puts(JSON.generate(row)) }
        end
      end

      def write_markdown(path, metadata, rows)
        lines = []
        lines << "# Puma vs Raptor Simulation"
        lines << ""
        lines << "Run ID: `#{metadata.fetch("run_id")}`"
        lines << ""
        lines << "## Environment"
        lines << ""
        lines << "- Ruby: `#{metadata.fetch("ruby")}`"
        lines << "- Git SHA: `#{metadata.fetch("git_sha")}`"
        lines << "- CPU count: `#{metadata.fetch("cpu_count")}`"
        lines << "- Rack: `#{metadata.fetch("rack_version")}`"
        lines << "- Puma: `#{metadata.fetch("puma_version")}`"
        lines << "- Raptor: `#{metadata.fetch("raptor_version")}`"
        lines << ""
        lines << "## Summary"
        lines << ""
        lines << "| scenario | server | completed | errors | rps | p50 ms | p95 ms | p99 ms | rss peak MB |"
        lines << "| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |"

        rows.each do |row|
          lines << [
            row.fetch("scenario"),
            row.fetch("server"),
            row.fetch("completed"),
            row.fetch("errors"),
            row.fetch("achieved_rps"),
            row.fetch("p50_ms"),
            row.fetch("p95_ms"),
            row.fetch("p99_ms"),
            row.fetch("rss_mb_peak")
          ].join(" | ").then { |body| "| #{body} |" }
        end

        lines << ""
        lines << "## Caveats"
        lines << ""
        lines << "- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2."
        lines << "- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims."
        lines << "- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable."
        lines << "- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists."
        lines << "- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them."

        File.write(path, "#{lines.join("\n")}\n")
      end
    end
  end
end

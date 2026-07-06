# frozen_string_literal: true

require "csv"
require "cgi"
require "json"

module Raptor
  module Simulation
    module Report
      SUMMARY_COLUMNS = %w[
        run_id
        runtime
        yjit
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
        quality_warnings = Array(metadata["quality_warnings"])
        if quality_warnings.any?
          lines << "## Benchmark Quality Warnings"
          lines << ""
          quality_warnings.each do |warning|
            lines << "- **#{warning.fetch("severity", "caution")}** (`#{warning.fetch("code", "benchmark_quality")}`): #{warning.fetch("message")}"
          end
          lines << ""
        end
        lines << "## Summary"
        lines << ""
        lines << "| runtime | scenario | server | completed | errors | rps | p50 ms | p95 ms | p99 ms | rss peak MB |"
        lines << "| --- | --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |"

        rows.each do |row|
          lines << [
            row.fetch("runtime", "default"),
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

      def write_html(path, metadata, rows, samples)
        adapter_rows = adapter_summary(rows)
        html = []
        html << "<!doctype html>"
        html << "<html lang=\"en\">"
        html << "<head>"
        html << "<meta charset=\"utf-8\">"
        html << "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"
        html << "<title>Puma vs Raptor Simulation #{h(metadata.fetch("run_id"))}</title>"
        html << "<style>#{css}</style>"
        html << "</head>"
        html << "<body>"
        html << "<main>"
        html << "<section class=\"hero\">"
        html << "<p class=\"eyebrow\">Offline benchmark report</p>"
        html << "<h1>Puma vs Raptor Simulation</h1>"
        html << "<p>Run <code>#{h(metadata.fetch("run_id"))}</code> compared Puma and Raptor against the same generated Rack workload. All charts are inline SVG and this file is safe to open offline.</p>"
        html << "</section>"
        html << section("Environment", environment_table(metadata))
        html << section("Benchmark Quality Warnings", quality_warnings_table(metadata))
        html << section("Adapter Comparison", adapter_table(adapter_rows))
        html << section("Throughput By Scenario", grouped_bar_chart(adapter_rows, "best_rps", "Achieved requests/sec", higher_is_better: true))
        html << section("P99 Latency By Scenario", grouped_bar_chart(adapter_rows, "lowest_p99_ms", "Lowest p99 latency (ms)", higher_is_better: false))
        html << section("Peak RSS By Scenario", grouped_bar_chart(adapter_rows, "lowest_rss_mb_peak", "Lowest peak RSS (MB)", higher_is_better: false))
        html << section("All Measured Runs", raw_rows_table(rows))
        html << section("RSS Sample Coverage", sample_summary(samples))
        html << section("Caveats", caveats)
        html << "</main>"
        html << "</body>"
        html << "</html>"

        File.write(path, "#{html.join("\n")}\n")
      end

      def section(title, body)
        "<section><h2>#{h(title)}</h2>\n#{body}</section>"
      end

      def environment_table(metadata)
        rows = {
          "Created" => metadata["created_at"],
          "Git SHA" => metadata["git_sha"],
          "Ruby" => metadata["ruby"],
          "Raptor" => metadata["raptor_version"],
          "Puma" => metadata["puma_version"],
          "Rack" => metadata["rack_version"],
          "CPU count" => metadata["cpu_count"],
          "Platform" => metadata["platform"],
          "Requests per case" => metadata["requests"],
          "Warmup requests" => metadata["warmup_requests"],
          "Concurrency" => metadata["concurrency"],
          "Repeats" => metadata["repeats"],
          "Keep alive" => metadata["keep_alive"],
          "Runtime profiles" => Array(metadata["runtime_profiles"]).map { |profile| profile["label"] || profile["name"] }.join(", "),
          "Scenarios" => Array(metadata["scenarios"]).join(", ")
        }

        table(["Item", "Value"], rows.map { |name, value| [name, value] })
      end

      def quality_warnings_table(metadata)
        warnings = Array(metadata["quality_warnings"])
        return "<p>No automated benchmark quality warnings were recorded.</p>" if warnings.empty?

        table(
          ["Severity", "Code", "Message"],
          warnings.map do |warning|
            [
              warning["severity"] || "caution",
              warning["code"] || "benchmark_quality",
              warning["message"]
            ]
          end
        )
      end

      def adapter_summary(rows)
        rows.group_by { |row| [row.fetch("scenario"), row.fetch("adapter"), row.fetch("runtime", "default")] }.map do |(scenario, adapter, runtime), group|
          rps_row = group.max_by { |row| numeric(row["achieved_rps"]) || -Float::INFINITY }
          p50_row = group.min_by { |row| numeric(row["p50_ms"]) || Float::INFINITY }
          p95_row = group.min_by { |row| numeric(row["p95_ms"]) || Float::INFINITY }
          p99_row = group.min_by { |row| numeric(row["p99_ms"]) || Float::INFINITY }
          rss_row = group.min_by { |row| numeric(row["rss_mb_peak"]) || Float::INFINITY }

          {
            "scenario" => scenario,
            "adapter" => adapter,
            "runtime" => runtime,
            "series" => "#{adapter} #{runtime}",
            "best_rps" => rps_row && numeric(rps_row["achieved_rps"]),
            "best_rps_server" => rps_row && rps_row["server"],
            "lowest_p50_ms" => p50_row && numeric(p50_row["p50_ms"]),
            "lowest_p50_server" => p50_row && p50_row["server"],
            "lowest_p95_ms" => p95_row && numeric(p95_row["p95_ms"]),
            "lowest_p95_server" => p95_row && p95_row["server"],
            "lowest_p99_ms" => p99_row && numeric(p99_row["p99_ms"]),
            "lowest_p99_server" => p99_row && p99_row["server"],
            "lowest_rss_mb_peak" => rss_row && numeric(rss_row["rss_mb_peak"]),
            "lowest_rss_server" => rss_row && rss_row["server"],
            "completed" => group.sum { |row| Integer(row["completed"] || 0) },
            "errors" => group.sum { |row| Integer(row["errors"] || 0) }
          }
        end.sort_by { |row| [scenario_index(row["scenario"], rows), row["adapter"].to_s, row["runtime"].to_s] }
      end

      def adapter_table(rows)
        table(
          ["Scenario", "Adapter", "Runtime", "Best RPS", "RPS profile", "Lowest p50", "Lowest p95", "Lowest p99", "Lowest RSS MB", "Completed", "Errors"],
          rows.map do |row|
            [
              row["scenario"],
              row["adapter"],
              row["runtime"],
              format_number(row["best_rps"]),
              row["best_rps_server"],
              format_number(row["lowest_p50_ms"]),
              format_number(row["lowest_p95_ms"]),
              format_number(row["lowest_p99_ms"]),
              format_number(row["lowest_rss_mb_peak"]),
              row["completed"],
              row["errors"]
            ]
          end
        )
      end

      def raw_rows_table(rows)
        table(
          ["Runtime", "YJIT", "Scenario", "Server", "Adapter", "Completed", "Errors", "RPS", "p50 ms", "p95 ms", "p99 ms", "p99.9 ms", "Peak RSS MB", "CPU avg", "GC scope"],
          rows.sort_by { |row| [row["runtime"].to_s, row["scenario"].to_s, row["server"].to_s] }.map do |row|
            [
              row["runtime"],
              row["yjit"],
              row["scenario"],
              row["server"],
              row["adapter"],
              row["completed"],
              row["errors"],
              format_number(row["achieved_rps"]),
              format_number(row["p50_ms"]),
              format_number(row["p95_ms"]),
              format_number(row["p99_ms"]),
              format_number(row["p999_ms"]),
              format_number(row["rss_mb_peak"]),
              format_number(row["cpu_pct_avg"]),
              row["gc_delta_scope"]
            ]
          end
        )
      end

      def sample_summary(samples)
        return "<p>No RSS samples were recorded.</p>" if samples.empty?

        grouped = samples.group_by { |sample| [sample["runtime"] || "default", sample["scenario"], sample["server"]] }
        table(
          ["Runtime", "Scenario", "Server", "Samples", "Peak RSS MB", "Last RSS MB"],
          grouped.map do |(runtime, scenario, server), group|
            available = group.select { |sample| sample["available"] }
            rss_values = available.map { |sample| numeric(sample["rss_kb_total"]) }.compact
            [
              runtime,
              scenario,
              server,
              available.length,
              rss_values.empty? ? "n/a" : format_number(rss_values.max / 1024.0),
              rss_values.empty? ? "n/a" : format_number(rss_values.last / 1024.0)
            ]
          end.sort_by { |row| [row[0].to_s, row[1].to_s] }
        )
      end

      def grouped_bar_chart(rows, metric, label, higher_is_better:)
        scenarios = rows.map { |row| row["scenario"] }.uniq
        series = rows.map { |row| row["series"] }.uniq.sort
        values = rows.to_h { |row| [[row["scenario"], row["series"]], numeric(row[metric])] }
        max = values.values.compact.max || 1.0
        max = 1.0 if max <= 0.0

        width = [960, 170 + (scenarios.length * series.length * 34)].max
        height = 360
        plot_left = 72
        plot_right = width - 28
        plot_top = 36
        plot_bottom = height - 82
        plot_width = plot_right - plot_left
        plot_height = plot_bottom - plot_top
        group_width = plot_width / [scenarios.length, 1].max.to_f
        bar_width = [18, (group_width / ([series.length, 1].max + 1))].min

        svg = []
        svg << "<figure class=\"chart\">"
        svg << "<figcaption>#{h(label)}. #{higher_is_better ? "Higher is better." : "Lower is better."}</figcaption>"
        svg << "<svg viewBox=\"0 0 #{width} #{height}\" role=\"img\" aria-label=\"#{h(label)} chart\">"
        svg << "<line class=\"axis\" x1=\"#{plot_left}\" y1=\"#{plot_bottom}\" x2=\"#{plot_right}\" y2=\"#{plot_bottom}\" />"
        svg << "<line class=\"axis\" x1=\"#{plot_left}\" y1=\"#{plot_top}\" x2=\"#{plot_left}\" y2=\"#{plot_bottom}\" />"
        svg << "<text class=\"tick\" x=\"#{plot_left - 12}\" y=\"#{plot_top + 4}\" text-anchor=\"end\">#{h(format_number(max))}</text>"
        svg << "<text class=\"tick\" x=\"#{plot_left - 12}\" y=\"#{plot_bottom + 4}\" text-anchor=\"end\">0</text>"

        scenarios.each_with_index do |scenario, scenario_index|
          center = plot_left + (group_width * scenario_index) + (group_width / 2.0)
          svg << "<text class=\"x-label\" x=\"#{center.round(2)}\" y=\"#{plot_bottom + 28}\" text-anchor=\"middle\">#{h(scenario)}</text>"

          series.each_with_index do |series_name, series_index|
            value = values[[scenario, series_name]]
            next unless value

            x = center - ((series.length * bar_width) / 2.0) + (series_index * bar_width)
            bar_height = (value / max) * plot_height
            y = plot_bottom - bar_height
            svg << "<rect class=\"bar\" style=\"fill: #{h(series_color(series_name))}\" x=\"#{x.round(2)}\" y=\"#{y.round(2)}\" width=\"#{(bar_width - 4).round(2)}\" height=\"#{bar_height.round(2)}\">"
            svg << "<title>#{h(scenario)} #{h(series_name)}: #{h(format_number(value))}</title>"
            svg << "</rect>"
          end
        end

        series.each_with_index do |series_name, index|
          x = plot_left + (index * 150)
          svg << "<rect class=\"legend\" style=\"fill: #{h(series_color(series_name))}\" x=\"#{x}\" y=\"#{height - 30}\" width=\"14\" height=\"14\" />"
          svg << "<text class=\"legend-label\" x=\"#{x + 20}\" y=\"#{height - 18}\">#{h(series_name)}</text>"
        end

        svg << "</svg>"
        svg << "</figure>"
        svg.join("\n")
      end

      def table(headers, rows)
        html = []
        html << "<div class=\"table-wrap\"><table>"
        html << "<thead><tr>#{headers.map { |header| "<th>#{h(header)}</th>" }.join}</tr></thead>"
        html << "<tbody>"
        rows.each do |row|
          html << "<tr>#{row.map { |value| "<td>#{h(value.nil? ? "n/a" : value)}</td>" }.join}</tr>"
        end
        html << "</tbody>"
        html << "</table></div>"
        html.join("\n")
      end

      def caveats
        <<~HTML
          <ul>
            <li>This is a local closed-loop benchmark using Ruby's <code>Net::HTTP</code>, not a replacement for wrk or wrk2.</li>
            <li>Warmup requests are discarded from latency and throughput numbers.</li>
            <li>RSS and CPU charts depend on <code>ps</code>. If process sampling is unavailable, memory cells may be blank.</li>
            <li>Puma cluster GC deltas are intentionally blank in summary columns because a normal HTTP metrics probe samples one worker, not the full cluster.</li>
            <li>Use raw absolute numbers first. Percentage deltas only make sense beside latency, throughput, RSS, CPU, errors, and workload context.</li>
          </ul>
        HTML
      end

      def css
        <<~CSS
          :root {
            color-scheme: light;
            --ink: #1c2430;
            --muted: #5f6b7a;
            --line: #d8dee8;
            --panel: #f7f9fc;
            --raptor: #2f7f73;
            --puma: #b45c2b;
          }
          body {
            margin: 0;
            background: #ffffff;
            color: var(--ink);
            font: 14px/1.5 system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
          }
          main { max-width: 1180px; margin: 0 auto; padding: 32px 24px 56px; }
          .hero { border-bottom: 1px solid var(--line); margin-bottom: 28px; padding-bottom: 22px; }
          .eyebrow { color: var(--muted); font-size: 12px; font-weight: 700; margin: 0 0 8px; text-transform: uppercase; }
          h1 { font-size: 34px; line-height: 1.1; margin: 0 0 12px; }
          h2 { font-size: 21px; margin: 32px 0 12px; }
          p { max-width: 850px; }
          code { background: var(--panel); border: 1px solid var(--line); border-radius: 4px; padding: 1px 4px; }
          section { margin-bottom: 28px; }
          .table-wrap { border: 1px solid var(--line); overflow-x: auto; }
          table { border-collapse: collapse; min-width: 760px; width: 100%; }
          th, td { border-bottom: 1px solid var(--line); padding: 8px 10px; text-align: left; vertical-align: top; }
          th { background: var(--panel); font-size: 12px; text-transform: uppercase; }
          tr:last-child td { border-bottom: 0; }
          .chart { border: 1px solid var(--line); margin: 0; overflow-x: auto; padding: 14px; }
          figcaption { color: var(--muted); margin-bottom: 8px; }
          svg { display: block; min-width: 820px; width: 100%; }
          .axis { stroke: #8c97a6; stroke-width: 1; }
          .tick, .x-label, .legend-label { fill: var(--muted); font-size: 12px; }
          ul { max-width: 920px; padding-left: 20px; }
        CSS
      end

      def series_color(series_name)
        case series_name
        when "raptor yjit-off" then "#2f7f73"
        when "raptor yjit-on" then "#53a99b"
        when "puma yjit-off" then "#b45c2b"
        when "puma yjit-on" then "#d88848"
        when /raptor/ then "#2f7f73"
        when /puma/ then "#b45c2b"
        else "#687386"
        end
      end

      def scenario_index(scenario, rows)
        rows.map { |row| row["scenario"] }.uniq.index(scenario) || 0
      end

      def numeric(value)
        return nil if value.nil?

        Float(value)
      rescue ArgumentError, TypeError
        nil
      end

      def format_number(value)
        value = numeric(value)
        return "n/a" unless value

        value.round(3).to_s
      end

      def h(value)
        CGI.escapeHTML(value.to_s)
      end
    end
  end
end

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
        scenario_family
        benchmark_source
        benchmark_source_url
        server
        server_capacity
        adapter
        workers
        threads
        requests
        target_requests
        duration_s
        min_duration_s
        target_warmup_requests
        warmup_requests
        warmup_duration_s
        warmup_min_duration_s
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
        target_sample_count
        sample_count
        raw_sample_count
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
        lines << "## Benchmark Source Coverage"
        lines << ""
        lines << "| family | source | scenarios | runtimes |"
        lines << "| --- | --- | ---: | --- |"
        source_coverage(rows).each do |row|
          lines << "| #{row.fetch("family")} | #{row.fetch("source")} | #{row.fetch("scenarios")} | #{row.fetch("runtimes").join(", ")} |"
        end
        lines << ""
        lines << "## Summary"
        lines << ""
        lines << "| runtime | scenario | source | server | capacity | duration s | warmup s | completed | errors | rps | p50 ms | p95 ms | p99 ms | rss peak MB | samples |"
        lines << "| --- | --- | --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |"

        rows.each do |row|
          lines << [
            row.fetch("runtime", "default"),
            row.fetch("scenario"),
            row.fetch("benchmark_source", "raptor-generated"),
            row.fetch("server"),
            row.fetch("server_capacity", "n/a"),
            row.fetch("duration_s", "n/a"),
            row.fetch("warmup_duration_s", "n/a"),
            row.fetch("completed"),
            row.fetch("errors"),
            row.fetch("achieved_rps"),
            row.fetch("p50_ms"),
            row.fetch("p95_ms"),
            row.fetch("p99_ms"),
            row.fetch("rss_mb_peak"),
            row["sample_count"]
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
        html << section("Benchmark Source Coverage", source_coverage_table(rows))
        html << section("Throughput And Latency", throughput_latency_notes)
        html << section("Charted Comparisons", chart_breakdown(adapter_rows))
        html << section("Adapter Comparison", adapter_table(adapter_rows))
        html << section("All Measured Runs", raw_rows_table(rows))
        html << section("RSS Sample Coverage", sample_summary(samples))
        html << section("Caveats", caveats)
        html << "<script>#{chart_toggle_script}</script>"
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
          "Harness YJIT" => metadata.fetch("harness_yjit", metadata["yjit"]),
          "Raptor" => metadata["raptor_version"],
          "Puma" => metadata["puma_version"],
          "Rack" => metadata["rack_version"],
          "CPU count" => metadata["cpu_count"],
          "Platform" => metadata["platform"],
          "Machine arch" => metadata["machine_arch"],
          "Machine OS" => metadata["machine_os"],
          "Benchmark suite" => metadata["benchmark_suite"],
          "Benchmark axis" => metadata["benchmark_axis"],
          "Runner" => metadata["runner_label"],
          "GitHub run" => metadata["github_run_id"],
          "Requests per case" => metadata["requests"],
          "Warmup requests" => metadata["warmup_requests"],
          "Minimum measured duration" => metadata["min_duration_s"],
          "Minimum warmup duration" => metadata["warmup_duration_s"],
          "RSS/CPU sample target" => metadata["sample_count"],
          "RSS/CPU sample interval max" => metadata["sample_interval_s"],
          "Concurrency" => metadata["concurrency"],
          "Repeats" => metadata["repeats"],
          "Keep alive" => metadata["keep_alive"],
          "Runtime profiles" => Array(metadata["runtime_profiles"]).map { |profile| profile["label"] || profile["name"] }.join(", "),
          "Scenarios" => Array(metadata["scenarios"]).join(", "),
          "Benchmark sources" => Array(metadata["benchmark_sources"]).map { |source| source["label"] || source["source"] }.compact.uniq.join(", ")
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

      def source_coverage(rows)
        rows.group_by { |row| [row["scenario_family"] || "ad hoc", row["benchmark_source"] || "raptor-generated"] }.map do |(family, source), group|
          {
            "family" => family,
            "source" => source,
            "scenarios" => group.map { |row| row["scenario"] }.uniq.length,
            "runtimes" => group.map { |row| row["runtime"] || "default" }.uniq.sort,
            "adapters" => group.map { |row| row["adapter"] }.uniq.sort,
            "runs" => group.length
          }
        end.sort_by { |row| row["family"].to_s }
      end

      def source_coverage_table(rows)
        coverage = source_coverage(rows)
        return "<p>No measured benchmark rows were recorded.</p>" if coverage.empty?

        table(
          ["Family", "Source", "Scenarios", "Runtimes", "Adapters", "Rows"],
          coverage.map do |row|
            [
              row["family"],
              row["source"],
              row["scenarios"],
              row["runtimes"].join(", "),
              row["adapters"].join(", "),
              row["runs"]
            ]
          end
        )
      end

      def adapter_summary(rows)
        aggregate_repeat_rows(rows).group_by { |row| [row.fetch("scenario"), row["scenario_family"], row["benchmark_source"], row.fetch("adapter"), row.fetch("runtime", "default"), row["server_capacity"]] }.map do |(scenario, family, source, adapter, runtime, capacity), group|
          rps_row = group.max_by { |row| numeric(row["achieved_rps_median"]) || -Float::INFINITY }
          p50_row = group.min_by { |row| numeric(row["p50_ms_median"]) || Float::INFINITY }
          p95_row = group.min_by { |row| numeric(row["p95_ms_median"]) || Float::INFINITY }
          p99_row = group.min_by { |row| numeric(row["p99_ms_median"]) || Float::INFINITY }
          rss_row = group.min_by { |row| numeric(row["rss_mb_peak_median"]) || Float::INFINITY }

          {
            "scenario" => scenario,
            "scenario_family" => family,
            "benchmark_source" => source,
            "adapter" => adapter,
            "runtime" => runtime,
            "server_capacity" => capacity,
            "series" => "#{adapter} #{runtime} #{capacity} slots",
            "best_rps" => rps_row && numeric(rps_row["achieved_rps_median"]),
            "best_rps_server" => rps_row && rps_row["server"],
            "lowest_p50_ms" => p50_row && numeric(p50_row["p50_ms_median"]),
            "lowest_p50_server" => p50_row && p50_row["server"],
            "lowest_p95_ms" => p95_row && numeric(p95_row["p95_ms_median"]),
            "lowest_p95_server" => p95_row && p95_row["server"],
            "lowest_p99_ms" => p99_row && numeric(p99_row["p99_ms_median"]),
            "lowest_p99_server" => p99_row && p99_row["server"],
            "lowest_rss_mb_peak" => rss_row && numeric(rss_row["rss_mb_peak_median"]),
            "lowest_rss_server" => rss_row && rss_row["server"],
            "runs" => group.sum { |row| Integer(row["runs"] || 0) },
            "completed" => group.sum { |row| Integer(row["completed"] || 0) },
            "errors" => group.sum { |row| Integer(row["errors"] || 0) }
          }
        end.sort_by { |row| [scenario_index(row["scenario"], rows), numeric(row["server_capacity"]) || 0, row["adapter"].to_s, row["runtime"].to_s] }
      end

      def adapter_table(rows)
        table(
          [
            "Scenario",
            "Family",
            "Source",
            "Adapter",
            "Runtime",
            "Capacity",
            "Best median RPS",
            "RPS profile",
            "Lowest median p50",
            "p50 profile",
            "Lowest median p95",
            "p95 profile",
            "Lowest median p99",
            "p99 profile",
            "Lowest median RSS MB",
            "RSS profile",
            "Runs",
            "Completed",
            "Errors"
          ],
          rows.map do |row|
            [
              row["scenario"],
              row["scenario_family"],
              row["benchmark_source"],
              row["adapter"],
              row["runtime"],
              row["server_capacity"],
              format_number(row["best_rps"]),
              row["best_rps_server"],
              format_number(row["lowest_p50_ms"]),
              row["lowest_p50_server"],
              format_number(row["lowest_p95_ms"]),
              row["lowest_p95_server"],
              format_number(row["lowest_p99_ms"]),
              row["lowest_p99_server"],
              format_number(row["lowest_rss_mb_peak"]),
              row["lowest_rss_server"],
              row["runs"],
              row["completed"],
              row["errors"]
            ]
          end
        )
      end

      def throughput_latency_notes
        <<~HTML
          <p>Throughput and latency measure related but different things. Throughput is completed requests per measured second, while latency percentiles describe only selected points in the request distribution. With a fixed closed-loop concurrency, a server can show better p50 or p95 latency and still have lower throughput if more time is spent in tail requests, scheduling, GC, process coordination, or other overhead that reduces total completions.</p>
          <p>Use the raw rows when this happens: compare completed requests, measured duration, p50, p95, p99, p99.9, CPU, RSS, and errors together. A lower p50 with a worse p99 or fewer completions usually means the common case got faster but some request slots stayed occupied long enough to pull throughput down.</p>
        HTML
      end

      def chart_breakdown(rows)
        groups = chart_groups(rows)
        return "<p>No adapter comparison rows were recorded.</p>" if groups.empty?

        html = []
        html << "<div class=\"chart-breakdown\">"
        groups.each do |group|
          metric_charts = [
            ["best_rps", "Best median throughput (requests/sec)", true],
            ["lowest_p99_ms", "Lowest median p99 latency (ms)", false],
            ["lowest_rss_mb_peak", "Lowest median peak RSS (MB)", false]
          ]
          metric_maxes = metric_charts.to_h { |metric, _label, _higher| [metric, chart_max(group.fetch("rows"), metric)] }

          html << "<section class=\"chart-family\">"
          html << "<div class=\"chart-family-heading\">"
          html << "<h3>#{h(group.fetch("title"))}</h3>"
          html << "<p>#{h(group.fetch("description"))}</p>"
          html << "</div>"

          runtime_labels(group.fetch("rows")).each do |runtime|
            runtime_rows = group.fetch("rows").select { |row| row["runtime"].to_s == runtime }
            html << "<div class=\"runtime-section\">"
            html << "<h4>#{h(runtime_title(runtime))}</h4>"
            html << "<div class=\"metric-grid\">"
            metric_charts.each do |metric, label, higher_is_better|
              html << grouped_bar_chart(runtime_rows, metric, label, higher_is_better: higher_is_better, compact: true, scenario_labels: group.fetch("scenario_labels"), max_value: metric_maxes.fetch(metric))
            end
            html << "</div>"
            html << "</div>"
          end

          html << "</section>"
        end
        html << "</div>"
        html.join("\n")
      end

      def aggregate_repeat_rows(rows)
        rows.group_by { |row| [row.fetch("scenario"), row["scenario_family"], row["benchmark_source"], row.fetch("adapter"), row.fetch("runtime", "default"), row.fetch("server"), row["server_capacity"]] }.map do |(scenario, family, source, adapter, runtime, server, capacity), group|
          {
            "scenario" => scenario,
            "scenario_family" => family,
            "benchmark_source" => source,
            "adapter" => adapter,
            "runtime" => runtime,
            "server" => server,
            "server_capacity" => capacity,
            "runs" => group.length,
            "achieved_rps_median" => median(group.map { |row| numeric(row["achieved_rps"]) }.compact),
            "p50_ms_median" => median(group.map { |row| numeric(row["p50_ms"]) }.compact),
            "p95_ms_median" => median(group.map { |row| numeric(row["p95_ms"]) }.compact),
            "p99_ms_median" => median(group.map { |row| numeric(row["p99_ms"]) }.compact),
            "rss_mb_peak_median" => median(group.map { |row| numeric(row["rss_mb_peak"]) }.compact),
            "completed" => group.sum { |row| Integer(row["completed"] || 0) },
            "errors" => group.sum { |row| Integer(row["errors"] || 0) }
          }
        end
      end

      def raw_rows_table(rows)
        table(
          ["Runtime", "YJIT", "Scenario", "Family", "Source", "Server", "Capacity", "Adapter", "Requests", "Target", "Duration s", "Warmup s", "Completed", "Errors", "RPS", "p50 ms", "p95 ms", "p99 ms", "p99.9 ms", "Peak RSS MB", "CPU avg", "Samples", "GC scope"],
          rows.sort_by { |row| [row["runtime"].to_s, row["scenario"].to_s, row["server"].to_s] }.map do |row|
            [
              row["runtime"],
              row["yjit"],
              row["scenario"],
              row["scenario_family"],
              row["benchmark_source"],
              row["server"],
              row["server_capacity"],
              row["adapter"],
              row["requests"],
              row["target_requests"],
              format_number(row["duration_s"]),
              format_number(row["warmup_duration_s"]),
              row["completed"],
              row["errors"],
              format_number(row["achieved_rps"]),
              format_number(row["p50_ms"]),
              format_number(row["p95_ms"]),
              format_number(row["p99_ms"]),
              format_number(row["p999_ms"]),
              format_number(row["rss_mb_peak"]),
              format_number(row["cpu_pct_avg"]),
              row["sample_count"],
              row["gc_delta_scope"]
            ]
          end
        )
      end

      def sample_summary(samples)
        return "<p>No RSS samples were recorded.</p>" if samples.empty?

        grouped = samples.group_by { |sample| [sample["runtime"] || "default", sample["scenario"], sample["server"]] }
        table(
          ["Runtime", "Scenario", "Server", "Samples", "Target", "Peak RSS MB", "Last RSS MB"],
          grouped.map do |(runtime, scenario, server), group|
            available = group.select { |sample| sample["available"] }
            rss_values = available.map { |sample| numeric(sample["rss_kb_total"]) }.compact
            [
              runtime,
              scenario,
              server,
              available.length,
              group.first["target_sample_count"],
              rss_values.empty? ? "n/a" : format_number(rss_values.max / 1024.0),
              rss_values.empty? ? "n/a" : format_number(rss_values.last / 1024.0)
            ]
          end.sort_by { |row| [row[0].to_s, row[1].to_s] }
        )
      end

      def chart_groups(rows)
        groups = []
        by_key = {}

        rows.each do |row|
          metadata = chart_group_metadata(row["scenario"], row["scenario_family"])
          key = metadata.fetch("key")
          group = by_key[key]
          unless group
            group = metadata.merge("rows" => [], "scenario_labels" => {})
            groups << group
            by_key[key] = group
          end

          scenario = row["scenario"]
          group.fetch("rows") << row
          group.fetch("scenario_labels")[scenario] ||= scenario_short_label(scenario)
        end

        groups
      end

      def chart_max(rows, metric)
        max = rows.map { |row| numeric(row[metric]) }.compact.max || 1.0
        max <= 0.0 ? 1.0 : max
      end

      def chart_group_metadata(scenario, family)
        case scenario.to_s
        when /\Apuma-response-(array|chunk|string|io)-/
          body = Regexp.last_match(1)
          body_label = body == "io" ? "IO" : body.capitalize
          {
            "key" => "puma-response-#{body}",
            "title" => "Response body: #{body_label}",
            "description" => "Puma response-body benchmark rows grouped by body representation, with payload sizes kept on one small axis."
          }
        when /\Apuma-long-tail-fib-200ms-/
          {
            "key" => "puma-long-tail",
            "title" => "Long-tail concurrency sweep",
            "description" => "Mixed sleep plus Fibonacci work at Puma's long-tail pressure points."
          }
        when /\Apuma-sleep-fibonacci-/
          {
            "key" => "puma-sleep-fibonacci",
            "title" => "Sleep/fibonacci delay sweep",
            "description" => "Puma sleep/fibonacci microbenchmark rows grouped by delay duration."
          }
        else
          label = family.to_s.empty? ? "Ad hoc workload" : family.to_s.split(/[-_]/).map(&:capitalize).join(" ")
          {
            "key" => family.to_s.empty? ? "ad-hoc" : family.to_s,
            "title" => label,
            "description" => "Generated benchmark scenarios outside the Puma-derived default families."
          }
        end
      end

      def scenario_short_label(scenario)
        case scenario.to_s
        when /\Apuma-response-[^-]+-(\d+)kb\z/
          "#{Regexp.last_match(1)} KB"
        when /\Apuma-long-tail-fib-200ms-x(.+)\z/
          "x#{Regexp.last_match(1).tr("p", ".")}"
        when /\Apuma-sleep-fibonacci-(\d+)ms\z/
          "#{Regexp.last_match(1)} ms"
        else
          scenario.to_s.sub(/\Apuma-/, "").gsub("-", " ")
        end
      end

      def runtime_labels(rows)
        rows.map { |row| row["runtime"].to_s }.uniq.sort_by { |runtime| runtime_sort_key(runtime) }
      end

      def runtime_title(runtime)
        case runtime
        when "yjit-on" then "YJIT on"
        when "yjit-off" then "YJIT off"
        when "default" then "Default runtime"
        else runtime
        end
      end

      def runtime_sort_key(runtime)
        case runtime
        when "yjit-off" then [0, runtime]
        when "yjit-on" then [1, runtime]
        else [2, runtime]
        end
      end

      def grouped_bar_chart(rows, metric, label, higher_is_better:, compact: false, scenario_labels: {}, max_value: nil)
        scenarios = rows.map { |row| row["scenario"] }.uniq
        series = rows.map { |row| row["series"] }.uniq.sort_by { |series_name| series_sort_key(series_name) }
        values = rows.to_h { |row| [[row["scenario"], row["series"]], numeric(row[metric])] }
        max = max_value || chart_max(rows, metric)

        width = [compact ? 560 : 960, 170 + (scenarios.length * series.length * (compact ? 42 : 34))].max
        height = compact ? 280 : 360
        plot_left = compact ? 66 : 72
        plot_right = width - 28
        plot_top = compact ? 32 : 36
        plot_bottom = height - (compact ? 70 : 82)
        plot_width = plot_right - plot_left
        plot_height = plot_bottom - plot_top
        group_width = plot_width / [scenarios.length, 1].max.to_f
        bar_width = [compact ? 24 : 18, (group_width / ([series.length, 1].max + 1))].min
        figure_classes = compact ? "chart chart-compact" : "chart"

        svg = []
        fixed_max_attribute = max_value ? " data-fixed-max=\"#{h(max)}\"" : ""
        svg << "<figure class=\"#{figure_classes}\" data-chart-toggle#{fixed_max_attribute}>"
        svg << "<figcaption>#{h(label)} <span>#{higher_is_better ? "Higher is better." : "Lower is better."}</span></figcaption>"
        svg << "<svg viewBox=\"0 0 #{width} #{height}\" role=\"img\" aria-label=\"#{h(label)} chart\">"
        svg << "<line class=\"axis\" x1=\"#{plot_left}\" y1=\"#{plot_bottom}\" x2=\"#{plot_right}\" y2=\"#{plot_bottom}\" />"
        svg << "<line class=\"axis\" x1=\"#{plot_left}\" y1=\"#{plot_top}\" x2=\"#{plot_left}\" y2=\"#{plot_bottom}\" />"
        svg << "<text class=\"tick\" data-axis-max x=\"#{plot_left - 12}\" y=\"#{plot_top + 4}\" text-anchor=\"end\">#{h(format_number(max))}</text>"
        svg << "<text class=\"tick\" x=\"#{plot_left - 12}\" y=\"#{plot_bottom + 4}\" text-anchor=\"end\">0</text>"

        scenarios.each_with_index do |scenario, scenario_index|
          center = plot_left + (group_width * scenario_index) + (group_width / 2.0)
          svg << "<text class=\"x-label\" role=\"button\" tabindex=\"0\" aria-pressed=\"false\" data-scenario-label=\"#{h(scenario)}\" x=\"#{center.round(2)}\" y=\"#{plot_bottom + 26}\" text-anchor=\"middle\">#{h(scenario_labels.fetch(scenario, scenario))}</text>"

          series.each_with_index do |series_name, series_index|
            value = values[[scenario, series_name]]
            next unless value

            x = center - ((series.length * bar_width) / 2.0) + (series_index * bar_width)
            bar_height = (value / max) * plot_height
            y = plot_bottom - bar_height
            svg << "<rect class=\"bar\" role=\"button\" tabindex=\"0\" aria-pressed=\"true\" data-scenario=\"#{h(scenario)}\" data-series=\"#{h(series_name)}\" data-value=\"#{h(value)}\" data-plot-bottom=\"#{plot_bottom}\" data-plot-height=\"#{plot_height}\" style=\"fill: #{h(series_color(series_name))}\" x=\"#{x.round(2)}\" y=\"#{y.round(2)}\" width=\"#{[bar_width - 4, 6].max.round(2)}\" height=\"#{bar_height.round(2)}\">"
            svg << "<title>#{h(scenario)} #{h(series_name)}: #{h(format_number(value))}</title>"
            svg << "</rect>"
          end
        end

        series.each_with_index do |series_name, index|
          x = plot_left + (index * (compact ? 168 : 150))
          svg << "<g class=\"legend-item\" role=\"button\" tabindex=\"0\" data-legend-series=\"#{h(series_name)}\" aria-pressed=\"true\">"
          svg << "<rect class=\"legend\" style=\"fill: #{h(series_color(series_name))}\" x=\"#{x}\" y=\"#{height - 30}\" width=\"14\" height=\"14\" />"
          svg << "<text class=\"legend-label\" x=\"#{x + 20}\" y=\"#{height - 18}\">#{h(series_name)}</text>"
          svg << "</g>"
        end

        svg << "</svg>"
        svg << "</figure>"
        svg.join("\n")
      end

      def series_sort_key(series_name)
        adapter_rank =
          if series_name.start_with?("raptor")
            0
          elsif series_name.start_with?("puma")
            1
          else
            2
          end

        [adapter_rank, series_name]
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
            <li>Adapter comparison tables and charts aggregate repeats by server/runtime/scenario/capacity first, then present Puma and Raptor rows within the same request-slot capacity groups.</li>
            <li>Use raw absolute numbers first. Percentage deltas only make sense beside latency, throughput, RSS, CPU, errors, and workload context.</li>
          </ul>
        HTML
      end

      def chart_toggle_script
        <<~JS
          (function () {
            function number(value) {
              var parsed = Number(value);
              return Number.isFinite(parsed) ? parsed : null;
            }

            function format(value) {
              var parsed = number(value);
              if (parsed === null) return "n/a";
              return (Math.round(parsed * 1000) / 1000).toString();
            }

            function hiddenSet(chart) {
              return new Set(String(chart.dataset.hiddenSeries || "").split("|").filter(Boolean));
            }

            function storeHidden(chart, hidden) {
              chart.dataset.hiddenSeries = Array.from(hidden).join("|");
            }

            function bars(chart) {
              return Array.prototype.slice.call(chart.querySelectorAll(".bar[data-series]"));
            }

            function maxValue(items) {
              var values = items.map(function (bar) { return number(bar.dataset.value) || 0; });
              var max = Math.max.apply(null, values);
              return Number.isFinite(max) && max > 0 ? max : 1;
            }

            function sync(chart) {
              var hidden = hiddenSet(chart);
              var allBars = bars(chart);
              var focusScenario = chart.dataset.focusScenario || "";
              var visibleBars = allBars.filter(function (bar) {
                return !hidden.has(bar.dataset.series) && (!focusScenario || bar.dataset.scenario === focusScenario);
              });
              var fixedMax = number(chart.dataset.fixedMax);
              var max = fixedMax || maxValue(visibleBars.length > 0 ? visibleBars : allBars);
              var axisMax = chart.querySelector("[data-axis-max]");
              if (axisMax) axisMax.textContent = format(max);

              allBars.forEach(function (bar) {
                var isHidden = hidden.has(bar.dataset.series) || (focusScenario && bar.dataset.scenario !== focusScenario);
                var value = number(bar.dataset.value) || 0;
                var bottom = number(bar.dataset.plotBottom) || 0;
                var plotHeight = number(bar.dataset.plotHeight) || 0;
                var height = isHidden ? 3 : (value / max) * plotHeight;
                bar.setAttribute("y", format(bottom - height));
                bar.setAttribute("height", format(height));
                bar.classList.toggle("is-hidden", isHidden);
                bar.setAttribute("aria-pressed", isHidden ? "false" : "true");
              });

              Array.prototype.slice.call(chart.querySelectorAll("[data-legend-series]")).forEach(function (legend) {
                var isHidden = hidden.has(legend.dataset.legendSeries);
                legend.classList.toggle("is-hidden", isHidden);
                legend.setAttribute("aria-pressed", isHidden ? "false" : "true");
              });

              Array.prototype.slice.call(chart.querySelectorAll("[data-scenario-label]")).forEach(function (label) {
                var isFocused = focusScenario && label.dataset.scenarioLabel === focusScenario;
                var isDimmed = focusScenario && !isFocused;
                label.classList.toggle("is-focused", Boolean(isFocused));
                label.classList.toggle("is-hidden", Boolean(isDimmed));
                label.setAttribute("aria-pressed", isFocused ? "true" : "false");
              });
            }

            function toggleSeries(chart, series) {
              var hidden = hiddenSet(chart);
              if (hidden.has(series)) {
                hidden.delete(series);
              } else {
                hidden.add(series);
              }
              storeHidden(chart, hidden);
              sync(chart);
            }

            function toggleScenario(chart, scenario) {
              chart.dataset.focusScenario = chart.dataset.focusScenario === scenario ? "" : scenario;
              sync(chart);
            }

            document.querySelectorAll("[data-chart-toggle]").forEach(function (chart) {
              sync(chart);
              chart.addEventListener("click", function (event) {
                var target = event.target.closest("[data-series], [data-legend-series], [data-scenario-label]");
                if (!target || !chart.contains(target)) return;
                if (target.dataset.scenarioLabel) {
                  toggleScenario(chart, target.dataset.scenarioLabel);
                  return;
                }
                toggleSeries(chart, target.dataset.series || target.dataset.legendSeries);
              });
              chart.addEventListener("keydown", function (event) {
                if (event.key !== "Enter" && event.key !== " ") return;
                var target = event.target.closest("[data-series], [data-legend-series], [data-scenario-label]");
                if (!target || !chart.contains(target)) return;
                event.preventDefault();
                if (target.dataset.scenarioLabel) {
                  toggleScenario(chart, target.dataset.scenarioLabel);
                  return;
                }
                toggleSeries(chart, target.dataset.series || target.dataset.legendSeries);
              });
            });
          })();
        JS
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
          h3 { font-size: 18px; line-height: 1.25; margin: 0 0 6px; }
          h4 { color: var(--muted); font-size: 13px; letter-spacing: 0; margin: 18px 0 10px; text-transform: uppercase; }
          p { max-width: 850px; }
          code { background: var(--panel); border: 1px solid var(--line); border-radius: 4px; padding: 1px 4px; }
          section { margin-bottom: 28px; }
          .table-wrap { border: 1px solid var(--line); overflow-x: auto; }
          table { border-collapse: collapse; min-width: 760px; width: 100%; }
          th, td { border-bottom: 1px solid var(--line); padding: 8px 10px; text-align: left; vertical-align: top; }
          th { background: var(--panel); font-size: 12px; text-transform: uppercase; }
          tr:last-child td { border-bottom: 0; }
          .chart-breakdown { margin-top: 18px; }
          .chart-family { border-top: 1px solid var(--line); margin: 26px 0 34px; padding-top: 18px; }
          .chart-family:first-child { margin-top: 8px; }
          .chart-family-heading {
            align-items: baseline;
            display: grid;
            gap: 6px 18px;
            grid-template-columns: minmax(210px, 0.34fr) minmax(0, 1fr);
          }
          .chart-family-heading p { color: var(--muted); margin: 0; max-width: none; }
          .runtime-section { margin-top: 16px; }
          .metric-grid {
            display: grid;
            gap: 14px;
            grid-template-columns: repeat(auto-fit, minmax(310px, 1fr));
          }
          .chart { border: 1px solid var(--line); margin: 0; overflow-x: auto; padding: 14px; }
          .chart-compact { min-width: 0; padding: 12px; }
          figcaption { color: var(--ink); font-weight: 700; margin-bottom: 8px; }
          figcaption span { color: var(--muted); display: block; font-weight: 500; }
          .chart svg { display: block; min-width: 820px; width: 100%; }
          .chart-compact svg { min-width: 0; }
          .axis { stroke: #8c97a6; stroke-width: 1; }
          .tick, .x-label, .legend-label { fill: var(--muted); font-size: 12px; }
          .bar, .legend-item, .x-label { cursor: pointer; transition: opacity 120ms ease; }
          .bar:focus-visible, .legend-item:focus-visible, .x-label:focus-visible { outline: 2px solid #315fba; outline-offset: 2px; }
          .bar.is-hidden { opacity: 0.2; }
          .legend-item.is-hidden, .x-label.is-hidden { opacity: 0.4; }
          .x-label.is-focused { font-weight: 700; fill: var(--ink); }
          ul { max-width: 920px; padding-left: 20px; }
          @media (max-width: 960px) {
            main { padding: 24px 16px 44px; }
            h1 { font-size: 30px; }
            .chart-family-heading { grid-template-columns: 1fr; }
            .metric-grid { grid-template-columns: 1fr; }
          }
        CSS
      end

      def series_color(series_name)
        case series_name
        when /\Araptor yjit-off/ then "#2f7f73"
        when /\Araptor yjit-on/ then "#53a99b"
        when /\Apuma yjit-off/ then "#b45c2b"
        when /\Apuma yjit-on/ then "#d88848"
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

      def median(values)
        return nil if values.empty?

        sorted = values.sort
        midpoint = sorted.length / 2
        return sorted[midpoint] if sorted.length.odd?

        (sorted[midpoint - 1] + sorted[midpoint]) / 2.0
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

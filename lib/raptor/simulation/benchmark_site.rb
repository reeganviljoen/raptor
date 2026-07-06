# frozen_string_literal: true

require "cgi"
require "csv"
require "fileutils"
require "json"
require "time"

require_relative "report"

module Raptor
  module Simulation
    class BenchmarkSite
      DEFAULT_TITLE = "Raptor Benchmarks"
      COPIED_ARTIFACTS = %w[
        report.html
        report.md
        metadata.json
        summary.json
        summary.csv
        samples.ndjson
      ].freeze

      attr_reader :input_roots, :output_dir, :title

      def self.build(input_roots:, output_dir:, title: DEFAULT_TITLE)
        new(input_roots: input_roots, output_dir: output_dir, title: title).build
      end

      def initialize(input_roots:, output_dir:, title: DEFAULT_TITLE)
        @input_roots = Array(input_roots).map { |root| File.expand_path(root) }
        @output_dir = File.expand_path(output_dir)
        @title = title
      end

      def build
        validate_paths!

        runs = load_runs
        FileUtils.rm_rf(output_dir)
        FileUtils.mkdir_p(File.join(output_dir, "data"))
        FileUtils.mkdir_p(File.join(output_dir, "runs"))

        entries = copy_run_artifacts(runs)
        write_combined_json(entries)
        write_combined_csv(entries)
        write_index(entries)

        {
          "output_dir" => output_dir,
          "index" => File.join(output_dir, "index.html"),
          "runs" => entries.length
        }
      end

      private

      def validate_paths!
        input_roots.each do |root|
          next unless root == output_dir

          raise ArgumentError, "output directory must not be the same as an input root"
        end
      end

      def load_runs
        input_roots.flat_map do |root|
          Dir.glob(File.join(root, "**", "metadata.json")).filter_map do |metadata_path|
            run_dir = File.dirname(metadata_path)
            summary_path = File.join(run_dir, "summary.json")
            next unless File.exist?(summary_path)

            {
              "run_dir" => run_dir,
              "metadata" => JSON.parse(File.read(metadata_path)),
              "summary" => JSON.parse(File.read(summary_path))
            }
          end
        end.sort_by { |run| run.fetch("metadata").fetch("created_at", "") }
      end

      def copy_run_artifacts(runs)
        seen = Hash.new(0)

        runs.map do |run|
          metadata = run.fetch("metadata")
          slug = unique_slug(metadata, seen)
          destination = File.join(output_dir, "runs", slug)
          FileUtils.mkdir_p(destination)

          COPIED_ARTIFACTS.each do |artifact|
            source = File.join(run.fetch("run_dir"), artifact)
            FileUtils.cp(source, File.join(destination, artifact)) if File.exist?(source)
          end

          run.merge(
            "slug" => slug,
            "report_href" => "runs/#{slug}/report.html",
            "metadata_href" => "runs/#{slug}/metadata.json",
            "summary_href" => "runs/#{slug}/summary.csv"
          )
        end
      end

      def unique_slug(metadata, seen)
        axis_parts = if metadata["benchmark_axis"]
                       [metadata["benchmark_axis"]]
                     else
                       [metadata["machine_arch"], runtime_labels(metadata).join("-")]
                     end
        base = slugify(([metadata["run_id"], metadata["benchmark_suite"]] + axis_parts).compact.join("-"))
        base = "run" if base.empty?
        seen[base] += 1
        seen[base] == 1 ? base : "#{base}-#{seen[base]}"
      end

      def write_combined_json(entries)
        payload = {
          "generated_at" => Time.now.utc.iso8601,
          "title" => title,
          "runs" => entries.map { |entry| run_payload(entry) },
          "summary" => entries.flat_map { |entry| summary_payload(entry) }
        }

        File.write(File.join(output_dir, "data", "runs.json"), "#{JSON.pretty_generate(payload)}\n")
      end

      def write_combined_csv(entries)
        columns = %w[
          site_run_slug
          site_report_href
          created_at
          benchmark_suite
          benchmark_axis
          machine_arch
          machine_os
          runner_label
        ] + Report::SUMMARY_COLUMNS

        CSV.open(File.join(output_dir, "data", "summary.csv"), "w") do |csv|
          csv << columns
          entries.each do |entry|
            metadata = entry.fetch("metadata")
            entry.fetch("summary").each do |row|
              prefix = {
                "site_run_slug" => entry.fetch("slug"),
                "site_report_href" => entry.fetch("report_href"),
                "created_at" => metadata["created_at"],
                "benchmark_suite" => metadata["benchmark_suite"],
                "benchmark_axis" => metadata["benchmark_axis"],
                "machine_arch" => metadata["machine_arch"],
                "machine_os" => metadata["machine_os"],
                "runner_label" => metadata["runner_label"]
              }

              csv << columns.map { |column| prefix.fetch(column, row[column]) }
            end
          end
        end
      end

      def write_index(entries)
        html = []
        html << "<!doctype html>"
        html << "<html lang=\"en\">"
        html << "<head>"
        html << "<meta charset=\"utf-8\">"
        html << "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"
        html << "<title>#{h(title)}</title>"
        html << "<style>#{css}</style>"
        html << "</head>"
        html << "<body>"
        html << "<main>"
        html << "<section class=\"hero\">"
        html << "<p class=\"eyebrow\">Benchmark dashboard</p>"
        html << "<h1>#{h(title)}</h1>"
        html << "<p>Puma and Raptor benchmark runs across Ruby runtime modes, machine architectures, and app-server profiles. Raw data is kept beside every report so GitHub Pages can serve the same artifacts produced locally or in Actions.</p>"
        html << "</section>"
        html << section("Latest Runs", runs_table(entries))
        html << section("Latest Adapter Medians", medians_table(entries))
        html << section("Data Files", data_links)
        html << section("Methodology References", references)
        html << "</main>"
        html << "</body>"
        html << "</html>"

        File.write(File.join(output_dir, "index.html"), "#{html.join("\n")}\n")
      end

      def run_payload(entry)
        metadata = entry.fetch("metadata")
        metadata.merge(
          "site_run_slug" => entry.fetch("slug"),
          "site_report_href" => entry.fetch("report_href"),
          "site_metadata_href" => entry.fetch("metadata_href"),
          "site_summary_href" => entry.fetch("summary_href")
        )
      end

      def summary_payload(entry)
        metadata = entry.fetch("metadata")
        entry.fetch("summary").map do |row|
          row.merge(
            "site_run_slug" => entry.fetch("slug"),
            "site_report_href" => entry.fetch("report_href"),
            "created_at" => metadata["created_at"],
            "benchmark_suite" => metadata["benchmark_suite"],
            "benchmark_axis" => metadata["benchmark_axis"],
            "machine_arch" => metadata["machine_arch"],
            "machine_os" => metadata["machine_os"],
            "runner_label" => metadata["runner_label"]
          )
        end
      end

      def runs_table(entries)
        return "<p>No benchmark runs found.</p>" if entries.empty?

        rows = entries.sort_by { |entry| entry.fetch("metadata").fetch("created_at", "") }.reverse.map do |entry|
          metadata = entry.fetch("metadata")
          [
            metadata["created_at"],
            metadata["benchmark_suite"] || "ad hoc",
            metadata["benchmark_axis"] || runtime_labels(metadata).join(", "),
            metadata["machine_arch"] || "n/a",
            metadata["machine_os"] || "n/a",
            metadata["ruby"],
            Array(metadata["scenarios"]).join(", "),
            link("report", entry.fetch("report_href"))
          ]
        end

        table(["Created", "Suite", "Axis", "Arch", "OS", "Ruby", "Scenarios", "Report"], rows)
      end

      def medians_table(entries)
        rows = entries.flat_map do |entry|
          metadata = entry.fetch("metadata")
          Report.adapter_summary(entry.fetch("summary")).map do |row|
            [
              metadata["created_at"],
              metadata["benchmark_suite"] || "ad hoc",
              metadata["benchmark_axis"] || runtime_labels(metadata).join(", "),
              metadata["machine_arch"] || "n/a",
              row["scenario"],
              row["adapter"],
              row["runtime"],
              Report.format_number(row["best_rps"]),
              row["best_rps_server"],
              Report.format_number(row["lowest_p99_ms"]),
              row["lowest_p99_server"],
              Report.format_number(row["lowest_rss_mb_peak"]),
              row["runs"],
              link("report", entry.fetch("report_href"))
            ]
          end
        end

        return "<p>No summary rows found.</p>" if rows.empty?

        table(
          ["Created", "Suite", "Axis", "Arch", "Scenario", "Adapter", "Runtime", "Best median RPS", "RPS profile", "Lowest median p99", "p99 profile", "Lowest median RSS MB", "Runs", "Report"],
          rows.sort_by { |row| [row[0].to_s, row[1].to_s, row[2].to_s, row[4].to_s, row[5].to_s, row[6].to_s] }.reverse
        )
      end

      def data_links
        <<~HTML
          <ul>
            <li>#{link("Combined run metadata and summary JSON", "data/runs.json")}</li>
            <li>#{link("Combined summary CSV", "data/summary.csv")}</li>
          </ul>
        HTML
      end

      def references
        <<~HTML
          <ul>
            <li>#{link("speed.ruby-lang.org", "https://speed.ruby-lang.org/")} and #{link("Shopify yjit-metrics", "https://github.com/Shopify/yjit-metrics")} for the static-data-plus-site model.</li>
            <li>#{link("ruby-bench", "https://github.com/ruby/ruby-bench")} for warmup-aware Ruby and YJIT benchmark harnesses.</li>
            <li>#{link("Speedshop app-server sizing", "https://www.speedshop.co/blog/appserver/")}, #{link("GVL scaling", "https://www.speedshop.co/blog/the-ruby-gvl-and-scaling/")}, #{link("malloc memory", "https://www.speedshop.co/blog/malloc-doubles-ruby-memory/")}, and #{link("GC.stat", "https://www.speedshop.co/blog/a-guide-to-gc-stat/")} for server, CPU, memory, and GC interpretation.</li>
            <li>#{link("byroot on Ractors", "https://byroot.github.io/ruby/performance/2025/02/27/whats-the-deal-with-ractors.html")}, #{link("GVL removal", "https://byroot.github.io/ruby/performance/2025/01/29/so-you-want-to-remove-the-gvl.html")}, #{link("thread stalling", "https://byroot.github.io/ruby/performance/2025/01/23/io-instrumentation.html")}, and #{link("Pitchfork/Puma process tradeoffs", "https://byroot.github.io/ruby/performance/2025/03/04/the-pitchfork-story.html")} for Ractor, threading, and process-model context.</li>
          </ul>
        HTML
      end

      def section(title, body)
        "<section><h2>#{h(title)}</h2>\n#{body}</section>"
      end

      def table(headers, rows)
        html = []
        html << "<div class=\"table-wrap\"><table>"
        html << "<thead><tr>#{headers.map { |header| "<th>#{h(header)}</th>" }.join}</tr></thead>"
        html << "<tbody>"
        rows.each do |row|
          html << "<tr>#{row.map { |value| "<td>#{value.to_s.start_with?("<a ") ? value : h(value.nil? ? "n/a" : value)}</td>" }.join}</tr>"
        end
        html << "</tbody>"
        html << "</table></div>"
        html.join("\n")
      end

      def runtime_labels(metadata)
        Array(metadata["runtime_profiles"]).map { |profile| profile["label"] || profile["name"] }.compact
      end

      def slugify(value)
        value.downcase.gsub(/[^a-z0-9]+/, "-").gsub(/\A-|-+\z/, "")
      end

      def link(text, href)
        "<a href=\"#{h(href)}\">#{h(text)}</a>"
      end

      def h(value)
        CGI.escapeHTML(value.to_s)
      end

      def css
        <<~CSS
          :root {
            color-scheme: light;
            --ink: #1d2430;
            --muted: #5f6b7a;
            --line: #d8dee8;
            --panel: #f7f9fc;
            --link: #246b60;
          }
          body {
            margin: 0;
            background: #fff;
            color: var(--ink);
            font: 14px/1.5 system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
          }
          main { max-width: 1280px; margin: 0 auto; padding: 32px 24px 56px; }
          .hero { border-bottom: 1px solid var(--line); margin-bottom: 28px; padding-bottom: 22px; }
          .eyebrow { color: var(--muted); font-size: 12px; font-weight: 700; margin: 0 0 8px; text-transform: uppercase; }
          h1 { font-size: 34px; line-height: 1.1; margin: 0 0 12px; }
          h2 { font-size: 21px; margin: 32px 0 12px; }
          p { max-width: 900px; }
          a { color: var(--link); font-weight: 650; }
          section { margin-bottom: 28px; }
          .table-wrap { border: 1px solid var(--line); overflow-x: auto; }
          table { border-collapse: collapse; min-width: 960px; width: 100%; }
          th, td { border-bottom: 1px solid var(--line); padding: 8px 10px; text-align: left; vertical-align: top; }
          th { background: var(--panel); font-size: 12px; text-transform: uppercase; white-space: nowrap; }
          tr:last-child td { border-bottom: 0; }
          ul { max-width: 980px; padding-left: 20px; }
        CSS
      end
    end
  end
end

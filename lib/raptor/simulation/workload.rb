# frozen_string_literal: true

module Raptor
  module Simulation
    module Workload
      RACKUP = <<~'RUBY'
        # frozen_string_literal: true

        require "erb"
        require "json"

        class RaptorSimulationApp
          LARGE_BODY = ("0123456789abcdef" * 4096).freeze
          JSON_SOURCE = JSON.generate(
            items: Array.new(40) do |index|
              {
                id: index,
                name: "item-#{index}",
                tags: ["ruby", "rack", "server", index.even? ? "even" : "odd"],
                price_cents: (index + 1) * 123
              }
            end
          ).freeze
          ERB_TEMPLATE_SOURCE = <<~'HTML'.freeze
            <!doctype html>
            <html>
              <head><title><%= title %></title></head>
              <body>
                <h1><%= title %></h1>
                <ul>
                  <% items.each do |item| %>
                    <li data-id="<%= item.fetch(:id) %>"><%= item.fetch(:name) %>: <%= item.fetch(:price_cents) %></li>
                  <% end %>
                </ul>
              </body>
            </html>
          HTML

          def call(env)
            case env.fetch("PATH_INFO")
            when "/__health__"
              text("ok")
            when "/__metrics__"
              metrics
            when "/tiny"
              text("tiny")
            when "/cpu"
              cpu
            when "/io"
              sleep 0.02
              text("io")
            when "/mixed"
              burn(8_000)
              sleep 0.005
              text("mixed")
            when "/allocation"
              allocated = Array.new(500) { |index| "alloc-#{index}-#{"x" * 32}" }
              text(allocated.join(",").bytesize.to_s)
            when "/json"
              json
            when "/erb"
              erb
            when "/large"
              [200, { "content-type" => "text/plain", "content-length" => LARGE_BODY.bytesize.to_s }, [LARGE_BODY]]
            when "/upload"
              body = env.fetch("rack.input").read
              text("upload #{body.bytesize}")
            else
              [404, { "content-type" => "text/plain" }, ["missing"]]
            end
          end

          private

          def cpu
            text(burn(60_000).to_s)
          end

          def burn(iterations)
            total = 0
            iterations.times { |index| total = ((total * 33) + index) % 1_000_003 }
            total
          end

          def json
            data = JSON.parse(JSON_SOURCE)
            total = data.fetch("items").sum { |item| item.fetch("price_cents") }
            body = JSON.generate(count: data.fetch("items").length, total_cents: total, ok: true)

            [200, { "content-type" => "application/json", "content-length" => body.bytesize.to_s }, [body]]
          end

          def erb
            items = Array.new(40) do |index|
              { id: index, name: "item-#{index}", price_cents: (index + 1) * 123 }
            end
            body = ERB.new(ERB_TEMPLATE_SOURCE).result_with_hash(title: "Raptor Simulation", items: items)

            [200, { "content-type" => "text/html", "content-length" => body.bytesize.to_s }, [body]]
          end

          def metrics
            data = {
              pid: Process.pid,
              ruby: RUBY_DESCRIPTION,
              ractor: defined?(Ractor) ? Ractor.current.name : nil,
              gc_count: GC.count,
              gc_stat: GC.stat
            }

            [200, { "content-type" => "application/json" }, [JSON.generate(data)]]
          end

          def text(body)
            [200, { "content-type" => "text/plain" }, [body]]
          end
        end

        run RaptorSimulationApp.new
      RUBY

      module_function

      def write(dir)
        path = File.join(dir, "config.ru")
        File.write(path, RACKUP)
        path
      end
    end
  end
end

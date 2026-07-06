# frozen_string_literal: true

module Raptor
  module Simulation
    module Workload
      RACKUP = <<~'RUBY'
        # frozen_string_literal: true

        require "erb"
        require "fileutils"
        require "json"
        require "tmpdir"

        class RaptorSimulationApp
          LARGE_BODY = ("0123456789abcdef" * 4096).freeze
          PUMA_RESPONSE_SIZES = Ractor.make_shareable([1, 10, 100, 256, 512, 1024, 2048])
          PUMA_RESPONSE_BODY_TYPES = Ractor.make_shareable(%w[a c i s])
          PUMA_RESPONSE_IO_DIR = File.join(Dir.tmpdir, ".raptor_puma_response_body_io").freeze
          PUMA_RESPONSE_IO_PATH = File.join(PUMA_RESPONSE_IO_DIR, "body_io_%04d.txt").freeze
          PUMA_RESPONSE_HEADERS = begin
            headers = { "content-type" => "text/plain; charset=utf-8" }
            25.times { |index| headers["x-my-header-#{index}"] = "raptor-puma-benchmark-%02d" % index }
            Ractor.make_shareable(headers)
          end
          PUMA_STR_1KB = begin
            seed = "Puma Hello World! "
            body = seed * ((1024 / seed.bytesize) + 2)
            "#{body.byteslice(0, 1023)}\n".freeze
          end
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

          def initialize
            @puma_response_cache = {}
            @puma_response_cache_mutex = Mutex.new
            prepare_puma_response_io_files
          end

          def call(env)
            path = env["PATH_INFO"] || env["REQUEST_PATH"] || "/"

            case path
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
            when "/puma-response"
              puma_response(env)
            else
              return puma_sleep_fibonacci(path) if path.match?(%r{\A/sleep\d})

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

          def puma_response(env)
            body_conf = env["HTTP_BODY_CONF"] || ENV["CI_BODY_CONF"] || "s1"
            type, size = puma_response_body_config(body_conf)
            info = puma_response_info(env)
            headers = PUMA_RESPONSE_HEADERS.dup
            body = puma_response_body(type, size, info, headers)

            [200, headers, body]
          end

          def puma_response_body_config(body_conf)
            body_conf = body_conf.to_s.dup
            if body_conf.start_with?(*PUMA_RESPONSE_BODY_TYPES)
              type = body_conf.slice!(0)
            else
              type = "s"
            end

            size = body_conf[/\d+\z/]&.to_i || 1
            size = 1 unless PUMA_RESPONSE_SIZES.include?(size)
            [type, size]
          end

          def puma_response_body(type, size, info, headers)
            case type
            when "a"
              headers["content-length"] = (1024 * size).to_s
              puma_cached_response_body(["array", size, info]) do
                chunks = Array.new(size, PUMA_STR_1KB)
                chunks[0] = puma_first_kb(info)
                chunks
              end
            when "c"
              headers.delete("content-length")
              chunks = puma_cached_response_body(["chunk", size, info]) do
                chunks = Array.new(size, PUMA_STR_1KB)
                chunks[0] = puma_first_kb(info)
                chunks
              end
              chunks.to_enum
            when "i"
              headers["content-length"] = (1024 * size).to_s
              File.open(format(PUMA_RESPONSE_IO_PATH, size), "rb")
            else
              headers["content-length"] = (1024 * size).to_s
              puma_cached_response_body(["string", size, info]) do
                [puma_first_kb(info) + (PUMA_STR_1KB * (size - 1))]
              end
            end
          end

          def puma_cached_response_body(key)
            @puma_response_cache_mutex.synchronize do
              @puma_response_cache[key] ||= yield
            end
          end

          def puma_response_info(env)
            delay = env["HTTP_DLY"]
            if delay
              sleep delay.to_f
              "#{Process.pid}\nHello World\nSlept #{delay}\n"
            else
              "#{Process.pid}\nHello World\n"
            end
          end

          def puma_first_kb(info)
            info = info.b
            info + PUMA_STR_1KB.byteslice(0, 1023 - info.bytesize) + "\n"
          end

          def prepare_puma_response_io_files
            FileUtils.mkdir_p(PUMA_RESPONSE_IO_DIR)
            PUMA_RESPONSE_SIZES.each do |size|
              path = format(PUMA_RESPONSE_IO_PATH, size)
              next if File.file?(path) && File.size(path) == size * 1024

              File.binwrite(path, puma_first_kb("#{Process.pid}\nHello World\n") + (PUMA_STR_1KB * (size - 1)))
            end
          end

          def puma_sleep_fibonacci(path)
            delay = path[%r{\A/sleep(\d+(?:\.\d+)?)}, 1].to_f
            return text("0.0000 Delay   0.00000 Time    0.0% CPU     0 Loops\n") unless delay.positive?

            started_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
            cpu_target = 0.7 * delay
            loop_sleep = 0.0001
            mod = 2

            fib_number =
              if delay < 0.0033
                mod = 4
                16
              elsif delay < 0.01
                mod = 4
                17
              elsif delay < 0.033
                mod = 5
                18
              elsif delay < 0.1
                mod = 5
                20
              elsif delay < 0.33
                mod = 6
                22
              else
                mod = 6
                24
              end

            cpu_time = 0.0
            loops = 0
            loop do
              loop_started_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
              fibonacci(fib_number)
              cpu_time += Process.clock_gettime(Process::CLOCK_MONOTONIC) - loop_started_at
              loops += 1
              break if cpu_time > cpu_target

              sleep loop_sleep if (loops % mod) == 1
            end

            sleep_left = delay + started_at - Process.clock_gettime(Process::CLOCK_MONOTONIC) - 0.00007
            sleep sleep_left if sleep_left.positive?

            elapsed = Process.clock_gettime(Process::CLOCK_MONOTONIC) - started_at
            body = format("%6.4f Delay   %7.5f Time   %4.1f%% CPU   %3d Loops\n", delay, elapsed, 100 * cpu_time / delay, loops)

            [200, { "content-type" => "text/plain" }, [body]]
          end

          def fibonacci(number)
            return number if number <= 1

            fibonacci(number - 1) + fibonacci(number - 2)
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

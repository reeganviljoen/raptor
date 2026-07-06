# frozen_string_literal: true

module Raptor
  module Simulation
    module Workload
      RACKUP = <<~'RUBY'
        # frozen_string_literal: true

        require "json"

        class RaptorSimulationApp
          LARGE_BODY = ("0123456789abcdef" * 4096).freeze

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

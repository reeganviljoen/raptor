# frozen_string_literal: true

require_relative "test_helper"

class ServerTest < Minitest::Test
  include RaptorTestHelpers

  def test_serves_shareable_rack_app
    app = Ractor.shareable_proc do |env|
      body = "hello #{env.fetch("PATH_INFO")}"
      [200, { "content-type" => "text/plain" }, [body]]
    end

    config = Raptor.config(app: app, binds: [local_bind], workers: 2, quiet: true)

    with_server(config) do |server|
      response = get("/world", server.listeners.first.port)

      assert_includes response, "HTTP/1.1 200 OK"
      assert_includes response, "hello /world"
      assert_equal 2, server.worker_count
    end
  end

  def test_scales_workers_at_runtime
    app = Ractor.shareable_proc do |_env|
      [200, { "content-type" => "text/plain" }, ["ok"]]
    end

    config = Raptor.config(app: app, binds: [local_bind], workers: 1, max_workers: 3, quiet: true)

    with_server(config) do |server|
      assert_equal 1, server.worker_count

      server.scale_workers(3)
      assert_equal 3, server.worker_count

      server.scale_workers(1)
      assert_equal 1, server.worker_count

      response = get("/", server.listeners.first.port)
      assert_includes response, "ok"
    end
  end

  def test_loads_rackup_inside_workers
    Dir.mktmpdir do |dir|
      rackup = File.join(dir, "config.ru")
      File.write(rackup, <<~RUBY)
        run Ractor.shareable_proc { |env|
          [200, { "content-type" => "text/plain" }, ["rackup:" + env.fetch("PATH_INFO")]]
        }
      RUBY

      config = Raptor.config(rackup: rackup, binds: [local_bind], workers: 1, quiet: true)

      with_server(config) do |server|
        response = get("/loaded", server.listeners.first.port)
        assert_includes response, "rackup:/loaded"
      end
    end
  end
end

# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)

require "minitest/autorun"
require "socket"
require "tmpdir"

require "raptor"

module RaptorTestHelpers
  def with_server(config)
    server = Raptor::Server.new(config)
    server.start
    yield server
  ensure
    server&.stop
  end

  def get(path, port)
    http_request("GET", path, port, headers: { "Host" => "127.0.0.1", "Connection" => "close" })
  end

  def http_request(method, path, port, headers: {}, body: "")
    socket = TCPSocket.new("127.0.0.1", port)
    headers = { "Host" => "127.0.0.1", "Connection" => "close" }.merge(headers)
    headers["Content-Length"] = body.bytesize.to_s unless body.empty? || headers.key?("Content-Length")

    socket.write "#{method} #{path} HTTP/1.1\r\n"
    headers.each { |name, value| socket.write "#{name}: #{value}\r\n" }
    socket.write "\r\n"
    socket.write body unless body.empty?
    socket.read
  ensure
    socket&.close
  end

  def local_bind
    "tcp://127.0.0.1:0"
  end
end

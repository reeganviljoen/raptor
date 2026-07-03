# frozen_string_literal: true

require "socket"
require "uri"

require_relative "errors"

module Raptor
  class Binder
    Listener = Struct.new(:server, :url, :scheme, :host, :port, :path, keyword_init: true)

    def initialize(binds)
      @binds = binds
    end

    def bind
      @binds.map { |bind_url| bind_one(bind_url) }
    end

    private

    def bind_one(bind_url)
      uri = URI.parse(bind_url)

      case uri.scheme
      when "tcp", "http"
        bind_tcp(uri)
      when "unix"
        bind_unix(uri)
      when "ssl", "https"
        raise UnsupportedFeatureError, "TLS listeners are not implemented yet: #{bind_url}"
      else
        raise ConfigurationError, "unsupported bind URL: #{bind_url}"
      end
    rescue URI::InvalidURIError => error
      raise ConfigurationError, "invalid bind URL #{bind_url.inspect}: #{error.message}"
    end

    def bind_tcp(uri)
      host = uri.host || "0.0.0.0"
      port = Integer(uri.port || 9292)
      server = TCPServer.new(host, port)
      actual_port = server.addr[1]

      Listener.new(
        server: server,
        url: "tcp://#{host}:#{actual_port}",
        scheme: "tcp",
        host: host,
        port: actual_port
      )
    end

    def bind_unix(uri)
      path = uri.path
      raise ConfigurationError, "unix bind requires a path" if path.nil? || path.empty?

      File.unlink(path) if File.exist?(path)
      server = UNIXServer.new(path)

      Listener.new(
        server: server,
        url: "unix://#{path}",
        scheme: "unix",
        path: path
      )
    end
  end
end

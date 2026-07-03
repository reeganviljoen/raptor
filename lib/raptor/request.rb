# frozen_string_literal: true

require "stringio"
require "uri"

module Raptor
  Request = Struct.new(:method, :target, :http_version, :headers, :body, :remote_addr, :remote_port, keyword_init: true) do
    def path
      URI.decode_www_form_component(target.to_s.split("?", 2).first)
    rescue ArgumentError
      target.to_s.split("?", 2).first
    end

    def query_string
      target.to_s.split("?", 2)[1].to_s
    end

    def keep_alive?
      connection = headers.fetch("connection", "").downcase
      return false if connection.include?("close")
      return true if connection.include?("keep-alive")

      http_version == "HTTP/1.1"
    end

    def env(listener, options)
      rack_input = StringIO.new((body || +"").b)
      env = {
        "rack.version" => [3, 0],
        "rack.input" => rack_input,
        "rack.errors" => $stderr,
        "rack.multithread" => false,
        "rack.multiprocess" => false,
        "rack.run_once" => false,
        "raptor.multiractor" => true,
        "REQUEST_METHOD" => method,
        "SCRIPT_NAME" => "",
        "PATH_INFO" => path.empty? ? "/" : path,
        "QUERY_STRING" => query_string,
        "SERVER_NAME" => listener[:host].to_s,
        "SERVER_PORT" => listener[:port].to_s,
        "SERVER_PROTOCOL" => http_version,
        "REMOTE_ADDR" => remote_addr.to_s,
        "REMOTE_PORT" => remote_port.to_s,
        "rack.url_scheme" => options[:rack_url_scheme]
      }

      headers.each do |name, value|
        rack_name = name.tr("-", "_").upcase
        if rack_name == "CONTENT_TYPE" || rack_name == "CONTENT_LENGTH"
          env[rack_name] = value
        else
          env["HTTP_#{rack_name}"] = value
        end
      end

      env
    end
  end

  class RequestParser
    BAD_REQUEST = Class.new(StandardError)
    PAYLOAD_TOO_LARGE = Class.new(StandardError)

    def self.read(socket, options, first_request:)
      timeout = first_request ? options[:first_data_timeout] : options[:persistent_timeout]
      return nil unless IO.select([socket], nil, nil, timeout)

      request_line = socket.gets
      return nil unless request_line

      request_line = request_line.delete_suffix("\r\n").delete_suffix("\n")
      raise BAD_REQUEST, "empty request line" if request_line.empty?

      method, target, version = request_line.split(" ", 3)
      raise BAD_REQUEST, "malformed request line" unless method && target && version

      supported_methods = options[:supported_http_methods]
      raise BAD_REQUEST, "unsupported method" if supported_methods && !supported_methods.include?(method.upcase)

      headers = read_headers(socket)
      content_length = Integer(headers.fetch("content-length", "0"))
      limit = Integer(options[:http_content_length_limit])
      raise PAYLOAD_TOO_LARGE, "request body exceeds limit" if content_length > limit

      body = content_length.positive? ? socket.read(content_length) : +""
      remote_addr, remote_port = remote_peer(socket)

      Request.new(
        method: method.upcase,
        target: target,
        http_version: version,
        headers: headers,
        body: body,
        remote_addr: remote_addr,
        remote_port: remote_port
      )
    rescue ArgumentError
      raise BAD_REQUEST, "invalid content length"
    end

    def self.read_headers(socket)
      headers = {}

      while (line = socket.gets)
        line = line.delete_suffix("\r\n").delete_suffix("\n")
        break if line.empty?

        name, value = line.split(":", 2)
        raise BAD_REQUEST, "malformed header" unless name && value

        headers[name.downcase] = value.strip
      end

      headers
    end

    def self.remote_peer(socket)
      addr = socket.respond_to?(:peeraddr) ? socket.peeraddr : nil
      [addr&.[](3), addr&.[](1)]
    rescue SocketError, SystemCallError
      [nil, nil]
    end
  end
end

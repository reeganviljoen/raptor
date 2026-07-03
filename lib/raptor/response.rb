# frozen_string_literal: true

require "time"

module Raptor
  class ResponseWriter
    REASONS = {
      100 => "Continue",
      101 => "Switching Protocols",
      200 => "OK",
      201 => "Created",
      202 => "Accepted",
      204 => "No Content",
      301 => "Moved Permanently",
      302 => "Found",
      304 => "Not Modified",
      400 => "Bad Request",
      404 => "Not Found",
      405 => "Method Not Allowed",
      413 => "Payload Too Large",
      500 => "Internal Server Error"
    }.freeze

    HOP_BY_HOP = %w[connection keep-alive proxy-authenticate proxy-authorization te trailer transfer-encoding upgrade].freeze

    def self.write(socket, response, keep_alive:)
      status, headers, body = normalize(response)
      chunks = collect_body(body)
      headers = normalize_headers(headers)
      headers["date"] ||= Time.now.httpdate
      headers["server"] ||= "Raptor"
      headers["content-length"] ||= chunks.sum(&:bytesize).to_s
      headers["connection"] = keep_alive ? "keep-alive" : "close"

      socket.write "HTTP/1.1 #{status} #{REASONS.fetch(status, "OK")}\r\n"
      headers.each do |name, value|
        next if value.nil?

        socket.write "#{header_name(name)}: #{value}\r\n"
      end
      socket.write "\r\n"
      chunks.each { |chunk| socket.write chunk }
    ensure
      body.close if body.respond_to?(:close)
    end

    def self.error(status, message)
      body = "#{status} #{REASONS.fetch(status, "Error")}\n#{message}\n"
      [status, { "content-type" => "text/plain; charset=utf-8" }, [body]]
    end

    def self.normalize(response)
      unless response.is_a?(Array) && response.length == 3
        return error(500, "Rack app returned an invalid response")
      end

      status, headers, body = response
      [Integer(status), headers || {}, body || []]
    rescue ArgumentError, TypeError
      error(500, "Rack app returned an invalid status")
    end

    def self.normalize_headers(headers)
      headers.each_with_object({}) do |(name, value), normalized|
        name = name.to_s.downcase
        next if HOP_BY_HOP.include?(name)

        normalized[name] = Array(value).join("\n")
      end
    end

    def self.collect_body(body)
      if body.respond_to?(:each)
        chunks = []
        body.each { |chunk| chunks << chunk.to_s }
        chunks
      else
        [body.to_s]
      end
    end

    def self.header_name(name)
      name.to_s.split("-").map(&:capitalize).join("-")
    end
  end
end

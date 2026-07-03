# frozen_string_literal: true

require "rack"

require_relative "rackup_loader"
require_relative "request"
require_relative "response"

module Raptor
  class Worker
    def self.run(servers, control, options, boot_port = nil)
      worker = new(servers, control, options)
      boot_port&.send([:booted, options[:worker_index]])
      worker.run
    rescue Exception => error
      boot_port&.send([:boot_error, options[:worker_index], error.class.name, error.message]) rescue nil
      raise
    end

    def initialize(servers, control, options)
      @servers = servers
      @control = control
      @options = options
      @listeners = servers.map { |server| listener_info(server) }
      @app = load_app
    end

    def run
      loop do
        readable = IO.select([@control, *@servers])
        break if readable.nil?

        ready = readable.first
        break if control_requested?(ready)

        ready.each do |io|
          next if io.equal?(@control)

          accept_available(io)
        end
      end

      :stopped
    ensure
      close_io(@control)
    end

    private

    def control_requested?(ready)
      return false unless ready.include?(@control)

      command = @control.gets
      command.nil? || command.strip == "stop"
    end

    def accept_available(server)
      loop do
        client = server.accept_nonblock(exception: false)
        break if client == :wait_readable

        handle_client(client, server)
      end
    rescue IOError, Errno::EBADF, Errno::EINVAL
      nil
    end

    def handle_client(client, server)
      requests = 0
      loop do
        request = RequestParser.read(client, @options, first_request: requests.zero?)
        break unless request

        requests += 1
        keep_alive = request.keep_alive? && requests < @options[:max_keep_alive]
        response = call_app(request, server)
        ResponseWriter.write(client, response, keep_alive: keep_alive)
        log_request(request, response)
        break unless keep_alive
      rescue RequestParser::PAYLOAD_TOO_LARGE => error
        ResponseWriter.write(client, ResponseWriter.error(413, error.message), keep_alive: false)
        break
      rescue RequestParser::BAD_REQUEST => error
        ResponseWriter.write(client, ResponseWriter.error(400, error.message), keep_alive: false)
        break
      rescue StandardError => error
        ResponseWriter.write(client, lowlevel_response(error), keep_alive: false)
        break
      end
    ensure
      close_io(client)
    end

    def call_app(request, server)
      listener = @listeners.fetch(@servers.index(server))
      @app.call(request.env(listener, @options))
    end

    def lowlevel_response(error)
      handler = @options[:lowlevel_error_handler]
      return handler.call(error) if handler

      warn "raptor worker #{@options[:worker_index]}: #{error.class}: #{error.message}" unless @options[:quiet]
      ResponseWriter.error(500, "internal server error")
    end

    def load_app
      if @options[:app_factory]
        @options[:app_factory].call
      elsif @options[:app]
        @options[:app]
      else
        RackupLoader.load(@options[:rackup])
      end
    end

    def listener_info(server)
      if server.respond_to?(:addr)
        addr = server.addr
        { host: addr[3], port: addr[1] }
      else
        { host: "localhost", port: nil }
      end
    end

    def log_request(request, response)
      return unless @options[:log_requests]

      status = response.is_a?(Array) ? response.first : 500
      $stdout.puts "#{request.method} #{request.target} -> #{status}"
    end

    def close_io(io)
      io.close unless io.closed?
    rescue IOError
      nil
    end
  end
end

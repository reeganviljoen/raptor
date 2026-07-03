# frozen_string_literal: true

require "json"
require "timeout"

require_relative "binder"
require_relative "configuration"
require_relative "worker"

module Raptor
  class Server
    WorkerHandle = Struct.new(:index, :ractor, :control_reader, :control_writer, keyword_init: true)

    attr_reader :configuration, :listeners

    def initialize(configuration)
      @configuration = configuration
      @listeners = []
      @workers = []
      @next_worker_index = 0
      @running = false
      @stopping = false
    end

    def start
      return self if @running

      @configuration.clamp
      @listeners = Binder.new(@configuration.options[:binds]).bind
      write_pidfile
      scale_workers(@configuration.options[:workers])
      @running = true
      write_state
      run_hooks(:after_booted)
      self
    rescue StandardError
      cleanup_after_failed_start
      raise
    end

    def run
      start
      install_signal_handlers
      sleep 0.1 while @running
    ensure
      stop if @running
    end

    def stop
      return self unless @running || @workers.any?
      return self if @stopping

      @stopping = true
      @workers.reverse_each { |worker| request_worker_stop(worker) }
      @workers.reverse_each { |worker| join_worker(worker) }
      @workers.clear
      close_listeners
      remove_pidfile
      write_state(stopped: true)
      run_hooks(:after_stopped)
      @running = false
      @stopping = false
      self
    end

    def restart
      run_hooks(:before_restart)
      stop
      start
    end

    def scale_workers(target)
      target = Integer(target)
      max = Integer(@configuration.options[:max_workers] || target)
      raise ConfigurationError, "target worker count must be positive" if target < 1
      raise ConfigurationError, "target worker count #{target} exceeds configured max_workers #{max}" if target > max

      start if @listeners.empty?

      while @workers.length < target
        start_worker
      end

      while @workers.length > target
        worker = @workers.pop
        request_worker_stop(worker)
        join_worker(worker)
      end

      write_state
      worker_count
    end

    def add_worker
      scale_workers(worker_count + 1)
    end

    def remove_worker
      scale_workers(worker_count - 1)
    end

    def worker_count
      @workers.length
    end

    def stats
      {
        started: @running,
        worker_count: worker_count,
        workers: @workers.map { |worker| { index: worker.index, name: worker.ractor.name } },
        listeners: @listeners.map(&:url)
      }
    end

    def urls
      @listeners.map(&:url)
    end

    private

    def start_worker
      worker_index = @next_worker_index
      @next_worker_index += 1
      run_hooks(:before_thread_start, worker_index)
      run_hooks(:before_worker_boot, worker_index)

      control_reader, control_writer = IO.pipe
      control_writer.sync = true
      boot_port = Ractor::Port.new
      worker_options = @configuration.worker_options.merge(worker_index: worker_index)
      worker_options = Ractor.make_shareable(worker_options)
      listener_servers = @listeners.map(&:server)

      ractor = Ractor.new(listener_servers, control_reader, worker_options, boot_port, name: "raptor-worker-#{worker_index}") do |servers, control, options, boot|
        require options[:worker_file]
        Raptor::Worker.run(servers, control, options, boot)
      end
      ractor.monitor(boot_port)
      wait_for_worker_boot(ractor, boot_port, worker_index)

      handle = WorkerHandle.new(
        index: worker_index,
        ractor: ractor,
        control_reader: control_reader,
        control_writer: control_writer
      )

      @workers << handle
      run_hooks(:after_worker_boot, worker_index)
      handle
    rescue StandardError
      close_io(control_writer) if defined?(control_writer) && control_writer
      close_io(control_reader) if defined?(control_reader) && control_reader
      boot_port.close if defined?(boot_port) && boot_port && !boot_port.closed?
      raise
    end

    def wait_for_worker_boot(ractor, boot_port, worker_index)
      timeout = Integer(@configuration.options[:worker_boot_timeout] || 60)
      message = Timeout.timeout(timeout) { boot_port.receive }

      case message
      in [:booted, ^worker_index]
        boot_port.close
      in [:boot_error, ^worker_index, error_class, error_message]
        boot_port.close
        begin
          ractor.value
        rescue Ractor::RemoteError
          nil
        end
        raise ConfigurationError, "worker #{worker_index} failed to boot: #{error_class}: #{error_message}"
      in :aborted
        boot_port.close
        begin
          ractor.value
        rescue Ractor::RemoteError => error
          raise ConfigurationError, "worker #{worker_index} failed to boot: #{error.cause.class}: #{error.cause.message}"
        end
        raise ConfigurationError, "worker #{worker_index} failed to boot"
      else
        boot_port.close
        raise ConfigurationError, "worker #{worker_index} sent unexpected boot message: #{message.inspect}"
      end
    rescue Timeout::Error
      request = "stop\n"
      ractor.send(request) rescue nil
      boot_port.close unless boot_port.closed?
      raise ConfigurationError, "worker #{worker_index} did not boot within #{timeout} seconds"
    end

    def request_worker_stop(worker)
      run_hooks(:before_worker_shutdown, worker.index)
      worker.control_writer.write("stop\n")
    rescue IOError, Errno::EPIPE
      nil
    end

    def join_worker(worker)
      timeout = Integer(@configuration.options[:worker_shutdown_timeout] || 30)
      Timeout.timeout(timeout) { worker.ractor.value }
    rescue Timeout::Error
      warn "raptor: worker #{worker.index} did not stop within #{timeout} seconds" unless @configuration.options[:quiet]
    rescue Ractor::RemoteError => error
      warn "raptor: worker #{worker.index} crashed: #{error.cause.class}: #{error.cause.message}" unless @configuration.options[:quiet]
    rescue Ractor::ClosedError
      nil
    ensure
      close_io(worker.control_writer)
      close_io(worker.control_reader)
      run_hooks(:before_thread_exit, worker.index)
      run_hooks(:after_worker_shutdown, worker.index)
    end

    def run_hooks(name, *args)
      @configuration.hooks[name].each { |hook| hook.call(*args) }
    end

    def close_listeners
      @listeners.each do |listener|
        close_io(listener.server)
        File.unlink(listener.path) if listener.path && File.exist?(listener.path)
      end
      @listeners.clear
    end

    def close_io(io)
      io.close unless io.closed?
    rescue IOError
      nil
    end

    def cleanup_after_failed_start
      @workers.reverse_each { |worker| request_worker_stop(worker) }
      @workers.reverse_each { |worker| join_worker(worker) }
      @workers.clear
      close_listeners
      remove_pidfile
      @running = false
      @stopping = false
    end

    def write_pidfile
      return unless (path = @configuration.options[:pidfile])

      File.write(path, "#{Process.pid}\n")
    end

    def remove_pidfile
      return unless (path = @configuration.options[:pidfile])

      File.unlink(path) if File.exist?(path)
    end

    def write_state(stopped: false)
      return unless (path = @configuration.options[:state_path])

      state = stats.merge(pid: Process.pid, stopped: stopped)
      File.write(path, JSON.pretty_generate(state))
    end

    def install_signal_handlers
      trap("INT") { stop }
      trap("TERM") { stop }
    rescue ArgumentError
      nil
    end

  end
end

# frozen_string_literal: true

require_relative "errors"

module Raptor
  class DSL
    def initialize(config)
      @config = config
      @options = config.options
    end

    def _load_from(path)
      path = File.expand_path(path, Dir.pwd)
      instance_eval(File.read(path), path, 1)
    end

    def load(path)
      _load_from(path)
    end

    def app(obj = nil, &block)
      @config.app(obj, &block)
    end

    def app_factory(obj = nil, &block)
      @config.app_factory(obj, &block)
    end

    def bind(url)
      @options[:binds] << url.to_s
    end

    def clear_binds!
      @options[:binds] = []
    end

    def port(port, host = nil)
      clear_binds!
      bind "tcp://#{host || default_host}:#{Integer(port)}"
    end

    def default_host
      @options.fetch(:default_host, "0.0.0.0")
    end

    def set_default_host(host)
      @options[:default_host] = host.to_s
    end

    def workers(count)
      @options[:workers] = Integer(count)
      @options[:workers_configured] = true
      @options[:max_workers] = @options[:workers] if @options[:max_workers].nil? || @options[:max_workers] < @options[:workers]
    end

    def threads(min, max = min)
      @options[:min_workers] = Integer(min)
      @options[:max_workers] = Integer(max)
      @options[:workers] = @options[:min_workers] unless @options[:workers_configured]
    end

    def ractors(min, max = min)
      threads(min, max)
    end

    def worker_range(min, max = min)
      threads(min, max)
    end

    def rackup(path)
      @options[:rackup] = path.to_s
    end

    def environment(environment)
      @options[:environment] = environment.to_s
    end

    def directory(dir)
      Dir.chdir(dir)
      @options[:directory] = File.expand_path(dir)
    end

    def first_data_timeout(seconds)
      @options[:first_data_timeout] = Integer(seconds)
    end

    def persistent_timeout(seconds)
      @options[:persistent_timeout] = Integer(seconds)
    end

    def idle_timeout(seconds)
      persistent_timeout(seconds)
    end

    def max_keep_alive(num_of_requests)
      @options[:max_keep_alive] = Integer(num_of_requests)
    end

    def force_shutdown_after(value = :forever)
      @options[:force_shutdown_after] = value == :forever ? nil : Integer(value)
    end

    def worker_shutdown_timeout(timeout)
      @options[:worker_shutdown_timeout] = Integer(timeout)
    end

    def worker_boot_timeout(timeout)
      @options[:worker_boot_timeout] = Integer(timeout)
    end

    def worker_check_interval(interval)
      @options[:worker_check_interval] = Float(interval)
    end

    def http_content_length_limit(limit)
      @options[:http_content_length_limit] = Integer(limit)
    end

    def rack_url_scheme(scheme = nil)
      @options[:rack_url_scheme] = scheme.to_s if scheme
      @options[:rack_url_scheme]
    end

    def supported_http_methods(methods)
      @options[:supported_http_methods] = methods
    end

    def drain_on_shutdown(which = true)
      @options[:drain_on_shutdown] = !!which
    end

    def quiet(which = true)
      @options[:quiet] = !!which
      @options[:log_requests] = false if which
    end

    def log_requests(which = true)
      @options[:log_requests] = !!which
      @options[:quiet] = false if which
    end

    def debug
      @options[:debug] = true
    end

    def lowlevel_error_handler(obj = nil, &block)
      @options[:lowlevel_error_handler] = obj || block
    end

    def pidfile(path)
      @options[:pidfile] = path.to_s
    end

    def state_path(path)
      @options[:state_path] = path.to_s
    end

    def tag(string)
      @options[:tag] = string.to_s
    end

    def get(key, default = nil)
      @config.get(key, default)
    end

    def set(key, value)
      @config.set(key, value)
    end

    def before_worker_boot(key = nil, &block)
      process_hook(:before_worker_boot, key, &block)
    end
    alias on_worker_boot before_worker_boot

    def after_worker_boot(&block)
      @config.add_hook(:after_worker_boot, block)
    end
    alias after_worker_fork after_worker_boot

    def before_worker_shutdown(key = nil, &block)
      process_hook(:before_worker_shutdown, key, &block)
    end
    alias on_worker_shutdown before_worker_shutdown

    def after_worker_shutdown(&block)
      @config.add_hook(:after_worker_shutdown, block)
    end

    def before_thread_start(&block)
      @config.add_hook(:before_thread_start, block)
    end
    alias on_thread_start before_thread_start

    def before_thread_exit(&block)
      @config.add_hook(:before_thread_exit, block)
    end
    alias on_thread_exit before_thread_exit

    def before_restart(&block)
      @config.add_hook(:before_restart, block)
    end
    alias on_restart before_restart

    def after_booted(&block)
      @config.add_hook(:after_booted, block)
    end
    alias on_booted after_booted

    def after_stopped(&block)
      @config.add_hook(:after_stopped, block)
    end
    alias on_stopped after_stopped

    def preload_app!(answer = true)
      @options[:preload_app] = !!answer
    end

    def prune_bundler(answer = true)
      @options[:prune_bundler] = !!answer
    end

    def queue_requests(answer = true)
      @options[:queue_requests] = !!answer
    end

    def enable_keep_alives(enabled = true)
      @options[:enable_keep_alives] = !!enabled
    end

    def clean_thread_locals(which = true)
      @options[:clean_thread_locals] = !!which
    end
    alias fiber_per_request clean_thread_locals

    def bind_to_activated_sockets(bind = true)
      @options[:bind_to_activated_sockets] = !!bind
      warn_unsupported("systemd socket activation is not implemented yet")
    end

    def activate_control_app(url = "auto", opts = {})
      @options[:control_url] = url
      @options[:control_options] = opts
      warn_unsupported("control app is planned; use Server#scale_workers for now")
    end

    def plugin(name)
      @options[:plugins] ||= []
      @options[:plugins] << name.to_s
      warn_unsupported("plugins are not implemented yet")
    end

    def ssl_bind(*)
      raise UnsupportedFeatureError, "TLS listeners are not implemented in Raptor yet"
    end

    def stdout_redirect(stdout = nil, stderr = nil, append = false)
      @options[:stdout_redirect] = [stdout, stderr, append]
      warn_unsupported("stdout_redirect is not implemented yet")
    end

    def method_missing(name, *args, &block)
      if known_puma_noop?(name)
        @options[name] = args.empty? ? true : args
        warn_unsupported("#{name} is accepted for Puma config compatibility but has no effect yet")
      else
        super
      end
    end

    def respond_to_missing?(name, include_private = false)
      known_puma_noop?(name) || super
    end

    private

    def process_hook(name, key, &block)
      @config.add_hook(name, block)
      @options[:"#{name}_keys"] ||= []
      @options[:"#{name}_keys"] << key if key
    end

    def warn_unsupported(message)
      warn "raptor: #{message}" unless @options[:quiet]
    end

    def known_puma_noop?(name)
      %i[
        after_refork
        before_fork
        before_refork
        before_worker_fork
        cluster
        custom_logger
        early_hints
        extra_runtime_dependencies
        fork_worker
        inject
        io_selector_backend
        log_formatter
        max_fast_inline
        max_io_threads
        mutate_stdout_and_stderr_to_sync_on_write
        out_of_band
        raise_exception_on_sigterm
        restart_command
        set_remote_address
        shutdown_debug
        silence_fork_callback_warning
        silence_single_worker_warning
        single
        state_permission
        wait_for_less_busy_worker
        worker_culling_strategy
        worker_timeout
      ].include?(name)
    end
  end
end

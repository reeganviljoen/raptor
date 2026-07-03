# frozen_string_literal: true

require "rbconfig"

require_relative "errors"

module Raptor
  class Configuration
    DEFAULT_OPTIONS = {
      app: nil,
      app_factory: nil,
      rackup: nil,
      binds: ["tcp://0.0.0.0:9292"].freeze,
      environment: ENV.fetch("RACK_ENV", ENV.fetch("APP_ENV", ENV.fetch("RAILS_ENV", "development"))),
      workers: 1,
      min_workers: nil,
      max_workers: nil,
      first_data_timeout: 30,
      persistent_timeout: 20,
      max_keep_alive: 100,
      force_shutdown_after: 30,
      worker_shutdown_timeout: 30,
      worker_boot_timeout: 60,
      worker_check_interval: 5,
      http_content_length_limit: 112 * 1024 * 1024,
      rack_url_scheme: "http",
      supported_http_methods: nil,
      drain_on_shutdown: true,
      quiet: false,
      log_requests: false,
      debug: false,
      lowlevel_error_handler: nil,
      pidfile: nil,
      state_path: nil,
      tag: nil,
      directory: nil,
      workers_configured: false
    }.freeze

    attr_reader :options, :hooks

    def initialize(options = {}, &block)
      @options = deep_dup(DEFAULT_OPTIONS)
      merge!(options)
      @hooks = Hash.new { |store, key| store[key] = [] }

      configure(&block) if block
    end

    def configure(&block)
      dsl = DSL.new(self)
      if block.arity == 1
        block.call(dsl)
      else
        dsl.instance_eval(&block)
      end
      self
    end

    def load(path)
      DSL.new(self)._load_from(path)
      self
    end

    def set(key, value)
      @options[key.to_sym] = value
    end

    def get(key, default = nil)
      @options.fetch(key.to_sym, default)
    end

    def merge!(new_options)
      new_options.each do |key, value|
        key = key.to_sym
        value = Array(value) if key == :binds
        @options[key] = value
      end
      self
    end

    def app(app = nil, &block)
      @options[:app] = app || block
    end

    def app_factory(factory = nil, &block)
      @options[:app_factory] = factory || block
    end

    def rackup(path)
      @options[:rackup] = path.to_s
    end

    def add_hook(name, block)
      raise ConfigurationError, "#{name} requires a block" unless block

      @hooks[name.to_sym] << block
    end

    def clamp
      validate_runtime!

      @options[:workers] = Integer(@options[:workers] || @options[:min_workers] || 1)
      @options[:min_workers] = Integer(@options[:min_workers] || @options[:workers])
      @options[:max_workers] = Integer(@options[:max_workers] || @options[:workers])
      @options[:max_workers] = @options[:workers] if @options[:max_workers] < @options[:workers]

      validate_positive!(:workers)
      validate_positive!(:min_workers)
      validate_positive!(:max_workers)

      @options[:binds] = Array(@options[:binds]).map(&:to_s)
      raise ConfigurationError, "at least one bind is required" if @options[:binds].empty?

      @options[:rackup] = default_rackup if no_app_configured? && default_rackup
      raise ConfigurationError, "configure a Rack app, an app_factory, or a rackup file" if no_app_configured?

      validate_shareable_callable!(:app, "Rack app")
      validate_shareable_callable!(:app_factory, "app factory")
      validate_shareable_callable!(:lowlevel_error_handler, "low-level error handler")

      if @options[:rackup]
        @options[:rackup] = File.expand_path(@options[:rackup], Dir.pwd)
        raise ConfigurationError, "rackup file does not exist: #{@options[:rackup]}" unless File.file?(@options[:rackup])
      end

      self
    end

    def worker_options
      clamp

      worker_options = {
        app: @options[:app],
        app_factory: @options[:app_factory],
        rackup: @options[:rackup],
        environment: @options[:environment].to_s,
        first_data_timeout: Integer(@options[:first_data_timeout]),
        persistent_timeout: Integer(@options[:persistent_timeout]),
        max_keep_alive: Integer(@options[:max_keep_alive]),
        http_content_length_limit: Integer(@options[:http_content_length_limit]),
        rack_url_scheme: @options[:rack_url_scheme].to_s,
        supported_http_methods: normalize_methods(@options[:supported_http_methods]),
        quiet: !!@options[:quiet],
        log_requests: !!@options[:log_requests],
        lowlevel_error_handler: @options[:lowlevel_error_handler],
        worker_file: File.expand_path("worker.rb", __dir__)
      }

      Ractor.make_shareable(worker_options)
    end

    private

    def deep_dup(value)
      case value
      when Hash
        value.each_with_object({}) { |(key, inner), copy| copy[key] = deep_dup(inner) }
      when Array
        value.dup
      else
        value
      end
    end

    def validate_runtime!
      engine = defined?(RUBY_ENGINE) ? RUBY_ENGINE : RbConfig::CONFIG["ruby_install_name"]
      raise ConfigurationError, "Raptor currently supports MRI Ruby only" unless engine == "ruby"
      raise ConfigurationError, "Raptor requires Ruby 4.0 or newer" if Gem::Version.new(RUBY_VERSION) < Gem::Version.new("4.0")
      raise ConfigurationError, "Ractor is not available in this Ruby" unless defined?(Ractor)
    end

    def validate_positive!(key)
      raise ConfigurationError, "#{key} must be positive" if @options[key] < 1
    end

    def no_app_configured?
      !@options[:app] && !@options[:app_factory] && !@options[:rackup]
    end

    def default_rackup
      path = File.expand_path("config.ru", Dir.pwd)
      File.file?(path) ? path : nil
    end

    def validate_shareable_callable!(key, label)
      callable = @options[key]
      return unless callable
      raise ConfigurationError, "#{label} must respond to #call" unless callable.respond_to?(:call)

      return if Ractor.shareable?(callable)

      begin
        Ractor.make_shareable(callable)
      rescue Ractor::Error, TypeError => error
        raise ConfigurationError, "#{label} must be Ractor-shareable; prefer rackup files or Ractor.shareable_proc factories (#{error.class}: #{error.message})"
      end
    end

    def normalize_methods(methods)
      return nil unless methods

      Array(methods).map { |method| method.to_s.upcase }.freeze
    end
  end
end

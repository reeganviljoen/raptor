# frozen_string_literal: true

require "rack"

module Raptor
  class RackupLoader
    def self.load(path)
      builder = new(path)
      builder.instance_eval(File.read(path), path, 1)
      builder.to_app
    end

    def initialize(path)
      @path = path
      @middlewares = []
      @maps = {}
      @app = nil
    end

    def run(app = nil, &block)
      @app = app || block
    end

    def use(middleware, *args, &block)
      @middlewares << [middleware, args, block]
    end

    def map(path, &block)
      child = self.class.new(@path)
      child.instance_eval(&block)
      @maps[path] = child.to_app
    end

    def require_relative(path)
      Kernel.require File.expand_path(path, File.dirname(@path))
    end

    def to_app
      app = mapped_app || @app
      raise "rackup did not call run" unless app

      @middlewares.reverse_each do |middleware, args, block|
        app = middleware.new(app, *args, &block)
      end

      app
    end

    private

    def mapped_app
      return nil if @maps.empty?

      Rack::URLMap.new(@maps)
    end
  end
end

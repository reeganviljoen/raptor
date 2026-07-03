# frozen_string_literal: true

require "optparse"

require_relative "../raptor"

module Raptor
  class CLI
    def self.run(argv = ARGV)
      new(argv).run
    end

    def initialize(argv)
      @argv = argv
      @options = {}
      @config_file = nil
    end

    def run
      parse!
      config = Configuration.new(@options)
      load_default_config(config)
      config.rackup(@argv.shift) if @argv.any?
      Server.new(config).run
    end

    private

    def parse!
      parser = OptionParser.new do |opts|
        opts.banner = "Usage: raptor [options] [config.ru]"

        opts.on("-b", "--bind URL", "Bind URL, e.g. tcp://127.0.0.1:9292") do |url|
          (@options[:binds] ||= []) << url
        end

        opts.on("-p", "--port PORT", Integer, "Port to bind on 0.0.0.0") do |port|
          @options[:binds] = ["tcp://0.0.0.0:#{port}"]
        end

        opts.on("-w", "--workers COUNT", Integer, "Initial Ractor worker count") do |count|
          @options[:workers] = count
          @options[:workers_configured] = true
        end

        opts.on("--min-workers COUNT", Integer, "Minimum Ractor worker count") do |count|
          @options[:min_workers] = count
        end

        opts.on("--max-workers COUNT", Integer, "Maximum Ractor worker count") do |count|
          @options[:max_workers] = count
        end

        opts.on("-e", "--environment ENV", "Rack environment") do |environment|
          @options[:environment] = environment
        end

        opts.on("-C", "--config PATH", "Raptor/Puma-style config file") do |path|
          @config_file = path
        end

        opts.on("-q", "--quiet", "Reduce logging") do
          @options[:quiet] = true
        end

        opts.on("-v", "--version", "Print version") do
          puts VERSION
          exit
        end
      end

      parser.parse!(@argv)
    end

    def load_default_config(config)
      if @config_file
        config.load(@config_file)
        return
      end

      %w[config/raptor.rb config/puma.rb].each do |path|
        next unless File.file?(path)

        config.load(path)
        break
      end
    end
  end
end

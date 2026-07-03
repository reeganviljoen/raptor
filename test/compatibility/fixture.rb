# frozen_string_literal: true

require "yaml"

module RaptorCompatibility
  class Fixture
    attr_reader :name, :path, :manifest

    def self.load(path)
      new(path)
    end

    def initialize(path)
      @path = File.expand_path(path)
      @name = File.basename(@path)
      @manifest = YAML.load_file(File.join(@path, "manifest.yml"))
    end

    def rackup_path
      File.join(path, "config.ru")
    end

    def workers
      manifest.fetch("workers", [1])
    end

    def probes
      manifest.fetch("probes")
    end

    def covers
      manifest.fetch("covers", [])
    end

    def known_failures
      manifest.fetch("known_failures", [])
    end

    def notes
      manifest.fetch("notes", "")
    end
  end
end

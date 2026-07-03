# frozen_string_literal: true

require "yaml"

module RaptorCompatibility
  ManifestError = Class.new(StandardError)

  class Fixture
    FAILURE_CATEGORIES = %w[
      rack_env
      http_parser
      response_writer
      rackup_loader
      ractor_boot
      ractor_runtime
      framework_global_state
      dependency_global_state
      external_service
      harness_environment
      unsupported_rack_feature
    ].freeze

    attr_reader :name, :path, :manifest

    def self.load(path)
      new(path)
    end

    def initialize(path)
      @path = File.expand_path(path)
      @name = File.basename(@path)
      @manifest = YAML.load_file(File.join(@path, "manifest.yml"))
      validate_manifest!
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

    def requires
      manifest.fetch("requires", {})
    end

    def required_gems
      requires.fetch("gems", {})
    end

    def known_failures
      manifest.fetch("known_failures", [])
    end

    def notes
      manifest.fetch("notes", "")
    end

    private

    def validate_manifest!
      assert_type!(manifest, Hash, "manifest")
      %w[id stage offline transport requires covers workers known_failures probes].each do |key|
        raise ManifestError, "#{name}: manifest missing #{key}" unless manifest.key?(key)
      end

      assert_type!(covers, Array, "covers")
      assert_type!(requires, Hash, "requires")
      assert_type!(required_gems, Hash, "requires.gems")
      covers.each { |category| validate_category!(category, "covers") }
      assert_type!(workers, Array, "workers")
      workers.each { |worker_count| validate_positive_integer!(worker_count, "workers") }
      assert_type!(known_failures, Array, "known_failures")
      assert_type!(probes, Array, "probes")

      known_failure_ids = known_failures.each_with_object({}) do |failure, ids|
        assert_type!(failure, Hash, "known_failures")
        %w[id phase category error_class message].each do |key|
          raise ManifestError, "#{name}: known_failure missing #{key}" unless failure.key?(key)
        end
        validate_category!(failure.fetch("category"), "known_failure #{failure.fetch("id")}")
        ids[failure.fetch("id")] = true
      end

      probes.each do |probe|
        assert_type!(probe, Hash, "probes")
        %w[name category request expect].each do |key|
          raise ManifestError, "#{name}: probe missing #{key}" unless probe.key?(key)
        end
        validate_category!(probe.fetch("category"), "probe #{probe.fetch("name")}")
        assert_type!(probe.fetch("request"), Hash, "probe #{probe.fetch("name")} request")
        assert_type!(probe.fetch("expect"), Hash, "probe #{probe.fetch("name")} expect")
        raise ManifestError, "#{name}: probe #{probe.fetch("name")} expect missing status" unless probe.fetch("expect").key?("status")

        failure_id = probe["known_failure"]
        next unless failure_id
        raise ManifestError, "#{name}: probe #{probe.fetch("name")} references unknown known_failure #{failure_id}" unless known_failure_ids[failure_id]
      end
    end

    def validate_category!(category, context)
      return if FAILURE_CATEGORIES.include?(category)

      raise ManifestError, "#{name}: #{context} category #{category.inspect} is not in the failure taxonomy"
    end

    def validate_positive_integer!(value, context)
      return if value.is_a?(Integer) && value.positive?

      raise ManifestError, "#{name}: #{context} entries must be positive integers"
    end

    def assert_type!(value, type, context)
      return if value.is_a?(type)

      raise ManifestError, "#{name}: #{context} must be a #{type}"
    end
  end
end

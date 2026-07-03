# frozen_string_literal: true

require_relative "../test_helper"
require_relative "fixture"
require_relative "result"

module RaptorCompatibility
  class Runner
    include RaptorTestHelpers

    Response = Struct.new(:raw, :status, :headers, :body, keyword_init: true) do
      def to_h
        {
          status: status,
          headers: headers,
          body: body,
          raw: raw
        }
      end
    end

    LOWLEVEL_ERROR_HANDLER = Ractor.shareable_proc do |error|
      body = "#{error.class}: #{error.message}"
      [500, { "content-type" => "text/plain" }, [body]]
    end

    attr_reader :fixture, :test_case

    def initialize(fixture, test_case)
      @fixture = fixture
      @test_case = test_case
    end

    def run
      results = missing_requirement_results
      if results.empty?
        fixture.workers.each do |workers|
          results.concat(run_worker_count(workers))
        end
      end

      assert_results(results)
      results
    end

    private

    def run_worker_count(workers)
      server = nil
      config = Raptor.config(
        rackup: fixture.rackup_path,
        binds: [local_bind],
        workers: workers,
        max_workers: [workers, 2].max,
        quiet: true,
        lowlevel_error_handler: LOWLEVEL_ERROR_HANDLER
      )

      server = Raptor::Server.new(config)
      server.start

      fixture.probes.map do |probe|
        run_probe(probe, server.listeners.first.port, workers)
      end
    rescue StandardError => error
      [startup_failure_result(workers, error)]
    ensure
      server&.stop
    end

    def run_probe(probe, port, workers)
      response = request_probe(probe, port)
      assert_probe(probe, response, workers)
      known_failure = known_failure_for(probe)
      expected_failure = known_failure_matches?(known_failure, "request")

      Result.new(
        fixture: fixture.name,
        worker_count: workers,
        probe_name: probe.fetch("name"),
        phase: "request",
        status: expected_failure ? "expected_known_failure" : "passed",
        category: expected_failure ? known_failure.fetch("category") : probe.fetch("category"),
        known_failure_id: expected_failure ? known_failure.fetch("id") : nil,
        response: response
      )
    rescue Minitest::Assertion => error
      known_failure = known_failure_for(probe)
      expected_failure = known_failure_matches?(known_failure, "assertion", error: error)

      Result.new(
        fixture: fixture.name,
        worker_count: workers,
        probe_name: probe.fetch("name"),
        phase: "assertion",
        status: expected_failure ? "expected_known_failure" : "assertion_failure",
        category: expected_failure ? known_failure.fetch("category") : probe.fetch("category"),
        known_failure_id: probe["known_failure"],
        error_class: error.class.name,
        message: error.message,
        response: response
      )
    rescue StandardError => error
      known_failure = known_failure_for(probe)
      expected_failure = known_failure_matches?(known_failure, "request", error: error)

      Result.new(
        fixture: fixture.name,
        worker_count: workers,
        probe_name: probe.fetch("name"),
        phase: "request",
        status: expected_failure ? "expected_known_failure" : "request_failure",
        category: expected_failure ? known_failure.fetch("category") : probe.fetch("category"),
        known_failure_id: probe["known_failure"],
        error_class: error.class.name,
        message: error.message
      )
    end

    def request_probe(probe, port)
      request = probe.fetch("request")
      raw = http_request(
        request.fetch("method", "GET"),
        request.fetch("path"),
        port,
        headers: request.fetch("headers", {}),
        body: request.fetch("body", "")
      )
      parse_response(raw)
    end

    def assert_probe(probe, response, workers)
      label = "#{fixture.name} workers=#{workers} probe=#{probe.fetch("name")}"
      expect = probe.fetch("expect")

      test_case.assert_equal expect.fetch("status"), response.status, label
      assert_body(label, response, expect.fetch("body", {}))
      assert_headers(label, response, expect.fetch("headers", {}))
      assert_invariants(label, response, expect.fetch("invariants", []))
      assert_known_failure(label, probe) if probe["known_failure"]
    end

    def parse_response(raw)
      head, body = raw.split("\r\n\r\n", 2)
      status_line, *header_lines = head.split("\r\n")
      headers = header_lines.each_with_object({}) do |line, values|
        name, value = line.split(":", 2)
        (values[name.downcase] ||= []) << value.strip if name && value
      end

      Response.new(
        raw: raw,
        status: Integer(status_line.split[1]),
        headers: headers,
        body: body.to_s
      )
    end

    def assert_body(label, response, expected)
      Array(expected.fetch("includes", [])).each do |expected_text|
        test_case.assert_includes response.body, expected_text, label
      end

      Array(expected.fetch("excludes", [])).each do |unexpected_text|
        test_case.refute_includes response.body, unexpected_text, label
      end

      test_case.assert_equal expected["exact"], response.body, label if expected.key?("exact")
    end

    def assert_headers(label, response, expected)
      expected.fetch("include", {}).each do |name, value|
        values = response.headers.fetch(name.downcase, [])
        test_case.assert_includes values, value, "#{label} header=#{name}"
      end

      expected.fetch("absent", []).each do |name|
        test_case.refute response.headers.key?(name.downcase), "#{label} header=#{name}"
      end

      expected.fetch("exact", {}).each do |name, values|
        test_case.assert_equal Array(values), response.headers.fetch(name.downcase, []), "#{label} header=#{name}"
      end
    end

    def assert_invariants(label, response, invariants)
      invariants.each do |invariant|
        case invariant
        when "content_length_matches_body"
          length = response.headers.fetch("content-length", []).first
          test_case.assert_equal response.body.bytesize.to_s, length, label
        else
          test_case.flunk "#{label} unknown invariant=#{invariant}"
        end
      end
    end

    def assert_known_failure(label, probe)
      failure_id = probe.fetch("known_failure")
      known_failure = fixture.known_failures.find { |failure| failure.fetch("id") == failure_id }
      test_case.assert known_failure, "#{label} known_failure=#{failure_id} must be documented in manifest"
    end

    def assert_results(results)
      results.each do |result|
        next if result.success?

        message = [result.label, result.status, result.error_class, result.message].compact.join(": ")
        test_case.flunk(message)
      end
    end

    def startup_failure_result(workers, error)
      if harness_environment_error?(error)
        Result.new(
          fixture: fixture.name,
          worker_count: workers,
          phase: "harness_environment",
          status: "harness_environment_skip",
          category: "harness_environment",
          error_class: error.class.name,
          message: error.message
        )
      else
        known_failure = known_failure_for_phase("boot", error)
        expected_failure = known_failure_matches?(known_failure, "boot", error: error)

        Result.new(
          fixture: fixture.name,
          worker_count: workers,
          phase: "boot",
          status: expected_failure ? "expected_known_failure" : "boot_failure",
          category: expected_failure ? known_failure.fetch("category") : "ractor_boot",
          known_failure_id: expected_failure ? known_failure.fetch("id") : nil,
          error_class: error.class.name,
          message: error.message
        )
      end
    end

    def missing_requirement_results
      missing = missing_requirements
      return [] if missing.empty?

      [
        Result.new(
          fixture: fixture.name,
          phase: "harness_environment",
          status: "harness_environment_skip",
          category: "harness_environment",
          error_class: "RaptorCompatibility::MissingRequirement",
          message: "missing fixture requirements: #{missing.join(", ")}"
        )
      ]
    end

    def missing_requirements
      fixture.required_gems.each_with_object([]) do |(gem_name, requirement), missing|
        next if gem_requirement_satisfied?(gem_name, requirement)

        missing << "#{gem_name} #{requirement}"
      end
    end

    def gem_requirement_satisfied?(gem_name, requirement)
      requirement = Gem::Requirement.new(requirement || ">= 0")
      Gem::Specification.find_all_by_name(gem_name).any? do |spec|
        requirement.satisfied_by?(spec.version)
      end
    end

    def harness_environment_error?(error)
      [Errno::EADDRINUSE, Errno::EACCES, Errno::EAFNOSUPPORT, Errno::EPERM].any? { |klass| error.is_a?(klass) }
    end

    def known_failure_for(probe)
      failure_id = probe["known_failure"]
      return nil unless failure_id

      fixture.known_failures.find { |failure| failure.fetch("id") == failure_id }
    end

    def known_failure_for_phase(phase, error = nil)
      fixture.known_failures.find do |failure|
        known_failure_matches?(failure, phase, error: error)
      end
    end

    def known_failure_matches?(known_failure, phase, error: nil)
      return false unless known_failure
      return false unless known_failure.fetch("phase").to_s == phase
      return true unless error

      expected_class = known_failure.fetch("error_class").to_s
      expected_message = known_failure.fetch("message").to_s
      observed_class = error.class.name
      observed_message = error.message.to_s

      class_matches = expected_class.empty? || observed_class == expected_class || observed_message.include?(expected_class)
      message_matches = expected_message.empty? || observed_message.include?(expected_message)
      class_matches && message_matches
    end
  end
end

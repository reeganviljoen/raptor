# frozen_string_literal: true

require_relative "../test_helper"
require_relative "fixture"

module RaptorCompatibility
  class Runner
    include RaptorTestHelpers

    Response = Struct.new(:raw, :status, :headers, :body, keyword_init: true)
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
      fixture.workers.each do |workers|
        config = Raptor.config(
          rackup: fixture.rackup_path,
          binds: [local_bind],
          workers: workers,
          max_workers: [workers, 2].max,
          quiet: true,
          lowlevel_error_handler: LOWLEVEL_ERROR_HANDLER
        )

        with_server(config) do |server|
          fixture.probes.each do |probe|
            response = request_probe(probe, server.listeners.first.port)
            assert_probe(probe, response, workers)
          end
        end
      end
    end

    private

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
  end
end

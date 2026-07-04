# frozen_string_literal: true

require_relative "test_helper"
require_relative "compatibility/fixture"
require_relative "compatibility/runner"

class CompatibilityTest < Minitest::Test
  FIXTURE_ROOT = File.expand_path("compatibility/fixtures", __dir__)

  def test_offline_compatibility_fixtures
    results = fixtures.flat_map do |fixture|
      RaptorCompatibility::Runner.new(fixture, self).run
    end

    refute_empty results

    results.each do |result|
      result_hash = result.to_h
      assert result_hash.fetch(:fixture)
      assert result_hash.fetch(:phase)
      assert result_hash.fetch(:status)
      assert result_hash.fetch(:category)
    end
  end

  def test_runner_preserves_duplicate_headers_and_supports_expectation_schema
    fixture = fixtures.find { |candidate| candidate.name == "rack_basic" }
    runner = RaptorCompatibility::Runner.new(fixture, self)
    response = runner.send(
      :parse_response,
      "HTTP/1.1 200 OK\r\nX-Debug: one\r\nX-Debug: two\r\nContent-Length: 2\r\n\r\nok"
    )

    assert_equal ["one", "two"], response.headers.fetch("x-debug")

    probe = {
      "name" => "schema_probe",
      "category" => "rack_env",
      "request" => { "path" => "/" },
      "expect" => {
        "status" => 200,
        "headers" => {
          "include" => { "x-debug" => "one" },
          "exact" => { "x-debug" => ["one", "two"] },
          "absent" => ["x-missing"]
        },
        "body" => {
          "exact" => "ok",
          "includes" => ["ok"],
          "excludes" => ["not-ok"]
        },
        "invariants" => ["content_length_matches_body"]
      }
    }

    runner.send(:assert_probe, probe, response, 1)
  end

  def test_missing_required_gem_is_reported_as_harness_environment_skip
    Dir.mktmpdir do |dir|
      fixture_dir = File.join(dir, "missing_gem")
      Dir.mkdir(fixture_dir)
      File.write(File.join(fixture_dir, "config.ru"), <<~RUBY)
        run proc { |_env| [200, {}, ["ok"]] }
      RUBY
      File.write(File.join(fixture_dir, "manifest.yml"), <<~YAML)
        id: missing_gem
        stage: rack_baseline
        offline: true
        transport: tcp_loopback
        requires:
          gems:
            raptor_fixture_gem_that_does_not_exist: ">= 999"
        covers:
          - harness_environment
        workers:
          - 1
        known_failures: []
        probes:
          - name: simple_get
            category: rack_env
            request:
              path: /
            expect:
              status: 200
      YAML

      results = RaptorCompatibility::Runner.new(RaptorCompatibility::Fixture.load(fixture_dir), self).run

      assert_equal ["harness_environment_skip"], results.map(&:status)
      assert_equal "harness_environment", results.first.phase
      assert_match(/missing fixture requirements/, results.first.message)
    end
  end

  def test_startup_failures_are_classified_by_phase
    fixture = fixtures.find { |candidate| candidate.name == "rack_basic" }
    runner = RaptorCompatibility::Runner.new(fixture, self)

    boot_result = runner.send(:startup_failure_result, 1, Raptor::ConfigurationError.new("worker failed to boot"))
    assert_equal "boot_failure", boot_result.status
    assert_equal "boot", boot_result.phase

    harness_result = runner.send(:startup_failure_result, 1, Errno::EACCES.new("bind"))
    assert_equal "harness_environment_skip", harness_result.status
    assert_equal "harness_environment", harness_result.phase
  end

  def test_request_exception_known_failures_match_manifest_phase_and_error_metadata
    failure = {
      "id" => "socket_closed",
      "phase" => "request",
      "category" => "http_parser",
      "error_class" => "IOError",
      "message" => "socket closed"
    }
    fixture = Struct.new(:name, :known_failures).new("phase_fixture", [failure])
    runner = RaptorCompatibility::Runner.new(fixture, self)
    probe = {
      "name" => "request_exception",
      "category" => "rack_env",
      "known_failure" => "socket_closed",
      "request" => { "path" => "/" },
      "expect" => { "status" => 200 }
    }

    runner.define_singleton_method(:request_probe) { |_probe, _port| raise IOError, "socket closed while reading" }
    expected_result = runner.send(:run_probe, probe, 9292, 1)

    assert_equal "expected_known_failure", expected_result.status
    assert_equal "socket_closed", expected_result.known_failure_id
    assert_equal "http_parser", expected_result.category

    runner.define_singleton_method(:request_probe) { |_probe, _port| raise IOError, "different request error" }
    unexpected_result = runner.send(:run_probe, probe, 9292, 1)

    assert_equal "request_failure", unexpected_result.status
    assert_equal "socket_closed", unexpected_result.known_failure_id
  end

  def test_response_known_failures_match_response_metadata
    failure = {
      "id" => "lowlevel_error",
      "phase" => "request",
      "category" => "ractor_runtime",
      "error_class" => "RuntimeError",
      "message" => "known boom"
    }
    fixture = Struct.new(:name, :known_failures).new("response_fixture", [failure])
    runner = RaptorCompatibility::Runner.new(fixture, self)
    probe = {
      "name" => "lowlevel_response",
      "category" => "rack_env",
      "known_failure" => "lowlevel_error",
      "request" => { "path" => "/" },
      "expect" => { "status" => 500 }
    }

    runner.define_singleton_method(:request_probe) do |_probe, _port|
      RaptorCompatibility::Runner::Response.new(
        raw: "HTTP/1.1 500\r\n\r\nRuntimeError: known boom",
        status: 500,
        headers: {},
        body: "RuntimeError: known boom"
      )
    end
    expected_result = runner.send(:run_probe, probe, 9292, 1)

    assert_equal "expected_known_failure", expected_result.status
    assert_equal "lowlevel_error", expected_result.known_failure_id

    runner.define_singleton_method(:request_probe) do |_probe, _port|
      RaptorCompatibility::Runner::Response.new(
        raw: "HTTP/1.1 500\r\n\r\nRuntimeError: different boom",
        status: 500,
        headers: {},
        body: "RuntimeError: different boom"
      )
    end
    mismatch_result = runner.send(:run_probe, probe, 9292, 1)

    assert_equal "assertion_failure", mismatch_result.status
    assert_equal "RaptorCompatibility::KnownFailureMismatch", mismatch_result.error_class
  end

  def test_boot_known_failures_match_manifest_phase_and_error_metadata
    failure = {
      "id" => "boot_isolation",
      "phase" => "boot",
      "category" => "ractor_boot",
      "error_class" => "Ractor::IsolationError",
      "message" => "non-shareable constant"
    }
    fixture = Struct.new(:name, :known_failures).new("boot_fixture", [failure])
    runner = RaptorCompatibility::Runner.new(fixture, self)

    expected_result = runner.send(
      :startup_failure_result,
      1,
      Raptor::ConfigurationError.new("worker 0 failed to boot: Ractor::IsolationError: non-shareable constant")
    )

    assert_equal "expected_known_failure", expected_result.status
    assert_equal "boot_isolation", expected_result.known_failure_id

    unexpected_result = runner.send(
      :startup_failure_result,
      1,
      Raptor::ConfigurationError.new("worker 0 failed to boot: NameError: missing constant")
    )

    assert_equal "boot_failure", unexpected_result.status
    assert_nil unexpected_result.known_failure_id
  end

  private

  def fixtures
    Dir[File.join(FIXTURE_ROOT, "*")].sort.select { |path| File.directory?(path) }.map do |path|
      RaptorCompatibility::Fixture.load(path)
    end
  end
end

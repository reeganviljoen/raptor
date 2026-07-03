# frozen_string_literal: true

module RaptorCompatibility
  Result = Struct.new(
    :fixture,
    :worker_count,
    :probe_name,
    :phase,
    :status,
    :category,
    :known_failure_id,
    :error_class,
    :message,
    :response,
    keyword_init: true
  ) do
    SUCCESS_STATUSES = %w[passed expected_known_failure harness_environment_skip].freeze

    def success?
      SUCCESS_STATUSES.include?(status)
    end

    def expected_known_failure?
      status == "expected_known_failure"
    end

    def failure?
      !success?
    end

    def label
      parts = [fixture]
      parts << "workers=#{worker_count}" if worker_count
      parts << "probe=#{probe_name}" if probe_name
      parts << "phase=#{phase}" if phase
      parts.join(" ")
    end

    def to_h
      {
        fixture: fixture,
        worker_count: worker_count,
        probe: probe_name,
        phase: phase,
        status: status,
        category: category,
        known_failure: known_failure_id,
        error_class: error_class,
        message: message,
        response: response&.to_h
      }.compact
    end
  end
end

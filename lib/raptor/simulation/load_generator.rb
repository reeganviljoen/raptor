# frozen_string_literal: true

require "net/http"
require "thread"

require_relative "percentiles"

module Raptor
  module Simulation
    class LoadGenerator
      attr_reader :host, :port, :scenario, :requests, :concurrency, :timeout, :keep_alive, :min_duration_s

      def initialize(host:, port:, scenario:, requests:, concurrency:, timeout: 5, keep_alive: true, min_duration_s: 0)
        @host = host
        @port = port
        @scenario = scenario
        @requests = Integer(requests)
        @concurrency = [Integer(concurrency), 1].max
        @timeout = timeout
        @keep_alive = keep_alive
        @min_duration_s = [Float(min_duration_s), 0.0].max
      end

      def run
        state = State.new
        started_at = monotonic
        deadline = min_duration_s.positive? ? started_at + min_duration_s : nil

        distribute_requests.map do |count|
          Thread.new { run_worker(count, state, deadline) }
        end.each(&:join)

        finished_at = monotonic
        state.to_result(started_at, finished_at, requests, min_duration_s)
      end

      private

      State = Struct.new(:durations, :status_counts, :errors, :bytes, keyword_init: true) do
        def initialize
          super(durations: [], status_counts: Hash.new(0), errors: Hash.new(0), bytes: 0)
          @mutex = Mutex.new
        end

        def record(duration_ms:, status:, bytes:)
          @mutex.synchronize do
            durations << duration_ms
            status_counts[status.to_s] += 1
            self.bytes += bytes
          end
        end

        def record_error(error)
          @mutex.synchronize { errors[error.class.name] += 1 }
        end

        def to_result(started_at, finished_at, target_requests, min_duration_s)
          completed = status_counts.values.sum
          duration_s = finished_at - started_at

          {
            "target_requests" => target_requests,
            "min_duration_s" => min_duration_s,
            "requests" => completed + errors.values.sum,
            "completed" => completed,
            "errors" => errors.transform_keys(&:to_s),
            "status_counts" => status_counts.transform_keys(&:to_s),
            "bytes" => bytes,
            "duration_s" => duration_s.round(3),
            "achieved_rps" => duration_s.positive? ? (completed / duration_s).round(3) : 0.0,
            "latency_ms" => Percentiles.summarize(durations),
            "histogram_ms" => histogram(durations)
          }
        end

        private

        def histogram(values)
          buckets = Hash.new(0)
          values.each do |value|
            upper_bound = case value
                          when 0...1 then 1
                          when 1...5 then 5
                          when 5...10 then 10
                          when 10...25 then 25
                          when 25...50 then 50
                          when 50...100 then 100
                          when 100...250 then 250
                          when 250...500 then 500
                          when 500...1000 then 1000
                          else "inf"
                          end
            buckets[upper_bound.to_s] += 1
          end
          buckets.sort_by { |bound, _count| bound == "inf" ? Float::INFINITY : bound.to_f }.to_h
        end
      end

      def distribute_requests
        base = requests / concurrency
        remainder = requests % concurrency

        counts = Array.new(concurrency) { |index| base + (index < remainder ? 1 : 0) }
        min_duration_s.positive? ? counts : counts.reject(&:zero?)
      end

      def run_worker(count, state, deadline)
        remaining = count

        if keep_alive
          with_http { |http| remaining = request_until_done(http, state, remaining, deadline) }
        else
          remaining = request_until_done_without_keep_alive(state, remaining, deadline)
        end
      rescue StandardError => error
        remaining.times { state.record_error(error) }
      end

      def request_until_done(http, state, remaining, deadline)
        while remaining.positive? || before_deadline?(deadline)
          request_once(http, state)
          remaining -= 1 if remaining.positive?
        end

        remaining
      end

      def request_until_done_without_keep_alive(state, remaining, deadline)
        while remaining.positive? || before_deadline?(deadline)
          with_http { |http| request_once(http, state) }
          remaining -= 1 if remaining.positive?
        end

        remaining
      end

      def with_http
        Net::HTTP.start(host, port, open_timeout: timeout, read_timeout: timeout) do |http|
          http.keep_alive_timeout = timeout if http.respond_to?(:keep_alive_timeout=)
          yield http
        end
      end

      def request_once(http, state)
        request = build_request
        started_at = monotonic
        response = http.request(request)
        duration_ms = (monotonic - started_at) * 1000.0
        state.record(duration_ms: duration_ms, status: response.code, bytes: response.body.to_s.bytesize)
      rescue StandardError => error
        state.record_error(error)
      end

      def build_request
        request_class = scenario.method.to_s.upcase == "POST" ? Net::HTTP::Post : Net::HTTP::Get
        request = request_class.new(scenario.path, scenario.headers)
        request.body = scenario.body if scenario.body && !scenario.body.empty?
        request["Connection"] = keep_alive ? "keep-alive" : "close"
        request
      end

      def monotonic
        Process.clock_gettime(Process::CLOCK_MONOTONIC)
      end

      def before_deadline?(deadline)
        deadline && monotonic < deadline
      end
    end
  end
end

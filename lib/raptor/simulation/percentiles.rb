# frozen_string_literal: true

module Raptor
  module Simulation
    module Percentiles
      DEFAULTS = [50, 75, 90, 95, 99, 99.9].freeze

      module_function

      def summarize(values, percentiles: DEFAULTS)
        sorted = values.compact.sort
        summary = {
          "count" => sorted.length,
          "min_ms" => sorted.empty? ? nil : round(sorted.first),
          "max_ms" => sorted.empty? ? nil : round(sorted.last),
          "mean_ms" => mean(sorted)
        }

        percentiles.each do |percentile|
          summary[key_for(percentile)] = sorted.empty? ? nil : round(value_at(sorted, percentile))
        end

        summary
      end

      def value_at(sorted_values, percentile)
        return nil if sorted_values.empty?
        return sorted_values.first if sorted_values.length == 1

        rank = (percentile.to_f / 100.0) * (sorted_values.length - 1)
        lower = rank.floor
        upper = rank.ceil
        return sorted_values[lower] if lower == upper

        weight = rank - lower
        sorted_values[lower] + ((sorted_values[upper] - sorted_values[lower]) * weight)
      end

      def key_for(percentile)
        suffix = percentile.to_f == percentile.to_i ? percentile.to_i.to_s : percentile.to_s.delete(".")
        "p#{suffix}_ms"
      end

      def mean(values)
        return nil if values.empty?

        round(values.sum.to_f / values.length)
      end

      def round(value)
        value.nil? ? nil : value.round(3)
      end
    end
  end
end

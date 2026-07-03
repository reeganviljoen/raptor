# frozen_string_literal: true

module Raptor
  class Error < StandardError; end
  class ConfigurationError < Error; end
  class UnsupportedFeatureError < Error; end
end

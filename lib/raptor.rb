# frozen_string_literal: true

require_relative "raptor/version"
require_relative "raptor/errors"
require_relative "raptor/configuration"
require_relative "raptor/dsl"
require_relative "raptor/server"

module Raptor
  module_function

  def config(options = {}, &block)
    Configuration.new(options, &block)
  end

  def run(app = nil, **options, &block)
    configuration = Configuration.new(options)
    configuration.app(app) if app
    configuration.app(block) if block

    Server.new(configuration).run
  end
end

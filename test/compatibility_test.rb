# frozen_string_literal: true

require_relative "test_helper"
require_relative "compatibility/fixture"
require_relative "compatibility/runner"

class CompatibilityTest < Minitest::Test
  FIXTURE_ROOT = File.expand_path("compatibility/fixtures", __dir__)

  def test_offline_compatibility_fixtures
    fixtures.each do |fixture|
      RaptorCompatibility::Runner.new(fixture, self).run
    end
  end

  private

  def fixtures
    Dir[File.join(FIXTURE_ROOT, "*")].sort.select { |path| File.directory?(path) }.map do |path|
      RaptorCompatibility::Fixture.load(path)
    end
  end
end

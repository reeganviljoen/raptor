# frozen_string_literal: true

require_relative "test_helper"

class ConfigurationTest < Minitest::Test
  include RaptorTestHelpers

  def test_threads_sets_ractor_worker_range
    app = Ractor.shareable_proc { |_env| [200, {}, ["ok"]] }

    config = Raptor.config(app: app, binds: [local_bind]) do
      threads 2, 5
    end

    config.clamp

    assert_equal 2, config.options[:workers]
    assert_equal 2, config.options[:min_workers]
    assert_equal 5, config.options[:max_workers]
  end

  def test_rejects_unshareable_direct_app
    unshareable = proc { |_env| [200, {}, ["ok"]] }
    config = Raptor.config(app: unshareable, binds: [local_bind])

    error = assert_raises(Raptor::ConfigurationError) { config.clamp }
    assert_match(/Ractor-shareable/, error.message)
  end

  def test_worker_lifecycle_hooks_fire_while_scaling
    app = Ractor.shareable_proc { |_env| [200, {}, ["ok"]] }
    events = []

    config = Raptor.config(app: app, binds: [local_bind], workers: 1, max_workers: 2, quiet: true) do
      before_worker_boot { |index| events << [:before_boot, index] }
      after_worker_boot { |index| events << [:after_boot, index] }
      before_worker_shutdown { |index| events << [:before_shutdown, index] }
      after_worker_shutdown { |index| events << [:after_shutdown, index] }
    end

    with_server(config) do |server|
      server.scale_workers(2)
      server.scale_workers(1)
    end

    assert_includes events, [:before_boot, 0]
    assert_includes events, [:after_boot, 0]
    assert_includes events, [:before_boot, 1]
    assert_includes events, [:after_boot, 1]
    assert_includes events, [:before_shutdown, 1]
    assert_includes events, [:after_shutdown, 1]
  end
end

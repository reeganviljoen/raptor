# frozen_string_literal: true

require_relative "test_helper"
require "raptor/simulation"

class SimulationTest < Minitest::Test
  def test_percentile_summary_interpolates_tail_values
    summary = Raptor::Simulation::Percentiles.summarize([1.0, 2.0, 3.0, 4.0])

    assert_equal 2.5, summary["p50_ms"]
    assert_equal 3.85, summary["p95_ms"]
    assert_equal 3.97, summary["p99_ms"]
    assert_equal 4.0, summary["max_ms"]
  end

  def test_process_tree_parses_ps_rows_and_finds_descendants
    output = <<~PS
       10     1 1000  0.0 ruby
       11    10 2000  1.5 ruby
       12    11 3000  2.5 ruby
       99     1 9000  9.0 other
    PS

    rows = Raptor::Simulation::ProcessTree.parse_ps(output)

    assert_equal [10, 11, 12], Raptor::Simulation::ProcessTree.descendants(10, rows)
    assert_equal 2_000, rows.fetch(1).fetch("rss_kb")
    assert_equal 2.5, rows.fetch(2).fetch("cpu_pct")
  end

  def test_quick_profile_has_one_raptor_and_one_puma_profile
    profiles = Raptor::Simulation::Configuration.profile("quick")

    assert_equal ["raptor", "puma"], profiles.map(&:adapter)
    assert_equal "raptor-1r", profiles.first.label
    assert_equal "puma-single-5t", profiles.last.label
  end

  def test_workload_rackup_contains_required_probe_endpoints
    Dir.mktmpdir do |dir|
      rackup = Raptor::Simulation::Workload.write(dir)
      source = File.read(rackup)

      assert_includes source, "/__health__"
      assert_includes source, "/__metrics__"
      assert_includes source, "/allocation"
      assert_includes source, "/upload"
    end
  end

  def test_puma_cluster_gc_delta_is_not_flattened_as_whole_server_metric
    profile = Raptor::Simulation::ServerProfile.new(name: "cluster", adapter: "puma", workers: 2, threads: 1)
    runner = Raptor::Simulation::Runner.new(
      profiles: [profile],
      scenarios: [],
      requests: 1,
      concurrency: 1,
      warmup_requests: 0
    )

    scope = runner.send(:gc_delta_scope, profile, { "pid" => 10 }, { "pid" => 10 })
    delta = runner.send(:empty_gc_delta)

    assert_equal "multiprocess_sample_only", scope
    assert_nil delta.fetch("gc_count")
    assert_nil delta.fetch("total_allocated_objects")
  end

  def test_simulation_command_is_not_packaged_without_puma_runtime_dependency
    spec = Gem::Specification.load(File.expand_path("../raptor.gemspec", __dir__))

    assert_includes spec.executables, "raptor"
    refute_includes spec.executables, "raptor-simulate"
  end
end

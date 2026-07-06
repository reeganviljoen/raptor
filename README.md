# Raptor

Raptor is a Ruby 4/MRI-only Rack web server research project. Its purpose is to test what a proper Rack web server built around Ractors could look like, and to identify what is still missing or required for that model to become practical.

The project is also meant to make the advantages and disadvantages of a Ractor-based server visible as they stand today. Raptor mirrors as many Puma architecture decisions and public APIs as practical because Puma gives the research a stable reference point and a clear basis for comparison.

Raptor is not intended to be production-ready in its current form. It is a stepping stone toward understanding what Ruby, Rack, web frameworks, libraries, and server architecture need before Ractors can move into prime-time production systems.

Raptor follows Puma's public configuration style where it makes sense, but uses Ractor workers instead of forked process workers or request threads.

The current spike is intentionally small but working:

- Minimal Rack-compatible HTTP/Rack handling over TCP and Unix sockets.
- Multiple Ractor workers accepting from the same listener.
- Runtime `scale_workers`, `add_worker`, and `remove_worker` controls.
- Puma-like DSL methods such as `bind`, `port`, `workers`, `threads`, `rackup`, hooks, timeouts, request logging, and low-level error handling, with some APIs active, remapped, config-only, warning no-ops, or explicit raises.
- Per-worker control pipes so a worker blocked in `accept` can be stopped immediately.

## Quick Start

```sh
bundle exec ruby bin/raptor examples/config.ru -b tcp://127.0.0.1:9292 -w 2
```

Or with a Puma-like config file:

```sh
bundle exec ruby bin/raptor -C examples/raptor.rb
```

Then:

```sh
curl http://127.0.0.1:9292/
```

## Puma vs Raptor Simulation

Run the local comparison harness:

```sh
bundle exec ruby bin/raptor-simulate
```

It launches Puma and Raptor against the same generated Rack app, performs warmup requests, and writes latency percentiles, throughput, RSS/CPU samples, GC deltas, logs, JSON, CSV, NDJSON, and a Markdown report under `tmp/simulations/<run-id>/`.

Run the local benchmark suite and build the static dashboard:

```sh
bundle exec ruby bin/raptor-benchmark-suite --suite smoke
```

The benchmark platform can also run x64 and arm64 architecture jobs in GitHub Actions, with YJIT off/on included inside each architecture run, and deploy a Pages dashboard.

## Rack Apps and Ractor Isolation

Ractors cannot freely share ordinary mutable Ruby objects. For normal Rack applications, prefer `rackup` so every Ractor worker boots its own app instance inside the worker.

For tiny embedded apps, pass a shareable callable:

```ruby
app = Ractor.shareable_proc do |env|
  [200, { "content-type" => "text/plain" }, ["ok\n"]]
end

server = Raptor::Server.new(Raptor.config(app: app, binds: ["tcp://127.0.0.1:9292"], workers: 2))
server.start
server.scale_workers(4)
server.scale_workers(1)
server.stop
```

## Puma Compatibility Direction

Raptor deliberately keeps familiar names:

```ruby
port 9292, "127.0.0.1"
workers 2
threads 1, 8
rackup "config.ru"
before_worker_boot { |index| puts "starting #{index}" }
after_worker_shutdown { |index| puts "stopped #{index}" }
```

In Raptor, `workers` means Ractor workers. `threads min, max` is accepted as a compatibility hint and maps to the min/max Ractor worker range. Forking, phased restart, plugins, control app, and TLS are not implemented yet.

## Research Notes

Start with:

- [docs/research.md](docs/research.md) for the initial design constraints and Ruby/Puma references.
- [docs/research-roadmap.md](docs/research-roadmap.md) for the current research questions and experiment tracks.
- [docs/roadmap.md](docs/roadmap.md) for the working GitHub issue roadmap.
- [docs/puma-comparison.md](docs/puma-comparison.md) for Puma API and architecture parity notes.
- [docs/puma-raptor-simulation.md](docs/puma-raptor-simulation.md) for the local Puma-vs-Raptor simulation harness.
- [docs/benchmark-platform.md](docs/benchmark-platform.md) for local benchmark suites, GitHub Actions, and GitHub Pages publishing.
- [docs/oss-app-test-matrix.md](docs/oss-app-test-matrix.md) for the staged real-world Rack app compatibility plan.
- [docs/ractor-tradeoffs.md](docs/ractor-tradeoffs.md) for expected advantages, disadvantages, and experiments.

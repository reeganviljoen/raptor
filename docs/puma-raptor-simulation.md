# Puma vs Raptor Simulation

Raptor now includes a local simulation harness for comparing Puma and Raptor against the same generated Rack app. It is meant to make early tradeoffs visible, not to produce marketing benchmark claims.

The harness follows the Speedshop measurement posture: record absolute latency, throughput, memory, and GC data first; keep warmup separate from measurement; and treat relative deltas as useful only when the raw context is present.

`raptor-simulate` is a repository development command, not an installed gem executable. Puma remains a development dependency so the core `raptor` gem does not depend on Puma at runtime.

## Run It

List the built-in profiles and scenarios:

```sh
bundle exec ruby bin/raptor-simulate --list
```

Run the quick profile:

```sh
bundle exec ruby bin/raptor-simulate
```

Run one tiny smoke case:

```sh
bundle exec ruby bin/raptor-simulate --scenario tiny --requests 20 --warmup-requests 5 --concurrency 2
```

Run the broader local matrix:

```sh
bundle exec ruby bin/raptor-simulate --profile full --repeat 5 --requests 1000 --warmup-requests 200 --concurrency 16
```

Run the full matrix with explicit YJIT off/on variants:

```sh
bundle exec ruby bin/raptor-simulate --profile full --runtime yjit-off --runtime yjit-on --repeat 1 --requests 200 --warmup-requests 50 --concurrency 8
```

Artifacts are written under `tmp/simulations/<run-id>/` by default:

- `metadata.json`: Ruby, gem versions, git SHA, CPU count, allocator/YJIT hints, profile, scenario list, and run settings.
- `summary.json`: machine-readable summary rows.
- `summary.csv`: flat rows for spreadsheet and graphing tools.
- `samples.ndjson`: RSS/CPU process-tree samples.
- `report.md`: a human-readable summary table and caveats.
- `report.html`: a self-contained offline report with comparison tables and inline SVG graphs.
- `<scenario>/<server>/repeat-N/result.json`: per-case measurement detail.
- `<scenario>/<server>/repeat-N/server.stdout.log` and `server.stderr.log`: server logs.
- `config.ru`: the exact generated Rack workload used for both servers.

Open `report.html` directly in a browser to inspect the offline tables and graphs. When multiple runtimes are selected, the report keeps `yjit-off` and `yjit-on` as separate table rows and chart series.

## Profiles

`quick` starts one Raptor process with one Ractor worker and one single-process Puma server with five request threads. It is the default because it is fast enough for local iteration.

`full` uses the logical CPU count `N`:

- Raptor with `1`, `N`, and `2N` Ractor workers.
- Puma single-process with five threads.
- Puma cluster with `N` workers and one thread.
- Puma cluster with `N` workers and five threads.

These modes describe equivalent intent, not identical mechanics. Puma workers are forked processes and Puma threads are request threads. Raptor workers are Ractors, and its Puma-like `threads` DSL is a worker-range hint rather than a request-thread pool.

## Runtime Profiles

- `default`: inherit Ruby's normal runtime settings for the spawned server.
- `yjit-off`: start the spawned server with `--disable=yjit`.
- `yjit-on`: start the spawned server with `--yjit`.
- `all`: shorthand for `yjit-off` plus `yjit-on`.

Runtime profiles apply to the Puma and Raptor server processes. The load generator still runs in the parent harness process.

## Scenarios

- `tiny`: small static response.
- `cpu`: Ruby CPU loop.
- `io`: blocking sleep to simulate waiting on IO.
- `mixed`: small CPU loop plus sleep.
- `allocation`: transient object allocation and string joining.
- `large`: 64 KiB response body.
- `upload`: 64 KiB POST body.

Every server runs the same generated `config.ru`, including `/__health__` for readiness and `/__metrics__` for Ruby/GC metadata.

## Metrics

Each measured case records:

- Client totals: attempted requests, completed requests, status counts, errors, bytes, elapsed seconds, and achieved requests per second.
- Latency: p50, p75, p90, p95, p99, p99.9, max, mean, min, and coarse histogram buckets.
- Server process samples: total RSS, peak RSS, ending RSS, average CPU percent, and per-PID process rows where `ps` is available.
- Ruby metrics: `/__metrics__` before and after the measured run, plus deltas for GC count, minor/major GC count, allocated/freed objects, heap slots, and malloc counters when Ruby exposes them. Deltas are flattened only when before/after probes hit the same worker. Puma cluster runs keep the raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.

Warmup requests run before measurement and are discarded.

## Caveats

The built-in client is deliberately dependency-light and uses Ruby's `Net::HTTP`. That makes it useful for repeatable local simulation, but it is still closed-loop load. For serious tail-latency claims, repeat promising cases with a constant-rate tool such as wrk2 or another HdrHistogram-based runner so coordinated omission is visible.

Short local runs should not be used to claim stable memory behavior. Speedshop's Ruby memory writing highlights allocator fragmentation and multi-threaded memory growth as long-running effects, so memory claims need soak runs with RSS curves.

Disable noisy logging while measuring. Both Raptor and Puma are launched quiet by default because shared stdout/stderr can distort small benchmarks.

Puma cluster GC metrics are intentionally conservative. A normal HTTP `/__metrics__` request can hit any worker process, so a before/after pair may not describe the same worker and never describes every worker. Use RSS/CPU process-tree samples for whole-server process behavior until explicit per-worker GC aggregation is added.

## References

- Speedshop measurement philosophy: https://www.speedshop.co/
- Speedshop app server sizing: https://www.speedshop.co/blog/appserver/
- Speedshop Ruby GVL scaling: https://www.speedshop.co/blog/the-ruby-gvl-and-scaling/
- Speedshop Ruby memory and malloc arenas: https://www.speedshop.co/blog/malloc-doubles-ruby-memory/
- Speedshop GC.stat guide: https://www.speedshop.co/blog/a-guide-to-gc-stat/
- Puma docs: https://puma.io/puma/
- Ruby Ractor docs: https://docs.ruby-lang.org/en/master/Ractor.html

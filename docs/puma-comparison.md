# Puma Comparison

Raptor uses Puma as a stable reference point, not as a claim of feature parity. The goal is to ask precise questions: which Puma concepts map cleanly to Ractor workers, which concepts need a different meaning, and which concepts expose missing Ruby, Rack, or Raptor capabilities.

The current baseline is Puma 8.0.2 documentation, checked on July 3, 2026.

## Parity Matrix

Status labels:

- `Supported-subset`: implemented, but narrower than Puma.
- `Remapped`: API exists with Ractor-specific semantics.
- `Config-only`: accepted and stored, but not wired into behavior yet.
- `Warn-noop`: accepted for compatibility and warns that it has no effect.
- `Raises`: explicitly unsupported.
- `Missing`: not implemented.
- `Raptor-only`: exists only for this research server.

| Puma API or concept | Current Raptor behavior | Status | Priority |
| --- | --- | --- | --- |
| `bind`, `port`, `clear_binds!` | TCP/HTTP and Unix binds work. SSL/HTTPS raises. | Supported-subset | P0 |
| `ssl_bind`, `ssl://`, HTTPS | Explicit `UnsupportedFeatureError`. | Raises | P0 |
| `workers count` | Integer Ractor worker count, not process workers. `:auto` fails and `0` is invalid. | Remapped | P0 |
| `threads min, max` | Sets a min/max Ractor worker range, not a request thread pool. | Remapped | P0 |
| `rackup` | Per-worker load through a custom loader with `run`, `use`, `map`, and `require_relative`. | Supported-subset | P0 |
| Direct `app` | Must be Ractor-shareable unless loaded inside a worker. | Remapped | P0 |
| Rack env and Rack compliance | Minimal Rack 3 env. No hijack, streaming, sendfile, `rack.response_finished`, chunked body handling, or full Rack compliance mode yet. | Missing/Partial | P0 |
| Worker hooks | Run in the master around Ractor lifecycle events. Keyed hook data is stored but not passed. | Remapped | P0 |
| Thread hooks | Run around Ractor start/exit, not thread-pool growth or trimming. | Remapped | P0 |
| `pidfile` | Writes/removes the current process pid. | Supported-subset | P1 |
| `state_path` and stats | Writes small JSON state from `Server#stats`, not a Puma-compatible control state file. | Supported-subset | P1 |
| `activate_control_app` | Stores URL/options and warns. No control Rack app yet. | Warn-noop | P1 |
| `plugin` | Stores plugin name and warns. No plugin loading yet. | Warn-noop | P1 |
| Timeouts and limits | First-data timeout, persistent timeout, keep-alive cap, supported methods, and body limit are used by parser/worker. | Supported-subset | P1 |
| `force_shutdown_after`, `drain_on_shutdown`, `worker_check_interval` | Stored/defaulted but not active in shutdown or monitoring behavior. | Config-only | P1 |
| `quiet`, `log_requests`, `lowlevel_error_handler` | Basic request logging, warnings, and custom error responses work. | Supported-subset | P1 |
| `preload_app!`, `prune_bundler`, fork/refork/cluster/single APIs | Process-model concepts. Stored or warn/no-op; no real semantics. | Warn-noop | P1 |
| `queue_requests`, `enable_keep_alives`, `clean_thread_locals`, `fiber_per_request` | Stored but not wired into request handling. | Config-only | P1 |
| `stdout_redirect`, `custom_logger`, `log_formatter` | Redirect warns; logger/formatter are no-op compatibility methods. | Warn-noop | P2 |
| CLI/config discovery | Small Puma-like CLI and config loading path, including `config/puma.rb`. | Supported-subset | P2 |
| Raptor compatibility fixtures | Raptor-only fixture harness exists under `test/compatibility`. A local Puma-vs-Raptor simulation harness exists for measured comparison runs. | Raptor-only | P1 |

## Intentionally Different

| Puma concept | Raptor meaning | Why it differs |
| --- | --- | --- |
| `workers` | Number of Ractor workers | Puma workers are forked processes. Raptor is testing whether Ractors can occupy some of that architectural role. |
| `threads min, max` | Ractor worker range hint | Puma uses request-serving thread pools. Raptor currently uses one synchronous request loop per worker Ractor, so the method is accepted as a familiar scaling hint. |
| `rack.multithread` and `rack.multiprocess` | Both `false` | A Ractor worker is neither a request thread pool nor a process worker. Raptor also sets `raptor.multiractor`. |
| App sharing | Direct apps must be Ractor-shareable | Normal mutable Rack apps should be loaded inside each worker through `rackup` or built by a shareable factory. |
| Forking, preload, phased restart, refork | No production equivalent yet | These are process-world features. Some DSL methods are accepted as no-ops or placeholders so configs can be studied, but the semantics do not translate directly. |
| Worker shutdown | Control pipe plus `IO.select` | A worker blocked in `accept` cannot be relied on to receive normal Ractor messages immediately. The control pipe gives deterministic stop/downscale behavior. |

## Known Gaps

- There is no full Puma API parity matrix with every DSL method and exact behavior.
- Unsupported behavior is uneven by design: some methods raise, some warn, some store options, and some compatibility placeholders no-op.
- Hook location and timing need clearer documentation. Some Puma hooks are process-worker hooks; Raptor currently runs comparable hooks in the master around Ractor lifecycle events.
- HTTP behavior is still intentionally small compared with Puma's mature parser, buffering, TLS, streaming, and hijack support.
- There is an initial Raptor-only compatibility fixture harness and a local Puma-vs-Raptor simulation harness. The simulation captures latency, throughput, RSS, and GC observations, but it is not a full Rack-compliance or production benchmark suite.

## Simulation Harness

Run the local comparison harness with:

```sh
bundle exec ruby bin/raptor-simulate
```

The harness writes JSON, CSV, NDJSON samples, server logs, and a Markdown report under `tmp/simulations/<run-id>/`. It launches Puma and Raptor as separate processes against the same generated `config.ru`, performs a warmup phase, then records measured request latency percentiles, achieved throughput, RSS samples, CPU samples, status counts, errors, and GC deltas.

See [puma-raptor-simulation.md](puma-raptor-simulation.md) for profiles, scenarios, metrics, and caveats.

## Next Tasks

- Build a parity table with columns for Puma API, Puma behavior, Raptor behavior, rationale, status, and test coverage.
- Add tests for compatibility edges: `workers :auto`, `workers 0`, `ssl_bind`, `plugin`, `activate_control_app`, fork/refork no-ops, warning behavior, and unsupported features.
- Add lifecycle tests for hook ordering, `pidfile`, `state_path`, restart, and scale-up/scale-down state.
- Extend the simulation harness with slow-client cases, constant-rate load support, longer memory soaks, and graphs from the existing JSON/CSV/NDJSON artifacts.

## References

- Puma docs: https://puma.io/puma/
- Puma DSL docs: https://puma.io/puma/Puma/DSL.html
- Raptor simulation harness: puma-raptor-simulation.md

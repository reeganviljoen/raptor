# Ractor Tradeoffs

Raptor is designed to make Ractor tradeoffs visible. It should not smooth over every rough edge too early, because the rough edges are the research signal.

## Expected Advantages

- Stronger isolation than request threads because ordinary mutable Ruby objects cannot be freely shared across Ractors.
- Potentially lower overhead than process workers if app boot, memory, and isolation costs become practical.
- A clean way to test real parallelism boundaries in MRI Ruby 4.
- Worker-local app boot exposes real framework and gem compatibility problems.
- Per-worker control pipes allow deterministic worker shutdown even when workers are waiting in `accept`.
- Runtime worker scaling can be studied without relying on forked process management.

## Expected Disadvantages

- Each worker currently has one synchronous connection loop. A slow upload, slow response, long app call, or idle keep-alive client can monopolize an entire Ractor.
- Rack support is still thin: no streaming request body, response streaming, `rack.hijack`, early hints, `rack.response_finished`, sendfile/`to_path`, or full Rack builder behavior.
- HTTP support is intentionally small: no chunked request bodies, transfer encoding, max header size/count enforcement, duplicate-header semantics, `Expect: 100-continue`, TLS, HTTP/2, or websocket flow.
- Framework and library boot can fail because of mutable globals, autoloading, global registries, class variables, singleton services, or non-shareable constants.
- Ruby 4 improves Ractor stability and performance, but Ractor still emits an experimental API warning locally.

## Research-Distortion Risks

- Eagerly collecting response bodies may measure buffering and allocation more than Ractor architecture.
- Fully buffering request bodies hides streaming and backpressure behavior.
- Shared-listener accept contention may dominate results without instrumentation.
- Worker crash handling is boot-focused; long-running experiments could lose capacity unless worker monitoring/restart is added.
- Puma-like names are useful for comparison, but `threads` no longer means a Puma-style thread pool.
- Shared `$stdout` and `$stderr` logging from workers may add global IO contention during benchmarks.

## Experiments To Add

- Per-worker metrics: accepts, active connections, requests, bytes in/out, app latency, read latency, write latency, keep-alive counts, errors, GC stats, and worker boot time.
- Accept-model comparison: current shared listener, master acceptor dispatching sockets to workers, and per-worker listeners with `SO_REUSEPORT` where available.
- Rack compliance mode using `Rack::Lint`.
- Benchmark matrix: CPU-bound app, IO-bound app, tiny response, large response, upload-heavy request, slow client, keep-alive on/off, and worker counts of 1, N, and 2N.
- Lifecycle experiments: crash a worker, observe it with `Ractor#monitor`, restart it, and record throughput impact.
- App-loading experiments: per-Ractor `rackup`, shareable `app_factory`, preloaded immutable/shareable setup, and common framework boot costs.

## References

- Ruby Ractor docs: https://docs.ruby-lang.org/en/master/Ractor.html
- Ruby 4.0.0 release notes: https://docs.ruby-lang.org/en/master/NEWS/NEWS-4_0_0_md.html
- Rack specification: https://github.com/rack/rack/blob/main/SPEC.rdoc

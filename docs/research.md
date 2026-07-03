# Ractor Worker Research Notes

Raptor targets Ruby 4 because Ruby 4.0 made Ractors more practical: the release notes call out stability and performance work, including less locking in method caches and object IDs, less cache contention in allocation paths, and fixes around Ractors combined with threads, require/autoload, encoding, GC races, and forking after Ractor startup.

Puma's public surface is the compatibility north star: its DSL exposes `bind`, `port`, `workers`, `threads`, hooks, timeouts, request logging, rackup loading, and many process-oriented controls. Raptor keeps the names that map cleanly, but reinterprets `workers` as Ractor workers and treats `threads min, max` as a Ractor worker range.

## Architecture

The master Ractor owns configuration, listener binding, scaling, and lifecycle hooks. Each worker is a Ruby `Ractor` that receives:

- the listener sockets,
- a private control pipe,
- a shareable worker options hash.

Workers block in `IO.select` on both the listener sockets and the control pipe. That avoids the common shutdown problem where a worker blocked in `accept` cannot observe a normal Ractor message. Runtime downscaling writes `stop` to selected worker pipes, then joins those Ractors.

## App Loading

Ordinary Rack apps are usually not Ractor-shareable. Raptor supports two boot modes:

- `rackup "config.ru"`: each worker loads its own app instance inside the worker Ractor.
- `app Ractor.shareable_proc { ... }` or `app_factory Ractor.shareable_proc { ... }`: useful for tests and small embedded apps.

Mutable app objects passed directly from the master are rejected unless Ruby can make them shareable.

## References

- Ruby 4.0.0 Ractor release notes: https://docs.ruby-lang.org/en/master/NEWS/NEWS-4_0_0_md.html
- Ruby Ractor API, including `Ractor::Port`, `Ractor.select`, and monitoring: https://docs.ruby-lang.org/en/master/Ractor.html
- Puma README and configuration notes: https://puma.io/puma/
- Puma DSL API: https://puma.io/puma/Puma/DSL.html

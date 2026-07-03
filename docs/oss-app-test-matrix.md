# OSS Rack App Test Matrix

Raptor has only been tested against tiny local Rack apps so far. The next research step is to run progressively more realistic Rack applications and record what fails. Failures are useful data: they should identify whether the missing piece is in Raptor's HTTP/Rack layer, Ruby's Ractor model, Rack/framework assumptions, or ordinary application dependencies.

## Staged Matrix

| Stage | Target | What it reveals |
| --- | --- | --- |
| 1 | Rack gem fixtures and `Rack::Lint` | Baseline Rack 3 env and response compliance before blaming Ractors. |
| 2 | Tiny Roda app | Low-dependency routing, params, plugin boot, and worker-local app construction. |
| 3 | Sinatra modular app | Middleware, cookies, redirects, templates, static files, settings, and framework-level global state. |
| 4 | Grape API app | JSON bodies, error handling, content negotiation, mounted endpoints, and larger payloads. |
| 5 | Hanami or dry-rb Rack app | Autoloading, dependency injection, containers, registries, and lazy boot behavior in worker Ractors. |
| 6 | Minimal Rails app | Full middleware stack, autoloading, sessions, params, reloader assumptions, file responses, and database connection setup. |
| 7 | Real Rails OSS app such as Lobsters, Spree, or Solidus | Initializers, real database/cache/session integrations, assets, plugins, fixtures, and production-shaped middleware. |
| 8 | Discourse-class app | Very large boot graph, Redis/database assumptions, plugins, background services, global caches, long responses, and websocket/hijack expectations. |

## Fixture Format

Each fixture should live under `test/compatibility/fixtures/` for offline fixtures, or under a later dedicated OSS harness directory once external applications are introduced. A fixture should include:

- `config.ru`
- `Gemfile` and lockfile when dependencies are vendored or installed
- manifest with expected endpoints, request probes, unsupported features, and failure categories
- setup notes for external services, if any
- expected observations for one worker and multiple workers

The first offline harness lives under `test/compatibility/fixtures/`. These fixtures are intentionally small and dependency-light so they can run before cloning or installing real OSS applications.

Current fixture:

- `rack_basic`: runs a tiny plain Rack app with one and two Ractor workers.
- `rack_lint_basic`: wraps a tiny Rack app in `Rack::Lint` and currently records a known `Ractor::IsolationError` around Rack constants that are not shareable from a worker Ractor.

### Offline Fixture Manifest Schema

Each offline fixture manifest must declare enough structure for the runner to classify failures without guessing:

- `id`: stable fixture identifier.
- `stage`: matrix stage, such as `rack_baseline` or `rack_lint`.
- `offline`: whether the fixture can run without external services.
- `transport`: the bind mode used by the harness, currently `tcp_loopback`.
- `requires.gems`: gem requirements the harness must satisfy before booting the fixture.
- `covers`: failure-taxonomy categories exercised by the fixture.
- `workers`: worker counts to run, usually `1` and `2` for Ractor comparison.
- `known_failures`: documented expected failures with `id`, `phase`, `category`, `error_class`, and `message`.
- `probes`: request/expectation pairs with `name`, `category`, `request`, optional `known_failure`, and `expect`.
- `notes`: optional human-readable research context.

Probe expectations currently support:

- `status`: expected HTTP response status.
- `body.includes`, `body.excludes`, and `body.exact`.
- `headers.include`, `headers.exact`, and `headers.absent`. Header names are matched case-insensitively, and duplicate response header lines are preserved as arrays.
- `invariants`, currently `content_length_matches_body`.

### Structured Fixture Results

The offline runner returns one structured result per worker/probe, or one fixture-level result when the harness environment prevents a run. Each result has a stable JSON-friendly shape:

- `fixture`, `worker_count`, `probe`, `phase`, `status`, and `category`.
- `known_failure` when a probe is expected to fail for a documented reason.
- `error_class` and `message` for boot, request, assertion, or harness-environment failures.
- `response.status`, `response.headers`, `response.body`, and `response.raw` when a response was captured.

Result statuses are:

- `passed`: probe matched its expected response and is not a known failure.
- `expected_known_failure`: probe matched the expected response for a documented known failure.
- `boot_failure`: the fixture failed before serving probes.
- `request_failure`: the harness could not complete the probe request.
- `assertion_failure`: the probe completed, but the response did not match the manifest.
- `harness_environment_skip`: a local requirement, bind, permission, or other harness condition prevented a meaningful fixture run.

Run the offline compatibility fixtures with:

```sh
ruby -Itest -e 'require_relative "test/compatibility_test"'
```

## Probe Set

Each fixture should be tested with:

- boot with one worker
- boot with two or more workers
- simple GET
- keep-alive GET
- POST with body
- cookies or session behavior
- redirect behavior
- static file or file-like response
- application error path
- graceful shutdown
- runtime scale up/down while still serving requests

## Failure Categories

Failures should be recorded without hiding them behind compatibility shims:

- `rack_env`
- `http_parser`
- `response_writer`
- `rackup_loader`
- `ractor_boot`
- `ractor_runtime`
- `framework_global_state`
- `dependency_global_state`
- `external_service`
- `harness_environment`
- `unsupported_rack_feature`

## Likely Early Blockers

- The Rack env is intentionally minimal.
- Request bodies are fully buffered from `Content-Length` only.
- Duplicate headers and chunked request bodies are not supported yet.
- Responses are fully buffered to compute `Content-Length`, which breaks or distorts streaming, large files, server-sent events, hijack, and websocket-like flows.
- The custom rackup loader only covers `run`, `use`, `map`, and `require_relative`.
- Framework boot may fail inside secondary Ractors due to global registries, mutable constants, autoloading, class variables, singleton loggers, cache/session state, or database pools initialized in the wrong place.

## First Harness Tasks

- Expand the black-box runner so it can capture boot errors per worker as structured fixture results, not only test failures.
- Wrap fixtures in `Rack::Lint` where possible so Rack spec gaps are visible.
- Start with Rack fixtures, Roda, and Sinatra before attempting Rails.
- Support an explicit local-loopback test mode because the managed sandbox may block TCP binds.

## References

- Rack specification: https://github.com/rack/rack/blob/main/SPEC.rdoc

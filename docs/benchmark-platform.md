# Benchmark Platform

Raptor has two benchmark layers:

- `bin/raptor-simulate` runs one Puma-vs-Raptor simulation and writes a self-contained run report.
- `bin/raptor-benchmark-suite` runs a named benchmark suite and optionally builds a Pages-ready dashboard with `bin/raptor-benchmark-site`.

The dashboard follows the same broad shape as `speed.ruby-lang.org`: keep raw machine-readable data, generate static HTML from that data, and make every published number traceable to an individual run artifact.

## Local Runs

Run the quick local smoke suite:

```sh
bundle exec ruby bin/raptor-benchmark-suite --suite smoke
```

This writes run artifacts under `tmp/raptor-benchmarks/runs/` and a dashboard at:

```text
tmp/raptor-benchmarks/site/index.html
```

Build or rebuild the dashboard from existing run directories:

```sh
bundle exec ruby bin/raptor-benchmark-site \
  --input tmp/raptor-benchmarks/runs \
  --output tmp/raptor-benchmarks/site
```

The suite runner supports three presets:

- `smoke`: quick local signal, `quick` profile, `tiny`, `cpu`, `json`, and `erb`, YJIT off/on, 20 measured requests, 5 warmup requests, one repeat.
- `standard`: scheduled CI signal, `full` profile, all app-server scenarios, YJIT off/on, 1,000 measured requests, 1,000 warmup requests, three repeats.
- `full`: heavier release-quality signal, `full` profile, all app-server scenarios, YJIT off/on, 2,000 measured requests, 2,000 warmup requests, five repeats.

To run one axis locally, pass the runtime explicitly:

```sh
bundle exec ruby bin/raptor-benchmark-suite \
  --suite smoke \
  --runtime yjit-on \
  --axis local-arm64-yjit-on \
  --arch arm64
```

## Benchmark Scenarios

The benchmark suite uses generated Rack endpoints so Puma and Raptor receive the same app behavior:

- `tiny`: tiny static response.
- `cpu`: Ruby CPU loop.
- `io`: blocking sleep to model waiting on IO.
- `mixed`: Ruby CPU work plus short sleep.
- `allocation`: transient string/array allocation.
- `json`: JSON parse plus generate, mirroring common API work and byroot's Ruby JSON focus.
- `erb`: ERB rendering with repeated item output, mirroring common view/template work.
- `large`: 64 KiB response body.
- `upload`: 64 KiB POST body.

## GitHub Actions

`.github/workflows/benchmarks.yml` provides a manual and weekly scheduled benchmark workflow.

The benchmark matrix runs:

- `x64` on `ubuntu-24.04`
- `arm64` on `ubuntu-24.04-arm`
- `yjit-off`
- `yjit-on`

Each matrix job runs one runtime axis for both Puma and Raptor. The Pages job downloads the axis artifacts, merges them into a benchmark-history cache, builds the static dashboard, and deploys the dashboard with GitHub Pages.

Manual runs can choose `smoke`, `standard`, or `full`, and can disable Pages deployment while still producing downloadable artifacts.

GitHub Pages must be configured to use GitHub Actions as the source. The workflow uses the official Pages artifact/deploy flow, so the deploy job needs `pages: write` and `id-token: write`.

## Reading Results

Treat local and GitHub-hosted runner results as trend signals, not final claims.

- YJIT comparisons need warmup. Short runs can include cold compilation cost.
- GitHub-hosted runners are convenient but noisy. Use dedicated, pinned machines before making release or marketing claims.
- Compare absolute throughput, latency, memory, CPU, GC, and error data together.
- App-server sizing should be interpreted through process count, thread count, memory, CPU, and copy-on-write behavior rather than a single RPS number.
- Puma thread-heavy profiles can show GVL wait effects. Ruby code, JSON, and ERB scenarios are intentionally included to make that visible.
- Raptor results must be read beside Ractor compatibility limits; many real Ruby objects and libraries still do not work cleanly from secondary Ractors.

## References

- speed.ruby.org: https://speed.ruby-lang.org/
- Shopify yjit-metrics: https://github.com/Shopify/yjit-metrics
- ruby-bench: https://github.com/ruby/ruby-bench
- GitHub Pages custom workflows: https://docs.github.com/en/pages/getting-started-with-github-pages/using-custom-workflows-with-github-pages
- GitHub-hosted runners: https://docs.github.com/en/actions/reference/runners/github-hosted-runners
- Speedshop app-server sizing: https://www.speedshop.co/blog/appserver/
- Speedshop GVL scaling: https://www.speedshop.co/blog/the-ruby-gvl-and-scaling/
- Speedshop malloc memory: https://www.speedshop.co/blog/malloc-doubles-ruby-memory/
- Speedshop GC.stat: https://www.speedshop.co/blog/a-guide-to-gc-stat/
- byroot on Ractors: https://byroot.github.io/ruby/performance/2025/02/27/whats-the-deal-with-ractors.html
- byroot on GVL removal: https://byroot.github.io/ruby/performance/2025/01/29/so-you-want-to-remove-the-gvl.html
- byroot on thread stalling: https://byroot.github.io/ruby/performance/2025/01/23/io-instrumentation.html
- byroot on Pitchfork and Puma process tradeoffs: https://byroot.github.io/ruby/performance/2025/03/04/the-pitchfork-story.html

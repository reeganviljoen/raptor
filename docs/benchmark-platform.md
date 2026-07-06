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

The suite runner supports three presets. The benchmark suites now use Puma's own local benchmark shapes instead of project-specific app scenarios:

- `smoke`: local signal, `quick` profile, one scenario from each Puma-derived benchmark family, YJIT off/on, at least 200 measured requests or 5 measured seconds, at least 100 warmup requests or 2 warmup seconds, one repeat.
- `standard`: scheduled CI signal, `full` profile, all Puma-derived benchmark families, YJIT off/on, at least 1,000 measured requests or 5 measured seconds, at least 1,000 warmup requests or 2 warmup seconds, three repeats.
- `full`: heavier release-quality signal, `full` profile, all Puma-derived benchmark families, YJIT off/on, at least 5,000 measured requests or 15 measured seconds, at least 2,000 warmup requests or 5 warmup seconds, five repeats.

Measured request counts are floors, not caps. Fast cases keep issuing requests until the minimum measured duration is reached. Warmup uses the lower of the suite warmup request floor and the case's measured request floor, then keeps issuing warmup requests until the minimum warmup duration is reached. That keeps serial slow scenarios from spending minutes on warmup while still giving fast endpoints enough elapsed warmup time. Benchmark-suite overrides can raise these quality floors, but the suite clamps too-small request, warmup, measured-duration, warmup-duration, and RSS/CPU sample-count values back to the minimums. Reports include the actual measured duration, actual request count, target request floor, warmup duration, configured duration floors, and normalized RSS/CPU sample count.

RSS/CPU sampling is normalized for apples-to-apples comparisons. Each benchmark case targets 20 measured samples by default. The sampler may collect more raw process-tree snapshots during a long case, then keeps an evenly spaced fixed-size subset for the summary, `samples.ndjson`, Markdown report, HTML report, and dashboard. That keeps a slow case from getting more memory/CPU observations than a fast case solely because it ran longer.

All suite profiles are capacity-matched. Puma uses a Rails-representative cluster shape: one worker per logical CPU and three request threads per worker. Puma capacity is `workers * threads`; Raptor capacity is its Ractor count. Both `quick` and `full` create a matching Raptor profile with `3N` Ractors for `N` logical CPUs, so Puma and Raptor rows with the same request-slot count can be read side by side.

To run one axis locally, pass the runtime explicitly:

```sh
bundle exec ruby bin/raptor-benchmark-suite \
  --suite smoke \
  --runtime yjit-on \
  --axis local-arm64-yjit-on \
  --arch arm64 \
  --min-duration 10 \
  --warmup-duration 3
```

## Benchmark Scenarios

The benchmark suite uses generated Rack endpoints so Puma and Raptor receive the same app behavior while matching Puma's established benchmark contracts:

- `puma-response-<type>-<size>kb`: based on Puma's `benchmarks/local/response_time_wrk.rb` and `test/rackup/ci_select.ru`. The generated app accepts the same `Body-Conf` request header for `array`, `chunk`, `string`, and `io` response bodies across 1 KiB, 10 KiB, 100 KiB, 256 KiB, 512 KiB, 1024 KiB, and 2048 KiB.
- `puma-long-tail-fib-200ms-x<multiplier>`: based on Puma's `benchmarks/local/long_tail_hey.rb` pressure shape and `test/rackup/sleep_fibonacci.ru` app shape. The generated app serves `/sleep0.2` with mixed Fibonacci CPU work plus sleep, and each scenario scales client concurrency from the server profile capacity.
- `puma-sleep-fibonacci-<delay>ms`: based on Puma's `benchmarks/local/sleep_fibonacci_test.rb` app microbenchmark. It performs ten serial requests for selected delays from Puma's small, medium, and large delay ranges.

The older generated scenarios (`tiny`, `cpu`, `json`, `erb`, and friends) remain available through `bin/raptor-simulate --scenario ...` for ad hoc debugging, but they are no longer the benchmark-suite defaults.

## GitHub Actions

`.github/workflows/benchmarks.yml` provides a benchmark workflow that runs after merges to `main`, on a weekly schedule, and on manual dispatch. Merged pull requests are captured by the `push` event on `main`, so the dashboard records the benchmark for the merge commit rather than an unmerged PR head.

The benchmark matrix runs one job per architecture:

- `x64` on `ubuntu-24.04`
- `arm64` on `ubuntu-24.04-arm`

Each matrix job runs both `yjit-off` and `yjit-on` for both Puma and Raptor, and writes a single run report for that architecture. The Pages job downloads the architecture artifacts, merges them into the durable `benchmark-history` branch, builds the static dashboard, writes one aggregate report per machine architecture under `architectures/<arch>/index.html`, and deploys the dashboard with GitHub Pages.

Merge and scheduled runs use the `standard` suite by default. Manual runs can choose `smoke`, `standard`, or `full`, and can disable Pages deployment while still producing downloadable artifacts.

GitHub Pages must be configured to use GitHub Actions as the source. The workflow uses the official Pages artifact/deploy flow, so the deploy job needs `pages: write`, `id-token: write`, and `contents: write` so it can push the updated `benchmark-history` branch before deploying the rendered dashboard.

Benchmark commands emit `[raptor-benchmark]` progress lines for each run, server, and measured case. In GitHub Actions, those lines show which runtime, adapter profile, scenario, and repeat is currently running, then print the measured duration, completions, errors, requests/sec, p99 latency, RSS, and sample count when the case finishes.

## Reading Results

Treat local and GitHub-hosted runner results as trend signals, not final claims.

- YJIT comparisons need warmup. Short runs can include cold compilation cost.
- Prefer duration floors for fast endpoints; request counts alone can finish before Ruby, YJIT, GC, and server scheduling settle.
- GitHub-hosted runners are convenient but noisy. Use dedicated, pinned machines before making release or marketing claims.
- Compare absolute throughput, latency, memory, CPU, GC, and error data together.
- App-server sizing should be interpreted through matched request-slot capacity, process count, thread count, memory, CPU, and copy-on-write behavior rather than a single RPS number.
- Puma response-body scenarios are primarily app-server response handling tests. Long-tail and sleep/fibonacci scenarios add mixed Ruby CPU work plus sleep so YJIT effects are less likely to be hidden by a pure sleep endpoint.
- Raptor results must be read beside Ractor compatibility limits; many real Ruby objects and libraries still do not work cleanly from secondary Ractors.

## References

- speed.ruby.org: https://speed.ruby-lang.org/
- Shopify yjit-metrics: https://github.com/Shopify/yjit-metrics
- ruby-bench: https://github.com/ruby/ruby-bench
- Puma local benchmarks: https://github.com/puma/puma/tree/main/benchmarks/local
- Puma response benchmark app: https://github.com/puma/puma/blob/main/test/rackup/ci_select.ru
- Puma sleep/fibonacci benchmark app: https://github.com/puma/puma/blob/main/test/rackup/sleep_fibonacci.ru
- Puma sleep/fibonacci benchmark runner: https://github.com/puma/puma/blob/main/benchmarks/local/sleep_fibonacci_test.rb
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

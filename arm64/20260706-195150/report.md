# Puma vs Raptor Simulation

Run ID: `20260706-195150`

## Environment

- Ruby: `ruby 4.0.5 (2026-05-20 revision 64336ffd0e) +PRISM [aarch64-linux]`
- Git SHA: `3fa3ad1`
- CPU count: `4`
- Rack: `3.2.6`
- Puma: `8.0.2`
- Raptor: `0.1.0`

## Benchmark Quality Warnings

- **caution** (`closed_loop_client`): This harness uses a closed-loop Ruby Net::HTTP client. Confirm production tail-latency claims with a constant-rate load tool.

## Benchmark Source Coverage

| family | source | scenarios | runtimes |
| --- | --- | ---: | --- |
| puma-long-tail-hey | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | 7 | yjit-off, yjit-on |
| puma-response-time-wrk | puma/benchmarks/local/response_time_wrk | 28 | yjit-off, yjit-on |
| puma-sleep-fibonacci-test | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | 6 | yjit-off, yjit-on |

## Summary

| runtime | scenario | source | server | capacity | duration s | warmup s | completed | errors | rps | p50 ms | p95 ms | p99 ms | rss peak MB | samples |
| --- | --- | --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.165 | 4.266 | 1691 | 0 | 274.302 | 40.998 | 42.583 | 45.394 | 33.801 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.156 | 4.269 | 1691 | 0 | 274.693 | 40.989 | 42.342 | 44.525 | 34.227 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.166 | 4.263 | 1691 | 0 | 274.228 | 40.995 | 42.542 | 44.369 | 34.352 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.171 | 4.298 | 1691 | 0 | 274.006 | 40.994 | 42.769 | 44.816 | 34.902 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.161 | 4.308 | 1691 | 0 | 274.475 | 40.991 | 42.553 | 46.368 | 35.02 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.153 | 4.285 | 1693 | 0 | 275.152 | 40.985 | 42.201 | 44.295 | 35.113 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.167 | 4.29 | 1691 | 0 | 274.182 | 40.996 | 42.406 | 43.753 | 35.223 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.193 | 4.282 | 1691 | 0 | 273.052 | 40.985 | 42.255 | 44.371 | 36.316 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.033 | 4.019 | 12268 | 0 | 2437.602 | 4.692 | 6.022 | 47.241 | 36.383 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.007 | 11768 | 0 | 2350.317 | 4.738 | 6.111 | 47.243 | 36.43 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.006 | 13473 | 0 | 2691.295 | 4.388 | 5.404 | 9.096 | 38.297 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.04 | 4.103 | 3182 | 0 | 631.404 | 5.507 | 41.96 | 49.145 | 48.313 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 3.88 | 4230 | 0 | 844.447 | 5.989 | 43.037 | 51.508 | 48.332 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 2.555 | 4125 | 0 | 817.356 | 6.179 | 42.917 | 118.435 | 48.332 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.008 | 10491 | 0 | 2094.799 | 5.617 | 6.791 | 12.537 | 49.141 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.056 | 3.883 | 2039 | 0 | 403.299 | 41.073 | 43.074 | 49.374 | 70.066 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.051 | 3.809 | 2626 | 0 | 519.854 | 10.251 | 45.895 | 405.983 | 70.066 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.04 | 2.738 | 4971 | 0 | 986.296 | 8.363 | 46.824 | 102.532 | 70.066 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.01 | 7250 | 0 | 1447.088 | 7.593 | 12.76 | 207.7 | 70.867 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.055 | 4.101 | 2061 | 0 | 407.679 | 42.046 | 49.648 | 59.373 | 94.688 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.069 | 4.133 | 2325 | 0 | 458.702 | 16.934 | 52.751 | 63.623 | 94.688 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.056 | 3.949 | 2327 | 0 | 460.202 | 16.647 | 52.804 | 64.335 | 94.688 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.016 | 2.016 | 5042 | 0 | 1005.2 | 11.232 | 21.827 | 28.528 | 99.613 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.693 | 4.327 | 1724 | 0 | 302.835 | 44.933 | 57.536 | 316.079 | 120.406 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.714 | 4.144 | 1759 | 0 | 307.822 | 43.33 | 68.806 | 270.348 | 120.441 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.546 | 4.317 | 1721 | 0 | 310.302 | 44.086 | 69.72 | 415.615 | 120.441 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.035 | 2.514 | 2865 | 0 | 569.063 | 21.046 | 25.775 | 44.798 | 151.121 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 7.364 | 4.999 | 1557 | 0 | 211.423 | 51.381 | 73.85 | 89.577 | 203.887 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.261 | 140.293 | 0 | 1440 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.019 | 0 | 960 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.015 | 0 | 720 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.013 | 5.01 | 0 | 480 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.01 | 5.01 | 0 | 360 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.008 | 0 | 240 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.003 | 0 | 10 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.005 | 0 | 10 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 204.16 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.182 | 4.251 | 1686 | 0 | 272.72 | 41.043 | 42.702 | 44.259 | 33.434 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.185 | 4.265 | 1687 | 0 | 272.759 | 41.004 | 42.832 | 44.61 | 33.816 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.179 | 4.327 | 1691 | 0 | 273.679 | 41.013 | 42.716 | 44.717 | 34.027 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.218 | 4.298 | 1686 | 0 | 271.137 | 41.577 | 42.946 | 44.088 | 34.551 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.214 | 4.251 | 1686 | 0 | 271.314 | 41.504 | 42.958 | 44.688 | 34.828 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.214 | 4.253 | 1683 | 0 | 270.848 | 41.592 | 43.052 | 44.497 | 35.035 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.191 | 4.342 | 1688 | 0 | 272.65 | 41.062 | 42.809 | 44.743 | 35.113 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.197 | 4.336 | 1686 | 0 | 272.074 | 41.258 | 42.815 | 44.552 | 36.527 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.036 | 3.994 | 11378 | 0 | 2259.525 | 5.049 | 6.351 | 49.866 | 36.629 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.023 | 2.006 | 11092 | 0 | 2208.111 | 5.103 | 6.517 | 49.372 | 36.633 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.006 | 12211 | 0 | 2439.267 | 4.843 | 6.084 | 10.029 | 38.656 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 3.934 | 2291 | 0 | 453.951 | 40.945 | 42.01 | 48.14 | 52.434 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.036 | 2.991 | 6701 | 0 | 1330.566 | 6.403 | 42.764 | 58.641 | 52.434 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.028 | 3.487 | 4999 | 0 | 994.153 | 6.429 | 42.937 | 57.44 | 52.434 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.009 | 9365 | 0 | 1869.35 | 6.055 | 8.66 | 16.463 | 52.824 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.053 | 3.966 | 2193 | 0 | 433.963 | 41.794 | 43.747 | 53.096 | 74.227 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.037 | 2.725 | 4674 | 0 | 928.02 | 8.274 | 47.914 | 78.161 | 70.922 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 109.825 | 2.187 | 4196 | 0 | 38.206 | 7.931 | 47.899 | 113.873 | 70.922 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.192 | 6911 | 0 | 1379.458 | 8.027 | 12.672 | 22.933 | 72.309 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 4.04 | 2012 | 0 | 398.652 | 42.46 | 47.988 | 57.348 | 91.547 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.036 | 4.023 | 2328 | 0 | 462.27 | 15.816 | 53.752 | 66.843 | 86.813 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.051 | 3.931 | 2513 | 0 | 497.569 | 14.816 | 54.198 | 271.05 | 86.813 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.018 | 2.035 | 4743 | 0 | 945.121 | 11.888 | 22.199 | 30.125 | 95.27 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.98 | 4.364 | 1709 | 0 | 285.796 | 44.959 | 56.226 | 248.211 | 128.887 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.911 | 4.266 | 1705 | 0 | 288.464 | 45.824 | 68.24 | 400.202 | 124.672 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.878 | 4.188 | 1698 | 0 | 288.884 | 44.535 | 69.439 | 255.102 | 117.309 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.031 | 2.622 | 2849 | 0 | 566.288 | 20.05 | 29.271 | 48.123 | 146.273 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 7.308 | 5.043 | 1551 | 0 | 212.235 | 51.452 | 73.96 | 83.752 | 200.906 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.275 | 140.322 | 0 | 1440 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.021 | 5.019 | 0 | 960 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.017 | 0 | 720 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.011 | 0 | 480 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.009 | 0 | 360 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.009 | 0 | 240 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.006 | 0 | 120 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.004 | 0 | 10 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.003 | 0 | 10 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 201.188 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.173 | 4.256 | 1691 | 0 | 273.934 | 40.991 | 42.513 | 44.379 | 33.676 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.203 | 4.253 | 1686 | 0 | 271.81 | 41.229 | 42.905 | 46.124 | 33.801 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.175 | 4.251 | 1687 | 0 | 273.2 | 41.038 | 42.782 | 44.583 | 34.016 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.194 | 4.275 | 1686 | 0 | 272.2 | 41.048 | 42.837 | 44.266 | 34.695 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.176 | 4.295 | 1691 | 0 | 273.812 | 40.999 | 42.58 | 43.984 | 34.797 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.167 | 4.269 | 1691 | 0 | 274.197 | 40.988 | 42.391 | 44.432 | 34.801 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.152 | 4.308 | 1691 | 0 | 274.881 | 40.985 | 42.242 | 44.189 | 34.871 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.19 | 4.274 | 1687 | 0 | 272.541 | 41.141 | 42.903 | 44.707 | 36.141 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.009 | 11726 | 0 | 2341.524 | 4.911 | 6.198 | 48.078 | 36.172 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.007 | 11541 | 0 | 2305.144 | 4.944 | 6.202 | 48.081 | 36.223 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.007 | 12526 | 0 | 2502.04 | 4.709 | 5.883 | 9.902 | 38.207 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.041 | 3.988 | 3332 | 0 | 660.924 | 5.51 | 41.966 | 47.932 | 51.207 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.024 | 2.036 | 4900 | 0 | 975.391 | 6.396 | 42.937 | 52.098 | 51.207 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.051 | 2.01 | 6432 | 0 | 1273.34 | 6.35 | 42.575 | 74.881 | 51.207 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.01 | 9308 | 0 | 1858.732 | 6.081 | 8.697 | 18.043 | 51.895 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.061 | 3.805 | 2285 | 0 | 451.518 | 41.504 | 43.861 | 52.877 | 75.125 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.048 | 2.055 | 4370 | 0 | 865.631 | 7.791 | 47.541 | 95.77 | 71.324 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.049 | 3.886 | 4007 | 0 | 793.691 | 8.04 | 47.923 | 290.983 | 71.324 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.011 | 6874 | 0 | 1371.715 | 7.995 | 12.765 | 25.024 | 72.965 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.052 | 4.12 | 1928 | 0 | 381.653 | 42.727 | 48.854 | 65.934 | 88.629 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.035 | 3.932 | 2046 | 0 | 406.373 | 42.07 | 52.471 | 62.315 | 87.066 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.05 | 4.073 | 2099 | 0 | 415.678 | 41.958 | 52.458 | 61.3 | 87.066 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.018 | 2.015 | 4900 | 0 | 976.512 | 11.483 | 23.598 | 29.248 | 97.684 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.086 | 4.273 | 1699 | 0 | 279.147 | 44.941 | 55.248 | 305.593 | 118.668 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.997 | 4.089 | 1708 | 0 | 284.792 | 46.889 | 66.278 | 244.424 | 115.457 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.635 | 4.275 | 1745 | 0 | 309.647 | 43.939 | 69.978 | 285.937 | 115.457 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.031 | 2.62 | 2581 | 0 | 513.05 | 23.45 | 29.213 | 125.522 | 141.863 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 7.191 | 4.965 | 1578 | 0 | 219.43 | 51.641 | 73.165 | 148.348 | 224.523 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.255 | 140.317 | 0 | 1440 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.019 | 0 | 960 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.016 | 5.016 | 0 | 720 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.014 | 5.012 | 0 | 480 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.01 | 0 | 360 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.005 | 0 | 10 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.01 | 0 | 10 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 221.02 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16714 | 0 | 3339.549 | 5.599 | 6.401 | 6.817 | 214.883 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16419 | 0 | 3280.339 | 5.702 | 6.503 | 6.886 | 232.52 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 16843 | 0 | 3365.048 | 5.568 | 6.351 | 6.769 | 248.359 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16813 | 0 | 3359.329 | 5.582 | 6.337 | 6.74 | 249.465 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.005 | 16395 | 0 | 3276.181 | 5.701 | 6.569 | 7.05 | 278.645 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14872 | 0 | 2971.237 | 6.313 | 7.188 | 7.695 | 287.141 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16728 | 0 | 3342.161 | 5.586 | 6.429 | 7.055 | 309.633 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 16572 | 0 | 3310.517 | 5.664 | 6.39 | 6.851 | 326.754 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12518 | 0 | 2500.211 | 7.492 | 8.392 | 9.076 | 437.539 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.012 | 7340 | 0 | 1464.8 | 12.97 | 14.01 | 14.564 | 375.328 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12426 | 0 | 2482.038 | 7.574 | 8.512 | 8.952 | 395.504 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12521 | 0 | 2501.288 | 7.496 | 8.386 | 9.057 | 347.699 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.007 | 9836 | 0 | 1964.045 | 9.181 | 11.905 | 21.405 | 429.746 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.021 | 4161 | 0 | 828.805 | 22.748 | 24.495 | 25.97 | 406.605 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.008 | 10068 | 0 | 2009.569 | 8.948 | 11.768 | 20.918 | 390.961 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.007 | 10107 | 0 | 2017.937 | 8.874 | 11.708 | 21.39 | 375.004 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.01 | 7806 | 0 | 1557.713 | 11.396 | 14.83 | 26.239 | 531.848 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.038 | 2.148 | 2351 | 0 | 466.672 | 40.229 | 43.178 | 46.22 | 466.039 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.009 | 8026 | 0 | 1601.692 | 11.071 | 14.755 | 25.851 | 448.234 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 7887 | 0 | 1574.312 | 11.238 | 15.0 | 26.343 | 398.805 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.017 | 5105 | 0 | 1017.913 | 17.641 | 32.395 | 34.799 | 540.332 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.07 | 3.992 | 1253 | 0 | 247.136 | 76.116 | 84.555 | 91.275 | 507.801 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.015 | 5246 | 0 | 1045.94 | 17.079 | 32.189 | 34.861 | 473.348 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.016 | 5178 | 0 | 1032.423 | 17.305 | 32.151 | 34.882 | 452.652 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.029 | 2.029 | 3230 | 0 | 642.326 | 29.251 | 32.119 | 34.151 | 481.621 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 7.692 | 7.552 | 1000 | 0 | 130.008 | 145.167 | 155.968 | 162.792 | 525.121 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.029 | 2.028 | 3169 | 0 | 630.191 | 29.792 | 32.69 | 35.901 | 514.52 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.026 | 2.047 | 3329 | 0 | 662.387 | 28.042 | 32.895 | 43.63 | 425.844 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 71.049 | 45.207 | 1440 | 0 | 20.268 | 2633.511 | 3672.54 | 3793.262 | 457.766 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 45.568 | 59.667 | 960 | 0 | 21.067 | 2169.588 | 2463.434 | 2515.579 | 488.133 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 34.017 | 31.177 | 720 | 0 | 21.166 | 1267.695 | 1718.308 | 1742.625 | 492.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.87 | 19.83 | 480 | 0 | 24.157 | 849.846 | 1221.581 | 1268.164 | 501.727 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.692 | 16.996 | 365 | 0 | 16.085 | 1034.656 | 1268.676 | 1271.572 | 507.73 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 16.997 | 11.337 | 240 | 0 | 14.12 | 349.846 | 861.355 | 868.28 | 506.543 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.504 | 8.53 | 125 | 0 | 14.699 | 293.18 | 435.325 | 444.406 | 494.539 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.001 | 3757 | 0 | 751.33 | 1.291 | 1.428 | 1.66 | 532.754 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.0 | 945 | 0 | 188.894 | 5.256 | 5.376 | 5.552 | 532.816 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.003 | 484 | 0 | 96.754 | 10.291 | 10.43 | 10.703 | 534.09 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.026 | 99 | 0 | 19.799 | 50.452 | 50.608 | 50.661 | 536.82 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.031 | 2.015 | 50 | 0 | 9.939 | 100.536 | 100.726 | 100.803 | 540.055 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.644 | 200.857 | 200.879 | 540.242 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16553 | 0 | 3307.317 | 5.637 | 6.558 | 7.15 | 233.359 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16006 | 0 | 3198.251 | 5.831 | 6.747 | 7.224 | 255.676 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.005 | 16278 | 0 | 3252.725 | 5.737 | 6.621 | 7.179 | 267.688 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 16586 | 0 | 3313.884 | 5.642 | 6.533 | 6.933 | 274.727 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 16541 | 0 | 3304.972 | 5.644 | 6.547 | 7.018 | 300.75 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14624 | 0 | 2922.062 | 6.399 | 7.395 | 7.972 | 301.336 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16458 | 0 | 3288.151 | 5.673 | 6.522 | 7.228 | 311.363 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16411 | 0 | 3279.135 | 5.701 | 6.581 | 7.074 | 324.844 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12401 | 0 | 2477.188 | 7.57 | 8.49 | 9.233 | 398.887 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.012 | 7284 | 0 | 1453.398 | 13.06 | 14.231 | 14.752 | 388.273 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12438 | 0 | 2484.246 | 7.553 | 8.468 | 8.972 | 405.801 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12408 | 0 | 2478.495 | 7.573 | 8.434 | 9.22 | 324.676 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 9909 | 0 | 1978.909 | 9.032 | 12.014 | 22.961 | 423.992 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.02 | 4144 | 0 | 825.173 | 22.901 | 24.794 | 26.426 | 421.824 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.008 | 9858 | 0 | 1967.672 | 9.072 | 11.982 | 23.414 | 395.402 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.007 | 10131 | 0 | 2021.786 | 8.796 | 11.876 | 23.396 | 339.797 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.009 | 7765 | 0 | 1549.713 | 11.358 | 15.155 | 28.458 | 516.316 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.039 | 2.121 | 2345 | 0 | 465.379 | 40.604 | 42.625 | 43.858 | 450.09 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.014 | 2.011 | 7861 | 0 | 1567.884 | 11.163 | 15.377 | 28.564 | 410.129 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.023 | 7841 | 0 | 1565.337 | 11.168 | 15.263 | 28.737 | 388.035 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.016 | 4931 | 0 | 982.618 | 18.078 | 34.854 | 37.595 | 497.582 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.073 | 4.103 | 1282 | 0 | 252.726 | 74.347 | 81.792 | 85.523 | 482.512 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.015 | 4935 | 0 | 983.799 | 17.672 | 35.384 | 37.758 | 440.371 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.016 | 5297 | 0 | 1055.973 | 16.988 | 32.486 | 34.512 | 404.934 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.027 | 2993 | 0 | 595.24 | 30.91 | 38.635 | 54.42 | 513.625 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 7.68 | 7.598 | 1000 | 0 | 130.202 | 145.442 | 155.924 | 164.732 | 531.98 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.027 | 3247 | 0 | 645.841 | 29.021 | 31.271 | 46.548 | 481.828 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.026 | 2.025 | 3365 | 0 | 669.465 | 28.008 | 30.904 | 35.701 | 441.809 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 68.159 | 61.066 | 1440 | 0 | 21.127 | 3263.278 | 3436.198 | 3469.941 | 458.246 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 51.025 | 51.007 | 960 | 0 | 18.814 | 2121.802 | 2573.624 | 2600.167 | 476.637 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 31.271 | 36.809 | 720 | 0 | 23.025 | 1307.901 | 1689.954 | 1705.45 | 489.352 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.774 | 22.68 | 480 | 0 | 21.077 | 935.613 | 1271.871 | 1284.045 | 498.043 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.041 | 16.966 | 360 | 0 | 21.125 | 843.298 | 871.003 | 887.688 | 498.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 14.18 | 14.218 | 240 | 0 | 16.925 | 426.476 | 840.381 | 859.122 | 497.559 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.501 | 11.302 | 125 | 0 | 14.704 | 293.994 | 439.708 | 443.755 | 501.727 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.0 | 3801 | 0 | 760.011 | 1.28 | 1.405 | 1.588 | 531.129 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.004 | 944 | 0 | 188.7 | 5.265 | 5.376 | 5.531 | 559.629 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.008 | 484 | 0 | 96.758 | 10.292 | 10.42 | 10.707 | 564.766 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.045 | 2.021 | 100 | 0 | 19.82 | 50.393 | 50.528 | 50.746 | 564.828 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.029 | 2.015 | 50 | 0 | 9.942 | 100.514 | 100.633 | 100.776 | 564.828 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.518 | 200.593 | 200.75 | 564.828 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.004 | 16760 | 0 | 3349.025 | 5.571 | 6.492 | 7.015 | 231.902 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.005 | 16354 | 0 | 3267.93 | 5.718 | 6.588 | 7.099 | 250.215 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.004 | 16673 | 0 | 3331.668 | 5.586 | 6.454 | 7.068 | 258.809 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 16689 | 0 | 3334.691 | 5.607 | 6.452 | 6.862 | 268.113 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.004 | 16601 | 0 | 3316.281 | 5.632 | 6.461 | 6.932 | 293.332 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14722 | 0 | 2941.27 | 6.374 | 7.298 | 7.769 | 295.414 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16609 | 0 | 3318.732 | 5.631 | 6.433 | 6.933 | 307.145 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16500 | 0 | 3296.545 | 5.665 | 6.51 | 6.997 | 324.219 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12468 | 0 | 2490.4 | 7.557 | 8.391 | 8.8 | 424.809 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.012 | 7269 | 0 | 1450.219 | 13.107 | 14.313 | 14.918 | 380.781 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12477 | 0 | 2491.919 | 7.534 | 8.45 | 8.947 | 395.637 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12420 | 0 | 2481.07 | 7.594 | 8.414 | 8.856 | 332.125 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 9575 | 0 | 1912.155 | 9.329 | 12.325 | 24.765 | 418.27 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.02 | 4101 | 0 | 816.648 | 23.148 | 25.21 | 26.847 | 417.43 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.009 | 9755 | 0 | 1947.898 | 9.093 | 12.37 | 25.162 | 392.301 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.007 | 9974 | 0 | 1991.703 | 8.922 | 12.233 | 24.29 | 348.656 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.01 | 7706 | 0 | 1537.963 | 11.438 | 15.139 | 29.836 | 529.82 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.039 | 2.194 | 2326 | 0 | 461.562 | 40.899 | 43.323 | 45.621 | 481.293 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.011 | 7789 | 0 | 1554.381 | 11.189 | 15.209 | 30.412 | 402.125 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.009 | 7845 | 0 | 1566.091 | 11.143 | 14.965 | 29.649 | 363.047 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.014 | 5047 | 0 | 1006.221 | 17.44 | 36.438 | 38.94 | 511.582 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.073 | 4.007 | 1269 | 0 | 250.145 | 75.101 | 82.222 | 86.877 | 497.223 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.014 | 5135 | 0 | 1023.516 | 17.154 | 36.054 | 39.176 | 464.109 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.015 | 5218 | 0 | 1039.967 | 17.049 | 34.853 | 37.17 | 413.832 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.029 | 2.027 | 3205 | 0 | 637.354 | 29.445 | 32.16 | 36.677 | 466.113 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 7.857 | 7.599 | 1000 | 0 | 127.279 | 149.1 | 159.743 | 165.522 | 545.074 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.027 | 2.029 | 3292 | 0 | 654.91 | 28.741 | 31.316 | 33.001 | 517.844 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.025 | 2.025 | 3473 | 0 | 691.153 | 27.179 | 29.218 | 31.648 | 426.672 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 68.202 | 46.167 | 1440 | 0 | 21.114 | 3023.642 | 3449.154 | 3484.769 | 476.578 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 53.862 | 48.322 | 960 | 0 | 17.823 | 1699.832 | 2753.341 | 2890.395 | 499.148 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 34.044 | 45.316 | 720 | 0 | 21.149 | 1611.635 | 1722.198 | 1744.216 | 504.035 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.562 | 28.314 | 480 | 0 | 18.778 | 863.757 | 1300.966 | 1317.458 | 484.992 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.83 | 28.366 | 360 | 0 | 18.154 | 771.43 | 1087.217 | 1174.479 | 486.816 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.367 | 14.162 | 240 | 0 | 21.113 | 431.513 | 773.07 | 828.161 | 494.082 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.302 | 8.517 | 130 | 0 | 11.502 | 448.51 | 769.091 | 795.422 | 504.773 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.001 | 3762 | 0 | 752.367 | 1.292 | 1.413 | 1.608 | 522.332 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.004 | 945 | 0 | 188.904 | 5.258 | 5.365 | 5.594 | 531.477 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.004 | 485 | 0 | 96.973 | 10.276 | 10.375 | 10.555 | 528.707 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.05 | 2.019 | 100 | 0 | 19.801 | 50.457 | 50.593 | 50.652 | 525.0 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.027 | 2.015 | 50 | 0 | 9.946 | 100.47 | 100.602 | 100.636 | 525.191 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.017 | 2.009 | 25 | 0 | 4.983 | 200.592 | 200.682 | 201.134 | 525.191 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.169 | 4.283 | 1691 | 0 | 274.125 | 40.99 | 42.248 | 43.52 | 36.277 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.154 | 4.296 | 1691 | 0 | 274.766 | 40.988 | 42.556 | 45.142 | 37.148 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.145 | 4.278 | 1692 | 0 | 275.342 | 40.986 | 42.172 | 44.392 | 37.945 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.187 | 4.256 | 1687 | 0 | 272.668 | 41.167 | 42.714 | 44.44 | 39.172 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.166 | 4.285 | 1689 | 0 | 273.936 | 40.999 | 42.58 | 44.539 | 39.902 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.157 | 4.287 | 1691 | 0 | 274.63 | 40.99 | 42.395 | 44.957 | 40.008 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.148 | 4.26 | 1691 | 0 | 275.044 | 40.985 | 42.397 | 44.07 | 40.047 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.194 | 4.249 | 1691 | 0 | 273.005 | 41.007 | 42.58 | 44.264 | 41.23 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.052 | 11966 | 0 | 2390.182 | 4.762 | 5.963 | 48.126 | 41.27 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.007 | 11869 | 0 | 2370.109 | 4.719 | 6.089 | 48.423 | 41.504 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.006 | 12786 | 0 | 2553.975 | 4.621 | 5.789 | 9.978 | 43.188 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 2.041 | 2470 | 0 | 489.566 | 40.936 | 41.974 | 248.154 | 55.883 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 2.011 | 7745 | 0 | 1535.262 | 6.059 | 41.905 | 61.277 | 55.883 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.044 | 2.048 | 5519 | 0 | 1094.163 | 6.097 | 42.546 | 114.035 | 55.883 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.03 | 2.009 | 9355 | 0 | 1859.982 | 5.919 | 9.374 | 24.662 | 56.27 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.043 | 3.845 | 2810 | 0 | 557.249 | 7.482 | 44.671 | 240.35 | 83.551 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 2.038 | 4482 | 0 | 888.012 | 7.308 | 47.229 | 68.045 | 76.961 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 2.528 | 5058 | 0 | 1002.523 | 8.226 | 46.656 | 90.901 | 76.969 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.036 | 2.037 | 6786 | 0 | 1347.513 | 7.976 | 12.852 | 30.346 | 78.324 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.049 | 4.05 | 1962 | 0 | 388.561 | 42.493 | 47.722 | 59.86 | 96.633 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.046 | 3.953 | 2398 | 0 | 475.257 | 15.303 | 53.433 | 62.973 | 90.969 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.044 | 3.914 | 2508 | 0 | 497.183 | 13.114 | 53.794 | 242.296 | 90.969 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.018 | 2.017 | 4739 | 0 | 944.337 | 11.646 | 22.251 | 36.901 | 100.43 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.459 | 4.175 | 1747 | 0 | 320.0 | 44.373 | 56.815 | 387.994 | 127.039 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.389 | 4.04 | 1753 | 0 | 325.27 | 33.932 | 67.832 | 301.757 | 120.629 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.327 | 4.057 | 1770 | 0 | 332.295 | 30.67 | 68.966 | 274.686 | 120.629 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.031 | 2.563 | 2747 | 0 | 545.981 | 22.017 | 27.495 | 43.746 | 161.402 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 7.179 | 4.968 | 1575 | 0 | 219.401 | 51.0 | 74.415 | 145.872 | 183.125 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.258 | 140.205 | 0 | 1440 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.02 | 5.021 | 0 | 960 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.017 | 5.015 | 0 | 720 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.013 | 0 | 480 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.01 | 5.009 | 0 | 360 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.009 | 0 | 240 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.006 | 0 | 10 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 183.727 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.173 | 4.332 | 1691 | 0 | 273.93 | 40.997 | 42.597 | 44.728 | 35.926 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.164 | 4.285 | 1691 | 0 | 274.333 | 40.991 | 42.357 | 44.074 | 36.625 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.165 | 4.278 | 1691 | 0 | 274.278 | 40.992 | 42.659 | 45.034 | 37.352 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.151 | 4.257 | 1691 | 0 | 274.907 | 40.989 | 42.319 | 44.151 | 38.047 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.153 | 4.263 | 1692 | 0 | 274.988 | 40.985 | 42.185 | 43.99 | 38.328 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.165 | 4.253 | 1691 | 0 | 274.294 | 40.992 | 42.454 | 43.652 | 38.504 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.153 | 4.257 | 1691 | 0 | 274.817 | 40.986 | 42.449 | 44.331 | 38.77 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.154 | 4.245 | 1691 | 0 | 274.771 | 40.988 | 42.4 | 43.854 | 40.035 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.007 | 12025 | 0 | 2401.565 | 4.708 | 5.901 | 47.179 | 40.129 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.029 | 2.049 | 5651 | 0 | 1123.612 | 4.962 | 41.016 | 46.702 | 40.148 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.006 | 12641 | 0 | 2524.76 | 4.693 | 5.838 | 9.68 | 41.957 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.159 | 2.639 | 1846 | 0 | 357.792 | 40.967 | 41.995 | 154.433 | 55.543 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.012 | 5909 | 0 | 1179.581 | 5.818 | 43.549 | 62.288 | 55.551 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.017 | 2.043 | 7646 | 0 | 1523.962 | 5.986 | 42.624 | 88.303 | 55.551 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.011 | 9082 | 0 | 1813.452 | 5.984 | 9.589 | 28.635 | 56.227 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.071 | 3.857 | 2240 | 0 | 441.741 | 41.107 | 43.919 | 55.71 | 82.086 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 2.862 | 4218 | 0 | 835.755 | 7.271 | 48.405 | 161.996 | 75.02 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.051 | 2.048 | 4575 | 0 | 905.702 | 7.948 | 47.779 | 71.977 | 72.863 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.013 | 6723 | 0 | 1341.494 | 7.88 | 12.659 | 34.948 | 75.93 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.057 | 3.883 | 1955 | 0 | 386.624 | 42.251 | 49.53 | 62.69 | 91.508 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.056 | 3.812 | 2378 | 0 | 470.376 | 15.553 | 53.947 | 76.445 | 88.582 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.048 | 3.841 | 2169 | 0 | 429.69 | 41.912 | 53.818 | 64.916 | 88.582 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.02 | 2.016 | 4752 | 0 | 946.589 | 11.547 | 21.18 | 37.917 | 98.75 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.993 | 4.3 | 1729 | 0 | 288.494 | 44.694 | 59.455 | 240.523 | 136.52 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.218 | 4.106 | 1747 | 0 | 334.778 | 42.975 | 67.349 | 467.258 | 133.66 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.52 | 4.223 | 1737 | 0 | 314.663 | 36.169 | 70.137 | 366.602 | 133.66 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.032 | 2.601 | 3066 | 0 | 609.343 | 18.951 | 25.608 | 45.123 | 157.703 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 7.328 | 4.971 | 1567 | 0 | 213.836 | 52.692 | 74.054 | 98.02 | 204.746 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.257 | 140.205 | 0 | 1440 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.021 | 5.022 | 0 | 960 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.016 | 5.019 | 0 | 720 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.011 | 0 | 480 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.01 | 0 | 360 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.002 | 0 | 120 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.002 | 0 | 10 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.003 | 0 | 10 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.007 | 0 | 10 | 0.0 |  |  |  | 201.566 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.165 | 4.327 | 1691 | 0 | 274.287 | 40.986 | 42.404 | 44.386 | 35.992 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.153 | 4.344 | 1691 | 0 | 274.842 | 40.986 | 42.254 | 45.028 | 36.879 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.174 | 4.31 | 1691 | 0 | 273.902 | 40.999 | 42.692 | 44.53 | 37.625 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.158 | 4.309 | 1691 | 0 | 274.599 | 40.987 | 42.376 | 45.279 | 38.082 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.221 | 4.26 | 1686 | 0 | 271.021 | 41.496 | 42.992 | 44.665 | 38.391 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.162 | 4.292 | 1691 | 0 | 274.441 | 40.99 | 42.272 | 44.512 | 38.465 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.163 | 4.257 | 1691 | 0 | 274.364 | 41.0 | 42.554 | 43.776 | 38.59 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.163 | 4.257 | 1691 | 0 | 274.379 | 40.992 | 42.59 | 44.478 | 39.324 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.006 | 12086 | 0 | 2414.399 | 4.689 | 5.885 | 48.511 | 39.344 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.034 | 2.033 | 10831 | 0 | 2151.6 | 5.14 | 6.623 | 49.72 | 39.484 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.006 | 11485 | 0 | 2294.031 | 5.143 | 6.468 | 10.783 | 41.422 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.073 | 2.843 | 1866 | 0 | 367.806 | 40.961 | 42.055 | 108.425 | 52.23 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.044 | 2.06 | 7780 | 0 | 1542.313 | 6.806 | 11.134 | 87.735 | 52.238 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.049 | 6753 | 0 | 1347.909 | 6.351 | 42.724 | 69.243 | 52.238 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.009 | 8845 | 0 | 1765.744 | 6.193 | 9.883 | 45.494 | 52.996 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.062 | 3.345 | 2340 | 0 | 462.262 | 41.49 | 44.876 | 63.099 | 76.395 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.04 | 2.276 | 5251 | 0 | 1041.789 | 8.757 | 48.861 | 141.241 | 70.836 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.048 | 2.046 | 5210 | 0 | 1032.064 | 9.177 | 45.028 | 140.537 | 70.836 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.014 | 2.216 | 6205 | 0 | 1237.476 | 8.713 | 14.508 | 36.552 | 72.406 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.043 | 3.868 | 2182 | 0 | 432.661 | 41.963 | 49.922 | 68.863 | 85.508 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 3.838 | 2664 | 0 | 528.313 | 13.846 | 56.409 | 318.394 | 84.883 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.065 | 4.086 | 2649 | 0 | 523.006 | 13.139 | 55.653 | 264.302 | 84.883 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.017 | 4115 | 0 | 819.888 | 13.237 | 26.585 | 44.76 | 95.105 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.554 | 3.985 | 1748 | 0 | 314.711 | 44.857 | 57.222 | 435.947 | 119.215 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.508 | 4.085 | 1759 | 0 | 319.348 | 32.554 | 73.015 | 287.433 | 116.285 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.456 | 3.965 | 1750 | 0 | 320.734 | 30.01 | 70.067 | 509.438 | 116.297 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.03 | 2.637 | 2975 | 0 | 591.403 | 19.642 | 26.366 | 45.939 | 140.215 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.879 | 4.855 | 1587 | 0 | 230.707 | 50.113 | 73.224 | 227.789 | 195.555 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.262 | 140.212 | 0 | 1440 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.023 | 5.023 | 0 | 960 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.019 | 0 | 720 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.011 | 0 | 480 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.009 | 0 | 360 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.008 | 0 | 120 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.004 | 5.006 | 0 | 10 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.006 | 0 | 10 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 196.027 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 16900 | 0 | 3375.999 | 5.527 | 6.387 | 6.911 | 250.695 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.004 | 16548 | 0 | 3305.874 | 5.647 | 6.496 | 6.912 | 268.656 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 16829 | 0 | 3361.932 | 5.553 | 6.424 | 6.879 | 279.574 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16677 | 0 | 3331.811 | 5.6 | 6.44 | 6.875 | 284.105 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16638 | 0 | 3324.421 | 5.629 | 6.46 | 6.987 | 312.242 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14893 | 0 | 2975.613 | 6.304 | 7.223 | 7.733 | 316.375 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16556 | 0 | 3307.794 | 5.641 | 6.472 | 7.22 | 327.453 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16463 | 0 | 3289.38 | 5.695 | 6.494 | 6.888 | 340.855 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12598 | 0 | 2516.501 | 7.466 | 8.311 | 8.707 | 431.852 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.01 | 7274 | 0 | 1451.486 | 13.126 | 14.302 | 14.827 | 416.699 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12614 | 0 | 2519.755 | 7.463 | 8.319 | 8.744 | 426.633 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 12728 | 0 | 2542.532 | 7.359 | 8.148 | 8.509 | 345.789 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.007 | 9545 | 0 | 1906.11 | 9.196 | 12.058 | 30.208 | 478.367 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.024 | 2.021 | 4096 | 0 | 815.33 | 23.31 | 25.326 | 26.656 | 460.934 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9761 | 0 | 1949.212 | 8.943 | 12.089 | 29.972 | 430.523 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9834 | 0 | 1963.751 | 8.927 | 11.68 | 29.914 | 381.93 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 7427 | 0 | 1482.458 | 11.636 | 15.617 | 34.764 | 569.266 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.038 | 2.166 | 2322 | 0 | 460.927 | 40.961 | 43.668 | 45.728 | 474.332 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.024 | 7759 | 0 | 1548.884 | 11.114 | 14.816 | 34.088 | 422.23 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.01 | 7699 | 0 | 1536.381 | 11.081 | 15.021 | 34.101 | 416.66 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.016 | 4920 | 0 | 980.631 | 18.026 | 40.494 | 43.021 | 530.547 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.07 | 4.085 | 1266 | 0 | 249.727 | 75.399 | 82.76 | 87.696 | 513.664 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.016 | 5170 | 0 | 1030.863 | 16.997 | 40.036 | 41.745 | 476.246 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.018 | 5070 | 0 | 1010.701 | 17.245 | 39.346 | 41.562 | 440.188 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.032 | 3146 | 0 | 625.637 | 29.692 | 33.635 | 55.958 | 446.086 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 7.802 | 7.585 | 1000 | 0 | 128.173 | 147.36 | 161.671 | 172.192 | 556.438 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.028 | 3119 | 0 | 620.328 | 29.811 | 35.582 | 39.171 | 501.688 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.027 | 3391 | 0 | 674.443 | 27.908 | 29.931 | 31.556 | 465.859 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 60.222 | 49.435 | 1440 | 0 | 23.912 | 2617.107 | 3039.885 | 3068.545 | 509.055 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 43.085 | 45.703 | 960 | 0 | 22.282 | 1730.513 | 2186.168 | 2213.374 | 534.148 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 34.317 | 42.998 | 720 | 0 | 20.981 | 1305.52 | 1736.398 | 1759.331 | 536.914 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.872 | 37.123 | 480 | 0 | 20.986 | 857.469 | 1272.62 | 1289.881 | 549.188 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.962 | 22.89 | 360 | 0 | 18.034 | 906.715 | 1186.453 | 1266.114 | 549.801 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.502 | 11.395 | 240 | 0 | 20.866 | 432.836 | 781.425 | 839.406 | 547.621 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.336 | 8.492 | 130 | 0 | 11.468 | 429.377 | 833.701 | 838.631 | 548.633 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.001 | 1970 | 0 | 393.907 | 2.505 | 2.619 | 2.812 | 598.949 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.007 | 2.005 | 567 | 0 | 113.237 | 8.787 | 8.939 | 9.161 | 609.543 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.005 | 2.001 | 411 | 0 | 82.119 | 12.137 | 12.26 | 12.532 | 615.371 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.048 | 2.022 | 100 | 0 | 19.808 | 50.428 | 50.563 | 50.893 | 615.434 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.027 | 2.012 | 50 | 0 | 9.947 | 100.479 | 100.589 | 100.766 | 616.371 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.499 | 200.545 | 200.875 | 617.066 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16633 | 0 | 3323.564 | 5.639 | 6.478 | 6.92 | 248.875 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 16599 | 0 | 3316.053 | 5.646 | 6.501 | 6.943 | 268.672 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 16746 | 0 | 3346.089 | 5.586 | 6.445 | 6.934 | 279.496 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 16770 | 0 | 3350.169 | 5.587 | 6.371 | 6.763 | 290.941 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16677 | 0 | 3332.176 | 5.622 | 6.4 | 6.85 | 320.168 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14742 | 0 | 2945.354 | 6.37 | 7.302 | 7.754 | 320.293 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.005 | 16534 | 0 | 3303.833 | 5.634 | 6.482 | 7.392 | 334.648 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16391 | 0 | 3275.017 | 5.709 | 6.518 | 6.971 | 348.25 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12555 | 0 | 2507.691 | 7.499 | 8.326 | 8.702 | 437.359 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.014 | 2.012 | 6730 | 0 | 1342.346 | 14.226 | 15.655 | 16.337 | 425.898 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11361 | 0 | 2269.121 | 8.312 | 9.204 | 9.623 | 464.172 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 11578 | 0 | 2312.637 | 8.156 | 9.035 | 9.457 | 357.691 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 8500 | 0 | 1697.011 | 10.314 | 13.413 | 34.728 | 474.102 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.021 | 3758 | 0 | 748.29 | 25.432 | 27.565 | 28.711 | 475.375 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9089 | 0 | 1814.766 | 9.74 | 12.44 | 33.045 | 432.551 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.011 | 8874 | 0 | 1770.98 | 9.968 | 13.22 | 33.617 | 409.387 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.011 | 6581 | 0 | 1312.667 | 13.038 | 17.649 | 40.056 | 573.477 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.041 | 2.341 | 2174 | 0 | 431.294 | 43.41 | 49.554 | 52.699 | 506.621 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.013 | 7279 | 0 | 1452.94 | 11.904 | 15.89 | 37.697 | 473.348 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.011 | 6704 | 0 | 1337.559 | 12.894 | 17.115 | 40.487 | 423.391 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.015 | 4873 | 0 | 971.771 | 17.998 | 42.368 | 44.595 | 546.832 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.071 | 4.147 | 1242 | 0 | 244.921 | 76.82 | 84.954 | 88.165 | 537.977 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.015 | 5013 | 0 | 999.346 | 17.393 | 41.87 | 44.055 | 501.305 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.021 | 2.028 | 4544 | 0 | 905.058 | 19.512 | 44.456 | 46.562 | 472.324 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.039 | 2.032 | 3011 | 0 | 597.526 | 30.788 | 36.364 | 56.538 | 483.895 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 8.13 | 7.968 | 1000 | 0 | 122.994 | 154.179 | 169.33 | 180.993 | 582.703 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.026 | 2.029 | 3160 | 0 | 628.732 | 29.706 | 34.005 | 38.749 | 528.145 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.027 | 2.025 | 3393 | 0 | 675.011 | 27.983 | 30.389 | 32.143 | 491.172 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 63.129 | 47.483 | 1440 | 0 | 22.811 | 2981.304 | 3372.498 | 3417.763 | 531.82 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 51.384 | 70.925 | 960 | 0 | 18.683 | 1641.566 | 2599.086 | 2625.262 | 563.145 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 37.157 | 36.821 | 720 | 0 | 19.377 | 1323.564 | 2045.602 | 2110.65 | 571.09 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.73 | 28.853 | 480 | 0 | 18.655 | 859.995 | 1310.591 | 1327.102 | 576.605 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 20.014 | 34.102 | 360 | 0 | 17.988 | 855.528 | 1219.925 | 1268.6 | 577.484 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.462 | 14.347 | 240 | 0 | 20.939 | 434.348 | 826.598 | 857.764 | 578.984 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.565 | 8.539 | 125 | 0 | 14.594 | 301.722 | 434.397 | 438.452 | 584.27 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.002 | 1967 | 0 | 393.35 | 2.502 | 2.653 | 2.826 | 610.848 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.005 | 2.006 | 575 | 0 | 114.886 | 8.649 | 8.843 | 9.188 | 616.551 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.01 | 2.001 | 410 | 0 | 81.833 | 12.174 | 12.325 | 12.497 | 616.551 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.03 | 99 | 0 | 19.799 | 50.431 | 50.619 | 50.807 | 618.563 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.028 | 2.017 | 50 | 0 | 9.944 | 100.485 | 100.607 | 100.931 | 612.871 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.554 | 200.756 | 200.796 | 612.934 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 15508 | 0 | 3098.385 | 6.025 | 6.943 | 7.445 | 247.246 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 16552 | 0 | 3307.047 | 5.653 | 6.48 | 6.94 | 261.82 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.005 | 17048 | 0 | 3406.578 | 5.487 | 6.313 | 6.811 | 271.094 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 15671 | 0 | 3130.964 | 5.986 | 6.909 | 7.364 | 273.32 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16129 | 0 | 3222.779 | 5.802 | 6.704 | 7.111 | 298.504 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14724 | 0 | 2941.743 | 6.376 | 7.246 | 7.756 | 296.047 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.005 | 16441 | 0 | 3285.407 | 5.663 | 6.532 | 7.357 | 304.543 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 16098 | 0 | 3216.28 | 5.807 | 6.702 | 7.15 | 318.73 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 12335 | 0 | 2464.226 | 7.627 | 8.578 | 9.033 | 410.945 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.012 | 7235 | 0 | 1443.749 | 13.184 | 14.577 | 15.103 | 386.945 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12590 | 0 | 2514.771 | 7.487 | 8.28 | 8.727 | 419.914 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 12679 | 0 | 2532.712 | 7.428 | 8.222 | 8.582 | 325.047 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.007 | 8684 | 0 | 1733.854 | 10.062 | 13.125 | 35.608 | 461.723 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.025 | 2.025 | 3774 | 0 | 751.036 | 25.302 | 27.712 | 29.242 | 457.605 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 8557 | 0 | 1708.396 | 10.182 | 13.526 | 35.978 | 385.832 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 8931 | 0 | 1783.397 | 9.82 | 12.945 | 34.922 | 357.363 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.01 | 7159 | 0 | 1429.156 | 11.999 | 16.505 | 38.183 | 545.836 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.039 | 2.191 | 2320 | 0 | 460.416 | 41.105 | 43.905 | 45.545 | 472.984 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.012 | 7443 | 0 | 1484.929 | 11.491 | 15.178 | 37.778 | 412.691 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 7458 | 0 | 1488.501 | 11.48 | 15.223 | 37.888 | 379.512 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.019 | 4367 | 0 | 870.434 | 19.978 | 46.817 | 49.536 | 501.191 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.071 | 4.239 | 1256 | 0 | 247.688 | 76.156 | 81.855 | 87.517 | 482.285 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.027 | 4703 | 0 | 937.423 | 18.526 | 44.809 | 48.574 | 431.777 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.038 | 2.026 | 4772 | 0 | 947.129 | 18.353 | 43.607 | 47.654 | 399.441 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.031 | 2.027 | 2971 | 0 | 590.506 | 31.812 | 34.629 | 37.576 | 446.078 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 7.809 | 7.714 | 1000 | 0 | 128.053 | 147.838 | 161.247 | 166.645 | 506.602 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.03 | 3107 | 0 | 617.706 | 30.329 | 34.365 | 36.053 | 488.863 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.027 | 2.027 | 3243 | 0 | 645.06 | 29.272 | 30.709 | 32.622 | 426.723 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 71.488 | 55.117 | 1440 | 0 | 20.143 | 3005.039 | 3727.01 | 3791.236 | 486.02 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 56.898 | 42.518 | 960 | 0 | 16.872 | 2089.393 | 2945.968 | 2998.331 | 512.441 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 31.537 | 39.893 | 720 | 0 | 22.83 | 1337.975 | 1686.357 | 1729.829 | 513.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.871 | 25.716 | 480 | 0 | 18.553 | 879.281 | 1313.306 | 1327.006 | 501.469 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.302 | 23.011 | 360 | 0 | 20.807 | 850.071 | 884.121 | 896.991 | 499.66 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.618 | 14.442 | 245 | 0 | 21.087 | 459.91 | 814.568 | 844.995 | 506.098 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.55 | 5.83 | 125 | 0 | 14.62 | 299.31 | 434.31 | 438.958 | 513.609 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.002 | 1911 | 0 | 382.141 | 2.58 | 2.772 | 3.039 | 563.527 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.005 | 2.007 | 568 | 0 | 113.491 | 8.771 | 8.886 | 9.186 | 563.527 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.008 | 2.01 | 410 | 0 | 81.871 | 12.167 | 12.359 | 12.602 | 566.84 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.039 | 2.019 | 100 | 0 | 19.844 | 50.337 | 50.566 | 50.65 | 566.84 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.026 | 2.011 | 50 | 0 | 9.948 | 100.456 | 100.545 | 100.626 | 566.84 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.479 | 200.586 | 200.633 | 566.902 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

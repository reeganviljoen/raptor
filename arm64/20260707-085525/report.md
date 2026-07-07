# Puma vs Raptor Simulation

Run ID: `20260707-085525`

## Environment

- Ruby: `ruby 4.0.5 (2026-05-20 revision 64336ffd0e) +PRISM [aarch64-linux]`
- Git SHA: `6f7c799`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.183 | 4.299 | 1691 | 0 | 273.476 | 40.994 | 42.681 | 46.231 | 33.746 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.254 | 4.281 | 1685 | 0 | 269.41 | 41.572 | 43.226 | 45.694 | 34.188 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.19 | 4.335 | 1687 | 0 | 272.532 | 41.009 | 42.771 | 46.232 | 34.656 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.19 | 4.28 | 1691 | 0 | 273.185 | 41.001 | 42.694 | 45.061 | 35.43 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.187 | 4.316 | 1691 | 0 | 273.315 | 40.99 | 42.566 | 44.614 | 35.934 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.18 | 4.295 | 1688 | 0 | 273.141 | 41.055 | 42.699 | 44.544 | 36.434 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.214 | 4.281 | 1686 | 0 | 271.33 | 41.583 | 43.01 | 44.166 | 36.98 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.175 | 4.309 | 1688 | 0 | 273.365 | 40.994 | 42.601 | 45.733 | 39.309 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.007 | 11399 | 0 | 2276.897 | 4.965 | 6.285 | 48.728 | 39.672 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.007 | 11500 | 0 | 2296.003 | 4.846 | 6.296 | 49.448 | 40.09 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.006 | 12388 | 0 | 2474.382 | 4.744 | 5.983 | 9.659 | 41.75 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 4.078 | 3199 | 0 | 634.523 | 5.682 | 42.048 | 49.542 | 62.406 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.057 | 2.034 | 8429 | 0 | 1666.672 | 6.39 | 8.967 | 59.777 | 62.531 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.046 | 2.047 | 6534 | 0 | 1294.781 | 6.432 | 42.191 | 99.862 | 62.781 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.009 | 9943 | 0 | 1985.24 | 5.94 | 7.193 | 16.961 | 62.934 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.054 | 4.031 | 1940 | 0 | 383.887 | 41.915 | 43.088 | 52.22 | 95.703 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.048 | 5936 | 0 | 1184.105 | 9.073 | 18.804 | 62.448 | 95.703 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.026 | 2.046 | 5710 | 0 | 1136.062 | 8.934 | 24.385 | 57.277 | 91.445 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.099 | 6771 | 0 | 1351.183 | 8.19 | 13.853 | 22.311 | 92.508 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.044 | 4.014 | 2098 | 0 | 415.926 | 41.994 | 46.233 | 54.714 | 125.934 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.049 | 3.996 | 3143 | 0 | 622.501 | 13.192 | 53.281 | 71.392 | 126.121 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.056 | 3.85 | 3310 | 0 | 654.696 | 13.034 | 53.919 | 64.916 | 126.184 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.016 | 2.019 | 4782 | 0 | 953.331 | 11.884 | 19.265 | 30.009 | 127.699 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.329 | 4.079 | 1797 | 0 | 337.235 | 44.058 | 53.996 | 216.501 | 162.242 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.399 | 4.24 | 1809 | 0 | 335.058 | 27.764 | 66.367 | 277.453 | 160.656 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.306 | 4.062 | 1808 | 0 | 340.725 | 25.719 | 66.886 | 384.425 | 160.719 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.029 | 2.63 | 2844 | 0 | 565.483 | 20.867 | 27.304 | 48.567 | 176.594 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.938 | 4.828 | 1613 | 0 | 232.473 | 49.908 | 69.545 | 281.106 | 237.469 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.259 | 140.259 | 0 | 1440 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.02 | 0 | 960 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.016 | 5.015 | 0 | 720 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.011 | 0 | 480 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.01 | 0 | 360 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.008 | 0 | 240 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.008 | 0 | 120 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.004 | 5.006 | 0 | 10 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.006 | 0 | 10 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 233.805 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.17 | 4.299 | 1689 | 0 | 273.751 | 41.001 | 42.729 | 44.728 | 33.266 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.216 | 4.345 | 1684 | 0 | 270.911 | 41.577 | 42.989 | 45.108 | 33.648 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.198 | 4.334 | 1686 | 0 | 272.01 | 41.165 | 42.955 | 44.442 | 33.973 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.248 | 4.302 | 1686 | 0 | 269.842 | 41.503 | 42.93 | 44.134 | 34.473 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.172 | 4.281 | 1691 | 0 | 273.984 | 40.998 | 42.643 | 44.356 | 34.648 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.204 | 4.292 | 1689 | 0 | 272.233 | 41.014 | 42.593 | 44.201 | 34.734 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.173 | 4.338 | 1688 | 0 | 273.461 | 41.012 | 42.722 | 44.295 | 34.813 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.207 | 4.341 | 1686 | 0 | 271.628 | 41.231 | 42.768 | 44.792 | 36.34 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.006 | 11346 | 0 | 2265.715 | 5.044 | 6.482 | 46.782 | 36.34 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.009 | 11250 | 0 | 2246.61 | 5.086 | 6.535 | 47.784 | 36.387 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.006 | 12503 | 0 | 2497.566 | 4.717 | 5.967 | 9.882 | 38.281 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.04 | 2.048 | 3090 | 0 | 613.044 | 5.923 | 42.099 | 55.521 | 51.004 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.02 | 2.028 | 6408 | 0 | 1276.521 | 6.3 | 42.324 | 86.048 | 51.004 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.048 | 7034 | 0 | 1404.057 | 6.596 | 41.889 | 57.815 | 51.004 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.008 | 9359 | 0 | 1868.687 | 6.063 | 8.745 | 16.921 | 52.066 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.054 | 3.797 | 2343 | 0 | 463.554 | 41.766 | 44.081 | 53.163 | 73.523 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.058 | 5416 | 0 | 1080.353 | 9.155 | 43.053 | 65.126 | 71.508 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 2.732 | 5164 | 0 | 1023.609 | 9.176 | 44.831 | 131.11 | 71.508 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.169 | 6776 | 0 | 1352.082 | 8.202 | 12.766 | 24.049 | 72.379 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.054 | 4.089 | 2164 | 0 | 428.139 | 41.981 | 47.948 | 58.563 | 91.617 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.025 | 3.964 | 2997 | 0 | 596.359 | 13.524 | 54.358 | 196.776 | 90.277 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.064 | 4.012 | 3163 | 0 | 624.652 | 13.643 | 54.883 | 71.594 | 90.277 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.019 | 4603 | 0 | 917.131 | 12.31 | 20.271 | 30.546 | 97.59 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.71 | 4.217 | 1749 | 0 | 306.318 | 44.571 | 54.985 | 292.188 | 122.16 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.055 | 4.103 | 1885 | 0 | 372.862 | 26.257 | 68.846 | 140.862 | 120.152 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.326 | 4.064 | 1834 | 0 | 344.364 | 27.489 | 70.979 | 211.391 | 117.242 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 2.693 | 2254 | 0 | 446.82 | 26.834 | 31.991 | 51.579 | 141.289 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 7.142 | 4.897 | 1589 | 0 | 222.49 | 50.629 | 74.253 | 180.702 | 207.387 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.261 | 140.333 | 0 | 1440 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.019 | 5.02 | 0 | 960 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.016 | 0 | 720 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.011 | 0 | 480 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.009 | 0 | 360 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.008 | 0 | 240 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.002 | 0 | 10 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.002 | 0 | 10 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 207.773 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.207 | 4.256 | 1687 | 0 | 271.803 | 41.405 | 42.923 | 44.337 | 33.004 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.176 | 4.294 | 1688 | 0 | 273.318 | 41.024 | 42.791 | 44.105 | 33.664 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.171 | 4.311 | 1691 | 0 | 274.038 | 40.983 | 42.465 | 44.622 | 34.016 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.209 | 4.266 | 1686 | 0 | 271.556 | 41.36 | 42.918 | 44.794 | 34.563 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.193 | 4.32 | 1691 | 0 | 273.062 | 41.007 | 42.639 | 44.504 | 34.797 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.252 | 4.326 | 1684 | 0 | 269.354 | 41.672 | 43.049 | 44.592 | 34.898 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.169 | 4.338 | 1691 | 0 | 274.094 | 40.985 | 42.521 | 44.246 | 35.0 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.209 | 4.305 | 1686 | 0 | 271.522 | 41.481 | 42.819 | 44.695 | 36.598 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.04 | 11066 | 0 | 2209.85 | 5.218 | 6.575 | 49.394 | 36.598 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.038 | 2.007 | 11231 | 0 | 2229.471 | 5.16 | 6.434 | 48.558 | 36.598 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.007 | 12087 | 0 | 2413.967 | 4.88 | 6.176 | 10.524 | 38.59 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.022 | 3.955 | 2348 | 0 | 467.534 | 40.937 | 42.127 | 47.685 | 53.82 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.01 | 8026 | 0 | 1602.345 | 6.648 | 11.348 | 58.32 | 53.82 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.024 | 7351 | 0 | 1467.478 | 6.683 | 40.84 | 78.182 | 53.82 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.009 | 9241 | 0 | 1845.238 | 6.127 | 8.743 | 18.675 | 53.82 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.031 | 3.423 | 2354 | 0 | 467.859 | 41.706 | 43.41 | 51.579 | 76.727 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.017 | 2.023 | 5800 | 0 | 1156.012 | 9.056 | 22.498 | 60.017 | 76.727 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.014 | 2.013 | 5661 | 0 | 1129.081 | 9.365 | 22.134 | 63.927 | 76.727 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.014 | 6542 | 0 | 1305.312 | 8.204 | 13.848 | 29.914 | 76.906 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.071 | 4.036 | 2579 | 0 | 508.603 | 11.61 | 47.86 | 215.424 | 96.254 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.051 | 3.379 | 3441 | 0 | 681.279 | 13.248 | 55.013 | 75.252 | 89.781 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.061 | 3.616 | 3372 | 0 | 666.314 | 12.803 | 54.613 | 74.618 | 89.781 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.016 | 2.017 | 4726 | 0 | 942.263 | 11.861 | 21.862 | 32.326 | 100.93 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.067 | 4.105 | 1907 | 0 | 376.352 | 43.931 | 55.228 | 71.97 | 116.648 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.029 | 3.94 | 1893 | 0 | 376.436 | 24.973 | 66.182 | 93.859 | 116.648 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.061 | 4.177 | 2025 | 0 | 400.082 | 23.43 | 68.033 | 85.104 | 116.648 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.031 | 2.682 | 2499 | 0 | 496.733 | 24.302 | 30.689 | 48.533 | 140.832 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.532 | 4.705 | 1640 | 0 | 251.057 | 47.664 | 74.526 | 379.77 | 203.559 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.259 | 140.292 | 0 | 1440 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.019 | 5.019 | 0 | 960 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.016 | 5.015 | 0 | 720 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.013 | 5.011 | 0 | 480 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.01 | 0 | 360 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.009 | 0 | 120 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.006 | 0 | 10 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.002 | 0 | 10 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 195.957 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 16413 | 0 | 3279.442 | 5.697 | 6.569 | 7.035 | 210.82 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.004 | 15750 | 0 | 3146.264 | 5.933 | 6.881 | 7.35 | 218.543 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 16412 | 0 | 3279.118 | 5.675 | 6.578 | 7.263 | 230.93 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 16101 | 0 | 3217.157 | 5.767 | 6.811 | 7.297 | 233.926 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16083 | 0 | 3213.298 | 5.802 | 6.735 | 7.204 | 257.664 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14106 | 0 | 2818.296 | 6.653 | 7.633 | 8.084 | 262.199 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16210 | 0 | 3238.694 | 5.755 | 6.693 | 7.247 | 274.633 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15750 | 0 | 3147.131 | 5.902 | 6.965 | 7.907 | 286.727 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 12149 | 0 | 2426.606 | 7.748 | 8.688 | 9.347 | 359.074 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.012 | 6931 | 0 | 1382.896 | 13.736 | 14.942 | 15.447 | 333.141 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12065 | 0 | 2409.526 | 7.783 | 8.791 | 9.316 | 362.695 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 12124 | 0 | 2421.716 | 7.738 | 8.764 | 9.726 | 280.777 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.01 | 9662 | 0 | 1929.428 | 9.33 | 11.873 | 22.254 | 398.777 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.021 | 2.021 | 3922 | 0 | 781.071 | 24.12 | 26.224 | 27.931 | 381.301 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9515 | 0 | 1900.068 | 9.468 | 12.204 | 22.694 | 336.961 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 9788 | 0 | 1954.098 | 9.16 | 12.184 | 22.158 | 308.305 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 7533 | 0 | 1503.631 | 11.892 | 15.511 | 27.354 | 478.637 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.039 | 2.259 | 2267 | 0 | 449.925 | 42.032 | 43.412 | 44.623 | 436.734 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 7296 | 0 | 1456.326 | 12.146 | 16.208 | 28.875 | 371.695 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.009 | 7595 | 0 | 1516.031 | 11.578 | 16.261 | 27.54 | 333.043 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.019 | 4893 | 0 | 975.539 | 18.523 | 22.879 | 35.954 | 487.125 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.074 | 4.212 | 1235 | 0 | 243.397 | 77.555 | 82.249 | 87.241 | 460.188 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.018 | 4726 | 0 | 941.666 | 18.889 | 35.169 | 38.067 | 437.668 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.021 | 4945 | 0 | 985.687 | 18.031 | 33.708 | 36.005 | 375.762 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.031 | 2.031 | 2926 | 0 | 581.611 | 31.241 | 40.681 | 55.138 | 473.914 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 8.018 | 7.846 | 1000 | 0 | 124.712 | 151.25 | 164.113 | 172.535 | 489.09 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.031 | 3091 | 0 | 614.515 | 30.25 | 34.28 | 48.59 | 445.082 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.027 | 2.026 | 3285 | 0 | 653.486 | 28.853 | 31.402 | 33.1 | 402.699 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 75.555 | 47.215 | 1439 | 1 | 19.046 | 3008.894 | 3898.271 | 7606.67 | 432.0 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 48.27 | 54.153 | 960 | 0 | 19.888 | 1698.382 | 2546.696 | 2554.201 | 455.191 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 28.443 | 56.994 | 720 | 0 | 25.314 | 1301.43 | 1585.099 | 1624.166 | 468.621 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.915 | 19.872 | 480 | 0 | 24.103 | 852.88 | 1189.838 | 1215.617 | 475.691 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.748 | 19.861 | 360 | 0 | 15.825 | 763.865 | 1268.135 | 1286.846 | 467.316 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.71 | 17.08 | 245 | 0 | 10.788 | 982.092 | 1251.09 | 1279.92 | 470.129 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.516 | 5.678 | 120 | 0 | 14.09 | 425.61 | 427.436 | 429.275 | 471.691 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.0 | 3695 | 0 | 738.841 | 1.311 | 1.444 | 1.68 | 495.414 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.002 | 935 | 0 | 186.908 | 5.299 | 5.448 | 5.7 | 500.363 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.009 | 2.011 | 482 | 0 | 96.23 | 10.336 | 10.479 | 10.753 | 508.559 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.008 | 2.026 | 99 | 0 | 19.768 | 50.517 | 50.679 | 51.119 | 508.559 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.032 | 2.017 | 50 | 0 | 9.937 | 100.548 | 100.776 | 100.833 | 513.316 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.56 | 200.684 | 200.721 | 513.316 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15984 | 0 | 3193.547 | 5.839 | 6.81 | 7.339 | 231.129 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 15888 | 0 | 3174.321 | 5.88 | 6.807 | 7.42 | 252.441 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.004 | 16067 | 0 | 3210.534 | 5.81 | 6.827 | 7.418 | 265.645 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16150 | 0 | 3226.67 | 5.797 | 6.649 | 7.051 | 270.621 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15928 | 0 | 3181.565 | 5.869 | 6.797 | 7.254 | 297.332 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14119 | 0 | 2820.981 | 6.606 | 7.734 | 8.321 | 300.258 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 15883 | 0 | 3173.243 | 5.867 | 6.793 | 7.494 | 315.453 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 15774 | 0 | 3151.559 | 5.93 | 6.865 | 7.35 | 329.148 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11694 | 0 | 2335.717 | 8.018 | 9.072 | 10.013 | 431.094 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.011 | 6896 | 0 | 1375.703 | 13.811 | 15.005 | 15.53 | 393.207 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11797 | 0 | 2356.476 | 7.968 | 8.963 | 9.471 | 400.25 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11910 | 0 | 2378.744 | 7.883 | 8.89 | 9.751 | 335.832 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 9236 | 0 | 1844.031 | 9.707 | 12.728 | 24.736 | 434.816 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.022 | 3929 | 0 | 782.598 | 24.143 | 26.167 | 27.124 | 424.152 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 9528 | 0 | 1902.27 | 9.354 | 12.53 | 24.71 | 408.652 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9505 | 0 | 1898.129 | 9.381 | 12.353 | 24.481 | 376.785 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.011 | 7045 | 0 | 1400.486 | 12.602 | 16.965 | 30.81 | 550.535 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.041 | 2.28 | 2232 | 0 | 442.788 | 42.423 | 45.73 | 47.982 | 471.813 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.009 | 7353 | 0 | 1467.414 | 12.031 | 16.006 | 29.537 | 431.805 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 7507 | 0 | 1498.416 | 11.714 | 16.122 | 29.175 | 399.461 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.026 | 2.016 | 4724 | 0 | 939.908 | 18.904 | 35.869 | 39.542 | 518.445 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.072 | 4.075 | 1205 | 0 | 237.579 | 79.036 | 86.733 | 95.053 | 501.449 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.02 | 4647 | 0 | 926.021 | 19.033 | 37.478 | 39.627 | 483.375 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.015 | 4851 | 0 | 967.171 | 18.354 | 36.332 | 38.572 | 453.191 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.029 | 2787 | 0 | 554.049 | 33.467 | 39.653 | 54.367 | 490.453 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 7.981 | 7.815 | 1000 | 0 | 125.298 | 151.281 | 161.227 | 167.8 | 542.191 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.031 | 2979 | 0 | 592.426 | 31.47 | 35.298 | 48.315 | 524.707 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.028 | 3150 | 0 | 626.272 | 30.141 | 32.544 | 34.246 | 477.574 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 70.928 | 54.895 | 1440 | 0 | 20.302 | 2581.892 | 3455.027 | 4752.903 | 495.555 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 51.117 | 36.909 | 960 | 0 | 18.781 | 2125.174 | 2578.347 | 2603.029 | 508.063 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 48.172 | 36.939 | 720 | 0 | 14.946 | 1210.9 | 2486.923 | 2541.376 | 521.672 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.52 | 25.553 | 480 | 0 | 18.808 | 848.716 | 1288.019 | 1305.289 | 533.043 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.859 | 19.84 | 360 | 0 | 18.128 | 817.31 | 1189.618 | 1236.319 | 536.672 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.0 | 14.244 | 245 | 0 | 14.412 | 445.243 | 859.249 | 869.979 | 538.18 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.689 | 8.52 | 130 | 0 | 22.85 | 280.158 | 292.185 | 296.587 | 530.0 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.0 | 3657 | 0 | 731.334 | 1.325 | 1.461 | 1.703 | 599.051 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.004 | 933 | 0 | 186.585 | 5.309 | 5.447 | 5.653 | 601.832 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.007 | 2.007 | 480 | 0 | 95.864 | 10.369 | 10.526 | 10.88 | 607.324 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.01 | 2.026 | 99 | 0 | 19.762 | 50.523 | 50.774 | 50.829 | 607.324 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.032 | 2.017 | 50 | 0 | 9.937 | 100.564 | 100.69 | 100.725 | 607.324 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.578 | 200.7 | 200.717 | 607.387 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15400 | 0 | 3076.92 | 6.065 | 7.061 | 7.712 | 240.121 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15335 | 0 | 3063.909 | 6.088 | 7.105 | 7.683 | 252.859 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15962 | 0 | 3188.988 | 5.854 | 6.783 | 7.247 | 270.457 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15920 | 0 | 3180.841 | 5.872 | 6.817 | 7.25 | 269.719 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 15572 | 0 | 3111.308 | 5.996 | 6.979 | 7.548 | 300.465 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 13938 | 0 | 2784.489 | 6.704 | 7.743 | 8.586 | 302.051 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15745 | 0 | 3146.164 | 5.926 | 6.885 | 7.31 | 317.902 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 15546 | 0 | 3105.63 | 6.0 | 7.004 | 7.518 | 331.578 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11476 | 0 | 2292.477 | 8.159 | 9.325 | 10.557 | 415.594 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.011 | 6776 | 0 | 1351.855 | 14.04 | 15.504 | 16.373 | 389.16 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11784 | 0 | 2353.691 | 7.978 | 8.983 | 9.513 | 408.574 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.007 | 11642 | 0 | 2324.736 | 8.073 | 9.115 | 9.646 | 349.891 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 9035 | 0 | 1803.877 | 9.905 | 12.983 | 26.921 | 446.805 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.022 | 3824 | 0 | 761.399 | 24.858 | 26.913 | 27.973 | 424.355 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.007 | 9383 | 0 | 1873.181 | 9.453 | 12.661 | 26.328 | 391.816 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9310 | 0 | 1858.84 | 9.457 | 12.875 | 26.546 | 376.586 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.011 | 7196 | 0 | 1436.357 | 12.255 | 16.742 | 31.76 | 541.313 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.041 | 2.267 | 2185 | 0 | 433.434 | 43.53 | 46.309 | 48.597 | 501.457 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.01 | 7055 | 0 | 1407.745 | 12.435 | 16.831 | 33.027 | 426.129 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 7230 | 0 | 1443.181 | 12.091 | 16.181 | 31.685 | 399.547 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.019 | 4519 | 0 | 900.614 | 19.72 | 38.068 | 41.574 | 529.734 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.076 | 4.23 | 1197 | 0 | 235.816 | 79.736 | 87.684 | 95.629 | 509.465 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.025 | 2.021 | 4581 | 0 | 911.688 | 19.477 | 38.327 | 40.605 | 492.961 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.02 | 4679 | 0 | 932.518 | 18.993 | 38.03 | 40.453 | 440.246 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.03 | 2919 | 0 | 580.288 | 32.377 | 35.405 | 37.125 | 510.352 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 7.918 | 7.906 | 1000 | 0 | 126.297 | 149.12 | 162.324 | 173.065 | 542.684 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.031 | 2915 | 0 | 579.549 | 32.592 | 35.119 | 36.939 | 535.281 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.029 | 2.028 | 3145 | 0 | 625.383 | 30.2 | 32.684 | 34.163 | 463.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 73.881 | 57.095 | 1440 | 0 | 19.491 | 2979.985 | 3812.371 | 3842.652 | 505.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 53.933 | 73.824 | 960 | 0 | 17.8 | 1711.047 | 2849.294 | 2930.745 | 542.258 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 34.124 | 39.734 | 720 | 0 | 21.099 | 1522.133 | 1726.867 | 1747.11 | 540.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.734 | 42.577 | 480 | 0 | 21.114 | 882.651 | 1266.295 | 1279.306 | 532.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.706 | 25.51 | 365 | 0 | 16.075 | 850.866 | 1270.383 | 1289.154 | 515.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.547 | 11.345 | 240 | 0 | 28.079 | 423.813 | 460.876 | 472.866 | 515.734 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.708 | 8.5 | 130 | 0 | 22.777 | 278.99 | 296.783 | 310.485 | 515.984 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.001 | 3670 | 0 | 733.925 | 1.318 | 1.453 | 1.692 | 541.336 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.001 | 932 | 0 | 186.391 | 5.314 | 5.462 | 5.785 | 551.297 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.002 | 482 | 0 | 96.369 | 10.328 | 10.459 | 10.694 | 547.359 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.008 | 2.026 | 99 | 0 | 19.768 | 50.506 | 50.772 | 50.953 | 547.359 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.03 | 2.016 | 50 | 0 | 9.94 | 100.527 | 100.665 | 100.758 | 547.359 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.018 | 2.009 | 25 | 0 | 4.982 | 200.613 | 200.733 | 200.801 | 547.359 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.184 | 4.36 | 1691 | 0 | 273.455 | 40.994 | 42.76 | 44.18 | 35.875 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.189 | 4.341 | 1686 | 0 | 272.408 | 41.025 | 42.716 | 44.277 | 37.461 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.227 | 4.272 | 1682 | 0 | 270.133 | 41.666 | 43.142 | 44.847 | 38.176 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.18 | 4.347 | 1691 | 0 | 273.632 | 40.996 | 42.598 | 44.36 | 38.91 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.177 | 4.267 | 1688 | 0 | 273.261 | 41.069 | 42.642 | 44.129 | 39.105 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.195 | 4.257 | 1686 | 0 | 272.152 | 41.334 | 42.811 | 44.308 | 39.246 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.185 | 4.256 | 1691 | 0 | 273.404 | 41.024 | 42.703 | 44.417 | 39.438 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.236 | 4.313 | 1685 | 0 | 270.221 | 41.54 | 43.046 | 44.907 | 40.641 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.031 | 10807 | 0 | 2157.871 | 4.975 | 6.458 | 49.535 | 40.652 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.038 | 2.043 | 5841 | 0 | 1159.35 | 5.22 | 40.994 | 46.512 | 40.719 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.007 | 12105 | 0 | 2417.434 | 4.88 | 6.165 | 10.242 | 42.676 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.023 | 4.0 | 4858 | 0 | 967.055 | 5.038 | 41.979 | 49.285 | 58.051 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 2.009 | 6664 | 0 | 1321.741 | 6.11 | 42.641 | 120.833 | 58.051 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.009 | 7705 | 0 | 1537.924 | 6.316 | 26.03 | 66.705 | 58.051 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.008 | 8846 | 0 | 1766.158 | 6.262 | 9.784 | 26.094 | 58.512 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.055 | 3.555 | 2855 | 0 | 564.735 | 7.183 | 44.365 | 296.483 | 88.082 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.043 | 2.013 | 5655 | 0 | 1121.332 | 8.637 | 32.712 | 72.19 | 78.852 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.049 | 2.017 | 5563 | 0 | 1101.854 | 8.691 | 44.638 | 73.875 | 78.855 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.087 | 6553 | 0 | 1307.678 | 8.263 | 12.796 | 34.171 | 81.078 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.05 | 4.042 | 2052 | 0 | 406.376 | 42.007 | 47.845 | 66.229 | 97.277 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.026 | 3.873 | 3048 | 0 | 606.488 | 13.015 | 55.789 | 139.41 | 92.168 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.059 | 3.867 | 3125 | 0 | 617.759 | 13.821 | 54.885 | 81.871 | 92.168 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.02 | 2.048 | 4352 | 0 | 866.874 | 12.737 | 25.302 | 38.576 | 100.836 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.227 | 4.199 | 1812 | 0 | 346.675 | 43.985 | 57.446 | 303.946 | 136.633 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.131 | 4.156 | 1852 | 0 | 360.952 | 26.484 | 69.263 | 126.245 | 131.379 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.041 | 4.094 | 1818 | 0 | 360.614 | 26.543 | 70.008 | 290.29 | 131.504 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.146 | 2.649 | 2496 | 0 | 485.027 | 24.169 | 29.271 | 48.55 | 168.605 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.691 | 4.909 | 1603 | 0 | 239.566 | 49.808 | 75.335 | 197.807 | 216.379 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.249 | 140.205 | 0 | 1440 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.022 | 0 | 960 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.015 | 0 | 720 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.013 | 5.011 | 0 | 480 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.01 | 0 | 360 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.007 | 0 | 120 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.004 | 0 | 10 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.007 | 0 | 10 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.002 | 0 | 10 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 209.715 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.162 | 4.364 | 1691 | 0 | 274.419 | 40.982 | 42.282 | 44.472 | 36.164 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.205 | 4.344 | 1686 | 0 | 271.725 | 41.246 | 42.844 | 44.154 | 37.328 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.202 | 4.362 | 1687 | 0 | 272.009 | 41.328 | 43.021 | 44.722 | 37.816 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.19 | 4.318 | 1686 | 0 | 272.355 | 41.099 | 42.798 | 44.398 | 38.285 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.202 | 4.271 | 1686 | 0 | 271.862 | 41.178 | 42.889 | 45.286 | 38.637 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.207 | 4.249 | 1691 | 0 | 272.413 | 41.12 | 42.791 | 44.498 | 38.723 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.179 | 4.322 | 1689 | 0 | 273.339 | 41.01 | 42.753 | 44.215 | 38.785 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.226 | 4.283 | 1682 | 0 | 270.14 | 41.752 | 43.151 | 44.494 | 39.793 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.315 | 11035 | 0 | 2203.224 | 5.019 | 6.678 | 50.098 | 39.887 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.036 | 2.045 | 9480 | 0 | 1882.496 | 5.02 | 8.621 | 49.295 | 39.926 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.006 | 11920 | 0 | 2380.762 | 4.961 | 6.217 | 9.716 | 41.859 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.046 | 4.127 | 3364 | 0 | 666.733 | 5.406 | 42.439 | 49.355 | 53.457 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.048 | 2.043 | 6256 | 0 | 1239.361 | 6.444 | 42.678 | 78.186 | 53.457 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.044 | 2.04 | 6379 | 0 | 1264.708 | 6.357 | 43.923 | 70.837 | 53.48 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.008 | 8662 | 0 | 1728.879 | 6.328 | 10.161 | 38.623 | 54.77 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 3.743 | 2833 | 0 | 561.602 | 7.1 | 45.36 | 290.812 | 78.914 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.014 | 2.559 | 5532 | 0 | 1103.379 | 9.08 | 31.615 | 78.438 | 76.734 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.021 | 2.03 | 5105 | 0 | 1016.797 | 8.704 | 47.105 | 133.038 | 76.742 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.012 | 6273 | 0 | 1251.882 | 8.604 | 13.774 | 34.519 | 77.867 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 3.916 | 2139 | 0 | 423.947 | 42.001 | 47.936 | 70.829 | 90.527 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.059 | 3.694 | 2797 | 0 | 552.921 | 13.66 | 54.553 | 261.625 | 85.602 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.044 | 3.976 | 2782 | 0 | 551.551 | 13.869 | 55.298 | 261.081 | 85.602 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.017 | 2.118 | 4336 | 0 | 864.189 | 12.756 | 24.944 | 40.724 | 98.016 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.248 | 4.116 | 1774 | 0 | 338.04 | 44.406 | 58.185 | 353.892 | 119.738 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.247 | 4.066 | 1834 | 0 | 349.521 | 26.567 | 68.879 | 294.1 | 115.066 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.17 | 4.118 | 1800 | 0 | 348.13 | 29.688 | 67.044 | 281.251 | 115.066 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.026 | 2.656 | 2410 | 0 | 479.468 | 25.169 | 29.775 | 51.521 | 155.082 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.964 | 4.708 | 1605 | 0 | 230.459 | 50.516 | 73.894 | 277.012 | 177.816 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.277 | 140.193 | 0 | 1440 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.024 | 5.023 | 0 | 960 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.014 | 5.018 | 0 | 720 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.011 | 0 | 480 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.008 | 0 | 360 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.008 | 0 | 240 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.004 | 0 | 10 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 178.777 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.177 | 4.326 | 1687 | 0 | 273.101 | 41.01 | 42.861 | 44.45 | 36.629 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.159 | 4.313 | 1691 | 0 | 274.553 | 40.98 | 42.457 | 44.583 | 37.441 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.216 | 4.316 | 1686 | 0 | 271.232 | 41.535 | 42.961 | 44.488 | 38.305 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.192 | 4.325 | 1687 | 0 | 272.442 | 41.132 | 42.76 | 45.225 | 39.031 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.211 | 4.281 | 1686 | 0 | 271.457 | 41.597 | 42.806 | 44.113 | 39.652 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.175 | 4.287 | 1690 | 0 | 273.668 | 40.992 | 42.582 | 44.339 | 39.809 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.194 | 4.281 | 1687 | 0 | 272.376 | 41.182 | 42.82 | 44.858 | 39.941 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.247 | 4.292 | 1686 | 0 | 269.894 | 41.396 | 42.825 | 44.665 | 41.156 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 2.032 | 10017 | 0 | 1986.805 | 4.96 | 7.058 | 57.544 | 41.355 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.044 | 6560 | 0 | 1309.893 | 5.128 | 40.999 | 48.62 | 41.391 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.007 | 12006 | 0 | 2397.343 | 4.925 | 6.199 | 10.224 | 43.211 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.05 | 3.956 | 4605 | 0 | 911.945 | 5.268 | 41.963 | 50.058 | 57.031 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.035 | 8266 | 0 | 1649.96 | 6.598 | 10.168 | 60.522 | 57.031 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.01 | 7472 | 0 | 1491.432 | 6.707 | 27.696 | 52.691 | 57.039 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.01 | 8580 | 0 | 1712.766 | 6.395 | 10.257 | 32.359 | 57.645 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.048 | 3.555 | 3146 | 0 | 623.273 | 6.291 | 44.895 | 158.256 | 84.531 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.014 | 2.025 | 5509 | 0 | 1098.666 | 9.243 | 32.247 | 77.222 | 83.211 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.048 | 5549 | 0 | 1106.885 | 9.612 | 17.164 | 72.998 | 83.211 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.013 | 6244 | 0 | 1245.658 | 8.428 | 13.728 | 167.16 | 84.195 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.04 | 4.004 | 2618 | 0 | 519.478 | 11.325 | 47.668 | 283.673 | 96.625 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.021 | 2.784 | 3649 | 0 | 726.74 | 12.967 | 55.604 | 77.327 | 96.297 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.06 | 3.282 | 3541 | 0 | 699.831 | 13.832 | 52.269 | 79.053 | 96.305 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.017 | 2.076 | 4359 | 0 | 868.803 | 12.701 | 23.137 | 40.109 | 103.52 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.056 | 4.153 | 2129 | 0 | 421.108 | 22.178 | 57.371 | 77.417 | 129.047 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.057 | 3.786 | 2074 | 0 | 410.159 | 25.311 | 66.366 | 87.89 | 123.316 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.067 | 3.941 | 2103 | 0 | 415.027 | 25.309 | 67.302 | 85.332 | 123.316 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.035 | 2.662 | 2685 | 0 | 533.28 | 22.061 | 27.857 | 50.488 | 147.363 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.125 | 4.432 | 1658 | 0 | 270.676 | 46.136 | 71.824 | 414.791 | 183.395 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.258 | 140.215 | 0 | 1440 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.019 | 5.022 | 0 | 960 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.017 | 5.019 | 0 | 720 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.011 | 0 | 480 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.009 | 0 | 360 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.008 | 0 | 120 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.005 | 0 | 10 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.002 | 5.006 | 0 | 10 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 184.102 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15558 | 0 | 3108.509 | 6.004 | 6.949 | 7.527 | 246.203 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.005 | 15136 | 0 | 3024.617 | 6.174 | 7.133 | 7.687 | 267.438 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 15217 | 0 | 3040.437 | 6.109 | 7.226 | 8.039 | 282.141 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15043 | 0 | 3005.254 | 6.223 | 7.171 | 7.728 | 285.695 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15104 | 0 | 3017.533 | 6.194 | 7.114 | 7.597 | 312.754 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 13322 | 0 | 2660.888 | 7.048 | 8.108 | 8.617 | 312.586 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15000 | 0 | 2997.219 | 6.206 | 7.202 | 8.261 | 330.625 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14909 | 0 | 2978.719 | 6.275 | 7.244 | 7.737 | 347.293 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11208 | 0 | 2238.257 | 8.423 | 9.369 | 9.85 | 428.035 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.012 | 6514 | 0 | 1299.345 | 14.64 | 16.082 | 16.78 | 405.969 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11212 | 0 | 2239.589 | 8.363 | 9.367 | 11.724 | 449.961 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.007 | 11283 | 0 | 2252.955 | 8.366 | 9.278 | 9.715 | 365.059 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.021 | 8527 | 0 | 1701.529 | 10.362 | 13.692 | 32.554 | 471.883 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.022 | 3732 | 0 | 743.185 | 25.492 | 28.194 | 30.251 | 463.949 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.012 | 8810 | 0 | 1759.031 | 9.936 | 13.206 | 32.113 | 433.34 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.008 | 8813 | 0 | 1757.855 | 9.985 | 13.016 | 32.203 | 405.844 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.01 | 6636 | 0 | 1323.883 | 13.002 | 17.918 | 38.091 | 596.344 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.041 | 2.321 | 2128 | 0 | 422.102 | 44.677 | 48.623 | 51.645 | 503.125 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.011 | 6684 | 0 | 1333.976 | 13.004 | 17.329 | 37.801 | 458.527 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.033 | 6926 | 0 | 1382.322 | 12.358 | 16.734 | 37.255 | 444.691 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.043 | 2.019 | 4361 | 0 | 864.756 | 20.374 | 44.027 | 46.355 | 554.699 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.075 | 4.268 | 1206 | 0 | 237.613 | 79.054 | 86.869 | 92.479 | 520.461 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.017 | 4445 | 0 | 885.184 | 19.963 | 43.177 | 44.924 | 522.395 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.038 | 4595 | 0 | 915.902 | 19.303 | 42.289 | 44.572 | 497.531 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.034 | 2.034 | 2832 | 0 | 562.614 | 33.219 | 36.768 | 41.798 | 486.426 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 7.937 | 7.745 | 1000 | 0 | 125.996 | 150.312 | 163.833 | 169.849 | 566.211 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.032 | 2771 | 0 | 550.685 | 34.345 | 36.995 | 39.299 | 552.426 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.031 | 2.028 | 2990 | 0 | 594.256 | 31.617 | 34.638 | 37.33 | 501.281 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 79.95 | 59.565 | 1440 | 0 | 18.011 | 3782.615 | 4128.951 | 4273.206 | 552.664 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 45.752 | 65.515 | 960 | 0 | 20.983 | 1685.425 | 2546.119 | 2581.694 | 581.652 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 43.116 | 68.087 | 720 | 0 | 16.699 | 1327.984 | 2191.185 | 2203.954 | 587.789 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 23.018 | 34.326 | 480 | 0 | 20.854 | 873.571 | 1285.069 | 1302.797 | 598.762 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.166 | 22.932 | 360 | 0 | 20.971 | 715.998 | 872.82 | 887.873 | 602.289 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.933 | 11.422 | 245 | 0 | 12.291 | 848.502 | 1267.931 | 1289.734 | 600.559 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 14.193 | 5.937 | 125 | 0 | 8.807 | 843.57 | 845.909 | 846.646 | 600.621 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.002 | 1942 | 0 | 388.308 | 2.521 | 2.676 | 3.008 | 620.676 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.007 | 572 | 0 | 114.325 | 8.689 | 8.824 | 9.219 | 622.5 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.006 | 2.0 | 408 | 0 | 81.499 | 12.207 | 12.372 | 12.619 | 622.5 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.022 | 99 | 0 | 19.798 | 50.436 | 50.603 | 50.9 | 622.566 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.029 | 2.012 | 50 | 0 | 9.941 | 100.512 | 100.677 | 100.835 | 622.566 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.563 | 200.804 | 200.931 | 622.629 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15622 | 0 | 3120.755 | 5.986 | 6.93 | 7.482 | 244.395 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15236 | 0 | 3044.275 | 6.136 | 7.084 | 7.661 | 258.574 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15783 | 0 | 3152.87 | 5.912 | 6.85 | 7.293 | 268.973 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15626 | 0 | 3121.981 | 5.978 | 6.935 | 7.412 | 276.969 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15790 | 0 | 3154.533 | 5.913 | 6.841 | 7.365 | 301.438 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 13649 | 0 | 2726.659 | 6.85 | 7.945 | 9.155 | 303.656 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 15651 | 0 | 3127.134 | 5.98 | 6.892 | 7.392 | 309.141 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15423 | 0 | 3081.229 | 6.067 | 7.03 | 7.486 | 326.555 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.007 | 11601 | 0 | 2316.671 | 8.135 | 9.006 | 9.47 | 409.953 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.012 | 6617 | 0 | 1320.025 | 14.461 | 15.826 | 16.459 | 391.961 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11548 | 0 | 2306.905 | 8.154 | 9.11 | 9.538 | 420.293 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11560 | 0 | 2309.008 | 8.168 | 9.087 | 9.57 | 340.324 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 8719 | 0 | 1740.512 | 10.074 | 13.262 | 34.208 | 451.77 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.022 | 3814 | 0 | 759.405 | 25.025 | 27.006 | 28.358 | 429.988 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 8813 | 0 | 1759.733 | 9.906 | 13.345 | 34.452 | 404.355 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.01 | 8904 | 0 | 1777.694 | 9.814 | 13.051 | 33.905 | 393.684 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.012 | 6727 | 0 | 1342.351 | 12.818 | 17.281 | 39.356 | 551.602 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.04 | 2.344 | 2168 | 0 | 430.144 | 43.845 | 47.628 | 50.345 | 463.926 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.012 | 6766 | 0 | 1350.48 | 12.75 | 17.137 | 39.474 | 434.043 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.012 | 6876 | 0 | 1372.049 | 12.268 | 18.885 | 39.082 | 428.758 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.047 | 4464 | 0 | 889.969 | 19.827 | 44.549 | 47.027 | 552.469 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.076 | 4.145 | 1189 | 0 | 234.243 | 80.639 | 88.08 | 92.379 | 517.359 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.043 | 4404 | 0 | 877.851 | 20.046 | 45.919 | 48.775 | 462.809 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.018 | 4606 | 0 | 918.083 | 19.24 | 44.039 | 46.002 | 447.016 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.031 | 2.032 | 2850 | 0 | 566.52 | 33.086 | 35.972 | 38.616 | 436.105 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 7.952 | 8.032 | 1000 | 0 | 125.755 | 150.7 | 164.876 | 170.682 | 520.266 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.032 | 2837 | 0 | 563.794 | 33.351 | 36.11 | 39.007 | 505.984 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.03 | 3058 | 0 | 608.168 | 30.904 | 33.623 | 36.001 | 473.977 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 66.437 | 52.507 | 1440 | 0 | 21.675 | 3011.467 | 3449.87 | 3483.555 | 499.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 65.796 | 54.096 | 960 | 0 | 14.591 | 1761.443 | 3445.296 | 3475.161 | 491.047 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 28.835 | 36.991 | 720 | 0 | 24.97 | 1310.073 | 1686.324 | 1709.455 | 506.086 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.915 | 25.664 | 480 | 0 | 20.947 | 882.654 | 1275.599 | 1302.685 | 521.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 20.006 | 19.94 | 360 | 0 | 17.995 | 853.231 | 1229.638 | 1283.688 | 526.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.45 | 14.249 | 240 | 0 | 20.961 | 431.736 | 796.737 | 817.106 | 528.582 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.958 | 8.541 | 120 | 0 | 20.141 | 296.22 | 303.109 | 308.63 | 528.77 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.002 | 1929 | 0 | 385.747 | 2.544 | 2.701 | 2.911 | 536.523 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.003 | 563 | 0 | 112.559 | 8.827 | 8.974 | 9.206 | 536.523 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.012 | 2.007 | 407 | 0 | 81.206 | 12.243 | 12.472 | 12.65 | 541.492 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.027 | 99 | 0 | 19.793 | 50.46 | 50.623 | 50.651 | 544.0 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.032 | 2.015 | 50 | 0 | 9.936 | 100.501 | 100.985 | 101.769 | 546.281 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.507 | 200.579 | 200.61 | 546.344 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15744 | 0 | 3145.547 | 5.945 | 6.864 | 7.316 | 247.789 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15213 | 0 | 3039.694 | 6.141 | 7.109 | 7.662 | 268.25 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 15629 | 0 | 3122.449 | 5.956 | 6.889 | 8.056 | 281.977 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15440 | 0 | 3085.038 | 6.029 | 7.152 | 7.934 | 287.055 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15685 | 0 | 3133.809 | 5.953 | 6.994 | 7.708 | 318.918 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 13674 | 0 | 2731.4 | 6.833 | 7.963 | 8.822 | 320.277 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15663 | 0 | 3129.778 | 5.96 | 6.862 | 7.363 | 335.762 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15626 | 0 | 3121.204 | 6.004 | 6.842 | 7.301 | 350.004 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11708 | 0 | 2338.398 | 8.056 | 8.98 | 9.431 | 440.676 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.012 | 6783 | 0 | 1353.057 | 14.094 | 15.473 | 16.282 | 419.461 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11751 | 0 | 2347.021 | 8.027 | 8.918 | 9.281 | 439.051 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11681 | 0 | 2332.962 | 8.085 | 8.99 | 9.499 | 359.238 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.009 | 8376 | 0 | 1672.502 | 10.347 | 13.572 | 36.044 | 482.824 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.021 | 2.02 | 3794 | 0 | 755.66 | 25.166 | 27.498 | 29.071 | 476.602 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.029 | 8881 | 0 | 1773.278 | 9.84 | 12.811 | 34.899 | 432.719 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 9094 | 0 | 1815.659 | 9.534 | 12.319 | 35.029 | 399.793 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.011 | 6666 | 0 | 1330.311 | 12.841 | 17.554 | 40.001 | 537.91 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.039 | 2.295 | 2191 | 0 | 434.825 | 43.545 | 46.308 | 48.226 | 482.566 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.012 | 6724 | 0 | 1341.608 | 12.687 | 16.904 | 40.332 | 454.496 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.01 | 6887 | 0 | 1374.374 | 12.329 | 16.504 | 40.336 | 432.5 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.019 | 4402 | 0 | 877.001 | 20.175 | 45.277 | 48.502 | 540.242 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.076 | 4.104 | 1215 | 0 | 239.377 | 78.89 | 84.254 | 87.808 | 520.902 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.047 | 2.017 | 4398 | 0 | 871.359 | 20.345 | 46.502 | 48.997 | 490.055 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.017 | 4568 | 0 | 910.081 | 19.269 | 46.028 | 48.349 | 474.684 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.031 | 2887 | 0 | 573.709 | 33.028 | 35.091 | 36.766 | 463.551 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 8.017 | 7.775 | 1000 | 0 | 124.733 | 151.474 | 167.523 | 180.267 | 568.547 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.033 | 2840 | 0 | 564.597 | 33.644 | 35.522 | 37.452 | 517.957 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.029 | 3004 | 0 | 597.473 | 31.497 | 33.755 | 37.005 | 492.711 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 60.217 | 52.618 | 1440 | 0 | 23.913 | 2971.212 | 3046.367 | 3076.001 | 521.648 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 43.01 | 43.553 | 960 | 0 | 22.32 | 1939.192 | 2176.303 | 2203.494 | 552.496 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 37.211 | 31.391 | 720 | 0 | 19.349 | 1328.934 | 2104.061 | 2163.863 | 560.078 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.646 | 25.564 | 480 | 0 | 18.716 | 1238.974 | 1296.699 | 1315.558 | 565.855 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.962 | 34.131 | 360 | 0 | 18.034 | 822.454 | 1192.547 | 1260.439 | 566.047 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.63 | 14.483 | 240 | 0 | 27.809 | 428.907 | 446.692 | 456.492 | 558.988 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.887 | 8.527 | 130 | 0 | 22.084 | 283.821 | 304.816 | 311.147 | 559.121 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.0 | 1934 | 0 | 386.716 | 2.54 | 2.705 | 2.978 | 580.902 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.001 | 567 | 0 | 113.367 | 8.805 | 8.937 | 9.094 | 586.242 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.005 | 408 | 0 | 81.585 | 12.207 | 12.36 | 12.516 | 587.809 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.005 | 2.025 | 99 | 0 | 19.781 | 50.487 | 50.706 | 50.893 | 580.871 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.032 | 2.013 | 50 | 0 | 9.936 | 100.568 | 100.75 | 100.779 | 584.078 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.555 | 200.659 | 201.15 | 586.738 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

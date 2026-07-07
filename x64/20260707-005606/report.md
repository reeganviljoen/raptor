# Puma vs Raptor Simulation

Run ID: `20260707-005606`

## Environment

- Ruby: `ruby 4.0.5 (2026-05-20 revision 64336ffd0e) +PRISM [x86_64-linux]`
- Git SHA: `6733a6e`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.166 | 4.296 | 1691 | 0 | 274.247 | 41.023 | 42.505 | 44.673 | 34.785 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.172 | 4.254 | 1691 | 0 | 273.981 | 41.015 | 42.357 | 44.78 | 35.391 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.165 | 4.255 | 1691 | 0 | 274.309 | 41.037 | 42.465 | 44.67 | 36.395 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.177 | 4.263 | 1688 | 0 | 273.266 | 41.053 | 42.54 | 45.4 | 37.25 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.176 | 4.253 | 1691 | 0 | 273.802 | 41.05 | 42.574 | 44.294 | 37.473 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.166 | 4.288 | 1689 | 0 | 273.917 | 41.056 | 42.503 | 44.788 | 37.473 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.169 | 4.258 | 1691 | 0 | 274.12 | 41.019 | 42.266 | 44.199 | 37.516 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.216 | 4.279 | 1689 | 0 | 271.729 | 41.066 | 42.782 | 45.065 | 39.07 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.008 | 9801 | 0 | 1956.353 | 5.921 | 7.756 | 46.409 | 39.09 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.018 | 9842 | 0 | 1964.913 | 5.959 | 7.672 | 49.197 | 39.148 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.007 | 11159 | 0 | 2228.803 | 5.284 | 6.628 | 10.958 | 40.859 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.058 | 2.047 | 6927 | 0 | 1369.499 | 6.3 | 40.993 | 49.59 | 54.465 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.041 | 2.013 | 7256 | 0 | 1439.373 | 8.075 | 10.431 | 52.128 | 54.465 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.012 | 7202 | 0 | 1437.099 | 8.105 | 10.487 | 52.18 | 54.465 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.009 | 9494 | 0 | 1895.032 | 6.193 | 7.725 | 12.552 | 54.602 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.62 | 4.194 | 1744 | 0 | 310.312 | 41.973 | 42.975 | 243.201 | 72.645 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.018 | 2.017 | 4678 | 0 | 932.32 | 12.354 | 18.318 | 53.992 | 72.645 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.018 | 2.017 | 4609 | 0 | 918.514 | 12.51 | 19.043 | 54.524 | 72.645 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.012 | 6316 | 0 | 1260.051 | 8.95 | 14.632 | 21.994 | 74.066 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.046 | 3.156 | 3918 | 0 | 776.403 | 13.621 | 29.741 | 105.586 | 102.25 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.025 | 3.15 | 2925 | 0 | 582.069 | 19.632 | 32.623 | 123.289 | 85.742 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.025 | 3.55 | 2873 | 0 | 571.687 | 20.014 | 32.291 | 75.267 | 85.742 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.018 | 2.086 | 4308 | 0 | 858.465 | 13.171 | 23.664 | 31.688 | 99.027 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.031 | 3.827 | 2340 | 0 | 465.149 | 23.081 | 63.926 | 79.16 | 129.945 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.681 | 3.347 | 1717 | 0 | 302.237 | 37.552 | 52.155 | 76.678 | 129.945 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.773 | 3.428 | 1699 | 0 | 294.304 | 38.903 | 53.288 | 72.193 | 129.945 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.041 | 2.702 | 1990 | 0 | 394.755 | 30.535 | 39.375 | 66.185 | 152.559 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.636 | 4.445 | 1586 | 0 | 238.994 | 44.725 | 84.692 | 200.747 | 182.918 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.253 | 140.298 | 0 | 1440 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.019 | 5.019 | 0 | 960 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.017 | 5.014 | 0 | 720 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.013 | 5.012 | 0 | 480 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.01 | 0 | 360 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.003 | 0 | 120 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.006 | 0 | 10 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 183.234 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.16 | 4.249 | 1691 | 0 | 274.518 | 41.007 | 42.237 | 44.49 | 32.988 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.169 | 4.267 | 1691 | 0 | 274.106 | 41.038 | 42.312 | 45.186 | 33.758 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.178 | 4.242 | 1691 | 0 | 273.716 | 41.034 | 42.547 | 44.895 | 34.512 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.168 | 4.256 | 1687 | 0 | 273.501 | 41.056 | 42.502 | 44.848 | 35.539 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.169 | 4.259 | 1691 | 0 | 274.109 | 41.025 | 42.387 | 45.032 | 35.938 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.2 | 4.257 | 1691 | 0 | 272.737 | 41.031 | 42.288 | 44.394 | 36.156 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.17 | 4.252 | 1691 | 0 | 274.078 | 41.03 | 42.447 | 44.353 | 36.32 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.167 | 4.255 | 1691 | 0 | 274.196 | 41.022 | 42.473 | 44.674 | 37.867 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.008 | 9830 | 0 | 1962.841 | 5.944 | 7.715 | 54.588 | 37.945 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 4.096 | 9802 | 0 | 1956.888 | 5.977 | 7.629 | 47.554 | 38.047 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.008 | 11142 | 0 | 2224.173 | 5.291 | 6.659 | 11.043 | 40.176 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 4.115 | 6908 | 0 | 1379.129 | 6.28 | 40.987 | 49.04 | 52.59 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.014 | 2.012 | 5310 | 0 | 1059.071 | 8.254 | 41.971 | 51.797 | 52.59 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.011 | 6976 | 0 | 1392.129 | 8.228 | 11.524 | 52.956 | 52.652 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.009 | 9112 | 0 | 1819.046 | 6.305 | 8.576 | 18.837 | 53.793 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.054 | 4.171 | 1946 | 0 | 385.055 | 41.965 | 44.428 | 53.865 | 74.023 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.02 | 2.016 | 4658 | 0 | 927.851 | 12.247 | 17.959 | 53.698 | 74.023 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.038 | 2.017 | 4581 | 0 | 909.312 | 12.583 | 18.14 | 54.199 | 74.086 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.029 | 2.158 | 6265 | 0 | 1245.873 | 8.908 | 14.67 | 24.618 | 74.289 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.029 | 2.647 | 3772 | 0 | 750.041 | 13.551 | 51.971 | 132.859 | 94.527 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.029 | 3.14 | 2938 | 0 | 584.248 | 19.754 | 33.518 | 72.496 | 91.387 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.029 | 3.508 | 2886 | 0 | 573.922 | 19.933 | 32.204 | 78.467 | 91.449 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.018 | 2.11 | 4229 | 0 | 842.728 | 13.279 | 25.224 | 32.18 | 102.535 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 3.862 | 2343 | 0 | 464.663 | 22.278 | 64.768 | 86.004 | 123.707 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.762 | 3.327 | 1665 | 0 | 288.96 | 39.968 | 59.115 | 87.695 | 118.543 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.758 | 3.539 | 1703 | 0 | 295.781 | 38.011 | 53.614 | 88.489 | 118.543 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.038 | 2.748 | 2311 | 0 | 458.678 | 25.563 | 34.594 | 55.539 | 142.59 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.872 | 4.585 | 1565 | 0 | 227.722 | 48.056 | 77.668 | 111.53 | 175.496 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.258 | 140.331 | 0 | 1440 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.021 | 5.02 | 0 | 960 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.016 | 5.016 | 0 | 720 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.011 | 0 | 480 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.009 | 0 | 360 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.009 | 0 | 240 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.006 | 0 | 10 | 0.0 |  |  |  | 172.336 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.166 | 4.283 | 1687 | 0 | 273.598 | 41.052 | 42.471 | 44.306 | 33.766 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.169 | 4.255 | 1688 | 0 | 273.628 | 41.049 | 42.477 | 45.063 | 33.977 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.161 | 4.272 | 1691 | 0 | 274.467 | 41.013 | 42.21 | 44.767 | 34.629 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.184 | 4.271 | 1691 | 0 | 273.443 | 41.08 | 42.519 | 43.661 | 35.137 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.174 | 4.252 | 1689 | 0 | 273.565 | 41.035 | 42.459 | 44.735 | 35.559 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.173 | 4.251 | 1691 | 0 | 273.932 | 41.05 | 42.56 | 45.436 | 35.648 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.205 | 4.25 | 1687 | 0 | 271.878 | 41.204 | 42.78 | 44.871 | 35.906 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.16 | 4.266 | 1691 | 0 | 274.517 | 41.008 | 42.253 | 44.661 | 37.441 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.008 | 9939 | 0 | 1984.443 | 5.908 | 7.437 | 47.026 | 37.445 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.008 | 9749 | 0 | 1946.475 | 5.956 | 7.715 | 45.882 | 37.656 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.007 | 11053 | 0 | 2206.377 | 5.34 | 6.717 | 10.986 | 39.777 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.059 | 4.108 | 5934 | 0 | 1172.992 | 6.241 | 41.235 | 50.606 | 55.016 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.012 | 4873 | 0 | 972.164 | 8.496 | 41.992 | 57.821 | 55.016 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.024 | 2.014 | 6775 | 0 | 1348.491 | 8.443 | 11.743 | 52.34 | 55.078 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.009 | 8711 | 0 | 1738.643 | 6.483 | 9.567 | 19.062 | 55.297 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.051 | 4.09 | 2154 | 0 | 426.439 | 41.942 | 43.086 | 54.801 | 71.68 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.016 | 2.05 | 4644 | 0 | 925.883 | 12.334 | 19.08 | 54.264 | 71.68 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.018 | 2.019 | 4548 | 0 | 906.42 | 12.631 | 18.031 | 36.685 | 71.68 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.013 | 6208 | 0 | 1238.63 | 8.932 | 14.877 | 27.144 | 72.02 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 3.34 | 3600 | 0 | 713.553 | 12.74 | 53.995 | 90.873 | 95.922 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.025 | 3.193 | 2897 | 0 | 576.567 | 19.495 | 34.394 | 114.491 | 91.09 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.025 | 3.357 | 2908 | 0 | 578.718 | 19.842 | 32.271 | 69.224 | 91.277 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.079 | 4272 | 0 | 851.083 | 13.098 | 25.796 | 33.677 | 100.848 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 3.875 | 2364 | 0 | 468.357 | 22.524 | 65.556 | 79.712 | 131.941 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.841 | 3.321 | 1670 | 0 | 285.916 | 40.475 | 55.645 | 86.946 | 123.867 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.769 | 3.542 | 1696 | 0 | 293.973 | 38.801 | 52.041 | 83.614 | 124.18 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.036 | 2.798 | 2222 | 0 | 441.24 | 27.29 | 35.85 | 62.375 | 148.32 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.691 | 4.489 | 1595 | 0 | 238.378 | 43.218 | 84.233 | 193.107 | 190.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.25 | 140.273 | 0 | 1440 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.02 | 5.019 | 0 | 960 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.017 | 5.016 | 0 | 720 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.014 | 5.01 | 0 | 480 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.01 | 0 | 360 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.008 | 0 | 240 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.007 | 0 | 120 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.961 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14148 | 0 | 2826.798 | 6.551 | 7.601 | 8.07 | 201.262 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 13869 | 0 | 2770.773 | 6.703 | 7.725 | 8.332 | 201.953 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14231 | 0 | 2843.272 | 6.549 | 7.502 | 8.084 | 206.32 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14034 | 0 | 2804.111 | 6.659 | 7.608 | 8.046 | 207.984 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14111 | 0 | 2818.841 | 6.606 | 7.567 | 8.054 | 221.035 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12420 | 0 | 2481.14 | 7.517 | 8.619 | 9.147 | 218.281 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14124 | 0 | 2821.82 | 6.609 | 7.552 | 8.096 | 223.289 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 13902 | 0 | 2777.766 | 6.713 | 7.68 | 8.146 | 229.559 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11303 | 0 | 2257.583 | 8.282 | 9.395 | 9.898 | 316.203 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.013 | 6114 | 0 | 1219.518 | 15.438 | 17.333 | 18.276 | 268.734 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.008 | 11397 | 0 | 2276.242 | 8.22 | 9.291 | 9.827 | 325.555 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11406 | 0 | 2277.997 | 8.192 | 9.302 | 10.165 | 239.324 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9156 | 0 | 1828.19 | 9.913 | 12.63 | 20.85 | 352.465 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.025 | 2.024 | 3395 | 0 | 675.655 | 27.969 | 30.802 | 31.995 | 324.09 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9269 | 0 | 1850.689 | 9.74 | 12.331 | 21.167 | 271.754 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.011 | 9212 | 0 | 1839.258 | 9.789 | 12.363 | 20.793 | 270.879 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.01 | 6714 | 0 | 1339.444 | 13.258 | 18.965 | 29.433 | 428.133 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.04 | 2.559 | 1934 | 0 | 383.701 | 49.135 | 53.789 | 56.222 | 341.25 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.011 | 7200 | 0 | 1437.19 | 12.372 | 16.967 | 28.01 | 331.266 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 7343 | 0 | 1465.556 | 12.031 | 15.453 | 25.887 | 290.852 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.018 | 4219 | 0 | 840.771 | 21.401 | 35.316 | 40.102 | 427.773 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.083 | 4.853 | 1075 | 0 | 211.472 | 89.34 | 97.677 | 103.736 | 347.473 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.017 | 4343 | 0 | 865.269 | 20.438 | 35.225 | 41.97 | 330.227 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.026 | 4300 | 0 | 856.697 | 20.776 | 36.125 | 39.365 | 315.266 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.037 | 2.035 | 2436 | 0 | 483.609 | 38.773 | 43.363 | 46.562 | 328.141 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.159 | 9.04 | 1000 | 0 | 109.182 | 173.369 | 191.15 | 203.401 | 354.5 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.031 | 2678 | 0 | 532.202 | 35.141 | 40.128 | 43.711 | 343.324 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.035 | 2.037 | 2713 | 0 | 538.87 | 34.501 | 42.012 | 51.26 | 338.559 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 65.571 | 45.442 | 1440 | 0 | 21.961 | 2616.087 | 3400.132 | 3440.875 | 370.691 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 42.776 | 36.996 | 960 | 0 | 22.442 | 2098.612 | 2187.787 | 2219.157 | 383.383 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 37.007 | 39.763 | 720 | 0 | 19.456 | 1708.036 | 2063.612 | 2127.412 | 395.195 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.786 | 19.953 | 480 | 0 | 21.066 | 1016.472 | 1284.011 | 1304.615 | 404.387 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.903 | 17.087 | 360 | 0 | 18.087 | 852.454 | 1211.164 | 1248.61 | 411.867 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 14.218 | 22.715 | 240 | 0 | 16.88 | 431.724 | 816.64 | 866.521 | 419.797 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 16.987 | 11.354 | 120 | 0 | 7.064 | 851.517 | 867.391 | 874.467 | 422.621 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.001 | 3497 | 0 | 699.314 | 1.411 | 1.484 | 1.727 | 461.23 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.005 | 941 | 0 | 188.092 | 5.283 | 5.357 | 5.758 | 461.23 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.005 | 2.007 | 482 | 0 | 96.302 | 10.33 | 10.498 | 10.763 | 456.48 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.043 | 2.018 | 100 | 0 | 19.828 | 50.389 | 50.487 | 50.685 | 456.484 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.025 | 2.01 | 50 | 0 | 9.95 | 100.425 | 100.535 | 100.743 | 456.734 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.013 | 2.006 | 25 | 0 | 4.987 | 200.462 | 200.608 | 200.692 | 456.734 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.007 | 14037 | 0 | 2804.722 | 6.628 | 7.705 | 8.412 | 231.387 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 13799 | 0 | 2756.781 | 6.76 | 7.75 | 8.388 | 253.273 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.005 | 14076 | 0 | 2812.695 | 6.625 | 7.632 | 8.233 | 264.609 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 13939 | 0 | 2784.974 | 6.707 | 7.661 | 8.17 | 266.742 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 13993 | 0 | 2795.646 | 6.656 | 7.674 | 8.28 | 297.234 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12360 | 0 | 2468.997 | 7.555 | 8.69 | 9.254 | 298.961 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14011 | 0 | 2798.913 | 6.642 | 7.681 | 8.398 | 315.492 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 13851 | 0 | 2767.286 | 6.749 | 7.716 | 8.217 | 329.719 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11274 | 0 | 2251.668 | 8.294 | 9.468 | 10.202 | 391.715 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.013 | 6080 | 0 | 1212.827 | 15.538 | 17.347 | 18.359 | 393.301 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 11341 | 0 | 2265.301 | 8.262 | 9.317 | 9.942 | 408.785 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11296 | 0 | 2255.899 | 8.274 | 9.38 | 9.968 | 351.992 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 8843 | 0 | 1765.389 | 10.226 | 13.102 | 23.057 | 449.34 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.025 | 2.024 | 3370 | 0 | 670.618 | 28.108 | 31.134 | 33.284 | 440.738 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.009 | 9194 | 0 | 1835.761 | 9.752 | 12.511 | 23.399 | 404.391 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 8948 | 0 | 1786.754 | 10.052 | 12.876 | 23.732 | 363.105 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.014 | 6725 | 0 | 1341.971 | 13.273 | 17.819 | 29.615 | 555.602 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.045 | 2.623 | 1916 | 0 | 379.79 | 49.831 | 54.438 | 57.672 | 493.629 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.013 | 7130 | 0 | 1423.112 | 12.529 | 16.63 | 29.263 | 444.563 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.01 | 7140 | 0 | 1424.971 | 12.405 | 16.354 | 29.241 | 405.68 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.033 | 2.023 | 4223 | 0 | 839.118 | 21.406 | 36.992 | 40.091 | 523.457 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.077 | 4.795 | 1051 | 0 | 206.995 | 90.843 | 99.584 | 103.847 | 527.023 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.016 | 4303 | 0 | 857.487 | 20.887 | 37.012 | 40.91 | 501.797 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.035 | 4376 | 0 | 871.946 | 20.468 | 36.861 | 40.977 | 472.734 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.035 | 2.058 | 2288 | 0 | 454.399 | 39.448 | 55.973 | 70.253 | 473.316 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.147 | 8.955 | 1000 | 0 | 109.326 | 173.56 | 186.36 | 191.031 | 540.953 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.033 | 2.036 | 2658 | 0 | 528.139 | 35.773 | 39.084 | 41.068 | 538.75 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.032 | 2842 | 0 | 565.009 | 33.213 | 37.061 | 40.07 | 501.465 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 54.211 | 45.543 | 1440 | 0 | 26.563 | 2586.126 | 2926.645 | 2968.76 | 497.637 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 53.997 | 42.679 | 960 | 0 | 17.779 | 2041.892 | 2803.379 | 2906.701 | 516.863 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 37.039 | 42.609 | 720 | 0 | 19.439 | 1359.199 | 1957.755 | 2051.478 | 532.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.184 | 22.746 | 480 | 0 | 27.933 | 855.333 | 898.106 | 922.216 | 537.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.744 | 28.367 | 360 | 0 | 15.829 | 791.501 | 1258.601 | 1290.88 | 522.047 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.055 | 14.263 | 240 | 0 | 14.072 | 465.859 | 876.128 | 898.686 | 518.492 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.513 | 14.158 | 125 | 0 | 14.683 | 301.516 | 443.572 | 460.333 | 521.32 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.001 | 3501 | 0 | 700.04 | 1.408 | 1.488 | 1.68 | 580.512 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.004 | 2.005 | 942 | 0 | 188.253 | 5.281 | 5.345 | 5.592 | 576.641 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.008 | 483 | 0 | 96.539 | 10.327 | 10.417 | 10.563 | 578.328 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.043 | 2.018 | 100 | 0 | 19.828 | 50.399 | 50.475 | 50.617 | 582.152 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.024 | 2.01 | 50 | 0 | 9.953 | 100.416 | 100.496 | 100.788 | 583.609 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.013 | 2.005 | 25 | 0 | 4.987 | 200.469 | 200.55 | 200.6 | 583.609 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14049 | 0 | 2807.188 | 6.617 | 7.664 | 8.245 | 220.012 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 13809 | 0 | 2758.871 | 6.746 | 7.757 | 8.313 | 230.691 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14118 | 0 | 2820.389 | 6.596 | 7.551 | 8.518 | 237.504 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.004 | 13893 | 0 | 2775.441 | 6.713 | 7.725 | 8.297 | 238.633 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14014 | 0 | 2799.848 | 6.656 | 7.623 | 8.165 | 256.477 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12320 | 0 | 2460.595 | 7.581 | 8.68 | 9.205 | 256.727 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 13973 | 0 | 2791.652 | 6.68 | 7.663 | 8.249 | 267.598 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 13787 | 0 | 2754.374 | 6.762 | 7.801 | 8.241 | 278.012 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11299 | 0 | 2256.546 | 8.302 | 9.363 | 9.93 | 373.5 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.013 | 6060 | 0 | 1208.915 | 15.555 | 17.524 | 18.714 | 322.469 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11417 | 0 | 2280.339 | 8.195 | 9.277 | 9.804 | 358.293 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11384 | 0 | 2273.722 | 8.24 | 9.214 | 9.67 | 279.41 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.009 | 8802 | 0 | 1757.22 | 10.194 | 13.428 | 24.61 | 423.289 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.023 | 3363 | 0 | 668.921 | 28.256 | 31.539 | 32.949 | 362.656 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.01 | 9040 | 0 | 1804.172 | 9.872 | 12.976 | 24.472 | 347.387 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 8881 | 0 | 1773.332 | 10.088 | 13.228 | 24.698 | 312.578 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.011 | 6757 | 0 | 1348.573 | 13.217 | 17.313 | 30.499 | 471.285 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.044 | 2.649 | 1914 | 0 | 379.452 | 50.028 | 54.555 | 56.593 | 373.457 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.029 | 7041 | 0 | 1405.209 | 12.438 | 16.698 | 30.81 | 353.75 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.015 | 6994 | 0 | 1395.606 | 12.5 | 17.5 | 30.475 | 340.016 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.021 | 2.019 | 4061 | 0 | 808.855 | 22.217 | 38.198 | 44.13 | 481.234 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.08 | 4.867 | 1030 | 0 | 202.756 | 93.393 | 101.913 | 106.524 | 415.34 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.038 | 2.02 | 4366 | 0 | 866.562 | 20.636 | 37.45 | 40.676 | 387.367 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.023 | 2.022 | 4368 | 0 | 869.614 | 20.386 | 37.636 | 40.87 | 382.652 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.034 | 2.037 | 2533 | 0 | 503.22 | 37.313 | 40.786 | 46.18 | 422.68 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.319 | 9.131 | 1000 | 0 | 107.312 | 176.548 | 190.912 | 198.779 | 438.188 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.036 | 2.034 | 2692 | 0 | 534.551 | 35.075 | 38.294 | 43.951 | 419.535 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.031 | 2795 | 0 | 555.474 | 33.808 | 37.734 | 41.746 | 412.547 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 85.333 | 53.344 | 1440 | 0 | 16.875 | 2156.353 | 4337.591 | 4387.606 | 429.066 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 48.387 | 51.184 | 960 | 0 | 19.84 | 1822.059 | 2526.162 | 2568.205 | 438.691 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 42.683 | 36.918 | 720 | 0 | 16.869 | 1290.621 | 2175.178 | 2204.648 | 443.598 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 34.106 | 22.778 | 480 | 0 | 14.074 | 1141.004 | 1743.941 | 1769.703 | 444.273 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.914 | 31.208 | 360 | 0 | 18.078 | 738.152 | 1085.721 | 1207.449 | 459.027 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.413 | 17.037 | 240 | 0 | 21.029 | 433.528 | 669.511 | 763.844 | 459.098 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.541 | 14.168 | 135 | 0 | 15.806 | 201.406 | 462.129 | 477.647 | 459.223 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.001 | 3531 | 0 | 706.107 | 1.399 | 1.501 | 1.748 | 504.848 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.004 | 941 | 0 | 188.131 | 5.283 | 5.378 | 5.512 | 520.125 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.001 | 483 | 0 | 96.562 | 10.322 | 10.415 | 10.562 | 526.527 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.046 | 2.019 | 100 | 0 | 19.818 | 50.39 | 50.487 | 50.874 | 526.59 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.026 | 2.01 | 50 | 0 | 9.949 | 100.438 | 100.649 | 101.104 | 526.59 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.486 | 200.627 | 200.745 | 526.59 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.17 | 4.388 | 1688 | 0 | 273.591 | 41.025 | 42.458 | 44.202 | 36.09 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.174 | 4.318 | 1691 | 0 | 273.891 | 41.025 | 42.555 | 44.526 | 37.223 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.162 | 4.315 | 1691 | 0 | 274.416 | 41.011 | 42.29 | 44.234 | 37.758 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.182 | 4.275 | 1691 | 0 | 273.546 | 41.058 | 42.454 | 44.584 | 38.383 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.175 | 4.302 | 1691 | 0 | 273.86 | 41.02 | 42.541 | 44.605 | 38.598 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.182 | 4.25 | 1691 | 0 | 273.532 | 41.084 | 42.63 | 44.541 | 38.625 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.165 | 4.26 | 1691 | 0 | 274.289 | 41.027 | 42.355 | 44.351 | 38.695 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.165 | 4.248 | 1691 | 0 | 274.291 | 41.012 | 42.438 | 45.344 | 39.727 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.046 | 2.008 | 10193 | 0 | 2020.005 | 5.75 | 7.197 | 49.753 | 39.738 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.008 | 10152 | 0 | 2026.849 | 5.748 | 7.326 | 47.697 | 39.773 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.007 | 11206 | 0 | 2238.077 | 5.267 | 6.54 | 10.678 | 41.707 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.055 | 2.043 | 2962 | 0 | 585.966 | 6.843 | 41.969 | 48.413 | 51.531 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.013 | 6918 | 0 | 1380.472 | 7.975 | 12.51 | 53.876 | 51.531 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 2.012 | 6842 | 0 | 1356.892 | 8.044 | 12.665 | 54.255 | 51.535 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.009 | 8371 | 0 | 1671.184 | 6.555 | 10.791 | 26.525 | 52.398 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.053 | 4.148 | 2901 | 0 | 574.155 | 9.693 | 43.686 | 189.75 | 67.297 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.017 | 2.017 | 4688 | 0 | 934.331 | 12.013 | 17.98 | 59.32 | 67.297 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.016 | 2.189 | 4672 | 0 | 931.385 | 12.048 | 17.86 | 55.395 | 67.422 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.015 | 6057 | 0 | 1208.193 | 8.896 | 15.306 | 32.675 | 68.441 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.072 | 2.903 | 3577 | 0 | 705.303 | 12.944 | 52.393 | 112.071 | 86.68 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.027 | 3.215 | 2957 | 0 | 588.175 | 18.853 | 39.789 | 71.272 | 86.68 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.029 | 2.939 | 2949 | 0 | 586.452 | 19.135 | 38.493 | 70.774 | 86.68 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.141 | 4303 | 0 | 857.326 | 13.053 | 23.828 | 39.536 | 99.535 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 3.548 | 2397 | 0 | 475.13 | 21.663 | 63.986 | 87.74 | 122.238 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.551 | 3.263 | 1736 | 0 | 312.742 | 36.8 | 51.844 | 91.372 | 114.906 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.891 | 3.381 | 1674 | 0 | 284.164 | 39.823 | 59.224 | 82.96 | 114.906 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.03 | 2.832 | 2404 | 0 | 477.953 | 24.468 | 32.472 | 51.852 | 152.176 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.664 | 4.276 | 1594 | 0 | 239.211 | 44.484 | 74.288 | 202.306 | 181.227 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.251 | 140.216 | 0 | 1440 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.02 | 5.022 | 0 | 960 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.014 | 0 | 720 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.016 | 5.011 | 0 | 480 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.01 | 0 | 360 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.009 | 0 | 240 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.007 | 0 | 120 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 181.797 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.166 | 4.381 | 1691 | 0 | 274.248 | 41.031 | 42.343 | 43.998 | 36.898 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.162 | 4.337 | 1691 | 0 | 274.434 | 41.011 | 42.245 | 44.535 | 38.309 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.157 | 4.302 | 1691 | 0 | 274.627 | 41.003 | 42.271 | 44.478 | 38.875 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.173 | 4.275 | 1691 | 0 | 273.93 | 41.011 | 42.297 | 44.536 | 39.535 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.162 | 4.266 | 1691 | 0 | 274.424 | 41.012 | 42.259 | 44.432 | 39.785 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.194 | 4.257 | 1691 | 0 | 273.002 | 41.01 | 42.261 | 44.528 | 39.871 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.175 | 4.252 | 1691 | 0 | 273.84 | 41.03 | 42.448 | 44.185 | 39.938 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.167 | 4.269 | 1691 | 0 | 274.223 | 41.019 | 42.367 | 44.948 | 41.223 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.033 | 2.038 | 10097 | 0 | 2006.014 | 5.748 | 7.303 | 46.777 | 41.242 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.008 | 10103 | 0 | 2017.577 | 5.723 | 7.378 | 49.591 | 41.293 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.008 | 11222 | 0 | 2240.341 | 5.266 | 6.571 | 10.755 | 43.184 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.041 | 4239 | 0 | 846.306 | 6.351 | 41.921 | 51.968 | 53.539 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.01 | 6903 | 0 | 1377.635 | 7.843 | 12.385 | 53.249 | 53.539 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.012 | 6899 | 0 | 1376.72 | 8.144 | 11.893 | 52.848 | 53.539 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.014 | 2.009 | 8322 | 0 | 1659.843 | 6.573 | 10.978 | 26.736 | 54.203 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.066 | 4.007 | 4412 | 0 | 870.961 | 8.136 | 44.889 | 107.082 | 73.734 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.015 | 2.018 | 4760 | 0 | 949.16 | 11.784 | 17.663 | 53.87 | 73.734 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.017 | 2.015 | 4603 | 0 | 917.561 | 12.107 | 18.529 | 57.56 | 73.734 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.184 | 2.012 | 6089 | 0 | 1174.497 | 8.902 | 14.818 | 34.177 | 74.504 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.051 | 2.712 | 3974 | 0 | 786.81 | 12.949 | 48.868 | 210.369 | 93.949 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.032 | 3.19 | 3044 | 0 | 604.973 | 18.527 | 37.486 | 68.932 | 85.141 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.05 | 3.013 | 2983 | 0 | 590.691 | 18.948 | 38.759 | 90.861 | 85.141 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.018 | 2.102 | 4126 | 0 | 822.285 | 13.392 | 24.965 | 44.875 | 96.656 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.044 | 3.811 | 2412 | 0 | 478.192 | 21.796 | 63.73 | 84.508 | 133.98 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.616 | 3.196 | 1736 | 0 | 309.123 | 36.615 | 52.1 | 75.914 | 117.969 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.495 | 3.655 | 1741 | 0 | 316.848 | 35.564 | 52.34 | 91.701 | 117.969 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.035 | 2.733 | 2352 | 0 | 467.096 | 24.689 | 34.028 | 57.709 | 162.016 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.288 | 4.252 | 1613 | 0 | 256.537 | 42.535 | 77.302 | 211.041 | 184.91 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.256 | 140.207 | 0 | 1440 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.02 | 5.021 | 0 | 960 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.016 | 0 | 720 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.013 | 0 | 480 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.01 | 0 | 360 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.005 | 0 | 10 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 176.32 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.169 | 4.4 | 1691 | 0 | 274.123 | 41.011 | 42.271 | 43.908 | 36.863 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.165 | 4.326 | 1691 | 0 | 274.296 | 41.019 | 42.405 | 45.437 | 37.891 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.16 | 4.311 | 1691 | 0 | 274.512 | 41.029 | 42.478 | 44.318 | 38.582 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.184 | 4.322 | 1689 | 0 | 273.136 | 41.098 | 42.611 | 45.297 | 38.992 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.172 | 4.26 | 1691 | 0 | 273.99 | 41.046 | 42.463 | 44.371 | 39.281 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.159 | 4.245 | 1691 | 0 | 274.577 | 41.002 | 42.247 | 44.269 | 39.363 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.171 | 4.243 | 1691 | 0 | 274.037 | 41.03 | 42.519 | 44.584 | 39.512 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.161 | 4.276 | 1691 | 0 | 274.477 | 40.998 | 42.3 | 44.591 | 40.625 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.009 | 10112 | 0 | 2018.8 | 5.716 | 7.358 | 48.612 | 40.641 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.008 | 10165 | 0 | 2029.647 | 5.749 | 7.27 | 49.839 | 40.652 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.007 | 11168 | 0 | 2230.004 | 5.271 | 6.631 | 10.728 | 42.41 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.015 | 2.043 | 9238 | 0 | 1842.163 | 6.115 | 8.214 | 50.056 | 51.469 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.014 | 6955 | 0 | 1387.494 | 7.962 | 11.786 | 52.391 | 51.469 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.039 | 2.011 | 6793 | 0 | 1348.075 | 8.005 | 12.809 | 55.368 | 51.469 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.032 | 2.009 | 8208 | 0 | 1631.201 | 6.604 | 10.885 | 30.666 | 53.133 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.06 | 4.072 | 3813 | 0 | 753.626 | 8.355 | 44.023 | 192.945 | 71.809 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.017 | 4637 | 0 | 923.918 | 11.984 | 18.493 | 57.454 | 71.809 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.017 | 2.017 | 4606 | 0 | 918.117 | 12.126 | 18.412 | 59.867 | 71.809 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.013 | 6015 | 0 | 1199.879 | 9.004 | 14.825 | 32.984 | 72.543 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.061 | 2.759 | 3726 | 0 | 736.226 | 13.028 | 52.514 | 171.724 | 90.141 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.027 | 2.833 | 2995 | 0 | 595.83 | 18.663 | 41.907 | 70.045 | 83.16 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.028 | 2.875 | 2959 | 0 | 588.453 | 19.008 | 41.552 | 81.15 | 83.16 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.141 | 4173 | 0 | 831.423 | 13.178 | 24.041 | 43.83 | 94.031 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.028 | 3.7 | 2384 | 0 | 474.185 | 22.183 | 62.083 | 86.119 | 127.578 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.728 | 3.254 | 1720 | 0 | 300.254 | 37.825 | 52.461 | 71.323 | 115.84 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.719 | 3.361 | 1712 | 0 | 299.352 | 37.879 | 52.632 | 102.237 | 115.84 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 2.773 | 2183 | 0 | 433.002 | 27.651 | 35.115 | 53.262 | 143.582 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.422 | 4.457 | 1623 | 0 | 252.731 | 41.789 | 77.648 | 303.884 | 190.621 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.253 | 140.192 | 0 | 1440 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.022 | 5.021 | 0 | 960 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.016 | 5.017 | 0 | 720 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.012 | 0 | 480 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.009 | 0 | 360 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.001 | 0 | 10 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 187.84 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14513 | 0 | 2899.657 | 6.413 | 7.39 | 8.018 | 241.316 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14177 | 0 | 2832.662 | 6.57 | 7.53 | 8.03 | 261.5 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 14575 | 0 | 2911.797 | 6.386 | 7.368 | 7.905 | 267.227 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.006 | 14412 | 0 | 2877.963 | 6.486 | 7.396 | 7.822 | 272.453 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14462 | 0 | 2889.244 | 6.449 | 7.368 | 7.892 | 297.844 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12639 | 0 | 2524.806 | 7.382 | 8.51 | 9.167 | 297.891 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14367 | 0 | 2870.51 | 6.474 | 7.458 | 8.531 | 317.949 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14306 | 0 | 2858.393 | 6.519 | 7.463 | 7.94 | 332.82 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11725 | 0 | 2341.721 | 7.989 | 8.974 | 9.513 | 398.164 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.013 | 6204 | 0 | 1237.504 | 15.231 | 17.07 | 17.839 | 397.348 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11690 | 0 | 2334.967 | 8.017 | 8.999 | 9.442 | 414.086 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11578 | 0 | 2312.529 | 8.082 | 9.098 | 9.666 | 337.211 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.009 | 9063 | 0 | 1809.647 | 9.799 | 12.564 | 29.225 | 453.344 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.026 | 2.025 | 3440 | 0 | 684.422 | 27.575 | 30.504 | 31.894 | 446.453 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.008 | 9015 | 0 | 1799.205 | 9.791 | 12.871 | 29.397 | 383.078 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.007 | 9058 | 0 | 1808.325 | 9.758 | 12.587 | 28.394 | 370.48 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.012 | 6777 | 0 | 1351.791 | 12.904 | 17.433 | 35.359 | 547.336 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.046 | 2.587 | 1941 | 0 | 384.659 | 49.06 | 53.768 | 55.475 | 518.84 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 6981 | 0 | 1393.373 | 12.309 | 16.911 | 35.597 | 473.559 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.01 | 6857 | 0 | 1368.452 | 12.589 | 17.504 | 37.107 | 393.699 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.025 | 4167 | 0 | 830.177 | 21.267 | 41.749 | 44.903 | 539.926 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.083 | 4.708 | 1063 | 0 | 209.131 | 90.205 | 97.917 | 101.178 | 531.961 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.018 | 4273 | 0 | 851.448 | 20.66 | 41.919 | 46.334 | 524.523 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.021 | 4334 | 0 | 863.427 | 20.332 | 42.706 | 46.473 | 446.777 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.032 | 2512 | 0 | 499.169 | 36.369 | 48.243 | 62.608 | 535.258 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.008 | 8.914 | 1000 | 0 | 111.018 | 170.48 | 183.379 | 192.844 | 556.348 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.044 | 2.032 | 2782 | 0 | 551.561 | 33.849 | 38.161 | 46.477 | 539.016 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.06 | 2842 | 0 | 565.006 | 33.432 | 36.919 | 39.573 | 480.594 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 68.582 | 43.428 | 1440 | 0 | 20.997 | 2626.385 | 3463.227 | 3486.223 | 504.344 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 42.924 | 36.935 | 960 | 0 | 22.365 | 1686.114 | 2165.649 | 2189.186 | 526.09 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 34.234 | 39.791 | 720 | 0 | 21.032 | 1355.347 | 1730.883 | 1758.049 | 535.523 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.835 | 28.461 | 480 | 0 | 18.58 | 951.376 | 1321.668 | 1344.814 | 535.066 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 20.116 | 17.36 | 360 | 0 | 17.896 | 820.493 | 1260.28 | 1294.312 | 539.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 14.462 | 14.307 | 240 | 0 | 16.596 | 492.842 | 860.469 | 885.931 | 542.441 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.623 | 8.52 | 135 | 0 | 15.656 | 201.97 | 440.736 | 450.608 | 530.918 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.001 | 1629 | 0 | 325.773 | 3.05 | 3.314 | 3.417 | 549.691 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.008 | 2.001 | 484 | 0 | 96.653 | 10.349 | 10.721 | 10.808 | 567.133 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.009 | 2.007 | 353 | 0 | 70.468 | 14.238 | 14.409 | 14.601 | 577.582 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.043 | 2.016 | 100 | 0 | 19.83 | 50.343 | 50.604 | 51.818 | 578.539 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.023 | 2.01 | 50 | 0 | 9.955 | 100.369 | 100.48 | 101.127 | 575.75 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.482 | 200.552 | 200.62 | 578.16 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14501 | 0 | 2897.173 | 6.415 | 7.355 | 7.906 | 232.051 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14177 | 0 | 2832.317 | 6.565 | 7.621 | 8.216 | 248.582 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14526 | 0 | 2901.659 | 6.402 | 7.394 | 7.943 | 253.602 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14353 | 0 | 2867.75 | 6.516 | 7.424 | 7.869 | 259.777 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14487 | 0 | 2894.301 | 6.431 | 7.364 | 7.828 | 281.859 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12647 | 0 | 2526.323 | 7.391 | 8.442 | 9.011 | 279.02 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14377 | 0 | 2872.426 | 6.469 | 7.391 | 8.593 | 290.016 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14249 | 0 | 2847.037 | 6.545 | 7.505 | 7.945 | 298.609 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11556 | 0 | 2308.116 | 8.101 | 9.145 | 9.632 | 380.266 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.014 | 6161 | 0 | 1229.019 | 15.287 | 17.29 | 18.119 | 349.895 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11567 | 0 | 2310.352 | 8.117 | 9.103 | 9.656 | 400.938 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11448 | 0 | 2286.511 | 8.166 | 9.23 | 9.784 | 314.563 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 8805 | 0 | 1758.257 | 10.05 | 12.721 | 30.685 | 431.992 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.026 | 2.023 | 3381 | 0 | 672.666 | 28.154 | 30.842 | 32.048 | 403.145 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.01 | 8911 | 0 | 1779.342 | 9.872 | 12.912 | 30.951 | 354.75 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.015 | 8852 | 0 | 1766.956 | 9.92 | 12.8 | 31.191 | 335.441 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.014 | 2.01 | 6615 | 0 | 1319.209 | 13.182 | 18.405 | 37.447 | 521.48 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.039 | 2.594 | 1927 | 0 | 382.396 | 49.45 | 54.064 | 56.578 | 432.547 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.013 | 6889 | 0 | 1374.793 | 12.578 | 16.949 | 36.978 | 401.801 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.011 | 6749 | 0 | 1347.173 | 12.73 | 17.496 | 39.096 | 378.098 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.017 | 4148 | 0 | 826.233 | 21.373 | 44.04 | 48.1 | 496.336 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.08 | 4.81 | 1042 | 0 | 205.128 | 92.001 | 99.718 | 104.436 | 462.133 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.019 | 4234 | 0 | 843.891 | 20.787 | 44.168 | 47.0 | 440.109 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.021 | 4268 | 0 | 850.296 | 20.598 | 43.427 | 48.126 | 398.07 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.036 | 2.039 | 2623 | 0 | 520.839 | 36.156 | 39.466 | 41.927 | 457.574 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.084 | 8.973 | 1000 | 0 | 110.078 | 171.886 | 186.194 | 195.246 | 470.035 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.031 | 2707 | 0 | 538.01 | 34.889 | 38.064 | 44.668 | 444.988 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.031 | 2.031 | 2779 | 0 | 552.345 | 33.485 | 39.464 | 57.191 | 422.199 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 71.523 | 43.681 | 1440 | 0 | 20.133 | 2996.501 | 3661.04 | 3740.04 | 443.063 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 60.223 | 48.36 | 960 | 0 | 15.941 | 1939.247 | 3067.436 | 3108.086 | 462.414 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 82.551 | 57.256 | 720 | 0 | 8.722 | 4100.922 | 4247.436 | 4275.453 | 484.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 23.134 | 28.611 | 480 | 0 | 20.748 | 1018.241 | 1287.145 | 1322.347 | 486.207 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.186 | 17.04 | 360 | 0 | 20.948 | 726.172 | 875.3 | 884.356 | 496.125 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.622 | 14.225 | 240 | 0 | 20.65 | 515.075 | 810.406 | 846.856 | 496.25 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.651 | 11.371 | 135 | 0 | 15.605 | 201.383 | 442.748 | 455.906 | 496.313 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.001 | 1719 | 0 | 343.614 | 2.858 | 3.28 | 3.378 | 516.984 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.001 | 511 | 0 | 102.145 | 9.786 | 10.463 | 10.776 | 517.609 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.007 | 2.002 | 363 | 0 | 72.495 | 13.785 | 14.268 | 14.448 | 530.59 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.011 | 2.024 | 99 | 0 | 19.755 | 50.567 | 50.644 | 50.897 | 537.121 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.036 | 2.016 | 50 | 0 | 9.929 | 100.594 | 100.953 | 101.973 | 540.039 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.551 | 200.843 | 201.059 | 540.102 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14355 | 0 | 2867.954 | 6.471 | 7.474 | 7.982 | 237.133 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14065 | 0 | 2810.211 | 6.596 | 7.656 | 8.378 | 246.926 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14346 | 0 | 2865.686 | 6.456 | 7.528 | 8.84 | 255.414 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 14237 | 0 | 2844.257 | 6.553 | 7.572 | 8.062 | 258.797 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14374 | 0 | 2871.291 | 6.48 | 7.438 | 7.953 | 281.418 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12592 | 0 | 2515.305 | 7.42 | 8.449 | 9.093 | 277.398 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 14411 | 0 | 2878.87 | 6.469 | 7.383 | 7.827 | 288.355 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14139 | 0 | 2824.674 | 6.594 | 7.621 | 8.136 | 298.965 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11523 | 0 | 2301.522 | 8.125 | 9.205 | 9.787 | 397.738 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.014 | 2.012 | 6142 | 0 | 1224.957 | 15.384 | 17.195 | 17.939 | 356.098 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11633 | 0 | 2323.424 | 8.039 | 9.112 | 9.558 | 395.18 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11452 | 0 | 2287.049 | 8.187 | 9.178 | 9.661 | 314.406 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.01 | 8702 | 0 | 1737.608 | 10.11 | 13.11 | 33.463 | 436.148 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.029 | 2.026 | 3400 | 0 | 676.034 | 27.955 | 31.018 | 32.566 | 398.887 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.011 | 8998 | 0 | 1796.179 | 9.756 | 12.591 | 32.349 | 357.742 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.034 | 2.008 | 8802 | 0 | 1748.339 | 9.96 | 13.026 | 32.762 | 347.574 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.011 | 6557 | 0 | 1308.367 | 13.13 | 18.486 | 39.235 | 523.145 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.043 | 2.574 | 1930 | 0 | 382.705 | 49.286 | 54.378 | 57.348 | 432.488 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.012 | 6946 | 0 | 1385.72 | 12.333 | 16.104 | 38.202 | 381.422 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.012 | 6847 | 0 | 1366.721 | 12.389 | 16.942 | 38.878 | 374.164 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.02 | 4164 | 0 | 829.745 | 21.157 | 45.619 | 48.811 | 510.184 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.08 | 4.747 | 1061 | 0 | 208.86 | 90.209 | 99.394 | 107.254 | 460.328 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.018 | 4224 | 0 | 841.632 | 20.861 | 45.698 | 48.289 | 432.457 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.018 | 4307 | 0 | 858.192 | 20.395 | 45.356 | 49.102 | 413.715 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.033 | 2.033 | 2418 | 0 | 480.421 | 37.324 | 50.913 | 70.226 | 451.871 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 8.969 | 8.92 | 1000 | 0 | 111.5 | 169.625 | 182.359 | 189.235 | 460.566 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.036 | 2.033 | 2703 | 0 | 536.777 | 34.775 | 39.495 | 47.388 | 458.563 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.029 | 2768 | 0 | 550.068 | 34.095 | 37.534 | 41.172 | 427.527 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 63.334 | 39.808 | 1440 | 0 | 22.737 | 2632.909 | 3261.894 | 3364.335 | 451.121 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 45.856 | 42.649 | 960 | 0 | 20.935 | 1977.638 | 2475.41 | 2567.293 | 471.875 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 45.78 | 34.202 | 720 | 0 | 15.727 | 1228.932 | 2461.37 | 2503.197 | 481.66 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.781 | 25.696 | 480 | 0 | 18.618 | 863.704 | 1313.098 | 1330.024 | 487.242 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.168 | 17.132 | 360 | 0 | 20.969 | 766.668 | 876.727 | 893.49 | 488.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.505 | 14.289 | 240 | 0 | 20.86 | 433.169 | 820.052 | 845.512 | 490.059 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.868 | 8.55 | 130 | 0 | 22.155 | 284.89 | 304.797 | 309.422 | 497.152 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.001 | 1750 | 0 | 349.922 | 2.82 | 3.186 | 3.338 | 531.59 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.008 | 2.003 | 543 | 0 | 108.422 | 9.15 | 9.975 | 10.443 | 537.738 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.013 | 2.006 | 365 | 0 | 72.815 | 13.706 | 14.19 | 14.324 | 548.23 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.037 | 2.016 | 100 | 0 | 19.853 | 50.322 | 50.4 | 50.649 | 548.23 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.023 | 2.009 | 50 | 0 | 9.955 | 100.393 | 100.528 | 100.63 | 542.484 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.012 | 2.005 | 25 | 0 | 4.988 | 200.4 | 200.507 | 200.651 | 542.488 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

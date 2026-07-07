# Puma vs Raptor Simulation

Run ID: `20260707-005610`

## Environment

- Ruby: `ruby 4.0.5 (2026-05-20 revision 64336ffd0e) +PRISM [aarch64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.217 | 4.272 | 1684 | 0 | 270.889 | 41.387 | 43.155 | 45.516 | 33.934 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.179 | 4.284 | 1686 | 0 | 272.849 | 41.137 | 42.717 | 47.335 | 34.621 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.167 | 4.286 | 1691 | 0 | 274.204 | 40.989 | 42.268 | 46.592 | 34.957 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.199 | 4.266 | 1686 | 0 | 271.987 | 41.061 | 43.115 | 45.541 | 35.625 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.202 | 4.312 | 1686 | 0 | 271.837 | 41.082 | 42.982 | 45.05 | 36.047 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.189 | 4.294 | 1688 | 0 | 272.736 | 41.082 | 42.832 | 45.14 | 36.387 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.205 | 4.322 | 1688 | 0 | 272.041 | 41.045 | 42.779 | 45.514 | 36.828 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.217 | 4.274 | 1681 | 0 | 270.398 | 41.628 | 43.115 | 44.799 | 38.969 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 2.05 | 6020 | 0 | 1193.147 | 5.107 | 41.0 | 47.996 | 39.223 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.038 | 2.029 | 6594 | 0 | 1308.772 | 5.197 | 40.992 | 61.0 | 39.492 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.006 | 12329 | 0 | 2462.431 | 4.775 | 6.022 | 9.944 | 41.285 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.044 | 3.904 | 3668 | 0 | 727.251 | 5.528 | 41.994 | 78.334 | 60.934 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 2.065 | 4253 | 0 | 843.462 | 6.504 | 42.641 | 55.244 | 60.934 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.053 | 2.929 | 5503 | 0 | 1089.138 | 6.446 | 42.668 | 51.231 | 61.184 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.068 | 9957 | 0 | 1987.453 | 5.955 | 7.175 | 13.417 | 61.309 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.049 | 3.796 | 2306 | 0 | 456.757 | 41.74 | 43.887 | 50.932 | 92.137 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.054 | 3.335 | 5322 | 0 | 1053.086 | 8.972 | 43.773 | 136.989 | 92.324 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.033 | 2.049 | 5606 | 0 | 1113.818 | 8.892 | 43.556 | 63.577 | 92.324 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.011 | 6808 | 0 | 1358.425 | 8.266 | 12.929 | 23.027 | 92.387 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.052 | 4.011 | 2040 | 0 | 403.789 | 42.004 | 47.182 | 55.128 | 124.344 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.053 | 3.97 | 2477 | 0 | 490.209 | 14.803 | 53.422 | 107.007 | 124.469 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.035 | 3.858 | 2972 | 0 | 590.29 | 13.537 | 55.866 | 233.909 | 119.555 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.017 | 2.016 | 4754 | 0 | 947.513 | 11.887 | 20.516 | 28.197 | 124.359 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.638 | 4.253 | 1733 | 0 | 307.402 | 44.811 | 55.14 | 451.134 | 167.016 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.375 | 4.123 | 1766 | 0 | 328.586 | 43.708 | 67.834 | 313.518 | 157.953 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.724 | 4.239 | 1722 | 0 | 300.855 | 44.974 | 68.806 | 424.311 | 153.324 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.031 | 2.668 | 2690 | 0 | 534.677 | 21.979 | 28.915 | 47.663 | 177.457 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.945 | 4.811 | 1589 | 0 | 228.792 | 50.576 | 72.701 | 238.214 | 242.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.254 | 140.289 | 0 | 1440 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.02 | 0 | 960 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.015 | 0 | 720 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.008 | 0 | 480 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.01 | 0 | 360 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.006 | 0 | 10 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.007 | 0 | 10 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.003 | 5.006 | 0 | 10 | 0.0 |  |  |  | 242.973 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.163 | 4.257 | 1691 | 0 | 274.374 | 40.993 | 42.488 | 44.494 | 33.77 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.181 | 4.272 | 1689 | 0 | 273.267 | 41.008 | 42.765 | 44.295 | 34.367 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.194 | 4.254 | 1687 | 0 | 272.359 | 41.185 | 42.861 | 44.716 | 34.961 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.19 | 4.303 | 1691 | 0 | 273.195 | 41.011 | 42.585 | 44.127 | 35.688 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.19 | 4.302 | 1686 | 0 | 272.366 | 41.053 | 42.702 | 44.753 | 36.168 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.199 | 4.296 | 1686 | 0 | 271.967 | 41.155 | 42.802 | 44.805 | 36.523 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.187 | 4.266 | 1691 | 0 | 273.333 | 40.995 | 42.564 | 44.384 | 36.945 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.221 | 4.364 | 1684 | 0 | 270.678 | 41.648 | 42.991 | 44.84 | 38.957 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.007 | 11215 | 0 | 2240.091 | 4.959 | 6.566 | 51.273 | 39.23 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.007 | 11414 | 0 | 2279.12 | 5.024 | 6.43 | 47.819 | 39.277 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.006 | 12266 | 0 | 2449.947 | 4.808 | 6.114 | 10.125 | 41.074 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.049 | 2.048 | 5123 | 0 | 1014.697 | 5.167 | 41.991 | 57.728 | 64.457 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.67 | 7782 | 0 | 1553.106 | 6.513 | 16.883 | 77.522 | 64.52 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.048 | 2.04 | 7596 | 0 | 1504.794 | 6.651 | 16.916 | 75.857 | 64.582 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.01 | 9178 | 0 | 1832.637 | 6.173 | 8.848 | 45.306 | 64.582 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.048 | 3.692 | 2363 | 0 | 468.13 | 41.748 | 43.751 | 52.102 | 109.609 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.043 | 5429 | 0 | 1083.05 | 9.658 | 23.768 | 66.445 | 100.582 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.044 | 2.017 | 5545 | 0 | 1099.351 | 9.374 | 24.324 | 65.517 | 100.582 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.044 | 6598 | 0 | 1316.157 | 8.327 | 13.26 | 25.393 | 101.949 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.046 | 4.002 | 2176 | 0 | 431.208 | 41.988 | 48.465 | 56.443 | 120.352 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.046 | 3.916 | 3122 | 0 | 618.708 | 13.193 | 55.725 | 70.988 | 116.293 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.035 | 3.986 | 3257 | 0 | 646.835 | 13.884 | 56.203 | 70.899 | 116.293 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.018 | 2.045 | 4568 | 0 | 910.374 | 12.473 | 20.76 | 31.03 | 120.59 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.411 | 4.118 | 1764 | 0 | 326.004 | 44.645 | 54.775 | 256.288 | 164.164 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.197 | 4.089 | 1814 | 0 | 349.014 | 26.856 | 68.995 | 268.867 | 142.184 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.052 | 4.006 | 1845 | 0 | 365.168 | 26.456 | 71.205 | 224.967 | 142.184 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.029 | 2.695 | 2702 | 0 | 537.264 | 22.011 | 28.453 | 48.706 | 184.23 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.895 | 5.073 | 1579 | 0 | 229.002 | 50.918 | 76.758 | 135.895 | 230.57 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.263 | 140.254 | 0 | 1440 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.02 | 5.022 | 0 | 960 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.013 | 5.015 | 0 | 720 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.011 | 0 | 480 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.009 | 0 | 360 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.01 | 5.009 | 0 | 240 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.008 | 0 | 120 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.003 | 5.006 | 0 | 10 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.006 | 0 | 10 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.006 | 0 | 10 | 0.0 |  |  |  | 223.266 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.167 | 4.254 | 1691 | 0 | 274.208 | 40.992 | 42.387 | 44.074 | 33.238 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.168 | 4.283 | 1687 | 0 | 273.509 | 41.012 | 42.804 | 44.091 | 33.574 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.186 | 4.293 | 1689 | 0 | 273.048 | 41.015 | 42.643 | 44.74 | 33.813 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.178 | 4.262 | 1691 | 0 | 273.722 | 40.992 | 42.566 | 44.553 | 34.277 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.167 | 4.278 | 1691 | 0 | 274.192 | 40.994 | 42.673 | 44.72 | 34.449 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.205 | 4.264 | 1689 | 0 | 272.189 | 41.221 | 42.67 | 44.41 | 34.477 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.203 | 4.262 | 1686 | 0 | 271.805 | 41.179 | 42.763 | 44.502 | 34.715 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.205 | 4.337 | 1685 | 0 | 271.555 | 41.215 | 42.777 | 45.16 | 36.398 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.037 | 2.007 | 11369 | 0 | 2256.958 | 4.978 | 6.399 | 48.022 | 36.527 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.043 | 3.993 | 11367 | 0 | 2253.831 | 4.99 | 6.338 | 48.794 | 36.715 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.008 | 12420 | 0 | 2480.166 | 4.759 | 5.956 | 9.555 | 38.711 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 2.096 | 2259 | 0 | 447.732 | 40.95 | 42.013 | 47.595 | 53.969 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.05 | 2.045 | 6662 | 0 | 1319.299 | 6.339 | 42.571 | 52.508 | 54.219 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 2.016 | 5032 | 0 | 996.989 | 6.517 | 42.551 | 87.146 | 54.281 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.009 | 9330 | 0 | 1862.872 | 6.052 | 8.727 | 20.203 | 54.586 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.054 | 3.756 | 2249 | 0 | 445.032 | 41.729 | 43.489 | 51.032 | 81.926 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.074 | 2.04 | 5315 | 0 | 1047.502 | 9.05 | 43.04 | 85.321 | 77.918 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.017 | 2.011 | 5868 | 0 | 1169.719 | 8.727 | 22.867 | 64.19 | 77.918 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.01 | 6817 | 0 | 1360.102 | 8.058 | 12.513 | 25.362 | 79.305 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.057 | 4.119 | 2156 | 0 | 426.364 | 41.98 | 47.823 | 57.735 | 106.117 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.05 | 3.937 | 2979 | 0 | 589.846 | 12.517 | 54.843 | 173.806 | 104.648 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.043 | 3.848 | 2987 | 0 | 592.36 | 13.638 | 54.947 | 108.524 | 100.316 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.016 | 2.017 | 4987 | 0 | 994.219 | 11.343 | 22.39 | 29.32 | 108.914 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.54 | 4.166 | 1733 | 0 | 312.79 | 44.373 | 54.104 | 370.041 | 141.855 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.468 | 4.062 | 1760 | 0 | 321.894 | 34.452 | 67.524 | 342.607 | 137.559 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.224 | 4.075 | 1793 | 0 | 343.247 | 27.269 | 68.495 | 324.125 | 137.559 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.03 | 2.599 | 2840 | 0 | 564.662 | 20.541 | 27.662 | 48.645 | 171.602 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 7.14 | 4.864 | 1570 | 0 | 219.88 | 51.006 | 72.702 | 119.379 | 196.168 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.264 | 140.302 | 0 | 1440 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.02 | 5.03 | 0 | 960 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.017 | 5.016 | 0 | 720 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.01 | 5.011 | 0 | 480 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.01 | 5.01 | 0 | 360 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.007 | 0 | 120 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.004 | 0 | 10 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.006 | 0 | 10 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 196.641 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.005 | 16346 | 0 | 3266.269 | 5.711 | 6.581 | 7.065 | 230.988 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15826 | 0 | 3161.351 | 5.849 | 7.041 | 7.881 | 249.902 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16488 | 0 | 3294.241 | 5.656 | 6.602 | 7.05 | 254.102 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.004 | 16357 | 0 | 3268.512 | 5.731 | 6.569 | 7.071 | 258.5 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 16127 | 0 | 3222.434 | 5.797 | 6.687 | 7.124 | 280.355 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14136 | 0 | 2824.133 | 6.624 | 7.653 | 8.098 | 281.098 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16070 | 0 | 3210.745 | 5.811 | 6.716 | 7.344 | 292.617 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.005 | 16175 | 0 | 3232.106 | 5.784 | 6.699 | 7.182 | 305.617 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 12109 | 0 | 2418.449 | 7.768 | 8.735 | 9.391 | 378.887 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.013 | 7103 | 0 | 1417.128 | 13.385 | 14.639 | 15.288 | 364.871 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12043 | 0 | 2405.298 | 7.803 | 8.757 | 9.22 | 394.672 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12117 | 0 | 2420.254 | 7.77 | 8.665 | 9.333 | 300.512 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.02 | 9516 | 0 | 1900.221 | 9.473 | 12.378 | 22.538 | 415.715 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.021 | 4006 | 0 | 797.742 | 23.648 | 25.634 | 27.105 | 401.492 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.007 | 9590 | 0 | 1915.04 | 9.295 | 12.675 | 21.71 | 360.762 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.008 | 9697 | 0 | 1932.026 | 9.147 | 12.905 | 21.777 | 343.539 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.01 | 7523 | 0 | 1496.198 | 11.862 | 15.738 | 27.302 | 506.082 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.039 | 2.227 | 2275 | 0 | 451.478 | 41.851 | 44.11 | 45.854 | 435.566 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 7827 | 0 | 1562.396 | 11.312 | 15.523 | 27.794 | 391.488 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 7749 | 0 | 1546.594 | 11.448 | 15.431 | 27.08 | 384.141 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.014 | 5033 | 0 | 1000.599 | 17.611 | 33.108 | 35.155 | 511.672 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.075 | 4.027 | 1203 | 0 | 237.061 | 79.265 | 87.52 | 91.933 | 468.648 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.034 | 4843 | 0 | 965.615 | 18.107 | 33.807 | 37.713 | 438.195 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.018 | 4895 | 0 | 975.936 | 18.131 | 34.242 | 37.103 | 424.371 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.031 | 2.029 | 2887 | 0 | 573.896 | 31.038 | 43.741 | 57.776 | 452.523 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 8.038 | 7.803 | 1000 | 0 | 124.405 | 152.07 | 166.956 | 176.143 | 497.902 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.03 | 3041 | 0 | 604.759 | 30.488 | 37.594 | 51.728 | 467.313 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.051 | 2.028 | 3231 | 0 | 639.655 | 28.345 | 37.026 | 54.424 | 437.746 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 79.554 | 50.196 | 1440 | 0 | 18.101 | 2551.792 | 4103.47 | 4206.914 | 468.574 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 65.331 | 71.04 | 960 | 0 | 14.694 | 1731.688 | 3356.989 | 3397.431 | 488.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 31.229 | 42.706 | 720 | 0 | 23.055 | 1272.16 | 1688.977 | 1711.653 | 498.34 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 31.244 | 22.711 | 480 | 0 | 15.363 | 863.245 | 1683.005 | 1709.636 | 508.711 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.682 | 19.868 | 360 | 0 | 15.871 | 852.533 | 1209.729 | 1244.955 | 515.93 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.386 | 14.237 | 245 | 0 | 21.518 | 456.276 | 770.208 | 829.274 | 520.563 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.0 | 8.5 | 120 | 0 | 7.059 | 849.953 | 850.943 | 852.535 | 514.875 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.001 | 3669 | 0 | 733.648 | 1.322 | 1.474 | 1.73 | 537.066 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.001 | 941 | 0 | 188.088 | 5.274 | 5.419 | 5.615 | 538.836 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.005 | 2.007 | 483 | 0 | 96.507 | 10.314 | 10.468 | 10.68 | 538.898 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.004 | 2.027 | 99 | 0 | 19.786 | 50.485 | 50.621 | 50.701 | 538.898 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.034 | 2.015 | 50 | 0 | 9.933 | 100.599 | 100.749 | 100.894 | 538.898 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.016 | 2.009 | 25 | 0 | 4.984 | 200.558 | 200.634 | 200.868 | 538.898 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16665 | 0 | 3329.838 | 5.597 | 6.557 | 7.087 | 230.168 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 16284 | 0 | 3253.86 | 5.737 | 6.656 | 7.138 | 246.906 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.004 | 16876 | 0 | 3372.352 | 5.525 | 6.394 | 7.011 | 256.938 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16698 | 0 | 3336.148 | 5.6 | 6.468 | 6.932 | 259.859 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16367 | 0 | 3270.327 | 5.717 | 6.557 | 7.074 | 278.148 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14460 | 0 | 2888.532 | 6.487 | 7.457 | 7.938 | 279.785 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16406 | 0 | 3278.198 | 5.698 | 6.584 | 7.03 | 290.691 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 16244 | 0 | 3245.578 | 5.757 | 6.662 | 7.119 | 304.914 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 12396 | 0 | 2475.812 | 7.592 | 8.518 | 8.951 | 397.605 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.012 | 7167 | 0 | 1430.303 | 13.294 | 14.554 | 15.121 | 371.082 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12315 | 0 | 2459.727 | 7.644 | 8.514 | 8.998 | 398.566 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12280 | 0 | 2453.03 | 7.665 | 8.57 | 9.057 | 314.223 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.007 | 9909 | 0 | 1978.379 | 9.039 | 11.657 | 23.689 | 434.758 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.02 | 4004 | 0 | 797.312 | 23.744 | 25.52 | 26.478 | 402.102 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.009 | 9668 | 0 | 1930.482 | 9.193 | 12.396 | 24.924 | 356.398 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 9527 | 0 | 1901.814 | 9.318 | 12.424 | 25.694 | 338.723 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.009 | 7418 | 0 | 1480.541 | 11.897 | 15.989 | 29.507 | 516.93 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.039 | 2.254 | 2246 | 0 | 445.691 | 42.405 | 45.337 | 47.289 | 435.938 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.011 | 7569 | 0 | 1510.817 | 11.627 | 15.762 | 30.28 | 384.098 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 7432 | 0 | 1483.456 | 11.848 | 15.563 | 29.537 | 376.332 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.016 | 4857 | 0 | 968.19 | 18.55 | 34.48 | 38.642 | 506.148 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.076 | 4.192 | 1213 | 0 | 238.991 | 78.857 | 85.472 | 92.045 | 469.52 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.016 | 4811 | 0 | 959.021 | 18.587 | 35.938 | 38.097 | 426.039 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.016 | 4996 | 0 | 996.161 | 17.873 | 22.596 | 38.747 | 400.699 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.03 | 3083 | 0 | 612.692 | 30.729 | 33.689 | 35.064 | 456.836 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 8.027 | 7.866 | 1000 | 0 | 124.581 | 151.955 | 162.064 | 171.576 | 488.578 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.03 | 3112 | 0 | 618.97 | 30.521 | 33.337 | 34.876 | 451.355 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.027 | 2.027 | 3316 | 0 | 659.661 | 28.463 | 31.448 | 34.157 | 418.438 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 71.126 | 58.754 | 1440 | 0 | 20.246 | 2973.749 | 3613.396 | 3763.457 | 434.875 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 82.306 | 48.366 | 960 | 0 | 11.664 | 3857.09 | 4250.028 | 4272.182 | 476.691 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 48.296 | 62.549 | 725 | 0 | 15.012 | 1999.185 | 2527.989 | 2549.137 | 491.871 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 28.419 | 42.662 | 480 | 0 | 16.89 | 967.836 | 1588.628 | 1633.994 | 496.621 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 31.176 | 22.802 | 365 | 0 | 11.708 | 1371.817 | 1685.734 | 1692.306 | 499.191 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.101 | 14.202 | 240 | 0 | 14.034 | 463.961 | 871.246 | 891.932 | 506.047 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.344 | 5.689 | 120 | 0 | 10.578 | 461.49 | 778.11 | 797.28 | 506.176 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.001 | 3730 | 0 | 745.943 | 1.298 | 1.438 | 1.638 | 538.922 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.004 | 937 | 0 | 187.291 | 5.295 | 5.437 | 5.661 | 541.176 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.009 | 2.01 | 484 | 0 | 96.631 | 10.298 | 10.451 | 10.669 | 541.176 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.007 | 2.02 | 99 | 0 | 19.774 | 50.5 | 50.623 | 51.067 | 538.863 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.034 | 2.017 | 50 | 0 | 9.932 | 100.625 | 100.754 | 100.81 | 543.023 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.556 | 200.735 | 200.869 | 543.152 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.005 | 15978 | 0 | 3191.295 | 5.837 | 6.886 | 7.562 | 235.367 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15518 | 0 | 3100.536 | 6.013 | 7.042 | 7.579 | 246.535 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 15750 | 0 | 3146.823 | 5.914 | 6.853 | 7.591 | 261.664 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15483 | 0 | 3092.917 | 6.041 | 6.959 | 7.45 | 264.047 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 15785 | 0 | 3153.589 | 5.912 | 6.865 | 7.34 | 291.227 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 13648 | 0 | 2726.612 | 6.869 | 7.957 | 8.532 | 288.625 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15910 | 0 | 3178.934 | 5.874 | 6.753 | 7.266 | 305.055 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15483 | 0 | 3093.413 | 6.041 | 6.999 | 7.527 | 326.773 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11934 | 0 | 2383.301 | 7.894 | 8.824 | 9.251 | 411.434 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.013 | 6774 | 0 | 1351.802 | 14.056 | 15.424 | 16.041 | 396.371 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11866 | 0 | 2370.009 | 7.94 | 8.902 | 9.37 | 411.559 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11567 | 0 | 2310.335 | 8.134 | 9.121 | 9.651 | 341.676 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.027 | 2.008 | 9105 | 0 | 1811.377 | 9.845 | 12.951 | 26.396 | 442.523 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.022 | 3788 | 0 | 754.231 | 25.04 | 27.424 | 29.396 | 429.055 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 9063 | 0 | 1809.121 | 9.764 | 13.637 | 27.348 | 405.941 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.008 | 9277 | 0 | 1850.907 | 9.6 | 13.048 | 26.61 | 355.934 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.011 | 6871 | 0 | 1371.028 | 12.823 | 17.753 | 33.571 | 521.168 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.041 | 2.321 | 2213 | 0 | 439.0 | 42.923 | 45.95 | 48.661 | 462.281 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.031 | 6947 | 0 | 1386.32 | 12.618 | 17.206 | 33.302 | 421.258 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.029 | 2.021 | 7003 | 0 | 1392.57 | 12.441 | 17.269 | 32.984 | 388.652 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.017 | 4568 | 0 | 910.345 | 19.573 | 38.042 | 41.967 | 519.895 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.077 | 4.197 | 1186 | 0 | 233.617 | 80.187 | 89.624 | 97.615 | 508.328 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.017 | 4624 | 0 | 921.834 | 19.235 | 38.268 | 41.599 | 474.633 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.02 | 4716 | 0 | 940.394 | 18.829 | 37.613 | 40.544 | 431.969 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.032 | 2877 | 0 | 571.699 | 32.761 | 35.99 | 39.533 | 467.137 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 8.065 | 7.787 | 1000 | 0 | 123.99 | 152.827 | 164.383 | 173.953 | 521.211 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.03 | 2971 | 0 | 590.657 | 31.964 | 34.786 | 37.104 | 503.453 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.026 | 2.028 | 3181 | 0 | 632.857 | 29.848 | 32.32 | 34.036 | 460.133 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 70.977 | 55.311 | 1440 | 0 | 20.288 | 3313.252 | 3611.028 | 3708.295 | 465.078 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 65.213 | 65.329 | 960 | 0 | 14.721 | 1682.41 | 3371.242 | 3406.004 | 510.566 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 48.213 | 59.58 | 720 | 0 | 14.934 | 1295.917 | 2540.339 | 2561.841 | 525.934 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.575 | 25.566 | 485 | 0 | 18.963 | 1249.514 | 1294.554 | 1316.187 | 526.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 14.269 | 22.696 | 360 | 0 | 25.23 | 688.956 | 851.854 | 865.567 | 526.816 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.351 | 14.186 | 240 | 0 | 21.144 | 458.849 | 779.083 | 819.083 | 524.949 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.49 | 5.676 | 120 | 0 | 14.135 | 423.996 | 426.708 | 427.402 | 522.957 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.0 | 3610 | 0 | 721.885 | 1.342 | 1.48 | 1.718 | 526.871 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.003 | 931 | 0 | 186.178 | 5.32 | 5.472 | 5.73 | 556.926 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.007 | 2.004 | 480 | 0 | 95.87 | 10.381 | 10.532 | 10.746 | 562.773 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.012 | 2.029 | 99 | 0 | 19.752 | 50.558 | 50.722 | 50.828 | 562.773 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.036 | 2.017 | 50 | 0 | 9.929 | 100.649 | 100.765 | 101.319 | 562.773 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.569 | 200.719 | 200.813 | 562.773 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.197 | 4.321 | 1686 | 0 | 272.058 | 41.146 | 42.877 | 44.672 | 36.43 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.189 | 4.289 | 1690 | 0 | 273.063 | 41.004 | 42.708 | 44.625 | 37.313 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.22 | 4.293 | 1683 | 0 | 270.579 | 41.565 | 42.902 | 44.889 | 37.949 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.213 | 4.265 | 1683 | 0 | 270.866 | 41.534 | 43.0 | 44.772 | 38.527 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.153 | 4.286 | 1690 | 0 | 274.681 | 40.983 | 42.356 | 44.683 | 39.016 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.175 | 4.266 | 1691 | 0 | 273.852 | 40.99 | 42.76 | 44.552 | 39.203 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.175 | 4.294 | 1688 | 0 | 273.362 | 41.016 | 42.589 | 45.219 | 39.422 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.218 | 4.284 | 1691 | 0 | 271.95 | 41.016 | 42.622 | 44.652 | 40.664 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.045 | 10850 | 0 | 2166.75 | 5.184 | 6.594 | 48.808 | 40.805 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.008 | 11006 | 0 | 2197.395 | 5.148 | 6.598 | 50.791 | 40.875 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.006 | 11883 | 0 | 2373.942 | 4.972 | 6.251 | 10.09 | 42.633 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.04 | 4.032 | 3831 | 0 | 760.176 | 5.365 | 41.981 | 85.661 | 55.828 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.044 | 2.051 | 6954 | 0 | 1378.629 | 6.289 | 42.988 | 140.936 | 55.828 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.01 | 6404 | 0 | 1278.617 | 6.323 | 43.298 | 70.216 | 55.828 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.009 | 8570 | 0 | 1710.765 | 6.41 | 10.343 | 29.254 | 56.859 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.038 | 3.516 | 2418 | 0 | 479.951 | 41.028 | 44.032 | 127.044 | 82.895 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 2.033 | 5069 | 0 | 1005.368 | 8.79 | 46.125 | 93.56 | 74.961 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.041 | 2.162 | 5427 | 0 | 1076.567 | 9.138 | 39.232 | 77.25 | 74.969 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.151 | 6358 | 0 | 1268.75 | 8.473 | 13.677 | 33.548 | 76.832 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 3.894 | 2205 | 0 | 437.283 | 41.963 | 48.543 | 58.544 | 91.777 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.051 | 3.836 | 3082 | 0 | 610.195 | 13.528 | 54.919 | 115.838 | 88.656 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.051 | 3.651 | 3252 | 0 | 643.87 | 13.226 | 55.995 | 80.547 | 88.656 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.02 | 2.018 | 4531 | 0 | 902.651 | 12.271 | 23.91 | 38.18 | 99.336 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.301 | 4.116 | 1830 | 0 | 345.228 | 44.136 | 56.209 | 325.63 | 129.617 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.075 | 3.948 | 1903 | 0 | 375.005 | 26.692 | 68.253 | 83.808 | 127.84 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.419 | 4.079 | 1874 | 0 | 345.831 | 26.687 | 68.558 | 150.698 | 127.84 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.033 | 2.657 | 2340 | 0 | 464.893 | 26.1 | 30.657 | 50.188 | 165.949 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.929 | 4.604 | 1603 | 0 | 231.362 | 49.859 | 73.905 | 219.185 | 190.676 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.258 | 140.223 | 0 | 1440 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.021 | 5.022 | 0 | 960 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.014 | 0 | 720 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.014 | 5.011 | 0 | 480 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.01 | 0 | 360 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.01 | 5.008 | 0 | 240 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 191.512 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.183 | 4.322 | 1688 | 0 | 273.016 | 41.008 | 42.636 | 47.015 | 36.113 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.181 | 4.285 | 1688 | 0 | 273.103 | 41.019 | 42.842 | 44.618 | 36.859 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.184 | 4.284 | 1690 | 0 | 273.29 | 41.015 | 42.669 | 44.646 | 37.313 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.152 | 4.297 | 1691 | 0 | 274.881 | 40.987 | 42.344 | 44.345 | 37.586 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.173 | 4.257 | 1691 | 0 | 273.946 | 40.993 | 42.577 | 44.537 | 37.77 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.192 | 4.275 | 1686 | 0 | 272.286 | 41.05 | 42.771 | 44.993 | 37.84 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.201 | 4.251 | 1686 | 0 | 271.89 | 41.269 | 42.88 | 45.279 | 37.953 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.205 | 4.25 | 1686 | 0 | 271.71 | 41.178 | 42.907 | 45.241 | 38.457 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.041 | 11053 | 0 | 2207.556 | 4.86 | 6.424 | 49.022 | 38.578 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 2.601 | 7790 | 0 | 1543.446 | 4.879 | 40.979 | 48.501 | 38.828 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.007 | 12240 | 0 | 2444.933 | 4.83 | 6.217 | 10.173 | 40.84 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.04 | 4.076 | 2068 | 0 | 410.322 | 40.958 | 42.349 | 46.777 | 48.887 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.057 | 6504 | 0 | 1298.613 | 5.97 | 43.391 | 70.215 | 48.887 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.043 | 2.47 | 5437 | 0 | 1078.054 | 5.9 | 44.017 | 138.411 | 48.895 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.028 | 8777 | 0 | 1752.499 | 6.213 | 10.044 | 28.615 | 50.172 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 3.509 | 2281 | 0 | 452.381 | 41.419 | 44.119 | 60.502 | 69.215 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.051 | 2.131 | 4812 | 0 | 952.68 | 7.927 | 48.96 | 70.81 | 69.215 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.061 | 2.033 | 4161 | 0 | 822.146 | 7.553 | 48.889 | 116.477 | 69.219 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.119 | 6392 | 0 | 1275.152 | 8.275 | 13.213 | 189.751 | 70.617 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.056 | 3.983 | 2078 | 0 | 410.985 | 42.098 | 48.664 | 71.978 | 80.672 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.048 | 3.799 | 2365 | 0 | 468.508 | 16.334 | 53.994 | 74.905 | 80.672 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.054 | 3.837 | 2944 | 0 | 582.471 | 13.127 | 55.291 | 293.384 | 80.672 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.015 | 2.031 | 4552 | 0 | 907.661 | 12.013 | 23.572 | 39.038 | 90.875 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.671 | 4.24 | 1756 | 0 | 309.622 | 44.752 | 57.514 | 247.222 | 109.711 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.276 | 3.933 | 1802 | 0 | 341.535 | 28.789 | 68.039 | 320.319 | 106.258 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.217 | 3.907 | 1807 | 0 | 346.356 | 25.17 | 70.012 | 272.042 | 106.258 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.036 | 2.626 | 2424 | 0 | 481.334 | 24.99 | 30.301 | 49.537 | 146.313 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.729 | 4.734 | 1613 | 0 | 239.698 | 49.659 | 73.209 | 315.662 | 230.395 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.253 | 140.198 | 0 | 1440 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.023 | 5.024 | 0 | 960 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.017 | 5.018 | 0 | 720 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.013 | 5.011 | 0 | 480 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.01 | 0 | 360 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.008 | 0 | 240 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.008 | 0 | 120 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.005 | 0 | 10 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.004 | 0 | 10 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.006 | 0 | 10 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 231.027 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.158 | 4.314 | 1691 | 0 | 274.624 | 40.985 | 42.197 | 44.738 | 36.32 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.186 | 4.309 | 1691 | 0 | 273.364 | 40.999 | 42.394 | 44.828 | 37.383 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.16 | 4.281 | 1691 | 0 | 274.512 | 40.984 | 42.306 | 45.199 | 38.102 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.207 | 4.357 | 1685 | 0 | 271.478 | 41.417 | 42.82 | 44.844 | 39.047 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.156 | 4.318 | 1691 | 0 | 274.702 | 40.98 | 42.274 | 44.536 | 39.313 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.188 | 4.327 | 1689 | 0 | 272.926 | 41.022 | 42.778 | 44.719 | 39.379 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.211 | 4.265 | 1686 | 0 | 271.454 | 41.224 | 42.93 | 44.5 | 39.457 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.199 | 4.281 | 1689 | 0 | 272.478 | 41.034 | 42.702 | 44.782 | 40.578 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.026 | 2.008 | 11201 | 0 | 2228.786 | 4.939 | 6.356 | 49.384 | 40.66 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.039 | 3.468 | 8035 | 0 | 1594.536 | 5.087 | 40.968 | 47.203 | 40.734 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.007 | 11982 | 0 | 2392.498 | 4.936 | 6.247 | 10.145 | 42.496 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.037 | 2.054 | 3157 | 0 | 626.794 | 5.685 | 42.002 | 48.883 | 55.566 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.022 | 2.047 | 7393 | 0 | 1472.067 | 6.322 | 42.03 | 68.49 | 55.574 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.027 | 2.009 | 6948 | 0 | 1382.024 | 6.366 | 42.634 | 66.435 | 55.574 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.009 | 8722 | 0 | 1741.248 | 6.334 | 9.87 | 31.329 | 55.715 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.05 | 3.495 | 2917 | 0 | 577.68 | 5.703 | 44.585 | 233.214 | 79.574 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.033 | 2.043 | 5568 | 0 | 1106.231 | 8.529 | 47.836 | 104.926 | 74.695 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.014 | 2.017 | 5445 | 0 | 1085.906 | 8.988 | 40.123 | 79.6 | 74.699 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.011 | 6121 | 0 | 1221.325 | 8.84 | 13.97 | 36.25 | 76.285 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.05 | 4.126 | 2218 | 0 | 439.189 | 41.953 | 49.286 | 72.707 | 93.605 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 215.505 | 3.919 | 2998 | 0 | 13.912 | 12.892 | 54.441 | 274.57 | 90.629 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 3.761 | 2885 | 0 | 571.656 | 13.105 | 56.123 | 287.757 | 90.629 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.023 | 2.074 | 4442 | 0 | 884.418 | 12.36 | 24.169 | 40.872 | 99.008 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 4.071 | 1878 | 0 | 372.478 | 43.932 | 57.786 | 153.951 | 132.855 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.171 | 4.016 | 1800 | 0 | 348.1 | 27.637 | 68.345 | 329.822 | 125.641 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.256 | 4.044 | 1831 | 0 | 348.388 | 26.168 | 70.924 | 237.668 | 125.641 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.031 | 2.64 | 2535 | 0 | 503.883 | 23.591 | 29.778 | 51.776 | 153.625 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.693 | 4.627 | 1611 | 0 | 240.709 | 50.397 | 76.815 | 247.61 | 195.754 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.25 | 140.222 | 0 | 1440 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.02 | 5.022 | 0 | 960 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.017 | 5.016 | 0 | 720 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.014 | 5.01 | 0 | 480 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.01 | 5.01 | 0 | 360 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.01 | 0 | 240 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.007 | 0 | 10 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.003 | 5.005 | 0 | 10 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.004 | 0 | 10 | 0.0 |  |  |  | 190.527 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15728 | 0 | 3142.451 | 5.944 | 6.908 | 7.406 | 246.785 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15503 | 0 | 3097.761 | 6.032 | 7.002 | 7.521 | 259.816 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15705 | 0 | 3137.782 | 5.95 | 6.909 | 7.56 | 266.496 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15793 | 0 | 3155.137 | 5.936 | 6.773 | 7.184 | 273.457 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15385 | 0 | 3073.978 | 6.081 | 7.018 | 7.487 | 299.281 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 13901 | 0 | 2776.833 | 6.752 | 7.744 | 8.297 | 295.414 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15520 | 0 | 3100.936 | 6.021 | 6.902 | 7.809 | 310.805 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15366 | 0 | 3070.127 | 6.091 | 7.003 | 7.46 | 324.992 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.006 | 11742 | 0 | 2344.731 | 8.018 | 8.933 | 9.289 | 414.48 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.011 | 6747 | 0 | 1346.274 | 14.17 | 15.426 | 16.085 | 385.324 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11663 | 0 | 2329.406 | 8.092 | 9.015 | 9.442 | 409.371 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11474 | 0 | 2291.563 | 8.216 | 9.15 | 9.624 | 327.641 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 8639 | 0 | 1724.577 | 10.134 | 13.692 | 32.691 | 439.023 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.024 | 2.023 | 3777 | 0 | 751.866 | 25.197 | 27.892 | 29.681 | 441.004 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.032 | 9084 | 0 | 1813.502 | 9.633 | 13.071 | 32.01 | 376.023 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.01 | 9016 | 0 | 1800.322 | 9.711 | 13.056 | 32.357 | 356.938 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.011 | 6869 | 0 | 1370.719 | 12.586 | 17.773 | 37.702 | 528.965 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.039 | 2.37 | 2170 | 0 | 430.682 | 43.778 | 48.437 | 51.499 | 468.941 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.01 | 7044 | 0 | 1405.494 | 12.193 | 17.034 | 37.609 | 422.281 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.011 | 7155 | 0 | 1427.484 | 11.968 | 16.526 | 36.941 | 399.633 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.043 | 2.019 | 4526 | 0 | 897.46 | 19.567 | 43.3 | 46.217 | 527.414 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.077 | 4.219 | 1183 | 0 | 233.034 | 81.246 | 86.511 | 91.643 | 526.426 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.019 | 4630 | 0 | 923.268 | 19.01 | 42.683 | 46.004 | 482.113 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.015 | 4666 | 0 | 929.811 | 18.883 | 42.238 | 45.473 | 456.395 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.042 | 2850 | 0 | 566.34 | 32.57 | 38.815 | 59.23 | 454.059 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 8.125 | 8.059 | 1000 | 0 | 123.08 | 153.676 | 167.664 | 176.883 | 556.531 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.03 | 2.029 | 2891 | 0 | 574.799 | 32.391 | 37.48 | 41.332 | 530.781 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.029 | 2.03 | 3116 | 0 | 619.663 | 30.555 | 32.429 | 33.684 | 493.297 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 60.683 | 62.598 | 1440 | 0 | 23.73 | 2870.434 | 3072.389 | 3103.77 | 528.77 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 37.384 | 67.966 | 960 | 0 | 25.68 | 1720.961 | 2076.83 | 2141.176 | 556.375 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 51.215 | 40.023 | 720 | 0 | 14.058 | 1320.611 | 2597.484 | 2623.32 | 576.625 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 23.015 | 20.084 | 480 | 0 | 20.856 | 896.936 | 1268.983 | 1285.45 | 577.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 20.192 | 17.074 | 365 | 0 | 18.076 | 871.73 | 1266.566 | 1305.204 | 577.582 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.457 | 11.604 | 240 | 0 | 20.949 | 446.818 | 825.866 | 848.585 | 577.656 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.564 | 5.915 | 125 | 0 | 14.596 | 294.496 | 434.488 | 436.004 | 577.66 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.001 | 1940 | 0 | 387.861 | 2.528 | 2.715 | 2.99 | 594.777 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.008 | 2.002 | 575 | 0 | 114.823 | 8.664 | 8.808 | 8.97 | 614.309 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.002 | 407 | 0 | 81.359 | 12.235 | 12.444 | 12.588 | 614.309 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.027 | 99 | 0 | 19.791 | 50.465 | 50.619 | 50.746 | 614.309 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.032 | 2.013 | 50 | 0 | 9.937 | 100.541 | 100.777 | 101.007 | 614.375 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.536 | 200.701 | 201.125 | 614.375 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15995 | 0 | 3195.44 | 5.841 | 6.779 | 7.394 | 243.316 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15669 | 0 | 3130.48 | 5.972 | 6.898 | 7.423 | 259.699 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 15870 | 0 | 3170.69 | 5.895 | 6.784 | 7.291 | 270.5 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15735 | 0 | 3143.842 | 5.955 | 6.819 | 7.266 | 276.141 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15396 | 0 | 3076.108 | 6.043 | 7.14 | 7.984 | 302.449 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 13714 | 0 | 2739.684 | 6.849 | 7.87 | 8.446 | 300.906 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15505 | 0 | 3098.081 | 6.019 | 6.917 | 7.912 | 312.77 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15359 | 0 | 3068.862 | 6.081 | 7.039 | 7.763 | 326.27 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 11703 | 0 | 2337.709 | 8.056 | 8.921 | 9.335 | 418.973 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.012 | 6755 | 0 | 1347.44 | 14.109 | 15.517 | 16.124 | 397.586 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11468 | 0 | 2290.524 | 8.208 | 9.143 | 9.654 | 432.418 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11733 | 0 | 2343.587 | 7.96 | 8.84 | 9.391 | 336.164 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 8680 | 0 | 1733.107 | 10.106 | 13.568 | 33.696 | 456.309 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.023 | 2.023 | 3833 | 0 | 763.131 | 24.915 | 27.12 | 29.382 | 440.16 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.009 | 8863 | 0 | 1769.513 | 9.811 | 13.489 | 33.93 | 379.695 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.009 | 8941 | 0 | 1785.21 | 9.696 | 13.231 | 33.925 | 372.391 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.01 | 7060 | 0 | 1409.011 | 12.161 | 16.481 | 38.626 | 534.695 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.042 | 2.322 | 2198 | 0 | 435.917 | 43.244 | 46.993 | 49.479 | 464.816 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.014 | 2.009 | 7167 | 0 | 1429.282 | 11.886 | 16.215 | 38.183 | 413.352 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.01 | 7214 | 0 | 1439.433 | 11.851 | 15.778 | 37.466 | 394.676 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.017 | 2.018 | 4561 | 0 | 909.063 | 19.262 | 44.101 | 46.312 | 521.383 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.078 | 4.163 | 1197 | 0 | 235.733 | 79.811 | 89.696 | 95.785 | 493.008 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.045 | 2.017 | 4556 | 0 | 903.122 | 19.208 | 44.212 | 46.662 | 455.203 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.017 | 4706 | 0 | 938.269 | 18.824 | 42.708 | 45.792 | 425.383 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.031 | 2.029 | 2898 | 0 | 576.048 | 32.389 | 36.324 | 41.813 | 503.309 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 7.938 | 8.016 | 1000 | 0 | 125.98 | 149.807 | 161.422 | 172.049 | 529.434 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.031 | 2931 | 0 | 582.529 | 32.247 | 35.262 | 39.547 | 505.324 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.026 | 2.028 | 3168 | 0 | 630.282 | 30.106 | 31.932 | 33.666 | 442.602 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 79.829 | 56.167 | 1440 | 0 | 18.038 | 2734.743 | 4181.63 | 4262.13 | 475.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 43.277 | 57.276 | 960 | 0 | 22.183 | 1916.509 | 2189.178 | 2212.428 | 528.867 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 34.483 | 28.427 | 720 | 0 | 20.88 | 1657.031 | 1754.596 | 1772.753 | 535.68 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 20.127 | 22.858 | 480 | 0 | 23.849 | 862.874 | 1209.297 | 1269.731 | 530.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 28.572 | 17.074 | 365 | 0 | 12.775 | 1319.276 | 1602.79 | 1740.092 | 532.273 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.522 | 14.375 | 240 | 0 | 20.83 | 432.687 | 839.346 | 854.609 | 521.773 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.341 | 8.56 | 130 | 0 | 11.463 | 427.842 | 838.277 | 844.436 | 521.773 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.002 | 1915 | 0 | 382.978 | 2.549 | 2.77 | 3.013 | 535.406 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.006 | 2.009 | 565 | 0 | 112.864 | 8.819 | 8.963 | 9.205 | 543.098 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.003 | 405 | 0 | 80.951 | 12.331 | 12.487 | 12.623 | 543.16 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.019 | 99 | 0 | 19.789 | 50.467 | 50.579 | 50.669 | 543.16 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.029 | 2.011 | 50 | 0 | 9.942 | 100.509 | 100.694 | 100.944 | 543.16 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.018 | 2.008 | 25 | 0 | 4.983 | 200.598 | 200.77 | 200.809 | 543.223 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.004 | 15529 | 0 | 3102.622 | 6.021 | 6.974 | 7.556 | 250.504 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15136 | 0 | 3024.162 | 6.175 | 7.157 | 7.623 | 272.699 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15442 | 0 | 3084.889 | 6.022 | 7.009 | 8.262 | 285.238 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15531 | 0 | 3103.272 | 6.024 | 6.954 | 7.475 | 288.887 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15300 | 0 | 3057.13 | 6.108 | 7.046 | 7.613 | 315.836 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 13677 | 0 | 2732.486 | 6.854 | 7.921 | 8.521 | 315.805 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15374 | 0 | 3071.878 | 6.085 | 6.977 | 7.456 | 331.406 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15299 | 0 | 3056.6 | 6.119 | 7.013 | 7.511 | 347.383 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11660 | 0 | 2329.14 | 8.064 | 8.999 | 9.507 | 437.164 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.013 | 6719 | 0 | 1340.361 | 14.167 | 15.92 | 17.245 | 413.813 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11663 | 0 | 2329.569 | 8.095 | 8.964 | 9.434 | 440.527 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11624 | 0 | 2321.758 | 8.113 | 8.994 | 9.54 | 341.816 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.008 | 8805 | 0 | 1755.612 | 9.912 | 13.221 | 35.258 | 455.375 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.024 | 2.024 | 3750 | 0 | 746.395 | 25.458 | 28.12 | 30.233 | 459.688 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.008 | 8883 | 0 | 1773.128 | 9.766 | 13.413 | 35.153 | 420.93 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.01 | 8990 | 0 | 1795.029 | 9.639 | 12.736 | 35.085 | 380.336 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.04 | 2.01 | 6711 | 0 | 1331.554 | 12.853 | 16.871 | 39.932 | 553.172 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.043 | 2.364 | 2177 | 0 | 431.689 | 43.719 | 48.014 | 51.234 | 484.262 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.01 | 6945 | 0 | 1380.273 | 12.297 | 16.598 | 40.061 | 434.074 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.01 | 6947 | 0 | 1386.148 | 12.213 | 16.182 | 39.797 | 412.23 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.044 | 2.017 | 4491 | 0 | 890.403 | 19.607 | 46.401 | 48.93 | 536.906 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.076 | 4.146 | 1201 | 0 | 236.593 | 79.65 | 86.066 | 90.704 | 531.68 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.019 | 4613 | 0 | 918.983 | 19.072 | 45.173 | 48.321 | 492.258 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.017 | 4641 | 0 | 925.172 | 18.987 | 45.099 | 48.051 | 451.648 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.029 | 2858 | 0 | 567.919 | 33.452 | 35.002 | 35.786 | 480.0 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 8.096 | 7.915 | 1000 | 0 | 123.52 | 153.137 | 167.611 | 173.517 | 553.871 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.031 | 2889 | 0 | 574.149 | 32.76 | 35.336 | 40.237 | 509.809 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.027 | 3066 | 0 | 609.795 | 30.928 | 32.957 | 35.357 | 448.852 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 71.328 | 53.78 | 1440 | 0 | 20.188 | 2980.111 | 3696.229 | 3799.427 | 481.871 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 54.226 | 51.119 | 960 | 0 | 17.704 | 1841.954 | 2872.283 | 2961.939 | 534.996 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 31.524 | 48.891 | 720 | 0 | 22.84 | 1319.943 | 1701.806 | 1721.028 | 553.613 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 23.073 | 34.106 | 480 | 0 | 20.804 | 891.345 | 1291.338 | 1305.785 | 553.809 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.17 | 17.069 | 360 | 0 | 20.967 | 769.696 | 873.789 | 883.64 | 555.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.478 | 14.35 | 240 | 0 | 20.909 | 434.58 | 778.103 | 822.419 | 555.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.507 | 11.316 | 120 | 0 | 14.106 | 424.859 | 426.96 | 427.34 | 557.934 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.002 | 1919 | 0 | 383.686 | 2.552 | 2.776 | 2.975 | 561.32 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.004 | 2.005 | 566 | 0 | 113.105 | 8.796 | 8.937 | 9.181 | 560.809 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.011 | 404 | 0 | 80.785 | 12.342 | 12.468 | 12.686 | 560.809 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.004 | 2.025 | 99 | 0 | 19.782 | 50.485 | 50.651 | 50.884 | 560.871 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.029 | 2.012 | 50 | 0 | 9.943 | 100.496 | 100.663 | 100.862 | 560.871 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.564 | 200.717 | 200.847 | 560.934 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

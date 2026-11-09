# Puma vs Raptor Simulation

Run ID: `20261109-032202`

## Environment

- Ruby: `ruby 4.0.9 (2026-10-23 revision 3e93b23afc) +PRISM [x86_64-linux]`
- Git SHA: `78b569a`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.138 | 16.124 | 1000 | 0 | 61.965 | 40.99 | 41.975 | 42.472 | 28.535 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.112 | 1000 | 0 | 61.962 | 40.996 | 41.958 | 42.549 | 28.551 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.15 | 16.118 | 1000 | 0 | 61.918 | 40.997 | 42.01 | 42.674 | 28.563 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.16 | 1000 | 0 | 61.976 | 40.991 | 41.995 | 42.737 | 28.609 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.117 | 1000 | 0 | 62.018 | 40.992 | 41.962 | 42.42 | 28.609 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.153 | 1000 | 0 | 62.002 | 40.991 | 41.96 | 42.312 | 28.609 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.113 | 1000 | 0 | 61.997 | 40.991 | 41.962 | 42.589 | 28.609 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.134 | 1000 | 0 | 61.973 | 40.992 | 41.982 | 42.593 | 28.887 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.96 | 14.399 | 1000 | 0 | 66.847 | 40.984 | 41.982 | 42.978 | 28.98 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.108 | 14.265 | 1000 | 0 | 66.189 | 40.991 | 41.991 | 42.959 | 28.996 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11914 | 0 | 2382.067 | 1.173 | 1.979 | 9.916 | 29.273 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.213 | 14.173 | 1000 | 0 | 70.357 | 41.003 | 42.072 | 43.032 | 33.34 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.628 | 14.267 | 1000 | 0 | 68.361 | 41.963 | 42.977 | 43.723 | 33.34 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.88 | 14.379 | 1000 | 0 | 67.206 | 41.967 | 42.955 | 43.642 | 33.34 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9227 | 0 | 1844.572 | 1.509 | 2.494 | 41.611 | 33.668 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.95 | 14.487 | 1000 | 0 | 66.89 | 41.971 | 42.998 | 43.987 | 38.574 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.008 | 15.849 | 1000 | 0 | 66.633 | 42.619 | 43.879 | 44.604 | 38.574 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.239 | 14.968 | 1000 | 0 | 65.621 | 42.856 | 43.872 | 45.258 | 38.574 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6609 | 0 | 1321.047 | 2.032 | 3.956 | 13.626 | 38.754 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.93 | 15.402 | 1000 | 0 | 66.98 | 42.979 | 44.309 | 45.627 | 44.836 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.551 | 15.835 | 1000 | 0 | 68.725 | 43.942 | 45.561 | 46.743 | 44.836 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.147 | 16.124 | 1000 | 0 | 66.018 | 43.98 | 45.809 | 47.147 | 44.836 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.016 | 4381 | 0 | 875.523 | 3.084 | 6.104 | 14.678 | 46.891 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.513 | 16.417 | 1000 | 0 | 64.463 | 44.971 | 46.99 | 48.59 | 55.746 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.492 | 16.124 | 1000 | 0 | 60.634 | 47.03 | 49.752 | 53.846 | 50.973 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.78 | 16.828 | 1000 | 0 | 59.593 | 46.945 | 48.987 | 53.013 | 50.973 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.072 | 2702 | 0 | 539.939 | 5.358 | 7.796 | 14.022 | 57.824 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.062 | 18.234 | 1000 | 0 | 55.365 | 48.98 | 52.201 | 53.963 | 67.727 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.019 | 28.779 | 363 | 0 | 12.509 | 241.882 | 242.827 | 19613.1 | 67.938 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.424 | 19.184 | 243 | 0 | 12.51 | 241.829 | 242.951 | 12807.867 | 67.965 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.629 | 14.386 | 183 | 0 | 12.509 | 241.789 | 242.864 | 10022.577 | 67.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.586 | 123 | 0 | 12.505 | 241.895 | 242.906 | 5238.377 | 67.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.589 | 103 | 0 | 10.473 | 241.849 | 242.596 | 5134.482 | 67.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.797 | 63 | 0 | 12.498 | 241.905 | 242.577 | 242.942 | 67.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.797 | 42 | 0 | 8.342 | 241.617 | 242.377 | 242.576 | 67.984 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.018 | 122 | 0 | 24.358 | 41.976 | 42.158 | 42.973 | 68.004 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.004 | 110 | 0 | 21.801 | 46.97 | 47.198 | 47.957 | 68.02 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 2.021 | 99 | 0 | 19.68 | 50.99 | 51.95 | 52.06 | 68.031 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.067 | 55 | 0 | 10.989 | 91.941 | 92.045 | 92.896 | 68.031 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.058 | 2.084 | 36 | 0 | 7.118 | 141.905 | 141.986 | 142.009 | 68.035 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.376 | 21 | 0 | 4.167 | 241.935 | 242.265 | 242.879 | 68.035 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.108 | 1000 | 0 | 62.019 | 40.986 | 41.941 | 42.238 | 29.418 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.125 | 1000 | 0 | 61.997 | 40.987 | 41.979 | 42.326 | 29.418 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.108 | 1000 | 0 | 62.033 | 40.989 | 41.96 | 42.292 | 29.738 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.123 | 1000 | 0 | 61.979 | 40.993 | 41.981 | 42.428 | 29.738 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.115 | 1000 | 0 | 62.062 | 40.985 | 41.943 | 42.255 | 29.785 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.124 | 1000 | 0 | 62.007 | 40.989 | 41.967 | 42.583 | 29.785 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.126 | 1000 | 0 | 61.999 | 40.992 | 41.968 | 42.433 | 29.785 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.14 | 16.143 | 1000 | 0 | 61.958 | 40.994 | 41.977 | 42.465 | 31.113 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.626 | 14.156 | 1000 | 0 | 68.373 | 40.983 | 41.99 | 42.885 | 31.242 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.419 | 13.614 | 1000 | 0 | 69.351 | 41.004 | 42.027 | 43.166 | 31.27 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11986 | 0 | 2396.293 | 1.162 | 1.95 | 8.689 | 31.465 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.55 | 14.503 | 1000 | 0 | 68.729 | 41.046 | 42.106 | 43.13 | 38.629 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.824 | 14.405 | 1000 | 0 | 67.456 | 41.96 | 42.959 | 43.374 | 38.379 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.094 | 14.19 | 1000 | 0 | 66.251 | 41.955 | 42.944 | 43.222 | 38.379 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9623 | 0 | 1923.807 | 1.467 | 2.323 | 41.905 | 38.379 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.241 | 14.841 | 1000 | 0 | 65.612 | 41.965 | 42.971 | 44.114 | 49.895 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.478 | 15.771 | 1000 | 0 | 69.071 | 42.586 | 43.727 | 45.531 | 45.191 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.215 | 14.517 | 1000 | 0 | 70.346 | 42.317 | 43.457 | 44.211 | 45.191 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6907 | 0 | 1380.62 | 1.959 | 3.486 | 12.731 | 45.328 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.092 | 15.64 | 1000 | 0 | 66.259 | 42.969 | 44.037 | 45.286 | 62.379 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.87 | 15.623 | 1000 | 0 | 67.249 | 43.937 | 45.419 | 47.026 | 62.379 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.953 | 16.102 | 1000 | 0 | 62.683 | 43.914 | 45.099 | 48.066 | 62.379 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 4375 | 0 | 874.301 | 3.131 | 5.861 | 18.174 | 62.379 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.49 | 16.207 | 1000 | 0 | 60.644 | 44.591 | 46.643 | 49.733 | 67.309 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.442 | 16.82 | 1000 | 0 | 60.819 | 46.915 | 48.933 | 50.749 | 61.938 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.765 | 17.215 | 1000 | 0 | 59.647 | 46.959 | 49.458 | 51.292 | 61.938 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.076 | 2782 | 0 | 555.667 | 5.212 | 7.325 | 18.823 | 65.945 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.777 | 18.111 | 1000 | 0 | 56.254 | 48.673 | 51.326 | 53.903 | 75.297 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.026 | 28.782 | 363 | 0 | 12.506 | 241.951 | 244.056 | 19627.183 | 75.555 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.427 | 19.185 | 243 | 0 | 12.508 | 241.936 | 242.957 | 12810.814 | 75.594 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.627 | 14.393 | 183 | 0 | 12.511 | 241.751 | 242.906 | 10029.265 | 75.613 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.59 | 123 | 0 | 12.508 | 241.811 | 242.933 | 5229.789 | 75.625 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.594 | 103 | 0 | 10.474 | 241.9 | 242.677 | 5137.983 | 75.633 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.798 | 63 | 0 | 12.498 | 241.796 | 242.959 | 243.038 | 75.633 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.79 | 42 | 0 | 8.337 | 241.808 | 242.547 | 242.657 | 75.633 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.368 | 41.971 | 42.176 | 42.95 | 75.676 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.007 | 109 | 0 | 21.793 | 46.971 | 47.121 | 47.901 | 75.676 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.05 | 2.012 | 99 | 0 | 19.604 | 51.027 | 52.025 | 52.105 | 75.684 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.072 | 55 | 0 | 10.978 | 91.935 | 92.911 | 92.959 | 75.684 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.062 | 2.086 | 36 | 0 | 7.112 | 141.933 | 142.027 | 142.128 | 75.688 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.376 | 21 | 0 | 4.171 | 241.901 | 242.138 | 242.468 | 75.688 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.121 | 1000 | 0 | 62.027 | 40.992 | 41.963 | 42.498 | 28.094 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.14 | 1000 | 0 | 62.039 | 40.985 | 41.94 | 42.18 | 28.102 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.12 | 1000 | 0 | 62.032 | 40.985 | 41.962 | 42.241 | 28.105 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.17 | 1000 | 0 | 62.005 | 40.991 | 41.963 | 42.283 | 28.141 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.13 | 1000 | 0 | 62.071 | 40.984 | 41.968 | 42.599 | 28.141 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.134 | 1000 | 0 | 62.011 | 40.984 | 41.968 | 42.455 | 28.18 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.098 | 1000 | 0 | 62.073 | 40.985 | 41.952 | 42.087 | 28.199 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.11 | 1000 | 0 | 62.035 | 40.987 | 41.959 | 42.401 | 28.516 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.225 | 14.871 | 1000 | 0 | 65.681 | 40.985 | 41.991 | 42.781 | 28.516 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.554 | 14.465 | 1000 | 0 | 68.71 | 40.995 | 42.018 | 42.962 | 28.617 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11814 | 0 | 2362.056 | 1.197 | 1.99 | 6.768 | 29.129 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.379 | 14.594 | 1000 | 0 | 69.547 | 41.023 | 42.102 | 43.139 | 32.902 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.708 | 14.252 | 1000 | 0 | 67.989 | 41.954 | 42.923 | 44.024 | 32.902 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.009 | 14.631 | 1000 | 0 | 71.383 | 41.951 | 42.959 | 43.879 | 32.902 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 8619 | 0 | 1722.716 | 1.586 | 2.73 | 22.644 | 32.902 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.101 | 14.369 | 1000 | 0 | 66.22 | 41.972 | 42.988 | 43.919 | 40.699 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.524 | 14.906 | 1000 | 0 | 68.851 | 42.709 | 43.909 | 44.63 | 40.699 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.053 | 15.189 | 1000 | 0 | 66.434 | 42.834 | 43.821 | 45.163 | 40.699 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 7034 | 0 | 1405.733 | 1.924 | 3.396 | 14.95 | 41.613 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.734 | 15.895 | 1000 | 0 | 67.871 | 42.975 | 44.364 | 46.979 | 43.969 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.894 | 15.525 | 1000 | 0 | 62.917 | 43.974 | 45.452 | 46.939 | 43.969 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.528 | 15.766 | 1000 | 0 | 64.4 | 43.956 | 45.28 | 46.785 | 43.969 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 4389 | 0 | 876.968 | 3.099 | 5.431 | 17.268 | 47.172 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.235 | 16.516 | 1000 | 0 | 61.597 | 44.951 | 46.933 | 48.296 | 51.371 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.198 | 16.641 | 1000 | 0 | 61.736 | 46.879 | 49.033 | 50.87 | 51.371 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.555 | 16.784 | 1000 | 0 | 60.405 | 46.945 | 49.275 | 51.062 | 51.371 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.115 | 2626 | 0 | 524.383 | 5.6 | 7.714 | 14.967 | 57.383 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.404 | 17.864 | 1000 | 0 | 57.458 | 48.773 | 52.331 | 54.907 | 81.23 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.023 | 28.779 | 363 | 0 | 12.507 | 241.927 | 244.067 | 19624.204 | 81.492 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.432 | 19.197 | 243 | 0 | 12.505 | 241.874 | 243.632 | 12811.741 | 81.527 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.633 | 14.392 | 183 | 0 | 12.506 | 241.921 | 242.857 | 10020.447 | 81.555 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.599 | 123 | 0 | 12.509 | 241.736 | 242.587 | 5234.432 | 81.559 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.837 | 9.595 | 103 | 0 | 10.47 | 241.974 | 242.625 | 5139.152 | 81.563 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 4.797 | 63 | 0 | 12.495 | 241.88 | 242.984 | 244.063 | 81.578 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.796 | 42 | 0 | 8.339 | 241.76 | 242.234 | 242.336 | 81.578 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.367 | 41.953 | 42.074 | 42.963 | 81.602 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 2.027 | 110 | 0 | 21.805 | 46.956 | 47.05 | 47.853 | 81.605 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.034 | 98 | 0 | 19.458 | 51.932 | 52.04 | 52.783 | 81.625 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.074 | 55 | 0 | 10.979 | 91.926 | 92.048 | 92.075 | 81.625 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.084 | 36 | 0 | 7.105 | 141.946 | 142.034 | 142.042 | 81.625 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.376 | 21 | 0 | 4.169 | 241.925 | 242.033 | 242.238 | 81.629 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15555 | 0 | 3110.364 | 1.53 | 2.144 | 2.66 | 64.664 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15195 | 0 | 3037.899 | 1.57 | 2.192 | 2.754 | 64.688 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15606 | 0 | 3120.359 | 1.524 | 2.151 | 2.614 | 65.047 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15295 | 0 | 3057.785 | 1.563 | 2.212 | 2.759 | 64.633 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15437 | 0 | 3086.831 | 1.54 | 2.166 | 2.769 | 66.711 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13362 | 0 | 2671.596 | 1.78 | 2.51 | 3.222 | 66.82 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15370 | 0 | 3073.275 | 1.545 | 2.226 | 2.69 | 67.137 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15065 | 0 | 3012.196 | 1.579 | 2.278 | 2.821 | 67.77 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12101 | 0 | 2419.366 | 1.994 | 2.665 | 3.207 | 78.992 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6024 | 0 | 1204.061 | 4.077 | 5.086 | 5.754 | 72.648 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12107 | 0 | 2420.786 | 2.009 | 2.554 | 3.029 | 78.977 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12334 | 0 | 2466.14 | 1.91 | 2.512 | 3.079 | 69.438 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8919 | 0 | 1783.242 | 2.459 | 4.39 | 8.166 | 107.398 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3333 | 0 | 665.624 | 7.473 | 9.056 | 9.771 | 78.98 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8960 | 0 | 1791.291 | 2.517 | 4.161 | 6.974 | 75.016 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8755 | 0 | 1750.094 | 2.576 | 4.212 | 7.534 | 74.953 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 6643 | 0 | 1327.177 | 3.294 | 6.35 | 15.533 | 124.387 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.566 | 1937 | 0 | 386.663 | 12.961 | 15.516 | 16.482 | 83.078 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 6713 | 0 | 1341.984 | 3.285 | 5.825 | 15.748 | 76.422 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6546 | 0 | 1308.284 | 3.399 | 5.879 | 15.969 | 76.422 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4182 | 0 | 835.699 | 5.467 | 9.584 | 20.459 | 147.191 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.735 | 1021 | 0 | 203.412 | 24.603 | 29.457 | 30.514 | 83.496 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 4133 | 0 | 825.171 | 5.454 | 8.77 | 21.273 | 81.43 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4145 | 0 | 828.225 | 5.395 | 8.745 | 22.787 | 81.43 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.108 | 2514 | 0 | 501.913 | 9.537 | 16.469 | 19.525 | 125.18 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.298 | 8.736 | 1000 | 0 | 107.55 | 45.813 | 55.0 | 58.275 | 89.859 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2574 | 0 | 513.969 | 9.587 | 11.274 | 12.138 | 85.406 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2645 | 0 | 528.24 | 9.326 | 11.044 | 12.111 | 85.473 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.019 | 51.062 | 360 | 0 | 7.056 | 2550.137 | 2565.169 | 2586.307 | 101.18 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.018 | 34.029 | 240 | 0 | 7.055 | 1699.766 | 1724.443 | 1758.238 | 107.43 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.498 | 25.503 | 180 | 0 | 7.059 | 1274.545 | 1300.118 | 1306.825 | 107.875 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.012 | 17.011 | 120 | 0 | 7.054 | 850.61 | 876.592 | 884.368 | 107.941 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.24 | 14.24 | 100 | 0 | 7.023 | 793.396 | 853.856 | 855.69 | 108.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.514 | 8.502 | 60 | 0 | 7.047 | 425.165 | 432.887 | 436.768 | 108.008 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.663 | 5.664 | 40 | 0 | 7.063 | 282.96 | 289.193 | 292.795 | 108.012 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3549 | 0 | 709.718 | 1.371 | 1.533 | 1.885 | 114.965 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.004 | 911 | 0 | 182.062 | 5.432 | 5.663 | 6.085 | 119.965 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.007 | 472 | 0 | 94.388 | 10.54 | 10.682 | 11.475 | 120.34 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.03 | 99 | 0 | 19.677 | 50.744 | 50.927 | 51.337 | 119.406 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.04 | 2.017 | 50 | 0 | 9.92 | 100.731 | 100.809 | 101.22 | 119.406 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.021 | 2.008 | 25 | 0 | 4.979 | 200.737 | 200.915 | 200.936 | 119.406 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15510 | 0 | 3101.34 | 1.538 | 2.124 | 2.58 | 64.828 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15145 | 0 | 3028.124 | 1.575 | 2.195 | 2.763 | 69.75 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15574 | 0 | 3114.166 | 1.526 | 2.171 | 2.647 | 69.488 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15252 | 0 | 3049.541 | 1.563 | 2.202 | 2.761 | 69.688 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15363 | 0 | 3071.872 | 1.545 | 2.201 | 2.743 | 71.738 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13382 | 0 | 2675.606 | 1.784 | 2.496 | 3.162 | 71.816 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15188 | 0 | 3036.528 | 1.561 | 2.255 | 2.779 | 72.09 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14951 | 0 | 2989.495 | 1.589 | 2.32 | 2.972 | 73.324 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12005 | 0 | 2400.334 | 2.018 | 2.6 | 3.074 | 93.77 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6053 | 0 | 1209.927 | 4.057 | 5.007 | 5.822 | 82.684 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12108 | 0 | 2420.896 | 2.007 | 2.546 | 2.943 | 94.684 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.036 | 2.001 | 12347 | 0 | 2451.648 | 1.68 | 2.38 | 3.778 | 73.559 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9198 | 0 | 1838.95 | 2.426 | 4.271 | 7.208 | 113.012 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3327 | 0 | 664.459 | 7.475 | 9.041 | 9.807 | 87.117 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8627 | 0 | 1724.85 | 2.577 | 4.297 | 8.046 | 78.559 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8796 | 0 | 1758.574 | 2.546 | 4.245 | 7.116 | 78.496 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6668 | 0 | 1332.861 | 3.3 | 5.926 | 9.822 | 155.156 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.544 | 1922 | 0 | 383.695 | 12.988 | 15.612 | 16.962 | 91.266 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6776 | 0 | 1354.144 | 3.232 | 5.896 | 16.403 | 85.387 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6672 | 0 | 1333.677 | 3.312 | 5.87 | 17.036 | 85.387 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4222 | 0 | 843.826 | 5.411 | 8.228 | 21.487 | 143.223 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.428 | 1041 | 0 | 207.466 | 24.223 | 28.464 | 29.678 | 125.816 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4367 | 0 | 872.596 | 5.207 | 7.95 | 21.042 | 127.023 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4465 | 0 | 892.084 | 5.09 | 7.734 | 20.563 | 127.273 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2510 | 0 | 501.178 | 9.863 | 11.668 | 12.797 | 129.324 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.128 | 8.55 | 1000 | 0 | 109.556 | 45.815 | 53.725 | 56.439 | 129.516 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2680 | 0 | 535.218 | 9.181 | 11.041 | 12.019 | 129.895 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2794 | 0 | 557.943 | 8.758 | 10.591 | 11.562 | 130.023 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.998 | 51.009 | 360 | 0 | 7.059 | 2567.717 | 2651.818 | 2672.238 | 152.645 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.061 | 34.001 | 240 | 0 | 7.046 | 1720.967 | 1768.874 | 1781.159 | 152.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.524 | 25.518 | 180 | 0 | 7.052 | 1286.826 | 1339.584 | 1346.639 | 152.969 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.017 | 17.001 | 120 | 0 | 7.052 | 864.052 | 891.534 | 899.167 | 153.035 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.183 | 14.238 | 100 | 0 | 7.051 | 744.052 | 826.139 | 840.058 | 153.352 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.514 | 8.502 | 60 | 0 | 7.047 | 427.169 | 443.176 | 451.639 | 154.039 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.673 | 5.675 | 40 | 0 | 7.051 | 284.799 | 294.837 | 298.536 | 154.039 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3564 | 0 | 712.64 | 1.369 | 1.512 | 1.8 | 155.289 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.005 | 931 | 0 | 186.105 | 5.317 | 5.502 | 5.756 | 155.293 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.007 | 476 | 0 | 95.196 | 10.459 | 10.622 | 10.743 | 155.293 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.025 | 2.032 | 99 | 0 | 19.703 | 50.698 | 50.796 | 50.876 | 155.293 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.041 | 2.016 | 50 | 0 | 9.918 | 100.713 | 101.083 | 101.397 | 155.293 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.009 | 25 | 0 | 4.981 | 200.68 | 200.773 | 200.781 | 155.293 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15635 | 0 | 3126.26 | 1.527 | 2.115 | 2.606 | 64.73 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15140 | 0 | 3027.142 | 1.575 | 2.185 | 2.755 | 65.129 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15529 | 0 | 3105.018 | 1.535 | 2.153 | 2.639 | 64.742 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15202 | 0 | 3039.317 | 1.567 | 2.231 | 2.854 | 64.906 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15352 | 0 | 3069.631 | 1.549 | 2.191 | 2.745 | 66.844 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13348 | 0 | 2668.351 | 1.796 | 2.463 | 3.043 | 66.879 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15102 | 0 | 3019.693 | 1.569 | 2.263 | 2.829 | 67.035 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14946 | 0 | 2988.591 | 1.591 | 2.318 | 2.926 | 67.902 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12114 | 0 | 2421.914 | 1.986 | 2.69 | 3.269 | 78.703 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5977 | 0 | 1194.598 | 4.126 | 5.033 | 5.736 | 73.617 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11990 | 0 | 2397.252 | 2.026 | 2.581 | 3.004 | 79.336 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.028 | 2.001 | 12243 | 0 | 2434.875 | 1.544 | 2.349 | 41.043 | 67.336 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.002 | 8732 | 0 | 1744.04 | 2.523 | 4.405 | 8.191 | 96.375 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3211 | 0 | 641.453 | 7.712 | 9.458 | 10.104 | 76.438 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8704 | 0 | 1740.218 | 2.554 | 4.361 | 7.034 | 71.102 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8531 | 0 | 1705.437 | 2.608 | 4.432 | 7.579 | 70.918 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 6343 | 0 | 1267.711 | 3.441 | 6.248 | 19.095 | 127.715 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.615 | 1833 | 0 | 365.782 | 13.609 | 16.444 | 17.55 | 81.758 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.004 | 6540 | 0 | 1305.174 | 3.304 | 5.979 | 19.833 | 77.848 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 6476 | 0 | 1293.949 | 3.367 | 5.964 | 19.3 | 77.848 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 3890 | 0 | 776.869 | 5.838 | 9.259 | 24.087 | 117.895 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.022 | 4.801 | 1038 | 0 | 206.696 | 24.018 | 28.76 | 31.636 | 84.301 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 3977 | 0 | 794.425 | 5.607 | 10.186 | 24.058 | 79.652 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4167 | 0 | 832.622 | 5.366 | 8.946 | 23.311 | 79.715 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.014 | 2362 | 0 | 471.15 | 10.025 | 17.875 | 20.356 | 121.199 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.027 | 8.693 | 1000 | 0 | 110.777 | 44.239 | 53.024 | 55.041 | 85.578 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.006 | 2458 | 0 | 490.742 | 9.943 | 12.103 | 14.345 | 81.371 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2631 | 0 | 525.209 | 9.238 | 11.684 | 13.341 | 81.438 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.013 | 51.084 | 360 | 0 | 7.057 | 2549.594 | 2576.805 | 2579.144 | 102.621 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.01 | 34.028 | 240 | 0 | 7.057 | 1700.247 | 1724.767 | 1729.644 | 104.512 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.519 | 25.52 | 180 | 0 | 7.054 | 1275.335 | 1303.833 | 1306.702 | 104.703 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.013 | 17.022 | 120 | 0 | 7.053 | 850.085 | 876.197 | 878.98 | 110.398 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.386 | 14.175 | 100 | 0 | 6.951 | 798.757 | 853.855 | 858.716 | 110.402 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.514 | 8.515 | 60 | 0 | 7.047 | 425.66 | 436.117 | 440.714 | 110.402 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.671 | 5.67 | 40 | 0 | 7.054 | 283.373 | 286.306 | 288.973 | 110.402 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3578 | 0 | 715.526 | 1.358 | 1.52 | 1.855 | 117.176 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.004 | 932 | 0 | 186.274 | 5.308 | 5.562 | 5.875 | 118.25 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.009 | 477 | 0 | 95.376 | 10.423 | 10.641 | 10.821 | 119.77 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.02 | 2.03 | 99 | 0 | 19.723 | 50.639 | 50.778 | 51.211 | 119.77 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.04 | 2.016 | 50 | 0 | 9.921 | 100.737 | 100.807 | 100.826 | 119.77 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.009 | 25 | 0 | 4.981 | 200.68 | 200.801 | 200.829 | 119.77 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.177 | 1000 | 0 | 61.978 | 40.991 | 41.988 | 42.41 | 29.395 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.126 | 1000 | 0 | 62.024 | 40.989 | 41.965 | 42.406 | 29.621 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.121 | 1000 | 0 | 62.014 | 40.988 | 41.952 | 42.307 | 29.738 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.137 | 1000 | 0 | 61.979 | 40.989 | 41.986 | 42.573 | 29.859 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.119 | 1000 | 0 | 62.011 | 40.99 | 41.969 | 42.376 | 29.898 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.099 | 1000 | 0 | 62.008 | 40.996 | 41.967 | 42.468 | 29.93 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.099 | 1000 | 0 | 62.034 | 40.987 | 41.959 | 42.303 | 29.992 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.142 | 1000 | 0 | 61.972 | 40.992 | 41.979 | 42.657 | 30.551 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.933 | 15.449 | 1000 | 0 | 66.967 | 40.984 | 41.991 | 43.021 | 30.555 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.667 | 14.482 | 1000 | 0 | 73.168 | 40.993 | 42.019 | 43.002 | 30.566 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11747 | 0 | 2348.665 | 1.215 | 1.981 | 7.151 | 31.027 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.19 | 14.332 | 1000 | 0 | 65.835 | 41.006 | 42.016 | 43.0 | 33.641 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.84 | 13.333 | 1000 | 0 | 72.253 | 41.925 | 42.977 | 43.818 | 33.641 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.355 | 13.583 | 1000 | 0 | 69.661 | 41.937 | 42.914 | 44.009 | 33.641 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 8814 | 0 | 1761.887 | 1.503 | 2.627 | 41.933 | 34.336 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.308 | 13.944 | 1000 | 0 | 69.891 | 41.965 | 42.976 | 43.892 | 38.734 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.622 | 15.008 | 1000 | 0 | 68.391 | 42.0 | 43.216 | 44.16 | 38.648 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.486 | 14.522 | 1000 | 0 | 69.033 | 42.041 | 43.436 | 44.398 | 38.648 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.003 | 6895 | 0 | 1377.581 | 1.94 | 3.445 | 19.804 | 39.16 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.812 | 15.218 | 1000 | 0 | 63.243 | 42.945 | 43.967 | 44.474 | 45.598 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.529 | 15.439 | 1000 | 0 | 68.83 | 43.57 | 44.994 | 49.448 | 45.492 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.997 | 14.51 | 1000 | 0 | 66.682 | 43.77 | 45.146 | 50.58 | 45.492 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 4178 | 0 | 834.667 | 3.104 | 6.416 | 23.143 | 48.074 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.593 | 16.071 | 1000 | 0 | 64.13 | 44.664 | 46.631 | 49.173 | 53.488 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.094 | 16.51 | 1000 | 0 | 62.136 | 45.975 | 48.108 | 51.908 | 53.488 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.076 | 16.082 | 1000 | 0 | 62.204 | 46.048 | 48.599 | 59.794 | 53.488 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.011 | 2.095 | 2545 | 0 | 507.895 | 5.74 | 8.277 | 15.918 | 59.5 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.777 | 17.577 | 1000 | 0 | 59.607 | 47.946 | 51.925 | 62.388 | 64.203 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.013 | 28.767 | 363 | 0 | 12.511 | 241.802 | 242.935 | 19617.292 | 63.457 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.429 | 19.184 | 243 | 0 | 12.507 | 241.908 | 242.931 | 12809.854 | 63.484 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.389 | 183 | 0 | 12.514 | 241.724 | 242.825 | 10022.747 | 63.508 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.597 | 123 | 0 | 12.506 | 241.838 | 242.777 | 5236.461 | 63.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.587 | 103 | 0 | 10.473 | 241.838 | 242.805 | 5136.672 | 63.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 4.799 | 63 | 0 | 12.493 | 241.963 | 242.492 | 242.582 | 63.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.799 | 42 | 0 | 8.339 | 241.723 | 242.2 | 242.395 | 63.512 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.018 | 122 | 0 | 24.363 | 41.951 | 42.102 | 42.93 | 63.523 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.0 | 114 | 0 | 22.725 | 44.963 | 45.735 | 45.941 | 63.551 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.039 | 97 | 0 | 19.378 | 51.96 | 52.916 | 52.998 | 63.582 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.088 | 2.063 | 56 | 0 | 11.007 | 91.849 | 92.027 | 92.907 | 63.582 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.075 | 2.09 | 36 | 0 | 7.094 | 141.947 | 142.95 | 143.024 | 63.59 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.375 | 21 | 0 | 4.17 | 241.845 | 242.051 | 242.778 | 63.59 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.132 | 1000 | 0 | 61.97 | 40.994 | 41.957 | 42.354 | 29.391 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.185 | 1000 | 0 | 61.988 | 40.99 | 41.974 | 42.572 | 29.785 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.134 | 1000 | 0 | 61.999 | 40.988 | 41.961 | 42.421 | 29.867 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.146 | 1000 | 0 | 61.993 | 40.987 | 41.967 | 42.181 | 30.031 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.154 | 1000 | 0 | 61.996 | 40.99 | 41.979 | 42.526 | 30.07 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.137 | 1000 | 0 | 61.972 | 40.995 | 41.983 | 42.491 | 30.07 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.136 | 1000 | 0 | 62.001 | 40.989 | 41.975 | 42.174 | 30.082 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.152 | 16.17 | 1000 | 0 | 61.913 | 40.994 | 42.002 | 42.621 | 30.359 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.463 | 13.067 | 1000 | 0 | 69.14 | 40.989 | 41.988 | 43.098 | 30.496 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.2 | 12.57 | 1000 | 0 | 65.79 | 40.993 | 41.999 | 42.911 | 30.543 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 11379 | 0 | 2275.076 | 1.241 | 2.073 | 5.671 | 31.09 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.336 | 13.94 | 1000 | 0 | 74.983 | 41.027 | 42.575 | 43.471 | 35.145 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.391 | 14.719 | 1000 | 0 | 74.678 | 41.905 | 42.933 | 43.544 | 35.145 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.783 | 14.238 | 1000 | 0 | 72.555 | 41.927 | 42.953 | 43.941 | 35.145 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.008 | 8750 | 0 | 1749.244 | 1.526 | 2.678 | 25.358 | 35.25 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.159 | 14.262 | 1000 | 0 | 70.625 | 41.96 | 42.973 | 43.975 | 43.484 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.604 | 14.663 | 1000 | 0 | 68.475 | 42.054 | 43.511 | 44.392 | 43.484 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.524 | 15.11 | 1000 | 0 | 68.852 | 42.08 | 43.355 | 45.777 | 43.484 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.015 | 6510 | 0 | 1301.06 | 2.005 | 3.767 | 19.743 | 43.484 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.649 | 14.637 | 1000 | 0 | 63.901 | 42.957 | 44.128 | 45.362 | 46.957 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.224 | 14.529 | 1000 | 0 | 70.304 | 43.754 | 45.083 | 49.849 | 46.957 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.887 | 15.169 | 1000 | 0 | 67.171 | 43.905 | 45.214 | 51.165 | 46.957 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 4180 | 0 | 835.073 | 3.179 | 5.669 | 23.58 | 48.988 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.511 | 16.254 | 1000 | 0 | 64.469 | 44.872 | 46.696 | 62.659 | 54.332 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.962 | 16.449 | 1000 | 0 | 62.65 | 45.958 | 48.245 | 50.365 | 54.332 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.522 | 16.662 | 1000 | 0 | 64.427 | 46.048 | 48.953 | 52.004 | 54.332 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.076 | 2711 | 0 | 541.607 | 5.416 | 7.674 | 13.167 | 60.344 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.153 | 17.779 | 1000 | 0 | 58.3 | 47.992 | 51.506 | 54.055 | 68.313 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.019 | 28.77 | 363 | 0 | 12.509 | 241.813 | 243.392 | 19623.508 | 68.695 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.418 | 19.182 | 243 | 0 | 12.514 | 241.721 | 242.977 | 12809.201 | 68.703 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.631 | 14.386 | 183 | 0 | 12.508 | 241.853 | 242.88 | 10030.506 | 68.711 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.584 | 123 | 0 | 12.509 | 241.71 | 242.585 | 5233.054 | 68.711 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.594 | 103 | 0 | 10.479 | 241.67 | 242.627 | 5135.779 | 68.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.796 | 63 | 0 | 12.506 | 241.77 | 242.363 | 242.599 | 68.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.796 | 42 | 0 | 8.332 | 241.944 | 242.231 | 242.688 | 68.715 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.02 | 122 | 0 | 24.362 | 41.962 | 42.136 | 42.924 | 68.758 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.033 | 114 | 0 | 22.728 | 44.958 | 45.293 | 45.946 | 68.762 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.039 | 97 | 0 | 19.369 | 51.951 | 52.906 | 52.956 | 68.777 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.083 | 2.075 | 56 | 0 | 11.018 | 91.092 | 92.045 | 92.49 | 68.781 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.088 | 36 | 0 | 7.097 | 141.957 | 142.089 | 142.647 | 68.781 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.028 | 2.376 | 21 | 0 | 4.176 | 241.01 | 242.021 | 242.024 | 68.785 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.152 | 16.17 | 1000 | 0 | 61.913 | 41.001 | 42.017 | 42.541 | 29.578 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.152 | 1000 | 0 | 62.022 | 40.987 | 41.956 | 42.558 | 29.699 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.112 | 1000 | 0 | 61.991 | 40.99 | 41.979 | 42.375 | 29.883 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.144 | 16.124 | 1000 | 0 | 61.941 | 40.994 | 41.99 | 42.33 | 30.016 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.124 | 1000 | 0 | 62.025 | 40.99 | 41.971 | 42.369 | 30.055 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.12 | 1000 | 0 | 61.993 | 40.991 | 41.971 | 42.33 | 30.066 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.136 | 1000 | 0 | 61.972 | 40.996 | 41.977 | 42.508 | 30.258 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.171 | 16.151 | 1000 | 0 | 61.841 | 41.006 | 42.073 | 42.772 | 30.777 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.384 | 10.719 | 1000 | 0 | 69.524 | 41.001 | 42.038 | 42.922 | 30.777 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.434 | 11.672 | 1000 | 0 | 69.279 | 40.991 | 42.02 | 43.006 | 30.777 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11601 | 0 | 2319.466 | 1.219 | 2.045 | 9.261 | 31.109 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.275 | 13.304 | 1000 | 0 | 75.328 | 41.118 | 42.54 | 43.339 | 34.035 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.295 | 13.819 | 1000 | 0 | 75.216 | 41.914 | 42.888 | 43.49 | 34.035 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.71 | 14.034 | 1000 | 0 | 72.942 | 41.932 | 42.975 | 43.967 | 34.035 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 8317 | 0 | 1662.333 | 1.598 | 2.779 | 41.825 | 34.266 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.345 | 14.018 | 1000 | 0 | 69.709 | 41.966 | 43.005 | 44.692 | 40.5 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.25 | 13.68 | 1000 | 0 | 70.173 | 42.031 | 43.435 | 44.515 | 40.402 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.485 | 15.167 | 1000 | 0 | 74.157 | 42.027 | 43.354 | 45.169 | 40.402 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 6491 | 0 | 1297.194 | 1.994 | 3.798 | 22.943 | 41.172 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.347 | 14.876 | 1000 | 0 | 69.703 | 42.938 | 44.184 | 45.136 | 45.645 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.492 | 15.535 | 1000 | 0 | 69.004 | 43.535 | 44.983 | 48.026 | 44.551 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.395 | 15.011 | 1000 | 0 | 69.468 | 43.916 | 45.235 | 46.692 | 44.551 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4105 | 0 | 820.28 | 3.132 | 6.348 | 24.933 | 47.723 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.594 | 16.364 | 1000 | 0 | 64.129 | 44.899 | 46.805 | 50.849 | 52.824 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.261 | 16.196 | 1000 | 0 | 61.496 | 45.966 | 48.133 | 50.133 | 52.824 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.285 | 16.277 | 1000 | 0 | 65.422 | 46.247 | 48.947 | 51.785 | 52.824 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.011 | 2.13 | 2575 | 0 | 513.897 | 5.696 | 8.17 | 15.05 | 58.836 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.524 | 17.665 | 1000 | 0 | 57.063 | 48.792 | 51.854 | 72.264 | 64.434 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.019 | 28.783 | 363 | 0 | 12.509 | 241.883 | 243.202 | 19616.656 | 64.762 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.43 | 19.189 | 243 | 0 | 12.507 | 241.899 | 242.839 | 12814.685 | 64.762 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.389 | 183 | 0 | 12.51 | 241.745 | 243.417 | 10027.349 | 64.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.839 | 9.597 | 123 | 0 | 12.502 | 241.933 | 242.946 | 5235.273 | 64.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.592 | 103 | 0 | 10.47 | 241.917 | 242.85 | 5137.28 | 64.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.799 | 63 | 0 | 12.498 | 241.8 | 242.611 | 242.966 | 64.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.797 | 42 | 0 | 8.334 | 241.964 | 242.263 | 242.668 | 64.766 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.019 | 122 | 0 | 24.358 | 41.957 | 42.093 | 42.99 | 64.766 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.042 | 114 | 0 | 22.693 | 44.971 | 45.909 | 45.981 | 64.773 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.039 | 97 | 0 | 19.39 | 51.951 | 52.903 | 52.947 | 64.797 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.088 | 2.068 | 56 | 0 | 11.006 | 91.893 | 92.032 | 92.112 | 64.801 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.075 | 2.09 | 36 | 0 | 7.094 | 141.948 | 142.607 | 142.919 | 64.801 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 2.377 | 21 | 0 | 4.173 | 241.068 | 242.024 | 242.245 | 64.801 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15746 | 0 | 3147.901 | 1.522 | 2.031 | 2.495 | 68.836 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15245 | 0 | 3048.123 | 1.568 | 2.119 | 2.593 | 69.145 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15579 | 0 | 3114.843 | 1.535 | 2.091 | 2.564 | 69.273 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15540 | 0 | 3107.203 | 1.536 | 2.106 | 2.657 | 69.398 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15465 | 0 | 3092.244 | 1.545 | 2.124 | 2.602 | 70.805 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13504 | 0 | 2700.092 | 1.775 | 2.41 | 2.946 | 71.117 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15376 | 0 | 3074.436 | 1.553 | 2.106 | 2.641 | 79.617 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15311 | 0 | 3061.63 | 1.562 | 2.119 | 2.586 | 82.016 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12182 | 0 | 2435.501 | 1.997 | 2.487 | 2.848 | 102.324 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6111 | 0 | 1221.217 | 4.022 | 4.926 | 5.546 | 93.016 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12365 | 0 | 2472.361 | 1.968 | 2.483 | 2.845 | 103.516 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12216 | 0 | 2442.454 | 1.967 | 2.511 | 2.974 | 86.578 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8761 | 0 | 1751.284 | 2.522 | 4.118 | 7.343 | 112.539 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3463 | 0 | 691.87 | 7.177 | 8.61 | 9.349 | 92.145 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 8585 | 0 | 1715.61 | 2.567 | 4.195 | 8.084 | 90.738 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 8353 | 0 | 1669.156 | 2.608 | 4.466 | 9.05 | 91.051 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6519 | 0 | 1303.249 | 3.293 | 5.936 | 22.842 | 135.609 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.432 | 2006 | 0 | 400.44 | 12.421 | 14.866 | 15.812 | 104.789 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 6586 | 0 | 1315.894 | 3.227 | 6.093 | 22.433 | 99.773 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6306 | 0 | 1260.385 | 3.382 | 6.194 | 24.168 | 99.926 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 3907 | 0 | 780.778 | 5.657 | 9.636 | 28.458 | 153.102 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.632 | 1046 | 0 | 208.401 | 23.963 | 27.753 | 28.688 | 114.012 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4073 | 0 | 814.017 | 5.336 | 9.474 | 28.064 | 114.395 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4111 | 0 | 821.234 | 5.254 | 9.37 | 28.484 | 114.395 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.03 | 2427 | 0 | 484.623 | 10.111 | 12.574 | 13.978 | 116.133 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.121 | 8.822 | 1000 | 0 | 109.632 | 45.263 | 53.236 | 55.868 | 118.773 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.008 | 2468 | 0 | 492.574 | 9.942 | 12.635 | 14.246 | 116.477 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.014 | 2530 | 0 | 505.102 | 9.663 | 12.31 | 13.515 | 116.477 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.164 | 51.153 | 360 | 0 | 7.036 | 2555.704 | 2622.842 | 2656.585 | 145.094 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.096 | 34.083 | 240 | 0 | 7.039 | 1705.732 | 1746.812 | 1762.706 | 145.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.566 | 25.574 | 180 | 0 | 7.041 | 1278.609 | 1323.886 | 1342.988 | 144.031 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.042 | 17.048 | 120 | 0 | 7.041 | 853.072 | 894.071 | 905.578 | 144.094 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.202 | 14.207 | 100 | 0 | 7.041 | 716.597 | 860.56 | 879.695 | 144.219 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.527 | 8.533 | 60 | 0 | 7.037 | 427.142 | 453.292 | 457.958 | 144.285 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.686 | 5.677 | 40 | 0 | 7.035 | 284.411 | 289.903 | 291.836 | 144.285 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 2104 | 0 | 420.737 | 2.312 | 2.712 | 2.956 | 144.598 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.007 | 584 | 0 | 116.724 | 8.621 | 9.398 | 9.806 | 144.598 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.007 | 384 | 0 | 76.691 | 13.09 | 13.567 | 13.767 | 144.598 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.026 | 99 | 0 | 19.762 | 50.54 | 50.715 | 50.843 | 144.723 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.014 | 50 | 0 | 9.937 | 100.559 | 100.638 | 101.171 | 144.727 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.592 | 200.658 | 200.857 | 144.727 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15865 | 0 | 3172.295 | 1.51 | 2.013 | 2.424 | 68.426 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15504 | 0 | 3100.123 | 1.544 | 2.081 | 2.584 | 68.82 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15909 | 0 | 3180.959 | 1.503 | 2.03 | 2.457 | 68.977 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15800 | 0 | 3159.069 | 1.512 | 2.058 | 2.612 | 69.285 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15593 | 0 | 3117.615 | 1.53 | 2.099 | 2.616 | 70.703 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13519 | 0 | 2702.815 | 1.772 | 2.387 | 2.93 | 70.934 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15610 | 0 | 3121.174 | 1.527 | 2.077 | 2.59 | 71.348 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15068 | 0 | 3012.934 | 1.576 | 2.202 | 2.888 | 72.438 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12062 | 0 | 2411.785 | 2.004 | 2.574 | 2.993 | 80.594 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6309 | 0 | 1260.956 | 3.91 | 4.745 | 5.31 | 76.387 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12325 | 0 | 2464.299 | 1.974 | 2.485 | 2.775 | 80.543 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12154 | 0 | 2429.727 | 1.959 | 2.571 | 3.153 | 71.48 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8705 | 0 | 1740.281 | 2.525 | 4.025 | 8.1 | 105.871 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3498 | 0 | 698.804 | 7.117 | 8.591 | 9.136 | 82.641 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8664 | 0 | 1731.762 | 2.549 | 4.094 | 6.533 | 76.234 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8682 | 0 | 1735.866 | 2.559 | 4.016 | 6.567 | 75.797 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.026 | 6340 | 0 | 1267.195 | 3.416 | 5.684 | 24.281 | 125.504 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.495 | 1977 | 0 | 394.707 | 12.675 | 14.956 | 16.019 | 84.504 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.025 | 2.002 | 6515 | 0 | 1296.591 | 3.288 | 5.605 | 25.899 | 85.102 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6472 | 0 | 1293.72 | 3.348 | 5.468 | 25.157 | 85.188 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.008 | 4096 | 0 | 818.536 | 5.418 | 8.479 | 28.59 | 126.895 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.507 | 1060 | 0 | 211.185 | 23.406 | 27.564 | 29.149 | 86.824 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 3949 | 0 | 789.154 | 5.596 | 8.908 | 30.258 | 88.129 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 3987 | 0 | 796.765 | 5.469 | 9.605 | 29.717 | 88.129 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.081 | 2281 | 0 | 455.546 | 10.8 | 12.937 | 14.098 | 118.055 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.03 | 8.847 | 1000 | 0 | 110.746 | 44.746 | 52.686 | 55.438 | 89.68 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.008 | 2511 | 0 | 501.157 | 9.741 | 12.197 | 13.521 | 89.727 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2639 | 0 | 527.05 | 9.268 | 11.659 | 13.254 | 89.727 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.191 | 51.176 | 360 | 0 | 7.033 | 2555.308 | 2640.335 | 2663.982 | 107.391 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.131 | 34.132 | 240 | 0 | 7.032 | 1708.481 | 1765.981 | 1784.113 | 110.578 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.594 | 25.598 | 180 | 0 | 7.033 | 1273.89 | 1335.896 | 1356.426 | 110.953 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.064 | 17.06 | 120 | 0 | 7.032 | 854.841 | 902.062 | 917.671 | 111.152 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.221 | 14.228 | 100 | 0 | 7.032 | 792.651 | 855.201 | 864.587 | 111.152 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.537 | 8.532 | 60 | 0 | 7.028 | 426.667 | 457.15 | 463.44 | 111.152 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.688 | 5.684 | 40 | 0 | 7.032 | 284.515 | 288.875 | 289.333 | 111.156 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 2110 | 0 | 421.864 | 2.31 | 2.669 | 2.978 | 111.156 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.003 | 563 | 0 | 112.423 | 8.956 | 9.668 | 10.258 | 111.156 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.008 | 384 | 0 | 76.65 | 13.157 | 13.718 | 13.975 | 111.156 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.028 | 99 | 0 | 19.763 | 50.548 | 50.626 | 50.636 | 111.156 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.034 | 2.015 | 50 | 0 | 9.933 | 100.592 | 100.761 | 101.189 | 111.156 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.555 | 200.661 | 200.919 | 111.156 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15809 | 0 | 3161.182 | 1.514 | 2.007 | 2.454 | 68.484 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15602 | 0 | 3119.631 | 1.532 | 2.052 | 2.485 | 74.738 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15898 | 0 | 3178.668 | 1.503 | 2.009 | 2.465 | 74.207 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15712 | 0 | 3141.61 | 1.519 | 2.079 | 2.633 | 74.301 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15537 | 0 | 3106.224 | 1.535 | 2.095 | 2.626 | 76.652 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13560 | 0 | 2711.434 | 1.77 | 2.355 | 2.889 | 77.055 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15501 | 0 | 3099.426 | 1.542 | 2.074 | 2.647 | 77.215 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15478 | 0 | 3094.701 | 1.547 | 2.094 | 2.623 | 78.473 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12442 | 0 | 2487.613 | 1.951 | 2.487 | 2.836 | 98.828 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6153 | 0 | 1229.772 | 3.998 | 4.883 | 5.353 | 87.531 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12271 | 0 | 2453.325 | 1.978 | 2.519 | 2.877 | 98.289 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12184 | 0 | 2435.896 | 1.987 | 2.503 | 2.872 | 81.832 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8489 | 0 | 1697.213 | 2.588 | 4.157 | 8.262 | 116.109 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3380 | 0 | 675.265 | 7.36 | 8.802 | 9.472 | 93.039 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.002 | 8455 | 0 | 1688.167 | 2.59 | 4.189 | 8.015 | 86.746 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8652 | 0 | 1729.831 | 2.548 | 4.069 | 6.233 | 86.309 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.003 | 6324 | 0 | 1263.031 | 3.298 | 5.95 | 25.807 | 147.473 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.533 | 1927 | 0 | 384.676 | 12.977 | 15.464 | 16.471 | 97.047 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6464 | 0 | 1292.228 | 3.3 | 5.568 | 26.315 | 92.09 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6184 | 0 | 1236.116 | 3.469 | 5.845 | 25.567 | 92.156 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 3868 | 0 | 772.931 | 5.734 | 9.069 | 29.796 | 152.23 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 4.851 | 1044 | 0 | 208.079 | 23.976 | 28.363 | 30.15 | 99.559 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.006 | 3949 | 0 | 788.184 | 5.587 | 9.048 | 30.493 | 96.676 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.035 | 2.007 | 4019 | 0 | 798.228 | 5.393 | 9.108 | 33.133 | 96.676 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.016 | 2301 | 0 | 459.495 | 10.72 | 13.123 | 14.511 | 120.59 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.208 | 8.849 | 1000 | 0 | 108.6 | 45.854 | 52.956 | 55.49 | 100.277 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2481 | 0 | 495.342 | 10.006 | 11.527 | 12.401 | 97.668 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2514 | 0 | 502.08 | 9.866 | 11.473 | 12.287 | 97.668 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.198 | 51.191 | 360 | 0 | 7.031 | 2560.329 | 2620.835 | 2638.167 | 117.93 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.136 | 34.117 | 240 | 0 | 7.031 | 1704.918 | 1752.266 | 1763.616 | 120.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.596 | 25.605 | 180 | 0 | 7.032 | 1276.829 | 1327.934 | 1343.9 | 120.684 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.057 | 17.059 | 120 | 0 | 7.035 | 851.42 | 892.283 | 909.804 | 120.746 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.274 | 14.216 | 100 | 0 | 7.006 | 745.479 | 845.32 | 870.676 | 120.746 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.53 | 8.524 | 60 | 0 | 7.034 | 426.106 | 456.069 | 458.551 | 120.746 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.694 | 5.692 | 40 | 0 | 7.025 | 284.631 | 287.52 | 289.776 | 120.746 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 2046 | 0 | 409.015 | 2.443 | 2.743 | 3.04 | 120.996 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.008 | 568 | 0 | 113.483 | 8.875 | 9.654 | 10.074 | 120.996 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.003 | 388 | 0 | 77.54 | 13.004 | 13.547 | 13.924 | 120.996 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.028 | 99 | 0 | 19.735 | 50.597 | 50.778 | 50.984 | 121.0 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.034 | 2.015 | 50 | 0 | 9.932 | 100.621 | 100.708 | 100.753 | 121.0 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.007 | 25 | 0 | 4.982 | 200.627 | 200.685 | 201.322 | 121.027 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

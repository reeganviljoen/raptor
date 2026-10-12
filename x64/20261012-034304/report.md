# Puma vs Raptor Simulation

Run ID: `20261012-034304`

## Environment

- Ruby: `ruby 4.0.7 (2026-09-15 revision 229531a6cf) +PRISM [x86_64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.094 | 1000 | 0 | 62.009 | 40.994 | 41.974 | 42.48 | 28.707 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.091 | 1000 | 0 | 62.007 | 40.991 | 41.99 | 42.687 | 28.73 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.086 | 1000 | 0 | 62.053 | 40.988 | 41.977 | 42.462 | 28.734 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.086 | 1000 | 0 | 62.014 | 40.989 | 41.979 | 42.243 | 28.789 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.089 | 1000 | 0 | 62.053 | 40.984 | 41.978 | 42.433 | 28.789 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.09 | 1000 | 0 | 62.044 | 40.988 | 41.978 | 42.349 | 28.789 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.086 | 1000 | 0 | 62.079 | 40.984 | 41.967 | 42.197 | 28.789 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.087 | 1000 | 0 | 61.974 | 40.994 | 41.992 | 42.458 | 29.133 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.444 | 15.462 | 1000 | 0 | 64.748 | 40.976 | 41.975 | 42.118 | 29.133 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.402 | 15.306 | 1000 | 0 | 64.928 | 40.979 | 41.965 | 42.124 | 29.246 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16672 | 0 | 3333.637 | 0.834 | 1.429 | 6.277 | 29.613 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.436 | 15.085 | 1000 | 0 | 64.782 | 40.983 | 41.981 | 42.568 | 35.512 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.214 | 13.705 | 1000 | 0 | 70.353 | 41.626 | 42.237 | 42.995 | 35.512 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.016 | 13.872 | 1000 | 0 | 71.345 | 41.819 | 42.615 | 43.481 | 35.512 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13082 | 0 | 2615.579 | 1.063 | 1.733 | 33.719 | 35.57 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.541 | 15.456 | 1000 | 0 | 68.772 | 41.947 | 42.689 | 43.266 | 39.281 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.71 | 15.749 | 1000 | 0 | 63.652 | 41.974 | 42.929 | 43.325 | 39.281 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.896 | 15.358 | 1000 | 0 | 62.908 | 41.977 | 42.958 | 43.068 | 39.281 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 8928 | 0 | 1784.624 | 1.497 | 2.831 | 9.537 | 39.695 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.655 | 15.311 | 1000 | 0 | 63.879 | 42.025 | 43.272 | 44.976 | 44.836 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.747 | 16.418 | 1000 | 0 | 63.503 | 42.98 | 44.06 | 46.66 | 44.836 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.177 | 15.944 | 1000 | 0 | 61.818 | 42.984 | 44.096 | 45.042 | 44.836 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6001 | 0 | 1199.538 | 2.22 | 4.401 | 12.181 | 46.98 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.194 | 16.35 | 1000 | 0 | 61.752 | 43.975 | 45.101 | 46.44 | 51.973 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.416 | 16.977 | 1000 | 0 | 60.915 | 45.549 | 47.246 | 49.043 | 51.973 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.595 | 16.895 | 1000 | 0 | 60.261 | 45.94 | 47.573 | 52.561 | 51.973 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.009 | 3668 | 0 | 732.651 | 3.973 | 5.31 | 14.796 | 60.539 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.656 | 18.061 | 1000 | 0 | 56.638 | 46.98 | 49.37 | 56.769 | 83.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.013 | 28.773 | 363 | 0 | 12.512 | 241.92 | 243.001 | 19615.345 | 83.594 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.418 | 19.183 | 243 | 0 | 12.514 | 241.789 | 243.258 | 12805.855 | 83.625 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.62 | 14.388 | 183 | 0 | 12.517 | 241.699 | 242.55 | 10022.352 | 83.633 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.593 | 123 | 0 | 12.515 | 241.811 | 242.507 | 5233.33 | 83.637 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.593 | 103 | 0 | 10.482 | 241.775 | 242.286 | 5135.976 | 83.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.795 | 63 | 0 | 12.515 | 241.688 | 242.189 | 242.406 | 83.656 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.791 | 42 | 0 | 8.338 | 241.907 | 242.179 | 242.503 | 83.656 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.017 | 122 | 0 | 24.357 | 41.973 | 42.934 | 42.971 | 83.691 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.027 | 109 | 0 | 21.791 | 46.967 | 47.057 | 47.965 | 83.766 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.051 | 99 | 0 | 19.733 | 50.97 | 51.929 | 51.984 | 83.789 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.069 | 55 | 0 | 10.976 | 91.956 | 92.026 | 92.095 | 83.789 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.087 | 36 | 0 | 7.106 | 141.95 | 142.089 | 142.336 | 83.789 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.377 | 21 | 0 | 4.167 | 241.946 | 242.188 | 242.202 | 83.797 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.091 | 1000 | 0 | 62.007 | 40.994 | 41.986 | 42.348 | 28.184 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.086 | 1000 | 0 | 62.034 | 40.989 | 41.986 | 42.441 | 28.207 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.085 | 1000 | 0 | 62.048 | 40.989 | 41.968 | 42.124 | 28.207 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.088 | 1000 | 0 | 62.022 | 40.985 | 41.963 | 42.273 | 28.258 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.092 | 1000 | 0 | 62.064 | 40.984 | 41.958 | 42.281 | 28.258 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.098 | 1000 | 0 | 62.011 | 40.984 | 41.965 | 42.473 | 28.258 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.091 | 1000 | 0 | 62.021 | 40.986 | 41.978 | 42.346 | 28.266 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.112 | 1000 | 0 | 61.995 | 40.99 | 41.984 | 42.573 | 28.813 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.284 | 14.13 | 1000 | 0 | 65.427 | 40.975 | 41.977 | 42.123 | 28.813 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.339 | 14.006 | 1000 | 0 | 69.738 | 40.977 | 41.975 | 42.222 | 28.813 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16180 | 0 | 3235.162 | 0.867 | 1.49 | 5.581 | 29.23 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.728 | 12.184 | 1000 | 0 | 72.846 | 41.003 | 42.004 | 43.09 | 33.066 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.011 | 12.123 | 1000 | 0 | 71.371 | 41.895 | 42.89 | 43.495 | 33.066 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.017 | 14.223 | 1000 | 0 | 71.341 | 41.874 | 42.788 | 43.265 | 33.066 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.038 | 2.002 | 12135 | 0 | 2408.492 | 1.13 | 1.898 | 41.29 | 33.391 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.977 | 14.328 | 1000 | 0 | 66.77 | 41.942 | 42.925 | 43.183 | 38.141 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.239 | 14.825 | 1000 | 0 | 65.619 | 41.98 | 42.996 | 43.721 | 38.141 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.012 | 13.449 | 1000 | 0 | 66.612 | 41.972 | 42.998 | 43.93 | 38.141 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.108 | 2.003 | 8935 | 0 | 1749.14 | 1.494 | 2.628 | 12.196 | 39.355 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.506 | 14.847 | 1000 | 0 | 64.49 | 42.404 | 43.391 | 44.225 | 43.852 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.129 | 16.07 | 1000 | 0 | 66.099 | 42.998 | 44.305 | 46.111 | 43.828 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.487 | 15.508 | 1000 | 0 | 69.026 | 42.993 | 44.355 | 46.01 | 40.52 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 5975 | 0 | 1194.257 | 2.22 | 4.264 | 13.115 | 45.844 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.849 | 16.148 | 1000 | 0 | 63.096 | 43.965 | 45.163 | 47.56 | 51.199 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.656 | 16.814 | 1000 | 0 | 63.873 | 44.994 | 47.092 | 49.176 | 51.199 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.69 | 17.193 | 1000 | 0 | 59.915 | 45.226 | 47.054 | 49.479 | 51.199 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.007 | 3686 | 0 | 736.49 | 3.893 | 5.606 | 16.192 | 57.211 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.237 | 17.878 | 1000 | 0 | 58.016 | 46.908 | 49.002 | 57.188 | 64.727 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.005 | 28.764 | 363 | 0 | 12.515 | 241.864 | 243.021 | 19604.442 | 64.938 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.417 | 19.189 | 243 | 0 | 12.515 | 241.809 | 242.85 | 12805.812 | 64.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.623 | 14.384 | 183 | 0 | 12.515 | 241.785 | 242.71 | 10021.434 | 64.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.587 | 123 | 0 | 12.518 | 241.756 | 242.338 | 5233.365 | 64.977 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.58 | 103 | 0 | 10.481 | 241.737 | 242.257 | 5132.201 | 64.992 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.794 | 63 | 0 | 12.508 | 241.795 | 242.797 | 243.063 | 64.992 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.791 | 42 | 0 | 8.347 | 241.344 | 242.193 | 242.651 | 64.996 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.017 | 122 | 0 | 24.371 | 41.964 | 42.16 | 43.078 | 65.0 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.027 | 109 | 0 | 21.796 | 46.963 | 47.064 | 47.874 | 65.0 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.012 | 99 | 0 | 19.737 | 50.978 | 51.532 | 51.979 | 65.0 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.068 | 55 | 0 | 10.987 | 91.922 | 92.023 | 92.553 | 65.008 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.086 | 36 | 0 | 7.106 | 141.953 | 142.007 | 142.027 | 65.008 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.377 | 21 | 0 | 4.167 | 241.962 | 242.278 | 242.821 | 65.012 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.093 | 1000 | 0 | 62.023 | 40.991 | 41.985 | 42.298 | 27.949 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.083 | 1000 | 0 | 62.019 | 40.991 | 41.982 | 42.318 | 27.953 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.081 | 1000 | 0 | 62.067 | 40.987 | 41.956 | 42.11 | 28.145 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.086 | 1000 | 0 | 62.068 | 40.986 | 41.961 | 42.217 | 28.195 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.079 | 1000 | 0 | 62.037 | 40.99 | 41.97 | 42.216 | 28.195 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.085 | 1000 | 0 | 62.026 | 40.989 | 41.996 | 42.371 | 28.195 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.082 | 1000 | 0 | 62.072 | 40.985 | 41.969 | 42.278 | 28.211 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.125 | 1000 | 0 | 62.018 | 40.987 | 41.982 | 42.31 | 28.508 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.523 | 15.695 | 1000 | 0 | 64.42 | 40.981 | 41.979 | 42.152 | 28.598 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.676 | 15.292 | 1000 | 0 | 63.791 | 40.978 | 41.968 | 42.089 | 28.637 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 16646 | 0 | 3328.093 | 0.84 | 1.416 | 8.995 | 29.188 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.549 | 15.474 | 1000 | 0 | 64.314 | 40.981 | 41.988 | 42.457 | 33.168 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.516 | 13.97 | 1000 | 0 | 68.888 | 41.811 | 42.348 | 43.153 | 33.168 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.392 | 14.633 | 1000 | 0 | 69.482 | 41.877 | 42.764 | 43.097 | 33.168 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 12215 | 0 | 2441.686 | 1.079 | 1.881 | 36.467 | 33.168 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.669 | 15.241 | 1000 | 0 | 68.171 | 41.953 | 42.917 | 43.337 | 38.105 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.786 | 16.124 | 1000 | 0 | 63.346 | 41.977 | 42.974 | 45.169 | 38.105 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.976 | 15.196 | 1000 | 0 | 62.596 | 41.976 | 42.962 | 43.882 | 38.105 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.097 | 2.002 | 8490 | 0 | 1665.708 | 1.501 | 2.849 | 15.938 | 38.992 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.672 | 15.695 | 1000 | 0 | 63.807 | 41.996 | 43.136 | 44.428 | 43.641 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.654 | 16.333 | 1000 | 0 | 63.88 | 42.981 | 44.014 | 45.043 | 43.594 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.954 | 16.143 | 1000 | 0 | 62.679 | 42.989 | 44.112 | 45.512 | 43.594 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 6073 | 0 | 1213.704 | 2.182 | 4.158 | 14.409 | 46.559 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.468 | 1000 | 0 | 61.979 | 43.962 | 45.149 | 47.626 | 51.254 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.856 | 16.916 | 1000 | 0 | 59.327 | 45.053 | 46.964 | 48.081 | 51.227 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.085 | 16.921 | 1000 | 0 | 58.531 | 45.828 | 47.016 | 48.641 | 51.227 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.004 | 3750 | 0 | 748.873 | 3.95 | 5.127 | 16.023 | 57.238 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.369 | 18.053 | 1000 | 0 | 57.574 | 46.691 | 48.575 | 50.731 | 81.484 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.001 | 28.765 | 363 | 0 | 12.517 | 241.809 | 243.783 | 19606.941 | 81.77 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.424 | 19.178 | 243 | 0 | 12.51 | 241.892 | 243.029 | 12809.045 | 81.82 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.619 | 14.382 | 183 | 0 | 12.518 | 241.798 | 242.845 | 10018.488 | 81.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.589 | 123 | 0 | 12.508 | 241.858 | 242.904 | 5235.644 | 81.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.58 | 103 | 0 | 10.475 | 241.864 | 242.837 | 5137.877 | 81.84 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.794 | 63 | 0 | 12.51 | 241.756 | 242.846 | 243.602 | 81.84 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.796 | 42 | 0 | 8.342 | 241.838 | 242.244 | 242.297 | 81.844 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.017 | 122 | 0 | 24.361 | 41.976 | 42.331 | 42.971 | 81.844 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.025 | 109 | 0 | 21.778 | 46.963 | 47.36 | 47.971 | 81.863 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.009 | 99 | 0 | 19.718 | 50.976 | 51.937 | 51.991 | 81.883 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.065 | 55 | 0 | 10.958 | 91.972 | 92.529 | 92.941 | 81.891 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.084 | 36 | 0 | 7.105 | 141.956 | 142.019 | 142.633 | 81.91 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.378 | 21 | 0 | 4.173 | 241.127 | 241.992 | 242.76 | 81.922 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22683 | 0 | 4535.891 | 1.054 | 1.464 | 1.746 | 65.156 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22190 | 0 | 4437.217 | 1.078 | 1.494 | 1.799 | 65.16 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22812 | 0 | 4561.664 | 1.047 | 1.466 | 1.752 | 65.242 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22559 | 0 | 4511.027 | 1.064 | 1.502 | 1.789 | 65.625 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22402 | 0 | 4479.738 | 1.066 | 1.474 | 1.807 | 67.262 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19548 | 0 | 3908.747 | 1.236 | 1.64 | 1.983 | 67.426 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22491 | 0 | 4497.611 | 1.063 | 1.473 | 1.765 | 72.07 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22231 | 0 | 4445.591 | 1.08 | 1.501 | 1.765 | 73.406 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17714 | 0 | 3542.186 | 1.365 | 1.804 | 2.159 | 88.254 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8706 | 0 | 1740.404 | 2.822 | 3.475 | 3.965 | 77.121 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17557 | 0 | 3510.715 | 1.379 | 1.808 | 2.103 | 87.895 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.04 | 2.038 | 17066 | 0 | 3386.021 | 0.881 | 1.524 | 40.941 | 71.508 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12081 | 0 | 2415.405 | 1.815 | 3.176 | 5.826 | 109.277 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4690 | 0 | 937.37 | 5.308 | 6.274 | 6.813 | 81.934 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13207 | 0 | 2640.684 | 1.722 | 2.69 | 3.429 | 80.621 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.169 | 12173 | 0 | 2433.496 | 1.847 | 3.025 | 4.885 | 80.121 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 8824 | 0 | 1764.04 | 2.423 | 4.737 | 13.291 | 146.867 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2603 | 0 | 519.743 | 9.607 | 11.175 | 11.877 | 86.465 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.005 | 9253 | 0 | 1849.877 | 2.37 | 4.288 | 13.432 | 80.477 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8649 | 0 | 1729.176 | 2.532 | 4.507 | 13.596 | 80.477 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5482 | 0 | 1095.627 | 4.143 | 6.407 | 16.731 | 117.066 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.014 | 3.575 | 1354 | 0 | 270.067 | 18.564 | 20.938 | 21.99 | 85.078 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5855 | 0 | 1170.387 | 3.85 | 6.024 | 16.889 | 80.258 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5854 | 0 | 1170.157 | 3.791 | 5.853 | 16.745 | 80.258 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3503 | 0 | 699.657 | 6.745 | 11.679 | 14.271 | 186.109 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.058 | 6.486 | 1000 | 0 | 141.691 | 35.621 | 39.891 | 41.275 | 143.777 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3555 | 0 | 710.235 | 6.89 | 8.175 | 8.997 | 136.391 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3644 | 0 | 727.908 | 6.709 | 7.971 | 8.8 | 136.395 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.911 | 50.978 | 360 | 0 | 7.071 | 2544.614 | 2567.13 | 2572.472 | 154.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.925 | 33.991 | 240 | 0 | 7.074 | 1695.715 | 1717.784 | 1718.839 | 158.762 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.457 | 25.484 | 180 | 0 | 7.071 | 1272.526 | 1294.481 | 1296.519 | 159.027 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.965 | 16.984 | 120 | 0 | 7.073 | 848.021 | 860.767 | 866.361 | 159.031 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.142 | 14.211 | 100 | 0 | 7.071 | 809.036 | 849.713 | 850.682 | 159.102 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.494 | 8.488 | 60 | 0 | 7.064 | 424.487 | 433.979 | 435.981 | 159.102 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.656 | 5.658 | 40 | 0 | 7.073 | 282.888 | 284.38 | 285.135 | 159.102 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3961 | 0 | 792.146 | 1.235 | 1.353 | 1.587 | 168.801 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 955 | 0 | 190.923 | 5.208 | 5.29 | 5.52 | 168.801 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.01 | 487 | 0 | 97.38 | 10.238 | 10.306 | 10.502 | 168.742 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.049 | 2.02 | 100 | 0 | 19.804 | 50.415 | 50.461 | 50.65 | 168.742 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.013 | 50 | 0 | 9.942 | 100.525 | 100.627 | 100.72 | 115.867 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.007 | 25 | 0 | 4.983 | 200.584 | 200.992 | 201.046 | 115.867 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22720 | 0 | 4543.282 | 1.051 | 1.455 | 1.742 | 64.652 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22132 | 0 | 4425.631 | 1.08 | 1.513 | 1.824 | 71.117 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22719 | 0 | 4543.121 | 1.053 | 1.465 | 1.753 | 70.496 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22344 | 0 | 4468.23 | 1.07 | 1.513 | 1.879 | 70.934 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22337 | 0 | 4466.81 | 1.071 | 1.468 | 1.781 | 72.563 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19407 | 0 | 3880.39 | 1.241 | 1.678 | 2.016 | 71.602 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22196 | 0 | 4438.115 | 1.074 | 1.504 | 1.829 | 78.418 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21943 | 0 | 4387.929 | 1.087 | 1.547 | 1.941 | 80.957 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17589 | 0 | 3517.104 | 1.368 | 1.862 | 2.298 | 108.824 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8676 | 0 | 1734.504 | 2.836 | 3.517 | 3.896 | 88.27 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17618 | 0 | 3522.819 | 1.37 | 1.805 | 2.196 | 107.934 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.018 | 16803 | 0 | 3347.988 | 0.793 | 1.495 | 40.948 | 91.781 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12654 | 0 | 2530.25 | 1.772 | 2.934 | 4.142 | 110.023 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4595 | 0 | 918.053 | 5.411 | 6.355 | 6.834 | 96.438 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12448 | 0 | 2488.782 | 1.78 | 2.952 | 5.029 | 91.945 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12362 | 0 | 2471.672 | 1.826 | 2.821 | 4.333 | 93.758 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9124 | 0 | 1824.057 | 2.429 | 3.971 | 14.238 | 152.898 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2562 | 0 | 511.531 | 9.781 | 11.281 | 12.061 | 111.953 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9673 | 0 | 1933.697 | 2.314 | 3.503 | 14.106 | 116.598 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8768 | 0 | 1752.839 | 2.484 | 4.418 | 14.002 | 117.883 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5558 | 0 | 1110.775 | 4.101 | 6.04 | 17.664 | 180.781 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.654 | 1333 | 0 | 265.792 | 18.877 | 21.535 | 22.442 | 138.68 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6051 | 0 | 1209.49 | 3.707 | 5.613 | 17.638 | 128.891 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.003 | 5791 | 0 | 1156.903 | 3.81 | 6.088 | 17.266 | 128.719 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 3336 | 0 | 666.25 | 7.414 | 8.732 | 9.708 | 135.406 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.931 | 6.757 | 1000 | 0 | 144.28 | 34.246 | 39.825 | 41.812 | 155.125 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3506 | 0 | 700.273 | 6.924 | 8.593 | 9.94 | 152.816 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3546 | 0 | 708.242 | 6.911 | 8.161 | 8.873 | 145.387 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.927 | 50.915 | 360 | 0 | 7.069 | 2588.311 | 2617.916 | 2628.043 | 160.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.969 | 33.945 | 240 | 0 | 7.065 | 1735.553 | 1741.686 | 1749.28 | 172.598 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.456 | 25.448 | 180 | 0 | 7.071 | 1292.734 | 1314.932 | 1323.786 | 172.605 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.982 | 16.976 | 120 | 0 | 7.066 | 859.47 | 880.828 | 886.66 | 172.609 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.145 | 14.27 | 100 | 0 | 7.07 | 742.164 | 831.96 | 843.45 | 170.738 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.484 | 8.494 | 60 | 0 | 7.072 | 424.766 | 443.56 | 449.658 | 170.738 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.657 | 5.652 | 40 | 0 | 7.071 | 283.136 | 290.448 | 290.937 | 170.742 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3966 | 0 | 793.045 | 1.236 | 1.342 | 1.545 | 175.684 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.004 | 956 | 0 | 191.081 | 5.206 | 5.265 | 5.488 | 175.684 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.004 | 487 | 0 | 97.345 | 10.237 | 10.319 | 10.664 | 175.684 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.047 | 2.019 | 100 | 0 | 19.814 | 50.428 | 50.485 | 50.577 | 175.684 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.013 | 50 | 0 | 9.943 | 100.536 | 100.568 | 100.597 | 175.684 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.569 | 200.626 | 200.869 | 175.684 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22612 | 0 | 4521.721 | 1.057 | 1.45 | 1.755 | 65.16 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22148 | 0 | 4428.829 | 1.081 | 1.495 | 1.79 | 69.332 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22825 | 0 | 4564.102 | 1.049 | 1.438 | 1.72 | 68.855 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22467 | 0 | 4492.628 | 1.066 | 1.493 | 1.796 | 69.039 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22227 | 0 | 4444.593 | 1.073 | 1.499 | 1.811 | 71.063 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19304 | 0 | 3860.205 | 1.248 | 1.7 | 2.032 | 71.184 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22310 | 0 | 4461.158 | 1.07 | 1.51 | 1.874 | 72.148 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21895 | 0 | 4378.303 | 1.088 | 1.556 | 1.952 | 73.395 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17725 | 0 | 3544.316 | 1.364 | 1.805 | 2.255 | 86.457 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8664 | 0 | 1732.081 | 2.844 | 3.467 | 3.945 | 79.43 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17698 | 0 | 3538.992 | 1.363 | 1.804 | 2.216 | 86.059 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.035 | 2.03 | 16694 | 0 | 3315.441 | 0.862 | 1.539 | 41.003 | 73.977 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.001 | 12248 | 0 | 2444.949 | 1.814 | 3.138 | 5.409 | 115.027 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4609 | 0 | 920.95 | 5.42 | 6.405 | 6.85 | 86.332 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12322 | 0 | 2463.758 | 1.757 | 3.182 | 5.597 | 85.906 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11866 | 0 | 2372.357 | 1.835 | 3.346 | 6.207 | 85.785 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8479 | 0 | 1695.123 | 2.463 | 5.277 | 15.632 | 159.875 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2579 | 0 | 515.034 | 9.701 | 11.205 | 11.999 | 94.742 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9059 | 0 | 1810.955 | 2.366 | 4.696 | 15.211 | 92.48 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8416 | 0 | 1682.408 | 2.497 | 4.979 | 15.365 | 92.418 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5247 | 0 | 1048.734 | 4.23 | 7.303 | 20.52 | 138.176 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.538 | 1371 | 0 | 273.391 | 18.339 | 20.945 | 21.911 | 95.73 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5610 | 0 | 1121.073 | 3.905 | 6.956 | 19.503 | 91.063 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5824 | 0 | 1163.956 | 3.753 | 6.004 | 18.757 | 91.063 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.006 | 3341 | 0 | 667.019 | 7.135 | 12.476 | 14.923 | 134.285 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.958 | 6.618 | 1000 | 0 | 143.726 | 34.262 | 39.813 | 41.623 | 97.18 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3542 | 0 | 707.364 | 6.936 | 8.37 | 9.04 | 90.676 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.007 | 3462 | 0 | 691.075 | 7.024 | 9.112 | 10.418 | 90.676 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.897 | 50.986 | 360 | 0 | 7.073 | 2543.815 | 2567.209 | 2568.702 | 109.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.954 | 33.974 | 240 | 0 | 7.068 | 1697.593 | 1719.766 | 1721.191 | 111.145 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.443 | 25.481 | 180 | 0 | 7.075 | 1271.758 | 1294.199 | 1295.309 | 111.273 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.973 | 16.975 | 120 | 0 | 7.07 | 848.368 | 869.796 | 871.463 | 119.52 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.141 | 14.206 | 100 | 0 | 7.072 | 808.931 | 850.63 | 854.157 | 119.586 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.482 | 8.493 | 60 | 0 | 7.073 | 424.126 | 434.454 | 439.134 | 119.586 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.659 | 5.657 | 40 | 0 | 7.069 | 282.786 | 284.802 | 285.525 | 119.586 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3964 | 0 | 792.789 | 1.234 | 1.347 | 1.565 | 121.461 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 955 | 0 | 190.963 | 5.21 | 5.276 | 5.495 | 121.461 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.002 | 488 | 0 | 97.405 | 10.236 | 10.324 | 10.469 | 121.465 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.044 | 2.019 | 100 | 0 | 19.824 | 50.405 | 50.469 | 50.545 | 121.465 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.013 | 50 | 0 | 9.939 | 100.517 | 100.593 | 101.558 | 121.465 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.575 | 200.695 | 200.796 | 121.465 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.119 | 1000 | 0 | 62.091 | 40.983 | 41.962 | 42.19 | 30.578 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.089 | 1000 | 0 | 62.043 | 40.985 | 41.967 | 42.38 | 31.168 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.085 | 1000 | 0 | 62.064 | 40.99 | 41.962 | 42.244 | 31.559 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.081 | 1000 | 0 | 62.083 | 40.987 | 41.974 | 42.222 | 31.742 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.088 | 1000 | 0 | 62.071 | 40.987 | 41.974 | 42.323 | 31.781 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.121 | 1000 | 0 | 62.037 | 40.993 | 41.975 | 42.249 | 31.809 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.086 | 1000 | 0 | 62.038 | 40.988 | 41.978 | 42.294 | 31.816 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.08 | 1000 | 0 | 62.046 | 40.988 | 41.963 | 42.201 | 32.359 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.114 | 14.672 | 1000 | 0 | 66.163 | 40.979 | 41.98 | 42.152 | 32.453 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.641 | 15.485 | 1000 | 0 | 63.936 | 40.98 | 41.971 | 42.053 | 32.512 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16677 | 0 | 3334.521 | 0.853 | 1.371 | 3.035 | 32.938 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.363 | 15.936 | 1000 | 0 | 65.09 | 40.981 | 41.979 | 42.164 | 41.551 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.595 | 13.864 | 1000 | 0 | 68.516 | 41.005 | 42.097 | 43.044 | 41.551 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.394 | 14.042 | 1000 | 0 | 69.471 | 41.003 | 42.041 | 42.978 | 41.551 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 12105 | 0 | 2420.299 | 1.052 | 1.855 | 41.246 | 41.551 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.525 | 14.731 | 1000 | 0 | 68.844 | 41.928 | 42.939 | 43.94 | 47.285 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.061 | 15.925 | 1000 | 0 | 66.397 | 41.974 | 42.974 | 43.278 | 45.789 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.464 | 15.566 | 1000 | 0 | 64.665 | 41.974 | 42.969 | 43.997 | 45.789 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8430 | 0 | 1685.227 | 1.492 | 2.831 | 38.4 | 46.211 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.957 | 15.321 | 1000 | 0 | 66.857 | 41.991 | 43.341 | 44.448 | 50.352 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.762 | 15.82 | 1000 | 0 | 63.445 | 42.979 | 43.986 | 45.829 | 50.223 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.727 | 16.24 | 1000 | 0 | 63.585 | 42.976 | 43.999 | 45.648 | 50.223 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 5784 | 0 | 1156.079 | 2.223 | 4.402 | 18.797 | 53.969 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.621 | 16.189 | 1000 | 0 | 64.016 | 43.603 | 45.476 | 58.773 | 59.672 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.265 | 16.952 | 1000 | 0 | 61.482 | 44.982 | 46.783 | 60.99 | 54.371 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.929 | 17.04 | 1000 | 0 | 62.777 | 44.985 | 46.953 | 54.818 | 54.371 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.006 | 3737 | 0 | 746.194 | 3.899 | 5.417 | 12.104 | 60.383 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.955 | 17.523 | 1000 | 0 | 58.981 | 46.085 | 48.696 | 50.743 | 78.902 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.004 | 28.754 | 363 | 0 | 12.516 | 241.792 | 242.607 | 19615.128 | 79.324 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.407 | 19.174 | 243 | 0 | 12.521 | 241.591 | 242.713 | 12797.713 | 79.375 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.619 | 14.371 | 183 | 0 | 12.518 | 241.758 | 242.819 | 10025.566 | 79.375 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.586 | 123 | 0 | 12.518 | 241.691 | 242.554 | 5231.793 | 79.379 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.589 | 103 | 0 | 10.483 | 241.7 | 242.227 | 5129.732 | 79.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.796 | 63 | 0 | 12.51 | 241.787 | 242.312 | 242.486 | 79.387 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.799 | 42 | 0 | 8.342 | 241.855 | 242.186 | 242.227 | 79.387 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.018 | 122 | 0 | 24.332 | 41.977 | 42.949 | 42.995 | 79.402 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.029 | 112 | 0 | 22.386 | 45.926 | 46.54 | 47.729 | 79.441 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.001 | 99 | 0 | 19.745 | 50.97 | 51.473 | 52.014 | 79.445 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.061 | 2.059 | 56 | 0 | 11.065 | 90.971 | 91.916 | 92.138 | 79.473 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.09 | 36 | 0 | 7.096 | 141.966 | 142.201 | 142.454 | 79.48 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.026 | 2.371 | 21 | 0 | 4.178 | 240.969 | 242.001 | 242.018 | 79.48 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.116 | 1000 | 0 | 62.079 | 40.986 | 41.971 | 42.161 | 29.285 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.09 | 1000 | 0 | 62.068 | 40.986 | 41.974 | 42.225 | 29.59 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.085 | 1000 | 0 | 62.071 | 40.986 | 41.974 | 42.224 | 29.699 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.082 | 1000 | 0 | 62.056 | 40.989 | 41.966 | 42.361 | 29.758 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.126 | 1000 | 0 | 62.081 | 40.985 | 41.972 | 42.126 | 29.961 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.082 | 1000 | 0 | 62.041 | 40.988 | 41.977 | 42.355 | 29.965 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.08 | 1000 | 0 | 62.022 | 40.99 | 41.98 | 42.16 | 29.98 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.082 | 1000 | 0 | 62.023 | 40.989 | 41.977 | 42.219 | 30.527 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.397 | 14.925 | 1000 | 0 | 64.946 | 40.98 | 41.972 | 42.813 | 30.527 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.492 | 15.491 | 1000 | 0 | 64.551 | 40.981 | 41.978 | 42.184 | 30.648 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 16910 | 0 | 3380.893 | 0.839 | 1.369 | 5.276 | 31.016 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.045 | 15.663 | 1000 | 0 | 66.466 | 40.98 | 41.981 | 42.141 | 33.887 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.081 | 13.85 | 1000 | 0 | 71.016 | 41.025 | 42.176 | 45.93 | 33.887 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.745 | 14.311 | 1000 | 0 | 72.752 | 41.003 | 42.126 | 43.144 | 33.887 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12118 | 0 | 2422.807 | 1.065 | 1.893 | 27.187 | 34.406 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.626 | 14.445 | 1000 | 0 | 68.371 | 41.923 | 42.816 | 43.902 | 39.863 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.777 | 15.763 | 1000 | 0 | 67.675 | 41.975 | 42.949 | 44.952 | 39.875 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.557 | 15.68 | 1000 | 0 | 64.28 | 41.975 | 42.923 | 43.321 | 39.875 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8819 | 0 | 1763.157 | 1.469 | 2.684 | 17.79 | 40.57 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.933 | 15.689 | 1000 | 0 | 62.761 | 41.983 | 43.001 | 43.901 | 50.113 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.199 | 15.731 | 1000 | 0 | 61.731 | 42.977 | 43.968 | 57.008 | 50.113 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.163 | 16.133 | 1000 | 0 | 61.868 | 42.976 | 43.979 | 45.913 | 45.473 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5746 | 0 | 1148.369 | 2.219 | 4.316 | 19.941 | 49.219 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.709 | 16.551 | 1000 | 0 | 63.658 | 43.796 | 45.023 | 52.444 | 53.938 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.614 | 16.617 | 1000 | 0 | 60.192 | 44.973 | 46.232 | 47.953 | 52.043 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.432 | 16.518 | 1000 | 0 | 60.857 | 44.983 | 46.374 | 48.55 | 52.043 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3563 | 0 | 711.617 | 3.987 | 5.783 | 21.35 | 58.055 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.843 | 17.513 | 1000 | 0 | 59.371 | 46.192 | 48.74 | 58.084 | 65.379 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.997 | 28.759 | 363 | 0 | 12.519 | 241.785 | 242.82 | 19605.998 | 64.75 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.414 | 19.174 | 243 | 0 | 12.517 | 241.793 | 242.61 | 12801.806 | 64.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.618 | 14.381 | 183 | 0 | 12.519 | 241.749 | 242.535 | 10024.086 | 64.77 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.587 | 123 | 0 | 12.514 | 241.731 | 242.522 | 5235.264 | 64.773 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.593 | 103 | 0 | 10.481 | 241.809 | 242.338 | 5133.981 | 64.781 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.796 | 63 | 0 | 12.511 | 241.786 | 242.356 | 242.749 | 64.781 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.799 | 42 | 0 | 8.339 | 241.883 | 242.19 | 242.356 | 64.781 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.018 | 122 | 0 | 24.322 | 41.984 | 42.947 | 43.0 | 64.828 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.027 | 113 | 0 | 22.505 | 45.053 | 46.157 | 46.957 | 64.848 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.001 | 99 | 0 | 19.74 | 50.964 | 51.936 | 52.023 | 64.871 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.054 | 56 | 0 | 11.054 | 90.977 | 91.968 | 91.984 | 64.895 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.089 | 36 | 0 | 7.099 | 141.957 | 142.054 | 142.246 | 64.895 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 2.375 | 21 | 0 | 4.176 | 240.992 | 242.513 | 242.818 | 64.895 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.121 | 1000 | 0 | 62.072 | 40.987 | 41.959 | 42.207 | 29.441 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.089 | 1000 | 0 | 62.042 | 40.987 | 41.984 | 42.196 | 29.586 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.089 | 1000 | 0 | 62.064 | 40.986 | 41.971 | 42.168 | 29.77 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.084 | 1000 | 0 | 62.017 | 40.988 | 41.976 | 42.527 | 30.082 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.084 | 1000 | 0 | 62.07 | 40.986 | 41.949 | 42.251 | 30.145 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.077 | 1000 | 0 | 62.041 | 40.99 | 41.979 | 42.496 | 30.18 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.08 | 1000 | 0 | 62.023 | 40.992 | 41.988 | 42.38 | 30.199 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.154 | 16.168 | 1000 | 0 | 61.903 | 40.988 | 41.973 | 42.305 | 30.477 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.637 | 15.608 | 1000 | 0 | 63.95 | 40.98 | 41.973 | 42.016 | 30.559 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.473 | 15.617 | 1000 | 0 | 64.628 | 40.98 | 41.969 | 42.102 | 30.637 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 16962 | 0 | 3391.263 | 0.835 | 1.366 | 10.201 | 31.199 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.658 | 15.46 | 1000 | 0 | 63.863 | 40.982 | 41.982 | 42.373 | 35.039 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.781 | 14.823 | 1000 | 0 | 67.653 | 40.999 | 42.038 | 43.147 | 35.039 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.251 | 14.732 | 1000 | 0 | 70.169 | 41.012 | 42.132 | 43.026 | 35.039 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12595 | 0 | 2517.95 | 1.034 | 1.828 | 41.188 | 35.777 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.451 | 14.399 | 1000 | 0 | 69.198 | 41.897 | 42.472 | 43.292 | 39.332 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.608 | 16.031 | 1000 | 0 | 64.072 | 41.975 | 42.963 | 44.939 | 39.332 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.074 | 15.728 | 1000 | 0 | 66.34 | 41.977 | 42.972 | 43.968 | 39.332 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 8897 | 0 | 1778.31 | 1.465 | 2.623 | 18.68 | 40.578 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.656 | 15.833 | 1000 | 0 | 63.875 | 41.979 | 43.011 | 44.008 | 46.57 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.628 | 15.657 | 1000 | 0 | 63.987 | 42.974 | 43.987 | 45.542 | 46.508 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.034 | 15.707 | 1000 | 0 | 62.366 | 42.979 | 43.988 | 50.589 | 46.508 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 5883 | 0 | 1175.843 | 2.166 | 3.982 | 20.893 | 49.008 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.152 | 1000 | 0 | 62.025 | 43.61 | 44.978 | 46.028 | 54.543 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.82 | 16.868 | 1000 | 0 | 63.211 | 44.976 | 46.368 | 48.891 | 51.375 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.825 | 16.751 | 1000 | 0 | 63.193 | 44.979 | 46.612 | 47.914 | 51.375 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3586 | 0 | 716.383 | 3.974 | 5.791 | 23.469 | 57.387 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.299 | 17.197 | 1000 | 0 | 57.808 | 46.021 | 48.049 | 55.996 | 66.035 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.005 | 28.761 | 363 | 0 | 12.515 | 241.841 | 242.911 | 19616.704 | 66.496 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.411 | 19.17 | 243 | 0 | 12.519 | 241.683 | 242.682 | 12804.339 | 66.496 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.617 | 14.387 | 183 | 0 | 12.519 | 241.725 | 242.702 | 10021.612 | 66.5 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.588 | 123 | 0 | 12.52 | 241.581 | 242.353 | 5228.249 | 66.5 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.595 | 103 | 0 | 10.482 | 241.747 | 242.403 | 5129.388 | 66.5 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.793 | 63 | 0 | 12.516 | 241.655 | 242.56 | 242.848 | 66.5 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.799 | 42 | 0 | 8.338 | 241.805 | 242.196 | 242.233 | 66.5 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.018 | 122 | 0 | 24.327 | 41.977 | 42.961 | 43.013 | 66.52 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.029 | 113 | 0 | 22.425 | 45.905 | 46.097 | 46.985 | 66.52 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.002 | 99 | 0 | 19.745 | 50.963 | 51.153 | 51.988 | 66.531 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.062 | 56 | 0 | 11.056 | 90.984 | 91.951 | 91.964 | 66.531 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.089 | 36 | 0 | 7.097 | 141.964 | 142.305 | 142.944 | 66.555 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.374 | 21 | 0 | 4.18 | 240.969 | 242.004 | 242.216 | 66.555 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23040 | 0 | 4607.134 | 1.043 | 1.361 | 1.678 | 68.891 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22529 | 0 | 4505.035 | 1.07 | 1.374 | 1.726 | 69.938 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23078 | 0 | 4614.506 | 1.043 | 1.357 | 1.686 | 69.375 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22775 | 0 | 4554.425 | 1.056 | 1.402 | 1.758 | 69.629 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22776 | 0 | 4554.48 | 1.056 | 1.381 | 1.741 | 71.012 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19472 | 0 | 3893.783 | 1.234 | 1.626 | 1.972 | 71.34 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22665 | 0 | 4532.238 | 1.06 | 1.405 | 1.785 | 72.469 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22362 | 0 | 4471.379 | 1.074 | 1.413 | 1.851 | 73.379 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17713 | 0 | 3541.714 | 1.37 | 1.729 | 2.013 | 82.57 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8713 | 0 | 1741.91 | 2.826 | 3.426 | 3.748 | 77.223 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17774 | 0 | 3554.043 | 1.361 | 1.765 | 2.097 | 81.863 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.04 | 2.02 | 17368 | 0 | 3446.279 | 0.988 | 1.541 | 40.676 | 73.051 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12414 | 0 | 2482.006 | 1.756 | 3.07 | 4.658 | 108.266 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4637 | 0 | 926.377 | 5.355 | 6.295 | 6.939 | 82.859 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.003 | 12340 | 0 | 2467.394 | 1.756 | 3.056 | 5.104 | 81.012 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.003 | 12054 | 0 | 2410.254 | 1.804 | 3.125 | 4.958 | 80.926 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.012 | 8329 | 0 | 1665.168 | 2.504 | 4.924 | 21.171 | 124.664 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2365 | 0 | 472.31 | 10.211 | 13.427 | 20.658 | 102.188 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8790 | 0 | 1757.254 | 2.375 | 4.401 | 20.773 | 106.047 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8200 | 0 | 1638.925 | 2.539 | 4.695 | 20.347 | 106.129 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5312 | 0 | 1061.538 | 4.104 | 6.802 | 24.106 | 131.883 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.524 | 1405 | 0 | 280.137 | 17.775 | 20.233 | 21.697 | 105.727 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.028 | 5573 | 0 | 1113.932 | 3.811 | 6.664 | 24.101 | 107.469 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.003 | 5564 | 0 | 1111.466 | 3.882 | 6.406 | 24.353 | 107.469 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3170 | 0 | 633.262 | 7.788 | 9.15 | 9.947 | 115.934 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.96 | 6.749 | 1000 | 0 | 143.672 | 34.624 | 39.396 | 47.349 | 107.848 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 3330 | 0 | 664.921 | 7.261 | 9.135 | 11.669 | 107.859 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3381 | 0 | 675.24 | 7.292 | 8.404 | 9.349 | 107.859 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.116 | 51.137 | 360 | 0 | 7.043 | 2554.872 | 2577.459 | 2585.719 | 128.637 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.073 | 34.071 | 240 | 0 | 7.044 | 1702.916 | 1720.696 | 1724.504 | 132.57 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.545 | 25.55 | 180 | 0 | 7.046 | 1277.637 | 1289.499 | 1291.486 | 132.758 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.038 | 17.041 | 120 | 0 | 7.043 | 850.833 | 866.548 | 870.322 | 133.012 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.208 | 14.194 | 100 | 0 | 7.039 | 804.652 | 844.643 | 851.14 | 133.016 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.519 | 8.518 | 60 | 0 | 7.043 | 425.25 | 433.605 | 436.013 | 133.016 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.677 | 5.676 | 40 | 0 | 7.046 | 283.883 | 286.954 | 288.557 | 133.016 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.002 | 1387 | 0 | 277.245 | 3.609 | 3.705 | 4.052 | 134.711 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.002 | 417 | 0 | 83.223 | 12.043 | 12.235 | 12.328 | 123.586 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.01 | 324 | 0 | 64.753 | 15.428 | 15.622 | 15.87 | 126.191 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.022 | 2.048 | 98 | 0 | 19.513 | 51.23 | 51.45 | 51.57 | 126.191 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.011 | 50 | 0 | 9.948 | 100.454 | 100.607 | 100.737 | 126.191 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.486 | 200.609 | 200.719 | 126.191 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22961 | 0 | 4591.41 | 1.046 | 1.351 | 1.661 | 68.586 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22485 | 0 | 4496.085 | 1.071 | 1.388 | 1.711 | 68.859 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23089 | 0 | 4616.783 | 1.042 | 1.357 | 1.687 | 68.648 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22718 | 0 | 4542.876 | 1.059 | 1.381 | 1.759 | 68.902 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22674 | 0 | 4534.023 | 1.06 | 1.384 | 1.738 | 70.734 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19531 | 0 | 3905.419 | 1.229 | 1.63 | 2.069 | 70.891 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22721 | 0 | 4543.48 | 1.055 | 1.401 | 1.773 | 72.422 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22344 | 0 | 4467.669 | 1.075 | 1.423 | 1.84 | 73.293 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17746 | 0 | 3548.368 | 1.368 | 1.752 | 2.028 | 82.82 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8730 | 0 | 1745.213 | 2.82 | 3.427 | 3.78 | 76.715 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17963 | 0 | 3591.732 | 1.349 | 1.722 | 2.04 | 82.645 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.027 | 17516 | 0 | 3501.982 | 1.371 | 1.738 | 2.077 | 72.285 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12423 | 0 | 2483.774 | 1.784 | 2.898 | 4.498 | 107.719 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4584 | 0 | 916.103 | 5.394 | 6.418 | 7.171 | 83.426 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12698 | 0 | 2538.981 | 1.755 | 2.678 | 4.202 | 75.617 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.183 | 12244 | 0 | 2448.155 | 1.795 | 2.906 | 4.69 | 75.805 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8792 | 0 | 1757.502 | 2.413 | 4.091 | 22.099 | 123.297 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.007 | 2540 | 0 | 506.94 | 9.889 | 11.272 | 12.005 | 89.824 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.002 | 9017 | 0 | 1801.336 | 2.364 | 3.704 | 21.6 | 87.168 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8634 | 0 | 1726.106 | 2.462 | 4.066 | 21.268 | 87.492 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5356 | 0 | 1070.605 | 4.049 | 6.362 | 25.501 | 124.355 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.401 | 1342 | 0 | 267.566 | 18.45 | 21.77 | 26.549 | 89.77 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5616 | 0 | 1122.377 | 3.835 | 5.956 | 25.09 | 93.219 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5576 | 0 | 1114.247 | 3.867 | 6.052 | 25.638 | 93.219 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3241 | 0 | 647.489 | 7.661 | 8.739 | 9.437 | 98.957 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.922 | 6.707 | 1000 | 0 | 144.472 | 34.616 | 38.977 | 40.327 | 91.551 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3430 | 0 | 685.082 | 7.212 | 8.205 | 9.146 | 95.867 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3574 | 0 | 713.791 | 7.005 | 7.743 | 8.262 | 95.867 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.118 | 51.132 | 360 | 0 | 7.043 | 2553.979 | 2579.156 | 2589.021 | 118.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.074 | 34.068 | 240 | 0 | 7.044 | 1702.573 | 1721.299 | 1728.908 | 118.523 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.567 | 25.55 | 180 | 0 | 7.04 | 1277.025 | 1297.763 | 1307.327 | 120.086 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.044 | 17.032 | 120 | 0 | 7.04 | 850.686 | 865.374 | 872.72 | 123.184 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.237 | 14.215 | 100 | 0 | 7.024 | 820.277 | 849.162 | 856.168 | 123.184 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.534 | 8.518 | 60 | 0 | 7.03 | 426.94 | 435.529 | 437.349 | 123.309 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.678 | 5.687 | 40 | 0 | 7.045 | 283.762 | 287.506 | 289.029 | 123.625 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1391 | 0 | 278.157 | 3.602 | 3.703 | 4.045 | 124.184 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.012 | 419 | 0 | 83.691 | 12.039 | 12.151 | 12.38 | 126.625 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.003 | 325 | 0 | 64.938 | 15.42 | 15.532 | 15.732 | 126.625 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.05 | 2.046 | 99 | 0 | 19.604 | 50.984 | 51.24 | 51.396 | 126.688 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.012 | 50 | 0 | 9.945 | 100.45 | 100.88 | 101.229 | 126.688 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.467 | 201.212 | 201.433 | 126.688 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23025 | 0 | 4604.298 | 1.045 | 1.34 | 1.668 | 70.246 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22284 | 0 | 4455.74 | 1.079 | 1.403 | 1.72 | 70.617 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22831 | 0 | 4565.313 | 1.049 | 1.405 | 1.756 | 70.293 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21686 | 0 | 4336.409 | 1.094 | 1.497 | 1.922 | 70.664 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21763 | 0 | 4351.89 | 1.093 | 1.452 | 1.885 | 71.785 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19365 | 0 | 3872.042 | 1.246 | 1.617 | 1.967 | 71.707 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22573 | 0 | 4513.757 | 1.063 | 1.417 | 1.798 | 71.762 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22256 | 0 | 4450.493 | 1.079 | 1.454 | 1.846 | 72.664 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17871 | 0 | 3573.559 | 1.355 | 1.739 | 2.03 | 85.145 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8628 | 0 | 1724.937 | 2.852 | 3.453 | 3.785 | 78.98 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17699 | 0 | 3538.744 | 1.371 | 1.736 | 2.057 | 84.785 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.026 | 2.027 | 17312 | 0 | 3444.273 | 1.055 | 1.539 | 2.948 | 74.637 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 11590 | 0 | 2317.334 | 1.813 | 3.437 | 6.415 | 106.426 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4580 | 0 | 915.081 | 5.42 | 6.367 | 6.819 | 83.473 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 11697 | 0 | 2338.75 | 1.768 | 3.546 | 6.656 | 79.582 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 11670 | 0 | 2333.327 | 1.83 | 3.365 | 5.835 | 79.207 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 8203 | 0 | 1639.288 | 2.509 | 4.996 | 23.318 | 127.813 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2576 | 0 | 514.345 | 9.692 | 11.271 | 12.234 | 87.102 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 8716 | 0 | 1741.771 | 2.365 | 4.383 | 23.322 | 84.223 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8275 | 0 | 1654.333 | 2.466 | 4.911 | 22.599 | 84.305 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5104 | 0 | 1020.23 | 4.221 | 7.229 | 26.823 | 124.766 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.567 | 1363 | 0 | 271.711 | 18.375 | 20.998 | 21.673 | 91.328 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5574 | 0 | 1113.84 | 3.892 | 6.011 | 25.679 | 86.805 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5505 | 0 | 1100.348 | 3.919 | 6.673 | 26.051 | 86.68 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3179 | 0 | 634.926 | 7.765 | 8.97 | 10.04 | 102.379 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.99 | 6.908 | 1000 | 0 | 143.061 | 34.815 | 39.701 | 41.488 | 91.211 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3248 | 0 | 648.699 | 7.607 | 8.946 | 9.834 | 89.621 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3427 | 0 | 684.445 | 7.134 | 8.622 | 11.616 | 89.621 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.081 | 51.085 | 360 | 0 | 7.048 | 2532.813 | 2758.097 | 2800.747 | 112.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.047 | 34.047 | 240 | 0 | 7.049 | 1726.079 | 1872.507 | 1893.864 | 114.465 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.594 | 25.594 | 180 | 0 | 7.033 | 1284.925 | 1421.422 | 1434.237 | 114.465 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.038 | 17.018 | 120 | 0 | 7.043 | 885.257 | 955.958 | 963.338 | 114.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.237 | 14.185 | 100 | 0 | 7.024 | 696.487 | 932.956 | 943.275 | 114.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.547 | 8.511 | 60 | 0 | 7.02 | 453.005 | 478.878 | 486.32 | 114.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.679 | 5.678 | 40 | 0 | 7.043 | 287.013 | 317.264 | 318.605 | 114.715 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 1681 | 0 | 336.152 | 3.581 | 3.672 | 3.915 | 124.832 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.0 | 495 | 0 | 98.803 | 11.874 | 12.107 | 12.248 | 125.023 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.002 | 365 | 0 | 72.829 | 15.379 | 15.613 | 15.909 | 125.023 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.036 | 99 | 0 | 19.688 | 50.894 | 51.15 | 51.406 | 125.023 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.011 | 50 | 0 | 9.949 | 100.459 | 100.583 | 100.692 | 125.023 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.492 | 200.606 | 200.704 | 125.023 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

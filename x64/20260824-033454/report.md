# Puma vs Raptor Simulation

Run ID: `20260824-033454`

## Environment

- Ruby: `ruby 4.0.6 (2026-07-14 revision 03b6d3f889) +PRISM [x86_64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.101 | 1000 | 0 | 61.952 | 40.991 | 41.982 | 42.435 | 30.121 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.094 | 1000 | 0 | 61.982 | 40.999 | 41.988 | 42.613 | 30.121 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.088 | 1000 | 0 | 62.044 | 40.986 | 41.945 | 42.048 | 30.207 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.091 | 1000 | 0 | 62.055 | 40.99 | 41.963 | 42.239 | 30.473 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.083 | 1000 | 0 | 62.009 | 40.995 | 41.968 | 42.275 | 30.477 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.09 | 1000 | 0 | 62.008 | 41.0 | 41.97 | 42.355 | 30.484 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.086 | 1000 | 0 | 62.013 | 40.989 | 41.969 | 42.288 | 30.508 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.088 | 1000 | 0 | 62.002 | 40.996 | 41.983 | 42.169 | 31.172 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.203 | 13.51 | 1000 | 0 | 65.778 | 40.98 | 41.971 | 42.195 | 31.172 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.022 | 13.946 | 1000 | 0 | 66.571 | 40.98 | 41.976 | 42.303 | 31.172 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12025 | 0 | 2404.146 | 1.159 | 1.903 | 7.112 | 31.34 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.283 | 14.842 | 1000 | 0 | 65.433 | 40.984 | 41.985 | 42.957 | 42.969 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.519 | 11.153 | 1000 | 0 | 68.876 | 41.927 | 42.165 | 43.061 | 42.969 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.773 | 13.821 | 1000 | 0 | 72.606 | 41.944 | 42.251 | 43.212 | 42.969 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9460 | 0 | 1891.181 | 1.512 | 2.383 | 27.644 | 42.969 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.496 | 15.21 | 1000 | 0 | 64.534 | 41.973 | 42.962 | 43.158 | 50.254 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.444 | 15.709 | 1000 | 0 | 64.748 | 41.996 | 43.197 | 44.21 | 50.246 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.309 | 15.766 | 1000 | 0 | 65.32 | 41.997 | 43.169 | 44.202 | 50.246 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 6531 | 0 | 1305.092 | 2.136 | 3.503 | 12.409 | 50.246 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.018 | 15.499 | 1000 | 0 | 62.429 | 42.946 | 43.934 | 44.436 | 65.18 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.598 | 14.945 | 1000 | 0 | 64.112 | 43.329 | 44.874 | 46.852 | 59.094 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.444 | 16.108 | 1000 | 0 | 64.751 | 43.868 | 44.971 | 45.883 | 59.094 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4667 | 0 | 932.673 | 2.956 | 5.043 | 13.192 | 60.359 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.648 | 16.687 | 1000 | 0 | 63.905 | 44.304 | 46.175 | 49.66 | 72.113 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.16 | 16.891 | 1000 | 0 | 61.879 | 45.979 | 48.151 | 50.545 | 62.559 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.72 | 17.213 | 1000 | 0 | 59.81 | 46.797 | 48.134 | 50.151 | 62.559 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.008 | 2897 | 0 | 578.524 | 5.007 | 6.884 | 12.344 | 69.781 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.584 | 18.178 | 1000 | 0 | 56.869 | 47.972 | 50.989 | 54.721 | 86.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.003 | 28.747 | 363 | 0 | 12.516 | 241.758 | 243.002 | 19602.736 | 87.055 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.406 | 19.16 | 243 | 0 | 12.522 | 241.52 | 243.011 | 12799.89 | 87.086 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.375 | 183 | 0 | 12.513 | 241.767 | 242.965 | 10014.118 | 87.109 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.585 | 123 | 0 | 12.511 | 241.567 | 242.735 | 5230.835 | 87.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.583 | 103 | 0 | 10.486 | 241.369 | 242.447 | 5129.998 | 87.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.794 | 63 | 0 | 12.512 | 241.689 | 242.348 | 242.734 | 87.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.795 | 42 | 0 | 8.345 | 241.411 | 242.244 | 242.411 | 87.125 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.367 | 41.978 | 42.143 | 42.995 | 87.145 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.039 | 110 | 0 | 21.797 | 46.972 | 47.08 | 47.974 | 87.191 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.02 | 99 | 0 | 19.73 | 50.986 | 51.803 | 51.95 | 87.191 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.087 | 2.065 | 56 | 0 | 11.009 | 91.893 | 92.019 | 92.049 | 87.266 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.063 | 2.082 | 36 | 0 | 7.111 | 141.945 | 142.052 | 142.672 | 87.293 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.374 | 21 | 0 | 4.172 | 241.867 | 242.019 | 242.028 | 87.297 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.091 | 1000 | 0 | 62.007 | 40.996 | 41.968 | 42.318 | 28.234 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.09 | 1000 | 0 | 61.963 | 40.998 | 41.986 | 42.552 | 28.27 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.096 | 1000 | 0 | 62.028 | 40.993 | 41.963 | 42.374 | 28.285 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.161 | 16.09 | 1000 | 0 | 61.877 | 41.018 | 41.998 | 42.509 | 28.336 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.111 | 1000 | 0 | 61.981 | 41.0 | 41.953 | 42.471 | 28.348 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.093 | 1000 | 0 | 62.024 | 40.989 | 41.971 | 42.224 | 28.352 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.088 | 1000 | 0 | 61.995 | 40.996 | 41.968 | 42.354 | 28.375 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.096 | 1000 | 0 | 62.014 | 40.991 | 41.958 | 42.312 | 28.816 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.822 | 13.559 | 1000 | 0 | 67.466 | 40.982 | 41.975 | 42.288 | 28.816 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.333 | 14.674 | 1000 | 0 | 65.22 | 40.981 | 41.983 | 42.261 | 28.816 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11814 | 0 | 2362.06 | 1.186 | 1.968 | 6.481 | 29.168 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.567 | 14.958 | 1000 | 0 | 64.237 | 40.983 | 41.986 | 42.355 | 34.137 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.161 | 13.985 | 1000 | 0 | 65.959 | 41.945 | 42.203 | 43.005 | 34.137 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.016 | 13.605 | 1000 | 0 | 66.596 | 41.946 | 42.436 | 43.1 | 34.137 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9297 | 0 | 1858.61 | 1.53 | 2.413 | 41.104 | 34.184 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.619 | 14.026 | 1000 | 0 | 64.026 | 41.974 | 42.944 | 43.414 | 37.766 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.203 | 14.634 | 1000 | 0 | 70.407 | 41.999 | 43.158 | 45.102 | 37.766 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.365 | 15.52 | 1000 | 0 | 65.084 | 42.026 | 43.163 | 44.208 | 37.766 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 6390 | 0 | 1276.943 | 2.149 | 3.646 | 13.685 | 38.641 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.022 | 15.577 | 1000 | 0 | 66.569 | 42.944 | 43.98 | 45.024 | 43.359 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.839 | 15.714 | 1000 | 0 | 63.136 | 43.922 | 44.991 | 46.255 | 41.043 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.771 | 15.498 | 1000 | 0 | 63.408 | 43.608 | 44.95 | 45.935 | 41.043 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4607 | 0 | 920.509 | 2.929 | 5.219 | 15.862 | 45.402 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.782 | 16.607 | 1000 | 0 | 63.363 | 44.816 | 46.206 | 48.814 | 49.977 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.705 | 16.524 | 1000 | 0 | 63.675 | 46.643 | 48.757 | 50.883 | 49.953 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.067 | 16.436 | 1000 | 0 | 62.24 | 46.919 | 48.951 | 53.876 | 49.953 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.009 | 2812 | 0 | 561.554 | 5.246 | 7.112 | 12.579 | 55.965 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.293 | 18.15 | 1000 | 0 | 57.827 | 47.992 | 51.22 | 59.988 | 84.055 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.012 | 28.771 | 363 | 0 | 12.512 | 241.877 | 243.795 | 19613.377 | 84.348 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.424 | 19.185 | 243 | 0 | 12.51 | 241.883 | 242.982 | 12806.799 | 84.379 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.616 | 14.379 | 183 | 0 | 12.521 | 241.521 | 242.953 | 10021.066 | 84.387 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.584 | 123 | 0 | 12.518 | 241.681 | 242.322 | 5230.443 | 84.406 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.592 | 103 | 0 | 10.475 | 241.864 | 242.621 | 5134.448 | 84.406 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.794 | 63 | 0 | 12.515 | 241.637 | 242.449 | 242.57 | 84.406 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.791 | 42 | 0 | 8.335 | 241.884 | 242.386 | 242.737 | 84.406 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.017 | 122 | 0 | 24.376 | 41.971 | 42.075 | 42.963 | 84.422 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.039 | 109 | 0 | 21.783 | 46.98 | 47.93 | 47.99 | 84.523 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.009 | 99 | 0 | 19.717 | 50.979 | 51.923 | 51.961 | 84.531 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.082 | 2.063 | 56 | 0 | 11.019 | 91.01 | 91.997 | 92.475 | 84.531 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.058 | 2.079 | 36 | 0 | 7.118 | 141.927 | 141.985 | 142.001 | 84.531 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.375 | 21 | 0 | 4.166 | 241.973 | 242.918 | 243.01 | 84.535 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.084 | 1000 | 0 | 62.014 | 40.991 | 41.961 | 42.21 | 28.066 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.101 | 1000 | 0 | 62.006 | 40.994 | 41.958 | 42.295 | 28.234 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.097 | 1000 | 0 | 62.038 | 40.997 | 41.974 | 42.178 | 28.266 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.083 | 1000 | 0 | 61.981 | 40.994 | 41.976 | 42.364 | 28.305 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.093 | 1000 | 0 | 62.042 | 40.991 | 41.953 | 42.362 | 28.309 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.085 | 1000 | 0 | 62.064 | 40.986 | 41.975 | 42.147 | 28.309 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.088 | 1000 | 0 | 62.009 | 40.994 | 41.965 | 42.399 | 28.336 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.112 | 1000 | 0 | 61.973 | 40.993 | 41.973 | 42.382 | 28.582 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.213 | 13.409 | 1000 | 0 | 70.356 | 40.986 | 41.985 | 42.534 | 28.641 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.274 | 13.361 | 1000 | 0 | 65.472 | 40.981 | 41.975 | 42.206 | 28.793 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11418 | 0 | 2282.833 | 1.244 | 2.088 | 7.665 | 29.285 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.15 | 12.84 | 1000 | 0 | 70.669 | 41.212 | 42.261 | 43.151 | 33.305 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.499 | 13.144 | 1000 | 0 | 74.081 | 41.932 | 42.7 | 43.335 | 33.305 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.989 | 13.364 | 1000 | 0 | 66.718 | 41.944 | 42.545 | 43.358 | 33.305 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 8887 | 0 | 1776.193 | 1.538 | 2.593 | 44.166 | 33.508 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.219 | 14.273 | 1000 | 0 | 70.328 | 41.958 | 42.922 | 43.779 | 38.203 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.228 | 14.495 | 1000 | 0 | 65.668 | 42.038 | 43.257 | 44.132 | 37.625 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.344 | 14.996 | 1000 | 0 | 74.942 | 42.055 | 43.337 | 44.523 | 37.625 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6437 | 0 | 1286.563 | 2.085 | 3.542 | 17.145 | 38.844 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.231 | 15.633 | 1000 | 0 | 65.655 | 42.954 | 44.016 | 44.948 | 44.738 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.323 | 15.728 | 1000 | 0 | 69.818 | 43.888 | 45.185 | 46.775 | 44.738 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.846 | 15.589 | 1000 | 0 | 63.106 | 43.938 | 45.091 | 47.043 | 44.738 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4235 | 0 | 846.136 | 3.214 | 5.876 | 17.992 | 47.738 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.317 | 17.049 | 1000 | 0 | 61.287 | 44.925 | 46.439 | 48.889 | 51.535 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.769 | 17.06 | 1000 | 0 | 63.417 | 46.884 | 48.814 | 50.992 | 49.309 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.318 | 17.157 | 1000 | 0 | 61.281 | 46.929 | 48.834 | 50.84 | 49.309 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.04 | 2755 | 0 | 550.114 | 5.338 | 7.412 | 14.445 | 55.32 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.561 | 17.995 | 1000 | 0 | 56.945 | 48.001 | 51.17 | 59.365 | 83.461 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.005 | 28.78 | 363 | 0 | 12.515 | 241.775 | 244.196 | 19608.803 | 83.781 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.432 | 19.19 | 243 | 0 | 12.505 | 241.905 | 243.342 | 12812.386 | 83.82 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.633 | 14.391 | 183 | 0 | 12.506 | 241.93 | 242.985 | 10028.539 | 83.828 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.593 | 123 | 0 | 12.505 | 241.917 | 242.581 | 5236.029 | 83.836 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.594 | 103 | 0 | 10.47 | 241.902 | 242.61 | 5138.393 | 83.84 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.798 | 63 | 0 | 12.502 | 241.703 | 242.558 | 242.848 | 83.844 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.797 | 42 | 0 | 8.345 | 241.607 | 242.222 | 242.238 | 83.844 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.368 | 41.962 | 42.067 | 42.957 | 83.844 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.02 | 109 | 0 | 21.772 | 46.958 | 47.712 | 47.95 | 83.844 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 2.039 | 98 | 0 | 19.488 | 51.918 | 52.03 | 52.95 | 83.844 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.068 | 55 | 0 | 10.985 | 91.931 | 92.047 | 92.459 | 83.844 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.086 | 36 | 0 | 7.108 | 141.944 | 142.253 | 142.96 | 83.852 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.374 | 21 | 0 | 4.167 | 241.94 | 242.029 | 242.871 | 83.852 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15219 | 0 | 3043.041 | 1.568 | 2.13 | 2.601 | 65.18 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14806 | 0 | 2960.643 | 1.617 | 2.191 | 2.663 | 69.473 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15170 | 0 | 3032.963 | 1.575 | 2.145 | 2.597 | 69.234 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14926 | 0 | 2984.328 | 1.6 | 2.218 | 2.671 | 69.426 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15015 | 0 | 3002.197 | 1.59 | 2.187 | 2.627 | 71.559 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13104 | 0 | 2620.095 | 1.837 | 2.473 | 2.934 | 70.598 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14982 | 0 | 2995.711 | 1.594 | 2.179 | 2.699 | 71.469 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14636 | 0 | 2926.485 | 1.624 | 2.288 | 2.897 | 72.273 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12218 | 0 | 2442.939 | 1.98 | 2.583 | 3.14 | 84.688 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6270 | 0 | 1253.226 | 3.936 | 4.83 | 5.531 | 77.363 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12151 | 0 | 2429.455 | 1.997 | 2.511 | 2.903 | 94.984 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.03 | 12246 | 0 | 2442.944 | 1.542 | 2.325 | 40.966 | 73.387 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9219 | 0 | 1843.098 | 2.49 | 3.752 | 6.377 | 108.746 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3453 | 0 | 689.717 | 7.261 | 8.688 | 9.446 | 86.316 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9181 | 0 | 1835.579 | 2.529 | 3.655 | 6.125 | 84.496 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9099 | 0 | 1818.66 | 2.51 | 3.938 | 6.139 | 86.004 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.016 | 6852 | 0 | 1369.726 | 3.341 | 5.279 | 13.816 | 141.996 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.495 | 1982 | 0 | 395.54 | 12.672 | 15.155 | 16.131 | 93.02 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6999 | 0 | 1398.952 | 3.263 | 5.095 | 14.015 | 87.313 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6802 | 0 | 1359.66 | 3.289 | 5.107 | 14.033 | 87.563 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4459 | 0 | 890.923 | 5.139 | 8.77 | 17.693 | 188.184 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.391 | 1044 | 0 | 207.97 | 24.139 | 28.399 | 30.249 | 98.691 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4519 | 0 | 902.758 | 5.093 | 7.684 | 17.627 | 98.301 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 4451 | 0 | 889.332 | 5.121 | 7.58 | 17.471 | 98.676 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2539 | 0 | 506.917 | 9.768 | 11.574 | 12.918 | 100.469 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.649 | 8.608 | 1000 | 0 | 115.617 | 42.09 | 51.56 | 55.691 | 106.477 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2810 | 0 | 561.184 | 8.739 | 10.328 | 11.334 | 100.445 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2858 | 0 | 570.773 | 8.548 | 10.356 | 11.432 | 100.449 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.006 | 50.994 | 360 | 0 | 7.058 | 2548.345 | 2622.334 | 2645.293 | 123.398 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.003 | 33.985 | 240 | 0 | 7.058 | 1698.304 | 1750.326 | 1766.946 | 126.426 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.504 | 25.484 | 180 | 0 | 7.058 | 1271.549 | 1321.416 | 1333.651 | 126.742 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.001 | 17.018 | 120 | 0 | 7.058 | 849.115 | 894.043 | 908.231 | 128.496 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.22 | 14.152 | 100 | 0 | 7.032 | 710.036 | 849.562 | 865.681 | 128.625 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.504 | 8.496 | 60 | 0 | 7.056 | 424.887 | 441.74 | 449.173 | 128.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.663 | 5.666 | 40 | 0 | 7.063 | 282.683 | 295.518 | 297.679 | 128.688 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3622 | 0 | 724.351 | 1.351 | 1.438 | 1.705 | 145.918 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.002 | 941 | 0 | 188.052 | 5.281 | 5.36 | 5.668 | 145.984 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.01 | 484 | 0 | 96.626 | 10.316 | 10.39 | 10.657 | 146.047 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.02 | 99 | 0 | 19.796 | 50.45 | 50.652 | 50.919 | 146.047 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.013 | 50 | 0 | 9.942 | 100.515 | 100.678 | 100.714 | 146.047 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.583 | 200.664 | 200.733 | 146.047 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15565 | 0 | 3112.25 | 1.546 | 2.012 | 2.467 | 65.113 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14920 | 0 | 2983.208 | 1.61 | 2.133 | 2.615 | 70.18 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15368 | 0 | 3073.007 | 1.563 | 2.067 | 2.493 | 70.07 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15118 | 0 | 3022.922 | 1.587 | 2.148 | 2.616 | 70.098 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15217 | 0 | 3042.839 | 1.574 | 2.1 | 2.604 | 72.391 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13346 | 0 | 2668.525 | 1.805 | 2.379 | 2.851 | 71.566 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15148 | 0 | 3028.744 | 1.582 | 2.127 | 2.56 | 72.633 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14861 | 0 | 2971.626 | 1.608 | 2.197 | 2.779 | 73.207 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12246 | 0 | 2448.506 | 1.979 | 2.518 | 3.052 | 94.68 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6295 | 0 | 1258.194 | 3.929 | 4.813 | 5.343 | 82.582 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12195 | 0 | 2438.304 | 1.997 | 2.5 | 2.919 | 94.723 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.041 | 12224 | 0 | 2434.694 | 1.53 | 2.276 | 41.196 | 77.258 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 9189 | 0 | 1836.812 | 2.499 | 3.783 | 5.919 | 108.438 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3474 | 0 | 694.017 | 7.21 | 8.67 | 9.469 | 86.965 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9275 | 0 | 1854.26 | 2.505 | 3.493 | 6.03 | 79.09 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8934 | 0 | 1786.091 | 2.565 | 3.774 | 6.779 | 79.277 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7081 | 0 | 1415.481 | 3.211 | 5.07 | 8.104 | 136.309 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 2.422 | 1994 | 0 | 397.628 | 12.522 | 15.244 | 16.637 | 90.809 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6853 | 0 | 1369.91 | 3.314 | 5.204 | 14.966 | 86.117 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6622 | 0 | 1323.621 | 3.38 | 5.465 | 15.637 | 86.43 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4185 | 0 | 836.366 | 5.604 | 7.868 | 19.029 | 141.164 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.023 | 4.535 | 1036 | 0 | 206.268 | 24.15 | 28.513 | 30.779 | 99.93 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.02 | 4371 | 0 | 873.603 | 5.323 | 7.04 | 19.527 | 98.059 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4279 | 0 | 854.888 | 5.389 | 7.732 | 19.438 | 98.375 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2530 | 0 | 505.218 | 9.78 | 11.635 | 12.495 | 121.0 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.044 | 8.58 | 1000 | 0 | 110.572 | 45.243 | 52.378 | 56.268 | 107.508 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2783 | 0 | 555.62 | 8.839 | 10.451 | 11.592 | 109.082 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2784 | 0 | 555.85 | 8.785 | 10.612 | 11.799 | 109.707 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.017 | 51.013 | 360 | 0 | 7.057 | 2545.069 | 2632.757 | 2650.669 | 125.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.007 | 34.001 | 240 | 0 | 7.057 | 1692.809 | 1770.122 | 1794.842 | 131.902 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.516 | 25.487 | 180 | 0 | 7.054 | 1267.04 | 1336.055 | 1351.678 | 132.027 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.004 | 17.009 | 120 | 0 | 7.057 | 844.614 | 891.794 | 900.016 | 132.16 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.164 | 14.149 | 100 | 0 | 7.06 | 708.024 | 842.402 | 862.098 | 132.168 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.502 | 8.498 | 60 | 0 | 7.057 | 422.964 | 444.465 | 455.551 | 132.168 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.669 | 5.66 | 40 | 0 | 7.056 | 282.297 | 295.775 | 296.517 | 132.168 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3596 | 0 | 719.094 | 1.357 | 1.466 | 1.69 | 132.918 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.005 | 937 | 0 | 187.309 | 5.294 | 5.488 | 5.68 | 132.98 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.008 | 480 | 0 | 95.874 | 10.379 | 10.557 | 10.914 | 132.98 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.028 | 99 | 0 | 19.735 | 50.622 | 50.712 | 50.86 | 132.984 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.014 | 50 | 0 | 9.93 | 100.632 | 100.687 | 100.762 | 132.984 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.618 | 200.691 | 200.702 | 132.984 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15142 | 0 | 3027.767 | 1.58 | 2.143 | 2.613 | 65.227 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14759 | 0 | 2951.131 | 1.626 | 2.168 | 2.644 | 65.438 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15147 | 0 | 3028.749 | 1.581 | 2.126 | 2.58 | 65.563 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14876 | 0 | 2974.337 | 1.608 | 2.241 | 2.717 | 65.84 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15015 | 0 | 3002.17 | 1.591 | 2.187 | 2.675 | 67.305 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13087 | 0 | 2616.623 | 1.836 | 2.457 | 3.019 | 67.566 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14985 | 0 | 2996.241 | 1.596 | 2.193 | 2.651 | 67.863 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 14642 | 0 | 2927.21 | 1.629 | 2.297 | 2.828 | 68.828 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12116 | 0 | 2422.283 | 1.998 | 2.618 | 3.148 | 75.645 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6198 | 0 | 1238.531 | 3.979 | 4.904 | 5.437 | 72.402 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12129 | 0 | 2424.776 | 2.006 | 2.488 | 2.89 | 87.664 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.036 | 2.002 | 11955 | 0 | 2374.122 | 1.566 | 2.378 | 41.216 | 72.309 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8867 | 0 | 1772.245 | 2.545 | 4.178 | 6.554 | 107.719 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3384 | 0 | 676.12 | 7.408 | 8.878 | 9.62 | 82.34 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9027 | 0 | 1804.564 | 2.511 | 4.045 | 6.205 | 77.328 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8819 | 0 | 1762.755 | 2.585 | 4.083 | 6.709 | 77.016 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 6665 | 0 | 1331.873 | 3.368 | 5.601 | 16.896 | 138.465 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.543 | 1910 | 0 | 381.034 | 13.167 | 15.767 | 16.932 | 91.5 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6501 | 0 | 1299.599 | 3.394 | 6.012 | 18.083 | 90.035 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6367 | 0 | 1272.429 | 3.466 | 6.134 | 17.784 | 90.039 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.004 | 3867 | 0 | 772.042 | 5.981 | 9.18 | 21.605 | 146.145 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.695 | 1063 | 0 | 211.763 | 23.521 | 28.506 | 30.238 | 99.438 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4203 | 0 | 840.001 | 5.437 | 8.289 | 22.101 | 102.18 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4300 | 0 | 859.229 | 5.199 | 8.089 | 21.716 | 102.18 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2476 | 0 | 494.387 | 10.031 | 11.873 | 12.971 | 125.051 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.009 | 8.155 | 1000 | 0 | 110.995 | 44.536 | 52.65 | 56.397 | 103.141 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2698 | 0 | 538.789 | 9.103 | 10.876 | 12.127 | 103.613 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2598 | 0 | 518.804 | 9.424 | 11.476 | 12.418 | 103.613 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.061 | 51.028 | 360 | 0 | 7.05 | 2554.169 | 2619.076 | 2634.455 | 125.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.042 | 34.019 | 240 | 0 | 7.05 | 1693.57 | 1771.77 | 1792.213 | 127.707 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.504 | 25.516 | 180 | 0 | 7.058 | 1270.499 | 1323.911 | 1336.217 | 128.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.021 | 17.005 | 120 | 0 | 7.05 | 850.964 | 889.688 | 897.249 | 128.395 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.18 | 14.184 | 100 | 0 | 7.052 | 728.899 | 835.299 | 864.447 | 132.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.505 | 8.512 | 60 | 0 | 7.055 | 423.346 | 449.788 | 460.58 | 132.008 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.669 | 5.668 | 40 | 0 | 7.056 | 283.077 | 296.915 | 303.431 | 132.008 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3575 | 0 | 714.837 | 1.363 | 1.51 | 1.792 | 137.168 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.005 | 934 | 0 | 186.738 | 5.315 | 5.459 | 5.656 | 137.293 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.006 | 478 | 0 | 95.582 | 10.413 | 10.579 | 10.736 | 137.293 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.027 | 99 | 0 | 19.735 | 50.612 | 50.717 | 50.855 | 137.293 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.015 | 50 | 0 | 9.931 | 100.633 | 100.724 | 100.781 | 137.293 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.008 | 25 | 0 | 4.981 | 200.666 | 200.778 | 201.334 | 137.293 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.124 | 1000 | 0 | 61.992 | 40.992 | 41.97 | 42.466 | 29.66 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.121 | 1000 | 0 | 61.992 | 40.993 | 41.968 | 42.327 | 29.961 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.104 | 1000 | 0 | 61.986 | 40.991 | 41.963 | 42.287 | 30.035 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.143 | 16.11 | 1000 | 0 | 61.948 | 40.994 | 41.98 | 42.459 | 30.156 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.143 | 16.107 | 1000 | 0 | 61.945 | 41.001 | 41.986 | 42.485 | 30.168 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.106 | 1000 | 0 | 62.001 | 40.989 | 41.968 | 42.357 | 30.168 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.103 | 1000 | 0 | 61.973 | 40.992 | 42.003 | 42.505 | 30.309 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.168 | 16.106 | 1000 | 0 | 61.851 | 40.989 | 41.942 | 42.28 | 30.93 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.081 | 13.184 | 1000 | 0 | 71.02 | 40.982 | 41.976 | 42.456 | 31.02 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.858 | 13.197 | 1000 | 0 | 67.304 | 40.983 | 41.974 | 42.526 | 31.055 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11339 | 0 | 2266.789 | 1.252 | 2.09 | 8.297 | 31.457 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.019 | 13.14 | 1000 | 0 | 71.33 | 41.014 | 42.133 | 43.07 | 35.965 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.17 | 11.27 | 1000 | 0 | 89.529 | 41.848 | 42.807 | 44.869 | 35.965 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.29 | 13.014 | 1000 | 0 | 97.186 | 41.898 | 42.909 | 43.96 | 35.965 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8442 | 0 | 1687.648 | 1.589 | 2.744 | 41.565 | 36.152 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.976 | 13.065 | 1000 | 0 | 77.063 | 41.942 | 42.93 | 43.826 | 41.371 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.15 | 14.319 | 1000 | 0 | 70.67 | 41.995 | 43.369 | 44.317 | 41.379 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.251 | 13.098 | 1000 | 0 | 81.625 | 41.978 | 43.303 | 44.478 | 41.379 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6476 | 0 | 1294.357 | 2.06 | 3.373 | 22.37 | 41.379 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.92 | 15.399 | 1000 | 0 | 67.025 | 42.938 | 43.95 | 46.248 | 47.664 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.188 | 15.367 | 1000 | 0 | 70.481 | 43.361 | 44.944 | 46.356 | 47.152 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.266 | 15.285 | 1000 | 0 | 75.382 | 43.382 | 44.982 | 51.683 | 47.152 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.004 | 4259 | 0 | 850.738 | 3.165 | 5.644 | 21.273 | 50.762 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.713 | 15.507 | 1000 | 0 | 63.643 | 44.678 | 46.261 | 49.993 | 52.293 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.393 | 15.594 | 1000 | 0 | 69.478 | 45.921 | 48.045 | 49.944 | 52.293 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.792 | 16.231 | 1000 | 0 | 63.322 | 46.367 | 48.125 | 50.178 | 52.293 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.054 | 2756 | 0 | 550.345 | 5.334 | 7.345 | 15.277 | 58.305 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.148 | 17.499 | 1000 | 0 | 58.316 | 47.925 | 50.738 | 53.662 | 69.621 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.009 | 28.78 | 363 | 0 | 12.513 | 241.749 | 243.217 | 19612.164 | 70.063 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.425 | 19.183 | 243 | 0 | 12.51 | 241.846 | 242.852 | 12809.537 | 70.066 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.385 | 183 | 0 | 12.511 | 241.87 | 242.87 | 10028.596 | 70.066 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.593 | 123 | 0 | 12.517 | 241.682 | 242.533 | 5230.167 | 70.066 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.837 | 9.59 | 103 | 0 | 10.471 | 241.894 | 242.987 | 5138.452 | 70.094 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.794 | 63 | 0 | 12.508 | 241.752 | 242.495 | 242.567 | 70.098 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.794 | 42 | 0 | 8.346 | 241.588 | 242.235 | 242.275 | 70.102 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.362 | 41.963 | 42.085 | 42.962 | 70.148 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.031 | 113 | 0 | 22.404 | 45.908 | 46.038 | 46.085 | 70.168 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.05 | 2.023 | 99 | 0 | 19.606 | 51.042 | 51.99 | 52.022 | 70.18 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.075 | 55 | 0 | 10.983 | 91.941 | 92.021 | 92.478 | 70.18 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.056 | 2.081 | 36 | 0 | 7.121 | 141.673 | 141.995 | 142.102 | 70.18 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.379 | 21 | 0 | 4.173 | 241.47 | 242.016 | 242.265 | 70.184 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.142 | 1000 | 0 | 61.998 | 40.997 | 41.952 | 42.365 | 29.602 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.103 | 1000 | 0 | 62.0 | 40.992 | 41.96 | 42.138 | 29.715 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.098 | 1000 | 0 | 61.998 | 40.989 | 41.981 | 42.428 | 29.871 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.101 | 1000 | 0 | 62.014 | 40.988 | 41.954 | 42.135 | 30.137 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.146 | 16.114 | 1000 | 0 | 61.935 | 41.0 | 41.98 | 42.294 | 30.176 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.11 | 1000 | 0 | 61.979 | 40.991 | 41.978 | 42.572 | 30.207 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.095 | 1000 | 0 | 61.998 | 40.986 | 41.963 | 42.108 | 30.219 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.182 | 16.118 | 1000 | 0 | 61.797 | 40.996 | 41.982 | 42.637 | 30.496 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.324 | 12.459 | 1000 | 0 | 65.259 | 40.984 | 41.976 | 42.536 | 30.57 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.693 | 10.581 | 1000 | 0 | 68.058 | 40.982 | 41.971 | 42.675 | 30.617 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 11598 | 0 | 2318.314 | 1.241 | 1.99 | 10.675 | 31.117 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.567 | 13.158 | 1000 | 0 | 68.649 | 41.012 | 42.105 | 43.05 | 34.996 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.245 | 13.002 | 1000 | 0 | 75.503 | 41.919 | 42.778 | 44.037 | 34.996 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.154 | 11.22 | 1000 | 0 | 89.651 | 41.89 | 42.732 | 43.378 | 34.996 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 8138 | 0 | 1626.351 | 1.67 | 2.801 | 41.247 | 35.105 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.532 | 12.95 | 1000 | 0 | 73.897 | 41.952 | 42.954 | 44.0 | 40.719 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.664 | 14.78 | 1000 | 0 | 73.184 | 41.996 | 43.264 | 46.002 | 37.891 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.521 | 14.407 | 1000 | 0 | 68.868 | 41.991 | 43.072 | 44.851 | 37.891 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 6319 | 0 | 1263.078 | 2.096 | 3.599 | 22.263 | 39.359 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.845 | 15.221 | 1000 | 0 | 67.361 | 42.93 | 43.996 | 48.268 | 43.754 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.156 | 15.32 | 1000 | 0 | 82.261 | 42.992 | 44.982 | 48.636 | 43.754 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.933 | 14.006 | 1000 | 0 | 71.774 | 43.614 | 44.997 | 50.999 | 43.754 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4344 | 0 | 868.113 | 3.092 | 5.471 | 21.437 | 47.098 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.19 | 16.14 | 1000 | 0 | 65.835 | 44.491 | 46.08 | 63.419 | 53.789 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.365 | 15.354 | 1000 | 0 | 65.083 | 45.938 | 47.967 | 49.804 | 53.789 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.894 | 15.699 | 1000 | 0 | 67.142 | 45.966 | 48.064 | 51.082 | 53.789 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.01 | 2.097 | 2715 | 0 | 541.889 | 5.367 | 7.57 | 14.261 | 59.801 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.869 | 17.85 | 1000 | 0 | 59.281 | 47.971 | 50.892 | 54.42 | 84.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.019 | 28.779 | 363 | 0 | 12.509 | 241.846 | 243.928 | 19618.895 | 82.496 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.42 | 19.179 | 243 | 0 | 12.513 | 241.733 | 242.946 | 12805.954 | 82.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.384 | 183 | 0 | 12.513 | 241.88 | 243.007 | 10024.409 | 82.539 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.588 | 123 | 0 | 12.515 | 241.665 | 242.545 | 5235.065 | 82.547 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.577 | 103 | 0 | 10.478 | 241.68 | 242.561 | 5135.907 | 82.547 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.798 | 63 | 0 | 12.508 | 241.71 | 242.481 | 242.94 | 82.547 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.793 | 42 | 0 | 8.347 | 241.276 | 242.288 | 242.319 | 82.547 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.019 | 122 | 0 | 24.347 | 41.963 | 42.499 | 42.996 | 82.605 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.029 | 112 | 0 | 22.321 | 45.942 | 46.049 | 46.838 | 82.676 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 2.024 | 99 | 0 | 19.695 | 50.966 | 51.967 | 52.006 | 82.676 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.07 | 55 | 0 | 10.99 | 91.919 | 92.036 | 92.456 | 82.676 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.09 | 36 | 0 | 7.105 | 141.954 | 142.003 | 142.044 | 82.676 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.379 | 21 | 0 | 4.172 | 241.341 | 242.034 | 242.839 | 82.676 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.143 | 16.133 | 1000 | 0 | 61.946 | 41.0 | 41.964 | 42.387 | 29.785 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.107 | 1000 | 0 | 62.01 | 40.995 | 41.977 | 42.246 | 29.949 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.138 | 16.107 | 1000 | 0 | 61.964 | 40.995 | 41.979 | 42.277 | 30.027 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.106 | 1000 | 0 | 61.962 | 40.993 | 41.963 | 42.282 | 30.137 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.177 | 16.102 | 1000 | 0 | 61.817 | 40.991 | 41.954 | 42.326 | 30.297 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.101 | 1000 | 0 | 61.996 | 40.998 | 41.978 | 42.42 | 30.305 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.096 | 1000 | 0 | 61.982 | 40.993 | 41.941 | 42.296 | 30.324 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.125 | 1000 | 0 | 61.956 | 40.993 | 41.978 | 42.338 | 30.844 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.848 | 14.401 | 1000 | 0 | 67.347 | 40.982 | 41.972 | 42.925 | 30.867 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.127 | 13.494 | 1000 | 0 | 66.108 | 40.98 | 41.992 | 42.829 | 30.879 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 11520 | 0 | 2302.707 | 1.252 | 2.007 | 6.361 | 31.258 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.296 | 13.478 | 1000 | 0 | 69.952 | 40.992 | 41.995 | 43.049 | 33.965 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.883 | 13.082 | 1000 | 0 | 77.623 | 41.906 | 42.807 | 43.932 | 33.965 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.367 | 11.756 | 1000 | 0 | 74.813 | 41.925 | 42.772 | 43.938 | 33.965 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8898 | 0 | 1778.812 | 1.538 | 2.475 | 42.167 | 34.258 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.898 | 13.315 | 1000 | 0 | 71.951 | 41.958 | 42.969 | 43.848 | 39.691 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.319 | 14.881 | 1000 | 0 | 69.839 | 41.982 | 43.151 | 44.927 | 39.691 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.019 | 13.989 | 1000 | 0 | 71.329 | 41.988 | 43.129 | 46.03 | 39.691 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.087 | 6268 | 0 | 1252.883 | 2.154 | 3.468 | 23.139 | 39.801 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.462 | 15.037 | 1000 | 0 | 64.676 | 42.941 | 43.957 | 45.142 | 46.344 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.543 | 14.714 | 1000 | 0 | 68.762 | 43.031 | 44.605 | 46.925 | 46.344 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.617 | 15.047 | 1000 | 0 | 68.415 | 43.768 | 44.957 | 54.42 | 46.344 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.007 | 4305 | 0 | 860.172 | 3.084 | 5.531 | 24.804 | 47.754 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.992 | 16.0 | 1000 | 0 | 62.53 | 44.711 | 46.164 | 48.215 | 52.145 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.124 | 15.318 | 1000 | 0 | 66.121 | 45.913 | 48.11 | 51.283 | 52.145 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.961 | 16.265 | 1000 | 0 | 62.654 | 45.991 | 48.082 | 49.962 | 52.145 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.033 | 2708 | 0 | 540.893 | 5.436 | 7.388 | 14.85 | 58.156 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.166 | 17.666 | 1000 | 0 | 58.255 | 47.943 | 50.815 | 53.11 | 84.707 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.993 | 28.782 | 363 | 0 | 12.52 | 241.612 | 242.944 | 19598.508 | 85.164 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.423 | 19.172 | 243 | 0 | 12.511 | 241.876 | 242.631 | 12811.787 | 85.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.379 | 183 | 0 | 12.516 | 241.71 | 242.667 | 10021.776 | 85.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.588 | 123 | 0 | 12.508 | 241.769 | 242.755 | 5237.929 | 85.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.587 | 103 | 0 | 10.478 | 241.727 | 242.568 | 5133.603 | 85.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.798 | 63 | 0 | 12.507 | 241.789 | 242.552 | 243.293 | 85.195 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.795 | 42 | 0 | 8.335 | 241.909 | 242.268 | 242.301 | 85.199 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.019 | 122 | 0 | 24.323 | 41.97 | 42.931 | 42.977 | 85.27 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.029 | 112 | 0 | 22.326 | 45.937 | 46.162 | 46.963 | 85.289 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.019 | 99 | 0 | 19.659 | 50.975 | 51.994 | 52.106 | 85.297 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.074 | 55 | 0 | 10.972 | 91.935 | 92.396 | 92.913 | 85.32 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.089 | 36 | 0 | 7.104 | 141.949 | 142.015 | 142.035 | 85.32 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.376 | 21 | 0 | 4.169 | 241.93 | 242.03 | 242.05 | 85.32 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15292 | 0 | 3057.637 | 1.576 | 2.047 | 2.498 | 70.648 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14920 | 0 | 2983.255 | 1.616 | 2.106 | 2.449 | 71.043 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15316 | 0 | 3062.357 | 1.57 | 2.076 | 2.531 | 70.488 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15063 | 0 | 3011.986 | 1.597 | 2.13 | 2.624 | 70.438 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15160 | 0 | 3031.398 | 1.584 | 2.121 | 2.612 | 72.273 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13161 | 0 | 2631.538 | 1.832 | 2.392 | 2.882 | 71.738 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15094 | 0 | 3018.08 | 1.593 | 2.133 | 2.598 | 72.145 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14892 | 0 | 2977.702 | 1.611 | 2.186 | 2.675 | 73.129 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12372 | 0 | 2473.604 | 1.96 | 2.487 | 2.928 | 81.035 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6331 | 0 | 1265.377 | 3.889 | 4.788 | 5.267 | 77.16 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12430 | 0 | 2485.235 | 1.947 | 2.502 | 2.973 | 82.094 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.033 | 2.007 | 12233 | 0 | 2430.338 | 1.34 | 2.278 | 41.392 | 73.309 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8825 | 0 | 1763.841 | 2.545 | 4.141 | 7.362 | 107.836 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3447 | 0 | 688.603 | 7.236 | 8.725 | 9.492 | 84.496 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9177 | 0 | 1834.749 | 2.458 | 3.683 | 5.825 | 78.375 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8917 | 0 | 1782.161 | 2.535 | 3.99 | 5.84 | 78.375 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 6695 | 0 | 1337.976 | 3.33 | 5.163 | 21.446 | 126.023 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.426 | 1988 | 0 | 396.801 | 12.418 | 15.217 | 16.421 | 87.625 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.014 | 6765 | 0 | 1351.827 | 3.301 | 4.966 | 21.835 | 89.699 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6554 | 0 | 1310.159 | 3.36 | 5.218 | 21.907 | 89.793 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4121 | 0 | 823.599 | 5.497 | 8.287 | 26.376 | 122.059 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.658 | 1050 | 0 | 209.184 | 23.909 | 27.954 | 29.985 | 90.266 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4235 | 0 | 846.237 | 5.231 | 8.076 | 26.827 | 92.75 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 4196 | 0 | 838.409 | 5.273 | 8.011 | 26.876 | 92.75 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2463 | 0 | 491.898 | 10.022 | 12.004 | 13.03 | 101.578 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.998 | 8.8 | 1000 | 0 | 111.132 | 45.048 | 51.759 | 54.509 | 92.32 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2678 | 0 | 534.769 | 9.196 | 10.614 | 11.346 | 96.762 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2656 | 0 | 530.357 | 9.207 | 11.034 | 11.966 | 96.762 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.196 | 51.19 | 360 | 0 | 7.032 | 2557.81 | 2596.866 | 2603.836 | 121.16 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.125 | 34.124 | 240 | 0 | 7.033 | 1705.074 | 1742.271 | 1756.072 | 121.66 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.587 | 25.586 | 180 | 0 | 7.035 | 1278.462 | 1308.687 | 1326.835 | 122.23 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.063 | 17.053 | 120 | 0 | 7.033 | 852.663 | 880.672 | 887.713 | 123.434 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.223 | 14.269 | 100 | 0 | 7.031 | 730.08 | 848.645 | 860.452 | 123.434 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.538 | 8.528 | 60 | 0 | 7.027 | 428.805 | 446.58 | 452.275 | 123.5 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.691 | 5.684 | 40 | 0 | 7.028 | 284.468 | 289.211 | 297.21 | 123.527 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 1673 | 0 | 334.527 | 2.981 | 3.276 | 3.396 | 118.82 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.006 | 508 | 0 | 101.51 | 9.78 | 10.447 | 10.875 | 118.949 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.007 | 352 | 0 | 70.244 | 14.253 | 14.506 | 14.717 | 119.074 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.028 | 99 | 0 | 19.745 | 50.546 | 51.072 | 51.435 | 119.074 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.013 | 50 | 0 | 9.935 | 100.56 | 100.824 | 101.34 | 119.078 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.563 | 200.618 | 200.634 | 119.078 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15295 | 0 | 3058.231 | 1.574 | 2.064 | 2.462 | 70.285 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14828 | 0 | 2964.787 | 1.627 | 2.098 | 2.485 | 70.605 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15316 | 0 | 3062.665 | 1.572 | 2.062 | 2.5 | 70.848 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15116 | 0 | 3022.384 | 1.591 | 2.11 | 2.606 | 71.223 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15074 | 0 | 3014.02 | 1.594 | 2.117 | 2.606 | 72.797 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13163 | 0 | 2632.009 | 1.832 | 2.385 | 2.874 | 73.031 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15124 | 0 | 3024.146 | 1.588 | 2.121 | 2.599 | 73.09 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14956 | 0 | 2990.407 | 1.602 | 2.18 | 2.643 | 73.969 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12350 | 0 | 2469.091 | 1.96 | 2.487 | 2.976 | 82.449 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 6272 | 0 | 1253.798 | 3.935 | 4.78 | 5.294 | 77.977 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12372 | 0 | 2473.74 | 1.962 | 2.457 | 2.879 | 82.473 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.011 | 12320 | 0 | 2459.816 | 1.653 | 2.368 | 3.4 | 74.977 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8787 | 0 | 1756.308 | 2.563 | 3.91 | 6.57 | 110.797 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3433 | 0 | 685.89 | 7.257 | 8.731 | 9.464 | 84.496 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 2.002 | 9091 | 0 | 1811.68 | 2.496 | 3.619 | 5.737 | 78.703 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8924 | 0 | 1783.707 | 2.552 | 3.721 | 5.349 | 78.641 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.003 | 6404 | 0 | 1279.048 | 3.484 | 5.165 | 23.041 | 124.754 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.463 | 1960 | 0 | 391.23 | 12.816 | 15.296 | 16.617 | 90.789 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6869 | 0 | 1373.128 | 3.231 | 4.939 | 22.988 | 81.156 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.144 | 2.003 | 6377 | 0 | 1239.773 | 3.415 | 5.514 | 23.472 | 81.246 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4098 | 0 | 818.989 | 5.467 | 8.521 | 27.268 | 121.586 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.583 | 1054 | 0 | 209.988 | 23.847 | 27.935 | 30.048 | 89.406 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4147 | 0 | 828.577 | 5.337 | 8.511 | 28.041 | 86.551 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4166 | 0 | 832.258 | 5.267 | 8.554 | 27.961 | 86.551 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.057 | 2421 | 0 | 483.38 | 10.162 | 12.266 | 13.38 | 97.676 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.008 | 8.679 | 1000 | 0 | 111.014 | 44.766 | 52.561 | 55.321 | 93.238 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 2614 | 0 | 522.065 | 9.401 | 11.224 | 11.939 | 91.121 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2632 | 0 | 525.676 | 9.407 | 10.878 | 11.905 | 91.121 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.19 | 51.192 | 360 | 0 | 7.033 | 2562.765 | 2596.039 | 2618.238 | 110.793 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.136 | 34.132 | 240 | 0 | 7.031 | 1705.272 | 1734.323 | 1737.604 | 114.043 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.596 | 25.595 | 180 | 0 | 7.032 | 1278.817 | 1308.504 | 1315.8 | 114.047 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.072 | 17.056 | 120 | 0 | 7.029 | 855.21 | 878.455 | 883.686 | 114.238 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.227 | 14.216 | 100 | 0 | 7.029 | 761.341 | 852.095 | 856.338 | 114.301 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.534 | 8.53 | 60 | 0 | 7.031 | 425.998 | 446.087 | 449.551 | 114.301 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.688 | 5.68 | 40 | 0 | 7.032 | 284.325 | 288.942 | 293.276 | 114.301 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1679 | 0 | 335.645 | 2.966 | 3.293 | 3.44 | 118.699 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.001 | 499 | 0 | 99.605 | 10.018 | 10.596 | 10.866 | 121.449 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.004 | 347 | 0 | 69.309 | 14.4 | 14.729 | 15.106 | 121.449 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.025 | 99 | 0 | 19.761 | 50.528 | 50.705 | 51.165 | 121.449 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.014 | 50 | 0 | 9.939 | 100.548 | 100.628 | 100.77 | 121.449 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.548 | 200.606 | 200.607 | 121.449 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15252 | 0 | 3049.633 | 1.578 | 2.057 | 2.591 | 68.914 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14864 | 0 | 2972.183 | 1.622 | 2.109 | 2.502 | 69.098 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15280 | 0 | 3055.321 | 1.573 | 2.08 | 2.551 | 69.004 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15074 | 0 | 3014.109 | 1.589 | 2.155 | 2.617 | 68.918 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15185 | 0 | 3036.252 | 1.58 | 2.118 | 2.614 | 70.176 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13157 | 0 | 2630.553 | 1.837 | 2.377 | 2.848 | 70.449 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15143 | 0 | 3027.892 | 1.586 | 2.121 | 2.636 | 70.965 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14929 | 0 | 2985.111 | 1.603 | 2.202 | 2.754 | 71.66 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12432 | 0 | 2485.748 | 1.953 | 2.465 | 2.93 | 78.648 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6312 | 0 | 1261.621 | 3.913 | 4.806 | 5.307 | 77.867 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12312 | 0 | 2461.747 | 1.975 | 2.458 | 2.823 | 85.215 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.014 | 2.035 | 12145 | 0 | 2422.179 | 1.855 | 2.429 | 3.626 | 74.488 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8877 | 0 | 1774.764 | 2.538 | 3.884 | 6.086 | 104.191 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3405 | 0 | 680.249 | 7.312 | 8.785 | 9.676 | 81.063 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 8662 | 0 | 1731.881 | 2.55 | 4.09 | 8.157 | 76.426 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8728 | 0 | 1745.069 | 2.556 | 3.98 | 6.492 | 76.301 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 6577 | 0 | 1314.873 | 3.316 | 5.355 | 23.924 | 115.754 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.409 | 1929 | 0 | 385.024 | 12.979 | 15.431 | 16.661 | 84.832 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6364 | 0 | 1272.145 | 3.427 | 5.547 | 25.475 | 84.789 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6341 | 0 | 1267.46 | 3.424 | 5.429 | 24.98 | 84.875 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 3946 | 0 | 788.514 | 5.704 | 9.001 | 28.847 | 135.441 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.528 | 1051 | 0 | 209.446 | 23.946 | 27.894 | 29.629 | 88.391 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.006 | 3951 | 0 | 789.676 | 5.61 | 8.727 | 29.832 | 87.414 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.029 | 4014 | 0 | 802.164 | 5.526 | 8.329 | 29.2 | 87.414 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.182 | 2363 | 0 | 471.918 | 10.504 | 12.166 | 13.092 | 100.859 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.064 | 8.611 | 1000 | 0 | 110.324 | 45.09 | 52.58 | 54.715 | 93.395 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.008 | 2463 | 0 | 491.481 | 10.09 | 11.661 | 12.647 | 89.48 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.01 | 2498 | 0 | 498.806 | 9.937 | 11.671 | 12.639 | 89.48 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.2 | 51.214 | 360 | 0 | 7.031 | 2557.63 | 2593.883 | 2605.605 | 105.844 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.121 | 34.131 | 240 | 0 | 7.034 | 1705.106 | 1740.004 | 1749.446 | 115.672 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.594 | 25.604 | 180 | 0 | 7.033 | 1280.918 | 1311.166 | 1324.923 | 115.77 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.059 | 17.063 | 120 | 0 | 7.035 | 853.084 | 876.019 | 879.749 | 115.77 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.263 | 14.263 | 100 | 0 | 7.011 | 779.718 | 858.347 | 867.389 | 116.207 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.532 | 8.531 | 60 | 0 | 7.032 | 426.621 | 438.297 | 439.647 | 116.207 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.689 | 5.68 | 40 | 0 | 7.031 | 284.398 | 289.723 | 290.534 | 116.207 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1644 | 0 | 328.643 | 2.991 | 3.297 | 3.484 | 116.891 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.006 | 497 | 0 | 99.292 | 10.023 | 10.656 | 10.918 | 118.965 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.004 | 350 | 0 | 69.856 | 14.324 | 14.724 | 15.014 | 118.965 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.024 | 99 | 0 | 19.783 | 50.499 | 50.595 | 50.708 | 118.965 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.013 | 50 | 0 | 9.94 | 100.542 | 100.632 | 100.759 | 118.965 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.985 | 200.557 | 200.619 | 200.624 | 118.965 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

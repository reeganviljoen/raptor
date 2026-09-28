# Puma vs Raptor Simulation

Run ID: `20260928-033557`

## Environment

- Ruby: `ruby 4.0.7 (2026-09-15 revision 229531a6cf) +PRISM [aarch64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.126 | 1000 | 0 | 62.026 | 40.983 | 41.974 | 42.407 | 29.313 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.124 | 1000 | 0 | 62.051 | 40.983 | 41.925 | 42.545 | 29.34 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.148 | 1000 | 0 | 62.087 | 40.977 | 41.828 | 42.269 | 29.422 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.115 | 1000 | 0 | 62.092 | 40.983 | 41.953 | 42.2 | 29.488 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.115 | 1000 | 0 | 62.069 | 40.983 | 41.926 | 42.053 | 29.488 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.125 | 1000 | 0 | 62.06 | 40.98 | 41.959 | 42.308 | 29.488 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.142 | 1000 | 0 | 62.086 | 40.981 | 41.932 | 42.256 | 29.488 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.162 | 1000 | 0 | 62.018 | 40.983 | 41.961 | 42.338 | 30.609 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.2 | 14.812 | 1000 | 0 | 70.423 | 40.962 | 41.956 | 42.162 | 30.609 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.158 | 14.225 | 1000 | 0 | 65.97 | 40.964 | 41.938 | 42.312 | 30.609 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12997 | 0 | 2598.218 | 1.033 | 2.015 | 11.796 | 30.609 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.345 | 14.14 | 1000 | 0 | 65.168 | 40.971 | 41.968 | 42.799 | 42.348 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.852 | 11.267 | 1000 | 0 | 84.373 | 41.021 | 42.312 | 43.122 | 42.348 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.733 | 8.743 | 1000 | 0 | 102.74 | 40.992 | 42.226 | 42.972 | 42.348 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9618 | 0 | 1922.894 | 1.372 | 2.769 | 27.102 | 42.348 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.773 | 11.001 | 1000 | 0 | 78.291 | 41.618 | 42.299 | 43.173 | 54.711 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.566 | 13.207 | 1000 | 0 | 79.578 | 41.925 | 42.943 | 46.895 | 54.711 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.029 | 12.734 | 1000 | 0 | 71.281 | 41.953 | 42.95 | 43.272 | 54.711 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 7798 | 0 | 1558.416 | 1.587 | 3.185 | 35.636 | 54.711 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.962 | 14.971 | 1000 | 0 | 66.835 | 41.97 | 43.054 | 44.177 | 68.605 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.873 | 15.505 | 1000 | 0 | 67.237 | 42.033 | 43.911 | 48.675 | 68.605 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.161 | 15.175 | 1000 | 0 | 70.617 | 42.823 | 44.331 | 46.211 | 68.605 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.009 | 5764 | 0 | 1151.906 | 2.267 | 4.513 | 26.223 | 68.605 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.322 | 16.139 | 1000 | 0 | 65.265 | 42.967 | 44.639 | 45.977 | 73.125 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.725 | 16.086 | 1000 | 0 | 63.593 | 43.944 | 45.902 | 46.908 | 67.09 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.707 | 15.645 | 1000 | 0 | 63.665 | 43.966 | 45.693 | 47.181 | 67.09 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.007 | 3854 | 0 | 769.957 | 3.562 | 6.663 | 16.415 | 74.074 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.484 | 17.363 | 1000 | 0 | 60.666 | 45.132 | 49.013 | 51.267 | 91.605 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.01 | 28.774 | 363 | 0 | 12.513 | 241.793 | 243.019 | 19610.776 | 91.965 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.185 | 243 | 0 | 12.512 | 241.837 | 242.812 | 12800.969 | 91.988 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.387 | 183 | 0 | 12.513 | 241.724 | 243.022 | 10032.923 | 92.0 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.591 | 123 | 0 | 12.51 | 241.819 | 242.915 | 5232.874 | 92.0 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.587 | 103 | 0 | 10.483 | 241.754 | 242.765 | 5131.734 | 92.008 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.795 | 63 | 0 | 12.508 | 241.738 | 242.256 | 242.905 | 92.008 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 4.794 | 42 | 0 | 8.35 | 241.013 | 242.232 | 242.623 | 92.008 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.017 | 122 | 0 | 24.337 | 41.972 | 42.96 | 42.994 | 92.078 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.025 | 110 | 0 | 21.826 | 46.973 | 47.987 | 48.009 | 92.094 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.023 | 2.014 | 99 | 0 | 19.71 | 50.978 | 51.934 | 52.032 | 92.211 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.087 | 2.067 | 56 | 0 | 11.009 | 91.656 | 92.058 | 92.539 | 92.211 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.074 | 2.094 | 36 | 0 | 7.095 | 141.954 | 142.963 | 143.058 | 92.215 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.383 | 21 | 0 | 4.173 | 241.841 | 242.032 | 242.067 | 92.215 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.143 | 1000 | 0 | 61.995 | 40.983 | 41.986 | 42.626 | 27.391 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.156 | 1000 | 0 | 62.017 | 40.979 | 41.989 | 42.303 | 27.398 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.149 | 1000 | 0 | 62.062 | 40.977 | 41.951 | 42.276 | 27.422 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.167 | 1000 | 0 | 62.029 | 40.98 | 41.944 | 42.471 | 27.473 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.146 | 1000 | 0 | 62.029 | 40.981 | 41.97 | 42.602 | 27.504 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.144 | 1000 | 0 | 62.062 | 40.978 | 41.97 | 42.247 | 27.508 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.133 | 1000 | 0 | 62.067 | 40.984 | 41.962 | 42.224 | 27.527 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.139 | 1000 | 0 | 62.077 | 40.98 | 41.944 | 42.265 | 28.223 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.812 | 14.768 | 1000 | 0 | 67.515 | 40.964 | 41.972 | 42.793 | 28.289 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.039 | 13.303 | 1000 | 0 | 66.493 | 40.965 | 41.958 | 42.249 | 28.336 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12714 | 0 | 2541.667 | 1.043 | 2.099 | 6.302 | 28.574 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.628 | 14.234 | 1000 | 0 | 63.988 | 40.974 | 41.975 | 42.63 | 32.551 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.094 | 9.965 | 1000 | 0 | 82.684 | 40.99 | 42.216 | 43.322 | 32.551 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.177 | 8.078 | 1001 | 0 | 109.082 | 40.982 | 42.356 | 43.664 | 32.551 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9259 | 0 | 1850.908 | 1.366 | 2.878 | 40.433 | 32.793 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.988 | 11.533 | 1000 | 0 | 76.994 | 41.919 | 42.898 | 44.088 | 39.52 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.864 | 13.559 | 1000 | 0 | 77.737 | 41.923 | 42.918 | 43.645 | 39.52 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.746 | 12.658 | 1000 | 0 | 85.136 | 41.917 | 42.941 | 44.33 | 39.52 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7047 | 0 | 1408.533 | 1.722 | 3.542 | 26.676 | 40.055 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.732 | 14.882 | 1000 | 0 | 67.88 | 41.969 | 43.181 | 44.3 | 49.652 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.589 | 15.594 | 1000 | 0 | 68.543 | 42.044 | 44.002 | 45.543 | 47.137 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.363 | 15.214 | 1000 | 0 | 69.621 | 42.889 | 44.214 | 46.561 | 47.137 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 5030 | 0 | 1004.957 | 2.602 | 5.325 | 18.103 | 48.012 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.412 | 16.364 | 1000 | 0 | 64.886 | 43.487 | 45.485 | 47.811 | 52.332 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.427 | 15.644 | 1000 | 0 | 64.82 | 43.975 | 47.042 | 50.134 | 52.332 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.286 | 15.633 | 1000 | 0 | 65.419 | 43.982 | 46.167 | 49.147 | 52.332 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3564 | 0 | 711.817 | 3.906 | 7.346 | 10.511 | 58.344 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.496 | 17.187 | 1000 | 0 | 60.621 | 45.165 | 49.04 | 51.021 | 82.031 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.004 | 28.758 | 363 | 0 | 12.516 | 241.821 | 242.99 | 19615.105 | 79.746 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.413 | 19.173 | 243 | 0 | 12.518 | 241.761 | 242.627 | 12804.135 | 79.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.62 | 14.372 | 183 | 0 | 12.517 | 241.721 | 242.523 | 10022.981 | 79.801 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.587 | 123 | 0 | 12.519 | 241.536 | 242.8 | 5229.753 | 79.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.822 | 9.586 | 103 | 0 | 10.487 | 241.225 | 242.958 | 5131.035 | 79.809 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.794 | 63 | 0 | 12.504 | 241.767 | 242.487 | 243.333 | 79.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.79 | 42 | 0 | 8.348 | 241.251 | 242.193 | 242.261 | 79.813 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.017 | 122 | 0 | 24.357 | 41.968 | 42.909 | 43.056 | 79.824 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.028 | 109 | 0 | 21.788 | 46.964 | 47.353 | 47.973 | 79.855 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.015 | 99 | 0 | 19.667 | 50.977 | 51.989 | 52.967 | 79.918 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.088 | 2.067 | 56 | 0 | 11.007 | 91.806 | 92.012 | 92.138 | 79.918 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.086 | 36 | 0 | 7.098 | 141.967 | 142.94 | 143.002 | 79.918 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.383 | 21 | 0 | 4.165 | 241.935 | 242.943 | 242.97 | 79.918 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.133 | 1000 | 0 | 62.051 | 40.978 | 41.95 | 42.187 | 27.098 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.16 | 1000 | 0 | 62.07 | 40.975 | 41.969 | 42.163 | 27.348 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.143 | 1000 | 0 | 62.1 | 40.981 | 41.973 | 42.39 | 27.352 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.163 | 1000 | 0 | 62.075 | 40.981 | 41.88 | 42.265 | 27.434 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.131 | 1000 | 0 | 62.072 | 40.976 | 41.968 | 42.275 | 27.434 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.151 | 16.144 | 1000 | 0 | 61.916 | 40.979 | 41.888 | 42.246 | 27.523 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.114 | 1000 | 0 | 62.111 | 40.976 | 41.857 | 42.009 | 27.531 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.135 | 1000 | 0 | 62.038 | 40.982 | 41.964 | 42.214 | 28.266 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.271 | 12.166 | 1000 | 0 | 70.073 | 40.969 | 41.961 | 42.562 | 28.266 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.076 | 14.766 | 1000 | 0 | 66.33 | 40.971 | 41.97 | 42.233 | 28.266 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 14126 | 0 | 2824.529 | 0.958 | 1.799 | 7.194 | 28.605 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.13 | 13.574 | 1000 | 0 | 66.096 | 40.973 | 41.986 | 42.43 | 33.172 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.91 | 8.186 | 1000 | 0 | 83.963 | 41.071 | 42.753 | 43.299 | 33.172 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.906 | 8.955 | 1000 | 0 | 100.952 | 41.037 | 42.577 | 43.525 | 33.172 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.149 | 9698 | 0 | 1938.781 | 1.285 | 2.736 | 35.513 | 33.172 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.448 | 12.451 | 1000 | 0 | 80.335 | 41.878 | 42.566 | 43.127 | 38.789 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.742 | 13.761 | 1000 | 0 | 72.769 | 41.953 | 42.737 | 43.188 | 38.789 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.416 | 14.458 | 1000 | 0 | 74.539 | 41.951 | 42.937 | 43.988 | 38.789 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7457 | 0 | 1490.539 | 1.594 | 3.238 | 47.782 | 38.789 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.46 | 14.657 | 1000 | 0 | 69.157 | 41.968 | 43.186 | 44.156 | 45.879 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.932 | 15.299 | 1000 | 0 | 66.969 | 41.998 | 43.882 | 45.138 | 45.879 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.521 | 15.362 | 1000 | 0 | 64.43 | 41.988 | 43.933 | 47.886 | 45.879 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 5574 | 0 | 1114.105 | 2.316 | 4.827 | 16.3 | 47.477 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.429 | 15.942 | 1000 | 0 | 64.814 | 43.338 | 45.698 | 50.448 | 51.172 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.909 | 15.792 | 1000 | 0 | 67.074 | 43.956 | 46.398 | 48.016 | 50.73 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.627 | 16.164 | 1000 | 0 | 63.991 | 43.973 | 47.007 | 49.545 | 50.73 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.005 | 3730 | 0 | 744.77 | 3.709 | 6.939 | 34.309 | 56.742 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.685 | 17.1 | 1000 | 0 | 59.933 | 44.993 | 48.294 | 52.795 | 84.348 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.018 | 28.753 | 363 | 0 | 12.509 | 241.923 | 243.211 | 19608.887 | 82.855 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.435 | 19.167 | 243 | 0 | 12.504 | 241.949 | 243.064 | 12807.906 | 82.914 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.385 | 183 | 0 | 12.513 | 241.797 | 242.586 | 10022.635 | 82.949 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.589 | 123 | 0 | 12.519 | 241.46 | 242.935 | 5225.812 | 82.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.584 | 103 | 0 | 10.483 | 241.731 | 242.609 | 5134.174 | 82.961 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.791 | 63 | 0 | 12.506 | 241.742 | 242.275 | 243.111 | 82.961 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.8 | 42 | 0 | 8.338 | 241.855 | 242.255 | 243.015 | 82.969 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.017 | 122 | 0 | 24.358 | 41.963 | 42.912 | 43.013 | 82.969 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.008 | 109 | 0 | 21.77 | 46.969 | 47.932 | 47.997 | 82.98 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.026 | 2.028 | 99 | 0 | 19.698 | 50.977 | 51.98 | 52.089 | 83.066 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.067 | 55 | 0 | 10.996 | 91.941 | 92.011 | 92.474 | 83.082 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.081 | 36 | 0 | 7.108 | 141.94 | 142.087 | 142.138 | 83.082 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.38 | 21 | 0 | 4.168 | 241.94 | 242.023 | 242.072 | 83.086 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19190 | 0 | 3837.398 | 1.233 | 1.739 | 2.196 | 63.258 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18934 | 0 | 3785.5 | 1.249 | 1.775 | 2.209 | 63.473 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18941 | 0 | 3787.405 | 1.252 | 1.775 | 2.217 | 63.598 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18718 | 0 | 3742.73 | 1.272 | 1.952 | 2.35 | 64.359 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18819 | 0 | 3763.041 | 1.258 | 1.811 | 2.287 | 65.844 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16720 | 0 | 3343.216 | 1.42 | 1.982 | 2.601 | 65.871 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18850 | 0 | 3769.291 | 1.254 | 1.785 | 2.221 | 66.016 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17653 | 0 | 3529.864 | 1.342 | 2.064 | 2.493 | 68.121 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14457 | 0 | 2890.633 | 1.634 | 2.421 | 3.021 | 76.949 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7329 | 0 | 1464.889 | 3.284 | 5.007 | 6.312 | 71.379 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14119 | 0 | 2822.8 | 1.658 | 2.633 | 3.228 | 76.762 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.002 | 13822 | 0 | 2758.333 | 1.619 | 2.532 | 3.222 | 65.918 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10033 | 0 | 2005.918 | 2.195 | 3.79 | 6.064 | 99.191 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4394 | 0 | 877.799 | 5.53 | 9.39 | 10.637 | 75.668 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10618 | 0 | 2122.293 | 2.036 | 3.805 | 5.764 | 70.672 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10772 | 0 | 2153.56 | 2.037 | 3.713 | 5.416 | 70.547 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8325 | 0 | 1663.977 | 2.69 | 4.509 | 13.123 | 127.613 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.041 | 2416 | 0 | 482.228 | 10.156 | 16.886 | 19.095 | 80.121 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8377 | 0 | 1674.784 | 2.547 | 4.783 | 13.236 | 77.051 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8345 | 0 | 1668.182 | 2.5 | 4.808 | 13.163 | 77.051 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.015 | 5351 | 0 | 1069.374 | 4.373 | 7.273 | 16.295 | 126.48 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.699 | 1332 | 0 | 265.527 | 18.484 | 29.342 | 34.044 | 82.691 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5703 | 0 | 1139.851 | 3.751 | 7.38 | 16.599 | 76.059 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.009 | 5513 | 0 | 1101.511 | 3.919 | 7.499 | 16.989 | 76.063 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2995 | 0 | 597.963 | 8.274 | 12.876 | 14.659 | 128.777 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.158 | 7.197 | 1000 | 0 | 139.702 | 35.487 | 57.552 | 64.806 | 88.336 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3719 | 0 | 742.955 | 6.289 | 11.465 | 12.569 | 79.012 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3777 | 0 | 754.401 | 6.298 | 11.047 | 12.386 | 79.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.862 | 50.956 | 360 | 0 | 7.078 | 2543.238 | 2561.971 | 2571.092 | 100.484 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.924 | 33.965 | 240 | 0 | 7.075 | 1695.826 | 1714.795 | 1727.507 | 102.141 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.439 | 25.468 | 180 | 0 | 7.076 | 1271.671 | 1290.844 | 1294.14 | 102.645 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.97 | 16.997 | 120 | 0 | 7.071 | 848.216 | 858.339 | 865.824 | 102.711 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.178 | 14.218 | 100 | 0 | 7.053 | 801.277 | 848.705 | 850.738 | 102.711 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.489 | 8.494 | 60 | 0 | 7.068 | 424.132 | 435.044 | 442.812 | 102.715 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.658 | 5.658 | 40 | 0 | 7.069 | 282.792 | 283.342 | 284.117 | 102.902 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3620 | 0 | 723.924 | 1.347 | 1.465 | 1.641 | 104.219 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.003 | 941 | 0 | 187.997 | 5.27 | 5.415 | 5.522 | 104.219 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.004 | 484 | 0 | 96.738 | 10.29 | 10.408 | 10.603 | 104.34 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.024 | 99 | 0 | 19.797 | 50.456 | 50.626 | 50.946 | 104.34 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.025 | 2.011 | 50 | 0 | 9.951 | 100.442 | 100.53 | 100.576 | 104.344 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.544 | 200.648 | 200.68 | 104.344 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20071 | 0 | 4013.558 | 1.183 | 1.643 | 2.01 | 63.68 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19367 | 0 | 3872.652 | 1.216 | 1.733 | 2.204 | 63.902 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17770 | 0 | 3553.214 | 1.328 | 1.903 | 2.361 | 63.988 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17191 | 0 | 3437.198 | 1.379 | 2.143 | 2.631 | 64.359 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18451 | 0 | 3689.392 | 1.287 | 1.821 | 2.281 | 66.117 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15492 | 0 | 3097.721 | 1.531 | 2.214 | 2.761 | 66.289 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18307 | 0 | 3660.457 | 1.293 | 1.846 | 2.29 | 66.359 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18341 | 0 | 3667.161 | 1.291 | 1.968 | 2.4 | 68.684 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14222 | 0 | 2843.509 | 1.665 | 2.453 | 3.095 | 78.293 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7673 | 0 | 1533.787 | 3.114 | 4.44 | 6.076 | 72.648 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15188 | 0 | 3036.676 | 1.548 | 2.327 | 2.964 | 78.117 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.03 | 2.001 | 15279 | 0 | 3037.56 | 1.231 | 1.986 | 2.977 | 67.41 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10985 | 0 | 2195.696 | 2.018 | 3.434 | 5.25 | 99.992 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4352 | 0 | 869.399 | 5.514 | 9.412 | 10.816 | 76.707 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10198 | 0 | 2038.599 | 2.128 | 3.928 | 6.053 | 72.668 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10323 | 0 | 2063.953 | 2.105 | 3.855 | 6.091 | 72.855 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8244 | 0 | 1647.79 | 2.653 | 4.629 | 14.205 | 118.34 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.033 | 2404 | 0 | 480.044 | 10.149 | 16.972 | 19.336 | 79.105 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8350 | 0 | 1669.28 | 2.507 | 4.921 | 14.343 | 76.664 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8365 | 0 | 1672.34 | 2.483 | 4.876 | 13.707 | 76.664 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5233 | 0 | 1045.8 | 4.312 | 7.539 | 18.544 | 168.391 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.708 | 1291 | 0 | 257.344 | 18.916 | 31.766 | 36.364 | 84.516 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5445 | 0 | 1087.877 | 3.901 | 7.651 | 17.922 | 80.316 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5137 | 0 | 1026.602 | 4.171 | 8.192 | 18.652 | 80.316 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3154 | 0 | 629.942 | 7.815 | 12.511 | 14.215 | 145.418 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.078 | 7.455 | 1000 | 0 | 141.276 | 34.824 | 37.73 | 63.944 | 83.551 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3762 | 0 | 751.471 | 6.105 | 11.346 | 12.7 | 84.668 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3776 | 0 | 754.324 | 6.23 | 11.267 | 12.711 | 84.672 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.017 | 51.136 | 360 | 0 | 7.056 | 2551.323 | 2566.098 | 2571.784 | 104.254 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.013 | 34.088 | 240 | 0 | 7.056 | 1700.371 | 1715.271 | 1719.763 | 105.723 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.518 | 25.588 | 180 | 0 | 7.054 | 1275.883 | 1298.932 | 1303.205 | 105.727 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.004 | 17.028 | 120 | 0 | 7.057 | 850.457 | 864.845 | 869.289 | 101.379 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.191 | 14.203 | 100 | 0 | 7.046 | 818.759 | 851.196 | 852.558 | 104.633 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.502 | 8.534 | 60 | 0 | 7.057 | 424.982 | 429.216 | 437.139 | 106.57 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.66 | 5.656 | 40 | 0 | 7.067 | 282.704 | 283.944 | 284.048 | 106.57 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3597 | 0 | 719.374 | 1.349 | 1.474 | 1.733 | 116.016 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 943 | 0 | 188.546 | 5.265 | 5.378 | 5.52 | 118.645 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.006 | 481 | 0 | 96.03 | 10.359 | 10.506 | 10.744 | 116.703 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.025 | 99 | 0 | 19.769 | 50.519 | 50.691 | 50.74 | 116.703 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.017 | 50 | 0 | 9.94 | 100.533 | 100.656 | 100.787 | 116.703 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.547 | 200.651 | 200.817 | 116.703 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17146 | 0 | 3428.572 | 1.379 | 1.953 | 2.379 | 63.344 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16385 | 0 | 3276.349 | 1.438 | 2.071 | 2.508 | 63.617 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16637 | 0 | 3326.621 | 1.416 | 2.054 | 2.473 | 63.387 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15475 | 0 | 3094.27 | 1.529 | 2.413 | 2.915 | 63.73 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16795 | 0 | 3358.246 | 1.397 | 2.053 | 2.548 | 65.504 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14862 | 0 | 2971.759 | 1.598 | 2.29 | 2.903 | 65.68 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16887 | 0 | 3376.819 | 1.385 | 2.073 | 2.54 | 65.754 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 15349 | 0 | 3068.874 | 1.521 | 2.499 | 3.145 | 67.949 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12749 | 0 | 2549.173 | 1.846 | 2.823 | 3.445 | 77.16 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7998 | 0 | 1598.726 | 3.017 | 3.988 | 5.726 | 70.898 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15211 | 0 | 3041.373 | 1.545 | 2.272 | 2.923 | 76.887 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14813 | 0 | 2961.581 | 1.44 | 2.183 | 3.136 | 67.723 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10766 | 0 | 2152.524 | 2.029 | 3.53 | 6.121 | 106.387 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4435 | 0 | 885.965 | 5.465 | 9.127 | 10.498 | 77.156 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10744 | 0 | 2148.119 | 1.984 | 3.724 | 6.303 | 72.008 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10650 | 0 | 2129.153 | 2.007 | 3.755 | 6.313 | 72.262 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 8169 | 0 | 1632.398 | 2.686 | 4.678 | 15.446 | 135.82 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.029 | 2480 | 0 | 495.155 | 9.92 | 16.578 | 18.555 | 81.898 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8288 | 0 | 1656.887 | 2.53 | 4.915 | 15.36 | 75.141 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8491 | 0 | 1697.27 | 2.455 | 4.709 | 15.297 | 75.141 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 5210 | 0 | 1040.773 | 4.449 | 7.432 | 18.097 | 133.906 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.73 | 1356 | 0 | 270.385 | 18.073 | 29.943 | 33.966 | 83.957 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5709 | 0 | 1140.851 | 3.754 | 7.26 | 18.501 | 75.492 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.003 | 5732 | 0 | 1143.466 | 3.78 | 7.099 | 17.986 | 75.496 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 3093 | 0 | 617.495 | 7.998 | 12.853 | 14.81 | 127.477 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.144 | 6.96 | 1000 | 0 | 139.969 | 35.199 | 56.226 | 64.328 | 85.785 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3743 | 0 | 747.784 | 6.129 | 11.366 | 12.876 | 85.082 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3847 | 0 | 768.591 | 6.206 | 10.748 | 12.248 | 85.086 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.905 | 51.098 | 360 | 0 | 7.072 | 2543.681 | 2563.999 | 2576.027 | 102.363 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.95 | 34.114 | 240 | 0 | 7.069 | 1697.032 | 1714.408 | 1716.437 | 108.402 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.452 | 25.527 | 180 | 0 | 7.072 | 1272.086 | 1290.61 | 1293.374 | 108.402 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.974 | 17.026 | 120 | 0 | 7.069 | 848.437 | 862.106 | 870.841 | 104.625 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.267 | 14.216 | 100 | 0 | 7.009 | 789.668 | 850.82 | 853.962 | 111.938 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.482 | 8.524 | 60 | 0 | 7.074 | 424.464 | 428.468 | 433.51 | 111.941 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.648 | 5.652 | 40 | 0 | 7.083 | 282.326 | 285.589 | 291.374 | 111.941 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3593 | 0 | 718.58 | 1.353 | 1.484 | 1.778 | 123.461 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.005 | 941 | 0 | 188.123 | 5.271 | 5.417 | 5.601 | 126.012 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.004 | 481 | 0 | 96.01 | 10.368 | 10.482 | 10.688 | 127.016 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.025 | 99 | 0 | 19.763 | 50.538 | 50.685 | 50.743 | 127.016 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.015 | 50 | 0 | 9.937 | 100.58 | 100.7 | 100.796 | 127.02 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.009 | 25 | 0 | 4.982 | 200.598 | 201.067 | 201.235 | 127.02 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.193 | 1000 | 0 | 62.032 | 40.981 | 41.958 | 42.302 | 28.855 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.156 | 1000 | 0 | 62.125 | 40.974 | 41.888 | 42.113 | 29.254 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.148 | 1000 | 0 | 62.067 | 40.974 | 41.972 | 42.233 | 29.348 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.15 | 1000 | 0 | 62.056 | 40.977 | 41.95 | 42.283 | 29.461 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.129 | 1000 | 0 | 62.097 | 40.973 | 41.952 | 42.296 | 29.727 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.147 | 1000 | 0 | 62.052 | 40.972 | 41.967 | 42.329 | 29.727 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.122 | 1000 | 0 | 62.085 | 40.977 | 41.943 | 42.374 | 29.746 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.124 | 1000 | 0 | 62.074 | 40.982 | 41.965 | 42.359 | 30.387 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.269 | 14.239 | 1000 | 0 | 65.492 | 40.968 | 41.969 | 42.166 | 30.477 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.275 | 14.593 | 1000 | 0 | 65.466 | 40.968 | 41.971 | 42.271 | 30.5 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 14139 | 0 | 2827.022 | 0.966 | 1.73 | 7.108 | 30.871 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.228 | 15.185 | 1000 | 0 | 65.669 | 40.972 | 41.988 | 42.947 | 34.207 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.235 | 7.715 | 1000 | 0 | 81.732 | 40.969 | 42.185 | 43.036 | 34.207 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.205 | 11.242 | 1000 | 0 | 97.988 | 40.964 | 42.194 | 44.255 | 34.215 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9603 | 0 | 1919.624 | 1.24 | 2.579 | 42.046 | 34.672 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.3 | 12.467 | 1000 | 0 | 97.083 | 41.69 | 42.943 | 44.442 | 41.301 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.714 | 11.498 | 1000 | 0 | 85.37 | 41.903 | 42.945 | 44.288 | 40.422 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.114 | 12.642 | 1000 | 0 | 76.252 | 41.931 | 42.954 | 44.116 | 40.422 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.121 | 2.003 | 7433 | 0 | 1451.565 | 1.59 | 3.273 | 28.156 | 41.027 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.923 | 14.353 | 1000 | 0 | 71.824 | 41.963 | 43.29 | 48.54 | 47.082 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.809 | 15.34 | 1000 | 0 | 67.527 | 41.976 | 43.936 | 45.932 | 47.082 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.807 | 14.29 | 1000 | 0 | 72.426 | 41.985 | 43.956 | 46.372 | 47.082 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.004 | 5110 | 0 | 1020.833 | 2.461 | 5.105 | 27.155 | 49.633 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.355 | 15.893 | 1000 | 0 | 65.125 | 42.98 | 45.552 | 50.669 | 55.914 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.513 | 15.639 | 1000 | 0 | 64.461 | 43.384 | 46.111 | 48.996 | 52.836 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.193 | 15.681 | 1000 | 0 | 65.818 | 43.928 | 46.429 | 48.779 | 52.836 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3696 | 0 | 738.294 | 3.748 | 7.065 | 24.715 | 58.848 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.484 | 17.071 | 1000 | 0 | 60.664 | 44.988 | 49.385 | 63.347 | 87.934 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.002 | 28.777 | 363 | 0 | 12.516 | 241.762 | 243.04 | 19609.206 | 83.234 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.418 | 19.166 | 243 | 0 | 12.514 | 241.776 | 242.811 | 12799.829 | 83.254 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.623 | 14.37 | 183 | 0 | 12.515 | 241.833 | 242.561 | 10023.006 | 83.285 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.577 | 123 | 0 | 12.511 | 241.68 | 242.964 | 5232.898 | 83.289 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.586 | 103 | 0 | 10.483 | 241.496 | 242.431 | 5132.965 | 83.289 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.798 | 63 | 0 | 12.507 | 241.775 | 242.258 | 242.427 | 83.293 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.792 | 42 | 0 | 8.348 | 241.244 | 242.188 | 242.291 | 83.297 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.019 | 122 | 0 | 24.352 | 41.977 | 42.534 | 42.997 | 83.328 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.03 | 114 | 0 | 22.723 | 44.982 | 45.95 | 46.009 | 83.34 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.029 | 98 | 0 | 19.417 | 51.975 | 52.22 | 52.975 | 83.469 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.058 | 56 | 0 | 11.05 | 90.977 | 91.997 | 92.448 | 83.516 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.048 | 2.082 | 36 | 0 | 7.131 | 140.984 | 141.998 | 142.661 | 83.527 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.377 | 21 | 0 | 4.167 | 241.956 | 242.935 | 242.949 | 83.535 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.168 | 1000 | 0 | 62.104 | 40.983 | 41.97 | 42.822 | 28.918 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.135 | 1000 | 0 | 62.092 | 40.982 | 41.929 | 42.284 | 29.09 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.124 | 1000 | 0 | 62.061 | 40.979 | 41.97 | 42.265 | 29.398 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.125 | 1000 | 0 | 62.102 | 40.982 | 41.956 | 42.233 | 29.516 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.131 | 1000 | 0 | 62.081 | 40.98 | 41.938 | 42.497 | 29.598 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.131 | 1000 | 0 | 62.092 | 40.98 | 41.962 | 42.322 | 29.598 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.137 | 1000 | 0 | 62.05 | 40.984 | 41.983 | 42.41 | 29.613 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.132 | 1000 | 0 | 62.024 | 40.979 | 41.965 | 42.463 | 29.922 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.944 | 14.558 | 1000 | 0 | 66.915 | 40.97 | 41.957 | 42.089 | 29.984 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.309 | 14.516 | 1000 | 0 | 65.323 | 40.974 | 41.965 | 42.157 | 29.992 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13774 | 0 | 2753.867 | 0.986 | 1.83 | 6.14 | 30.492 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.523 | 13.933 | 1000 | 0 | 68.855 | 40.97 | 41.988 | 42.964 | 33.852 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.62 | 9.352 | 1000 | 0 | 86.058 | 40.97 | 42.005 | 42.793 | 33.852 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.643 | 9.864 | 1000 | 0 | 93.958 | 40.972 | 41.982 | 42.903 | 33.852 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10213 | 0 | 2041.724 | 1.243 | 2.562 | 23.651 | 34.445 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.113 | 11.411 | 1000 | 0 | 82.558 | 41.015 | 42.222 | 43.129 | 41.234 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.787 | 13.432 | 1000 | 0 | 78.204 | 41.916 | 42.925 | 44.796 | 41.234 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.747 | 10.772 | 1000 | 0 | 78.451 | 41.94 | 42.946 | 44.431 | 41.246 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.03 | 7708 | 0 | 1540.466 | 1.609 | 3.284 | 32.376 | 41.246 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.133 | 14.187 | 1000 | 0 | 70.756 | 41.976 | 43.359 | 46.397 | 45.488 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.223 | 15.066 | 1000 | 0 | 70.309 | 41.98 | 43.795 | 48.421 | 45.488 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.852 | 15.561 | 1000 | 0 | 67.332 | 41.98 | 43.921 | 47.153 | 45.488 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.017 | 5441 | 0 | 1087.472 | 2.344 | 4.918 | 22.251 | 47.445 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.87 | 15.744 | 1000 | 0 | 63.011 | 42.986 | 45.866 | 48.03 | 54.391 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.062 | 15.544 | 1000 | 0 | 66.394 | 43.087 | 46.291 | 49.223 | 54.391 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.3 | 15.545 | 1000 | 0 | 65.361 | 43.936 | 47.0 | 49.355 | 54.391 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.007 | 3684 | 0 | 736.005 | 3.699 | 7.111 | 13.522 | 60.402 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.858 | 17.443 | 1000 | 0 | 59.32 | 45.485 | 49.378 | 57.062 | 68.297 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.996 | 28.772 | 363 | 0 | 12.519 | 241.728 | 242.896 | 19607.394 | 68.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.415 | 19.175 | 243 | 0 | 12.516 | 241.783 | 243.014 | 12800.115 | 68.188 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.616 | 14.379 | 183 | 0 | 12.521 | 241.67 | 242.774 | 10020.078 | 68.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.822 | 9.583 | 123 | 0 | 12.523 | 241.266 | 243.017 | 5229.751 | 68.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.591 | 103 | 0 | 10.484 | 241.524 | 242.43 | 5130.263 | 68.195 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.79 | 63 | 0 | 12.517 | 241.555 | 242.477 | 242.783 | 68.195 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.794 | 42 | 0 | 8.345 | 241.707 | 242.125 | 242.236 | 68.195 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.018 | 122 | 0 | 24.347 | 41.976 | 42.87 | 43.004 | 68.258 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.03 | 114 | 0 | 22.723 | 44.964 | 45.874 | 46.012 | 68.258 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.04 | 97 | 0 | 19.37 | 51.967 | 52.172 | 52.969 | 68.34 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.082 | 2.064 | 56 | 0 | 11.02 | 90.999 | 92.254 | 92.966 | 68.391 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.053 | 2.081 | 36 | 0 | 7.125 | 141.105 | 142.08 | 142.241 | 68.395 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.379 | 21 | 0 | 4.169 | 241.934 | 242.484 | 242.891 | 68.395 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.154 | 1000 | 0 | 62.056 | 40.974 | 41.938 | 42.249 | 28.93 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.135 | 1000 | 0 | 62.104 | 40.978 | 41.779 | 42.253 | 29.27 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.148 | 1000 | 0 | 62.092 | 40.98 | 41.964 | 42.221 | 29.363 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.137 | 1000 | 0 | 62.101 | 40.978 | 41.868 | 42.295 | 29.559 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.131 | 1000 | 0 | 62.096 | 40.984 | 41.968 | 42.198 | 29.602 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.184 | 1000 | 0 | 62.084 | 40.983 | 41.879 | 42.324 | 29.609 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.137 | 1000 | 0 | 62.102 | 40.979 | 41.823 | 42.254 | 29.648 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.139 | 1000 | 0 | 62.05 | 40.982 | 41.99 | 42.284 | 30.324 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.523 | 13.881 | 1000 | 0 | 68.855 | 40.963 | 41.976 | 42.278 | 30.359 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.325 | 14.498 | 1000 | 0 | 69.81 | 40.968 | 41.98 | 42.466 | 30.383 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 13666 | 0 | 2732.52 | 0.992 | 1.881 | 6.3 | 30.773 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.914 | 14.63 | 1000 | 0 | 67.052 | 40.97 | 41.998 | 42.965 | 34.438 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.003 | 6.371 | 1000 | 0 | 142.794 | 1.383 | 42.081 | 43.15 | 34.445 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.705 | 7.272 | 1001 | 0 | 129.908 | 2.318 | 42.258 | 43.382 | 34.445 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8688 | 0 | 1736.796 | 1.434 | 3.055 | 38.188 | 34.91 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.833 | 10.079 | 1000 | 0 | 92.313 | 41.126 | 42.867 | 43.991 | 41.758 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.187 | 13.35 | 1000 | 0 | 98.168 | 41.776 | 42.968 | 44.908 | 38.258 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.42 | 12.883 | 1000 | 0 | 80.512 | 41.934 | 42.987 | 43.932 | 38.258 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 7404 | 0 | 1480.093 | 1.632 | 3.44 | 22.203 | 39.258 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.108 | 15.028 | 1000 | 0 | 70.882 | 41.968 | 43.034 | 44.596 | 48.527 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.546 | 14.908 | 1000 | 0 | 68.749 | 41.972 | 43.673 | 46.507 | 48.527 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.369 | 14.615 | 1000 | 0 | 69.592 | 41.969 | 43.753 | 44.994 | 48.527 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4953 | 0 | 989.646 | 2.559 | 5.382 | 23.676 | 50.848 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.723 | 15.859 | 1000 | 0 | 67.923 | 43.003 | 45.568 | 47.015 | 54.078 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.471 | 15.192 | 1000 | 0 | 69.106 | 43.073 | 46.408 | 48.687 | 52.168 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.541 | 15.716 | 1000 | 0 | 68.772 | 43.937 | 46.611 | 50.68 | 52.168 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3594 | 0 | 717.912 | 3.917 | 7.2 | 13.841 | 58.18 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.205 | 17.078 | 1000 | 0 | 61.711 | 45.343 | 49.805 | 62.878 | 84.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.001 | 28.761 | 363 | 0 | 12.517 | 241.716 | 242.867 | 19606.954 | 83.5 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.414 | 19.169 | 243 | 0 | 12.517 | 241.739 | 242.855 | 12800.746 | 83.551 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.38 | 183 | 0 | 12.514 | 241.753 | 242.862 | 10018.865 | 83.555 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.585 | 123 | 0 | 12.514 | 241.754 | 242.514 | 5232.976 | 83.586 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.591 | 103 | 0 | 10.477 | 241.759 | 242.806 | 5131.686 | 83.586 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.793 | 63 | 0 | 12.505 | 241.83 | 242.444 | 242.587 | 83.598 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.802 | 42 | 0 | 8.34 | 241.708 | 242.243 | 242.288 | 83.602 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.019 | 122 | 0 | 24.343 | 41.972 | 42.934 | 42.976 | 83.66 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.03 | 114 | 0 | 22.724 | 44.97 | 45.957 | 46.002 | 83.668 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.021 | 98 | 0 | 19.472 | 51.959 | 52.148 | 52.973 | 83.68 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.058 | 56 | 0 | 11.039 | 90.979 | 91.974 | 92.222 | 83.688 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.053 | 2.081 | 36 | 0 | 7.125 | 141.116 | 141.992 | 142.102 | 83.688 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.377 | 21 | 0 | 4.168 | 241.925 | 242.479 | 243.238 | 83.688 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18912 | 0 | 3781.71 | 1.252 | 1.783 | 2.343 | 67.734 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17735 | 0 | 3546.315 | 1.335 | 2.015 | 2.488 | 68.023 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 18798 | 0 | 3758.791 | 1.259 | 1.825 | 2.328 | 68.164 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 17530 | 0 | 3505.294 | 1.342 | 2.015 | 2.467 | 68.523 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18449 | 0 | 3688.681 | 1.281 | 1.892 | 2.38 | 70.082 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14900 | 0 | 2979.276 | 1.576 | 2.456 | 3.072 | 70.453 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18982 | 0 | 3795.641 | 1.242 | 1.836 | 2.352 | 70.512 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18755 | 0 | 3750.355 | 1.254 | 1.893 | 2.384 | 72.457 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14413 | 0 | 2881.83 | 1.623 | 2.599 | 3.205 | 82.484 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7797 | 0 | 1558.579 | 3.072 | 5.053 | 5.96 | 76.742 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14038 | 0 | 2806.787 | 1.664 | 2.737 | 3.315 | 81.375 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.024 | 2.001 | 15095 | 0 | 3004.807 | 1.288 | 2.078 | 3.136 | 72.695 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10305 | 0 | 2060.245 | 2.049 | 3.837 | 6.236 | 101.25 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4491 | 0 | 897.277 | 5.393 | 9.113 | 10.442 | 80.129 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10918 | 0 | 2182.363 | 1.957 | 3.644 | 5.535 | 75.688 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10210 | 0 | 2041.187 | 2.078 | 3.936 | 6.612 | 75.563 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8399 | 0 | 1679.016 | 2.484 | 4.641 | 19.193 | 117.461 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.026 | 2450 | 0 | 489.1 | 9.97 | 17.074 | 19.106 | 84.297 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.002 | 7947 | 0 | 1586.963 | 2.561 | 5.061 | 19.837 | 76.852 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7808 | 0 | 1560.7 | 2.621 | 5.129 | 20.266 | 76.941 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.003 | 5617 | 0 | 1121.827 | 3.762 | 7.074 | 22.603 | 126.738 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 3.688 | 1303 | 0 | 259.585 | 18.963 | 29.98 | 35.247 | 85.035 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5244 | 0 | 1047.86 | 3.994 | 7.825 | 23.765 | 78.203 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5003 | 0 | 999.807 | 4.212 | 8.321 | 24.134 | 78.203 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3405 | 0 | 680.27 | 7.044 | 11.388 | 12.914 | 112.34 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.18 | 7.165 | 1000 | 0 | 139.283 | 35.037 | 60.365 | 65.266 | 88.82 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3704 | 0 | 740.088 | 6.277 | 11.492 | 12.912 | 90.859 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3474 | 0 | 693.977 | 6.768 | 11.841 | 13.85 | 91.047 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.888 | 50.901 | 360 | 0 | 7.074 | 2543.564 | 2553.376 | 2556.951 | 110.992 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.93 | 33.923 | 240 | 0 | 7.073 | 1695.72 | 1703.909 | 1707.428 | 113.297 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.442 | 25.438 | 180 | 0 | 7.075 | 1271.654 | 1278.136 | 1282.499 | 104.344 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.963 | 16.957 | 120 | 0 | 7.074 | 847.872 | 853.925 | 856.667 | 105.418 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.179 | 14.183 | 100 | 0 | 7.053 | 831.793 | 848.809 | 850.256 | 105.418 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.483 | 8.476 | 60 | 0 | 7.073 | 423.99 | 426.731 | 428.086 | 107.895 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.65 | 5.645 | 40 | 0 | 7.08 | 282.369 | 282.855 | 282.87 | 107.895 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 1967 | 0 | 393.362 | 2.502 | 2.639 | 2.916 | 115.137 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.006 | 587 | 0 | 117.251 | 8.474 | 8.738 | 9.084 | 115.262 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.001 | 417 | 0 | 83.283 | 11.969 | 12.112 | 12.241 | 118.359 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.039 | 2.015 | 100 | 0 | 19.844 | 50.346 | 50.522 | 50.615 | 118.359 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.021 | 2.009 | 50 | 0 | 9.959 | 100.358 | 100.456 | 100.487 | 118.359 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.007 | 25 | 0 | 4.987 | 200.458 | 200.557 | 200.563 | 118.359 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19672 | 0 | 3933.696 | 1.2 | 1.692 | 2.211 | 67.66 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17636 | 0 | 3526.537 | 1.335 | 1.976 | 2.458 | 68.012 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19154 | 0 | 3830.04 | 1.239 | 1.779 | 2.283 | 68.273 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17600 | 0 | 3518.92 | 1.341 | 1.965 | 2.458 | 68.559 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17042 | 0 | 3407.723 | 1.377 | 2.096 | 2.591 | 70.262 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16734 | 0 | 3345.931 | 1.414 | 2.013 | 2.645 | 70.461 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18820 | 0 | 3763.266 | 1.248 | 1.832 | 2.366 | 70.535 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17883 | 0 | 3575.916 | 1.318 | 1.995 | 2.539 | 73.07 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14852 | 0 | 2969.398 | 1.585 | 2.353 | 3.061 | 82.563 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7843 | 0 | 1567.614 | 3.066 | 4.208 | 5.932 | 76.652 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13528 | 0 | 2704.883 | 1.743 | 2.51 | 3.386 | 81.434 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.028 | 2.039 | 13521 | 0 | 2689.215 | 1.53 | 2.393 | 3.565 | 70.492 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10701 | 0 | 2139.505 | 1.996 | 3.645 | 5.814 | 98.574 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3906 | 0 | 780.161 | 6.247 | 9.035 | 12.036 | 80.25 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9595 | 0 | 1918.08 | 2.188 | 4.104 | 7.221 | 74.793 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9475 | 0 | 1894.347 | 2.211 | 4.183 | 6.966 | 74.418 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7850 | 0 | 1568.95 | 2.646 | 5.059 | 21.007 | 118.375 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.136 | 2297 | 0 | 458.423 | 10.804 | 14.912 | 20.11 | 84.262 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7938 | 0 | 1586.79 | 2.564 | 5.145 | 20.911 | 79.254 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 8152 | 0 | 1629.611 | 2.494 | 4.865 | 20.76 | 79.352 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5352 | 0 | 1069.476 | 3.876 | 7.404 | 24.717 | 124.406 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.733 | 1238 | 0 | 246.793 | 20.062 | 29.285 | 37.465 | 84.695 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5296 | 0 | 1058.607 | 3.896 | 7.73 | 24.647 | 80.973 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4949 | 0 | 989.079 | 4.249 | 8.282 | 25.385 | 80.973 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3454 | 0 | 689.843 | 6.755 | 11.366 | 13.004 | 98.145 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.292 | 7.138 | 1000 | 0 | 137.128 | 36.059 | 40.426 | 65.392 | 87.0 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3516 | 0 | 702.388 | 6.717 | 11.987 | 13.362 | 89.0 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3559 | 0 | 710.792 | 6.618 | 11.771 | 13.498 | 89.0 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.868 | 50.876 | 360 | 0 | 7.077 | 2542.915 | 2546.021 | 2546.929 | 104.621 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.922 | 33.903 | 240 | 0 | 7.075 | 1695.802 | 1697.393 | 1697.908 | 104.684 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.435 | 25.432 | 180 | 0 | 7.077 | 1271.481 | 1274.39 | 1274.648 | 104.684 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.956 | 16.955 | 120 | 0 | 7.077 | 847.615 | 850.458 | 850.649 | 105.121 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.134 | 14.129 | 100 | 0 | 7.075 | 840.823 | 848.305 | 848.399 | 105.125 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.48 | 8.478 | 60 | 0 | 7.076 | 423.857 | 425.219 | 425.963 | 105.125 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.65 | 40 | 0 | 7.076 | 282.576 | 283.076 | 283.961 | 105.125 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.002 | 1895 | 0 | 378.795 | 2.626 | 2.782 | 2.98 | 107.344 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.007 | 566 | 0 | 113.028 | 8.806 | 8.919 | 9.12 | 107.344 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.011 | 405 | 0 | 80.848 | 12.325 | 12.486 | 12.595 | 107.344 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.05 | 2.023 | 100 | 0 | 19.803 | 50.439 | 50.584 | 50.6 | 107.344 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.027 | 2.014 | 50 | 0 | 9.946 | 100.469 | 100.623 | 100.679 | 107.344 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.49 | 200.593 | 200.643 | 107.344 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17320 | 0 | 3463.326 | 1.356 | 2.004 | 2.533 | 67.727 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17376 | 0 | 3474.112 | 1.354 | 2.012 | 2.515 | 67.988 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17926 | 0 | 3584.44 | 1.316 | 1.933 | 2.432 | 68.125 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17783 | 0 | 3555.835 | 1.327 | 1.957 | 2.427 | 68.5 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16975 | 0 | 3393.869 | 1.382 | 2.102 | 2.592 | 70.406 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16110 | 0 | 3221.373 | 1.468 | 2.199 | 2.79 | 70.527 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18915 | 0 | 3782.065 | 1.245 | 1.795 | 2.301 | 70.684 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17821 | 0 | 3563.282 | 1.321 | 1.967 | 2.447 | 72.844 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13971 | 0 | 2793.592 | 1.687 | 2.509 | 3.261 | 82.926 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 7531 | 0 | 1505.501 | 3.226 | 4.191 | 6.13 | 76.711 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13972 | 0 | 2793.742 | 1.691 | 2.433 | 3.214 | 81.492 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.024 | 2.001 | 14314 | 0 | 2849.173 | 1.251 | 2.044 | 40.937 | 72.207 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10067 | 0 | 2012.643 | 2.105 | 3.916 | 5.853 | 103.191 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 4138 | 0 | 826.596 | 5.858 | 9.852 | 11.339 | 81.48 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10022 | 0 | 2003.188 | 2.113 | 3.942 | 5.908 | 76.301 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.011 | 9848 | 0 | 1968.839 | 2.161 | 4.015 | 6.105 | 76.242 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7840 | 0 | 1567.428 | 2.618 | 5.019 | 22.993 | 122.68 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.068 | 2370 | 0 | 473.129 | 10.361 | 16.396 | 19.973 | 85.512 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7693 | 0 | 1537.635 | 2.668 | 5.204 | 23.015 | 79.285 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7577 | 0 | 1514.591 | 2.636 | 5.092 | 23.519 | 79.383 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 4994 | 0 | 997.77 | 4.181 | 7.95 | 27.146 | 119.766 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.941 | 1284 | 0 | 255.897 | 19.144 | 32.61 | 36.138 | 88.516 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5141 | 0 | 1027.289 | 4.068 | 7.924 | 25.871 | 83.957 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 4794 | 0 | 957.762 | 4.326 | 8.365 | 27.418 | 83.957 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3157 | 0 | 630.623 | 7.552 | 12.83 | 14.786 | 93.547 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.286 | 7.377 | 1000 | 0 | 137.259 | 36.021 | 39.423 | 65.333 | 88.758 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 2992 | 0 | 597.563 | 8.047 | 13.998 | 16.145 | 90.465 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3082 | 0 | 615.78 | 7.719 | 13.227 | 15.562 | 90.527 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.875 | 50.887 | 360 | 0 | 7.076 | 2543.231 | 2546.295 | 2547.083 | 110.492 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.921 | 33.929 | 240 | 0 | 7.075 | 1695.739 | 1698.85 | 1699.386 | 110.563 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.444 | 25.433 | 180 | 0 | 7.074 | 1271.824 | 1275.461 | 1275.702 | 117.375 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.958 | 16.956 | 120 | 0 | 7.076 | 847.597 | 850.259 | 850.435 | 117.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.139 | 14.193 | 100 | 0 | 7.072 | 839.168 | 848.701 | 848.831 | 119.02 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.481 | 8.479 | 60 | 0 | 7.074 | 423.963 | 425.242 | 425.872 | 119.02 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.652 | 40 | 0 | 7.076 | 282.572 | 282.903 | 283.145 | 119.02 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.002 | 1892 | 0 | 378.178 | 2.598 | 2.82 | 3.098 | 123.281 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.008 | 562 | 0 | 112.22 | 8.843 | 9.161 | 9.373 | 126.137 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.003 | 403 | 0 | 80.452 | 12.371 | 12.526 | 12.892 | 126.512 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.05 | 2.023 | 100 | 0 | 19.803 | 50.44 | 50.575 | 50.615 | 126.512 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.014 | 50 | 0 | 9.943 | 100.503 | 100.651 | 100.839 | 126.512 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.539 | 200.74 | 200.851 | 126.512 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

# Puma vs Raptor Simulation

Run ID: `20260921-033233`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.142 | 1000 | 0 | 62.01 | 40.984 | 41.978 | 42.539 | 27.992 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.129 | 1000 | 0 | 62.096 | 40.979 | 41.958 | 42.242 | 27.992 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.137 | 1000 | 0 | 62.051 | 40.98 | 41.963 | 42.356 | 27.992 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.137 | 1000 | 0 | 62.093 | 40.979 | 41.757 | 42.173 | 27.992 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.127 | 1000 | 0 | 62.09 | 40.98 | 41.935 | 42.276 | 27.992 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.132 | 1000 | 0 | 62.07 | 40.982 | 41.937 | 42.247 | 28.023 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.144 | 1000 | 0 | 62.081 | 40.98 | 41.938 | 42.313 | 28.031 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.125 | 1000 | 0 | 62.076 | 40.982 | 41.953 | 42.239 | 28.855 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.949 | 15.394 | 1000 | 0 | 66.896 | 40.97 | 41.968 | 42.212 | 28.855 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.197 | 14.706 | 1000 | 0 | 65.801 | 40.969 | 41.968 | 42.18 | 28.855 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 13673 | 0 | 2733.794 | 0.991 | 1.872 | 6.528 | 29.0 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.208 | 14.67 | 1000 | 0 | 65.755 | 40.973 | 41.967 | 42.325 | 35.758 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.195 | 11.528 | 1000 | 0 | 108.758 | 40.96 | 41.995 | 42.877 | 35.758 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.241 | 11.089 | 1000 | 0 | 75.522 | 40.987 | 42.221 | 43.118 | 35.758 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.056 | 10669 | 0 | 2132.963 | 1.225 | 2.448 | 28.665 | 36.004 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.31 | 12.567 | 1000 | 0 | 81.236 | 41.586 | 42.439 | 43.1 | 41.301 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.555 | 14.244 | 1000 | 0 | 68.703 | 41.957 | 42.945 | 43.108 | 41.301 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.914 | 14.709 | 1000 | 0 | 71.869 | 41.957 | 42.867 | 43.33 | 41.301 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.098 | 7945 | 0 | 1588.27 | 1.582 | 3.154 | 12.413 | 41.301 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.377 | 14.702 | 1000 | 0 | 69.555 | 41.973 | 43.21 | 44.24 | 47.426 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.174 | 15.133 | 1000 | 0 | 65.902 | 41.987 | 43.665 | 45.169 | 45.602 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.112 | 15.427 | 1000 | 0 | 66.172 | 41.992 | 43.973 | 45.293 | 45.602 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5596 | 0 | 1118.38 | 2.324 | 4.687 | 21.078 | 47.965 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.556 | 15.924 | 1000 | 0 | 64.283 | 42.982 | 45.032 | 46.718 | 55.52 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.537 | 15.942 | 1000 | 0 | 64.364 | 43.966 | 46.933 | 49.21 | 55.52 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.088 | 16.248 | 1000 | 0 | 62.159 | 43.972 | 46.918 | 49.456 | 55.52 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3709 | 0 | 740.944 | 3.78 | 6.967 | 16.856 | 59.66 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.81 | 17.415 | 1000 | 0 | 59.487 | 45.585 | 50.017 | 53.926 | 70.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.997 | 28.769 | 363 | 0 | 12.518 | 241.732 | 243.176 | 19603.751 | 71.215 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.422 | 19.178 | 243 | 0 | 12.512 | 241.775 | 243.062 | 12805.739 | 71.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.62 | 14.379 | 183 | 0 | 12.517 | 241.736 | 242.466 | 10019.462 | 71.254 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.593 | 123 | 0 | 12.509 | 241.777 | 243.093 | 5232.461 | 71.258 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.593 | 103 | 0 | 10.481 | 241.768 | 242.977 | 5133.207 | 71.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.792 | 63 | 0 | 12.5 | 241.913 | 242.959 | 243.218 | 71.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.793 | 42 | 0 | 8.343 | 241.675 | 242.674 | 242.979 | 71.266 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.02 | 122 | 0 | 24.362 | 41.962 | 42.303 | 43.053 | 71.27 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.034 | 109 | 0 | 21.796 | 46.967 | 47.949 | 47.989 | 71.27 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.051 | 2.026 | 99 | 0 | 19.601 | 50.983 | 52.101 | 52.965 | 71.305 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.076 | 55 | 0 | 10.948 | 91.966 | 92.954 | 92.971 | 71.305 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.092 | 36 | 0 | 7.097 | 141.964 | 142.297 | 142.959 | 71.313 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.38 | 21 | 0 | 4.168 | 241.949 | 242.831 | 242.942 | 71.313 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.091 | 16.111 | 1000 | 0 | 62.145 | 40.978 | 41.807 | 42.238 | 27.238 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.132 | 1000 | 0 | 62.105 | 40.978 | 41.939 | 42.265 | 27.5 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.121 | 1000 | 0 | 62.104 | 40.982 | 41.967 | 42.169 | 27.512 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.157 | 1000 | 0 | 62.099 | 40.973 | 41.952 | 42.265 | 27.555 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.11 | 1000 | 0 | 62.072 | 40.979 | 41.955 | 42.13 | 27.555 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.126 | 1000 | 0 | 62.097 | 40.981 | 41.882 | 42.287 | 27.59 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.127 | 1000 | 0 | 62.106 | 40.98 | 41.885 | 42.214 | 27.602 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.114 | 1000 | 0 | 62.113 | 40.98 | 41.947 | 42.273 | 27.977 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.343 | 14.623 | 1000 | 0 | 69.721 | 40.969 | 41.967 | 42.236 | 28.074 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.677 | 14.506 | 1000 | 0 | 68.133 | 40.969 | 41.955 | 42.188 | 28.125 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 13207 | 0 | 2640.76 | 1.022 | 1.967 | 6.276 | 28.66 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.87 | 14.427 | 1000 | 0 | 67.249 | 40.971 | 41.978 | 42.389 | 32.98 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.99 | 12.285 | 1000 | 0 | 90.994 | 41.048 | 42.46 | 44.099 | 32.938 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.175 | 11.251 | 1000 | 0 | 108.996 | 40.969 | 42.253 | 43.273 | 32.938 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 8971 | 0 | 1793.075 | 1.379 | 2.948 | 31.736 | 32.938 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.119 | 12.297 | 1000 | 0 | 82.518 | 41.887 | 42.945 | 43.323 | 39.418 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.168 | 13.351 | 1000 | 0 | 82.184 | 41.929 | 43.019 | 44.21 | 39.418 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.812 | 13.795 | 1000 | 0 | 78.053 | 41.93 | 42.975 | 44.807 | 37.477 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 6621 | 0 | 1323.3 | 1.863 | 3.813 | 57.224 | 38.766 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.932 | 14.629 | 1000 | 0 | 66.971 | 42.0 | 43.895 | 48.118 | 49.301 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.403 | 15.356 | 1000 | 0 | 69.428 | 42.906 | 45.036 | 47.874 | 49.301 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.476 | 14.871 | 1000 | 0 | 69.08 | 42.907 | 44.458 | 47.687 | 49.301 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5436 | 0 | 1086.348 | 2.371 | 4.89 | 17.933 | 50.703 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.088 | 16.143 | 1000 | 0 | 62.159 | 43.03 | 45.275 | 47.013 | 54.68 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.668 | 15.961 | 1000 | 0 | 63.826 | 44.359 | 48.223 | 50.857 | 50.18 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.651 | 16.255 | 1000 | 0 | 63.894 | 43.972 | 47.008 | 49.25 | 50.18 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3414 | 0 | 681.784 | 4.074 | 7.651 | 70.11 | 56.191 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.997 | 17.233 | 1000 | 0 | 58.835 | 45.961 | 50.916 | 53.765 | 85.023 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.002 | 28.74 | 363 | 0 | 12.516 | 241.791 | 242.836 | 19601.01 | 84.863 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.427 | 19.17 | 243 | 0 | 12.508 | 241.923 | 243.219 | 12811.362 | 84.879 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.377 | 183 | 0 | 12.513 | 241.776 | 243.095 | 10021.749 | 84.895 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.837 | 9.584 | 123 | 0 | 12.503 | 241.894 | 242.586 | 5235.472 | 84.902 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.587 | 103 | 0 | 10.478 | 241.831 | 242.497 | 5134.431 | 84.91 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 4.795 | 63 | 0 | 12.491 | 241.751 | 242.981 | 244.218 | 84.926 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.796 | 42 | 0 | 8.344 | 241.323 | 242.719 | 242.919 | 84.926 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.02 | 122 | 0 | 24.353 | 41.965 | 42.795 | 42.956 | 84.93 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.044 | 109 | 0 | 21.784 | 46.965 | 47.952 | 47.968 | 84.93 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.035 | 98 | 0 | 19.531 | 51.873 | 52.173 | 52.971 | 84.934 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.073 | 55 | 0 | 10.955 | 91.963 | 92.567 | 93.044 | 84.941 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.076 | 2.089 | 36 | 0 | 7.093 | 141.962 | 142.936 | 142.965 | 84.949 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.38 | 21 | 0 | 4.167 | 241.95 | 242.089 | 243.461 | 84.961 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.154 | 1000 | 0 | 62.014 | 40.98 | 41.978 | 42.447 | 27.293 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.156 | 1000 | 0 | 62.073 | 40.979 | 41.969 | 42.379 | 27.52 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.153 | 1000 | 0 | 62.059 | 40.979 | 41.96 | 42.318 | 27.539 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.169 | 1000 | 0 | 62.075 | 40.976 | 41.935 | 42.279 | 27.625 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.15 | 1000 | 0 | 62.037 | 40.981 | 41.947 | 42.456 | 27.625 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.148 | 1000 | 0 | 62.068 | 40.979 | 41.94 | 42.295 | 27.629 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.148 | 1000 | 0 | 62.101 | 40.978 | 41.932 | 42.272 | 27.645 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.194 | 1000 | 0 | 62.033 | 40.98 | 41.917 | 42.461 | 27.984 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.702 | 13.093 | 1000 | 0 | 68.02 | 40.96 | 41.966 | 42.189 | 27.992 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.759 | 14.01 | 1000 | 0 | 67.757 | 40.964 | 41.971 | 42.768 | 28.004 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11592 | 0 | 2317.519 | 1.136 | 2.367 | 8.536 | 28.516 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.341 | 13.064 | 1000 | 0 | 69.73 | 40.97 | 42.009 | 43.15 | 32.992 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.26 | 10.316 | 1000 | 0 | 107.996 | 41.072 | 42.55 | 43.861 | 32.75 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.421 | 9.067 | 1000 | 0 | 95.957 | 41.639 | 42.467 | 43.648 | 32.75 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 7644 | 0 | 1527.728 | 1.643 | 3.514 | 21.43 | 33.367 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.791 | 11.461 | 1000 | 0 | 78.179 | 41.919 | 42.953 | 44.083 | 39.434 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.114 | 12.529 | 1000 | 0 | 76.253 | 41.923 | 42.948 | 44.916 | 39.434 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.692 | 12.993 | 1000 | 0 | 85.528 | 41.911 | 42.915 | 43.908 | 39.434 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.011 | 2.003 | 6348 | 0 | 1266.825 | 2.002 | 4.106 | 21.862 | 39.863 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.011 | 15.187 | 1000 | 0 | 71.374 | 42.057 | 43.723 | 45.134 | 46.77 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.839 | 15.275 | 1000 | 0 | 72.257 | 42.915 | 44.607 | 46.941 | 46.77 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.0 | 14.692 | 1000 | 0 | 71.429 | 42.929 | 44.284 | 46.584 | 46.77 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4899 | 0 | 978.867 | 2.655 | 5.567 | 19.252 | 47.285 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.439 | 16.471 | 1000 | 0 | 64.769 | 43.802 | 45.773 | 47.313 | 51.234 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.349 | 15.558 | 1000 | 0 | 65.149 | 43.977 | 47.34 | 50.761 | 51.234 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.018 | 16.209 | 1000 | 0 | 62.429 | 43.962 | 47.083 | 50.152 | 51.234 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3276 | 0 | 654.38 | 4.261 | 8.042 | 19.001 | 57.246 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.636 | 17.087 | 1000 | 0 | 60.11 | 45.932 | 49.879 | 52.005 | 84.09 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.012 | 28.756 | 363 | 0 | 12.512 | 241.82 | 243.046 | 19611.613 | 84.367 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.425 | 19.17 | 243 | 0 | 12.51 | 241.832 | 243.161 | 12806.815 | 84.41 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.385 | 183 | 0 | 12.511 | 241.87 | 242.494 | 10028.932 | 84.422 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.589 | 123 | 0 | 12.509 | 241.81 | 242.985 | 5232.081 | 84.445 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.588 | 103 | 0 | 10.483 | 241.556 | 242.771 | 5132.428 | 84.469 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.795 | 63 | 0 | 12.508 | 241.736 | 242.407 | 242.48 | 84.469 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.79 | 42 | 0 | 8.345 | 241.482 | 242.161 | 242.247 | 84.469 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.363 | 41.964 | 42.179 | 42.984 | 84.469 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.026 | 109 | 0 | 21.792 | 46.958 | 47.11 | 47.878 | 84.488 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.033 | 98 | 0 | 19.433 | 51.943 | 52.501 | 52.941 | 84.492 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.065 | 55 | 0 | 10.981 | 91.894 | 92.179 | 92.658 | 84.523 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.06 | 2.086 | 36 | 0 | 7.115 | 141.889 | 142.058 | 142.127 | 84.539 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.38 | 21 | 0 | 4.17 | 241.864 | 242.023 | 242.066 | 84.543 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16435 | 0 | 3286.322 | 1.439 | 2.069 | 2.519 | 63.316 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16126 | 0 | 3224.379 | 1.462 | 2.139 | 2.599 | 63.5 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16054 | 0 | 3210.166 | 1.463 | 2.15 | 2.579 | 63.605 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15267 | 0 | 3052.53 | 1.548 | 2.443 | 2.915 | 64.078 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15955 | 0 | 3190.329 | 1.468 | 2.215 | 2.67 | 66.086 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14538 | 0 | 2906.873 | 1.63 | 2.409 | 3.002 | 65.863 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16584 | 0 | 3316.146 | 1.414 | 2.112 | 2.63 | 66.266 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15154 | 0 | 3030.167 | 1.539 | 2.535 | 3.163 | 67.086 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11883 | 0 | 2375.882 | 1.974 | 3.005 | 3.721 | 74.863 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6794 | 0 | 1358.07 | 3.56 | 5.184 | 6.793 | 70.477 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12366 | 0 | 2472.397 | 1.89 | 2.949 | 3.633 | 75.09 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.003 | 13192 | 0 | 2637.641 | 1.704 | 2.568 | 3.399 | 71.453 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9882 | 0 | 1975.695 | 2.261 | 3.816 | 5.911 | 106.699 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4140 | 0 | 827.176 | 5.829 | 9.957 | 11.272 | 80.438 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9991 | 0 | 1997.289 | 2.193 | 4.008 | 6.43 | 75.48 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10060 | 0 | 2011.092 | 2.202 | 3.968 | 5.877 | 75.168 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7604 | 0 | 1520.091 | 2.912 | 4.821 | 14.628 | 131.66 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.194 | 2238 | 0 | 446.676 | 11.111 | 12.506 | 20.465 | 84.574 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 7662 | 0 | 1531.177 | 2.793 | 5.317 | 14.371 | 80.879 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7994 | 0 | 1597.991 | 2.696 | 5.067 | 14.201 | 80.879 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5224 | 0 | 1044.035 | 4.383 | 7.491 | 17.056 | 169.809 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.965 | 1256 | 0 | 250.388 | 19.772 | 21.412 | 35.7 | 87.648 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 4948 | 0 | 988.723 | 4.409 | 8.398 | 18.362 | 88.543 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5062 | 0 | 1011.596 | 4.339 | 8.187 | 17.755 | 88.543 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2845 | 0 | 568.04 | 8.694 | 13.93 | 15.673 | 127.543 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.435 | 7.411 | 1000 | 0 | 134.492 | 36.979 | 38.332 | 66.832 | 91.121 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3475 | 0 | 694.081 | 6.8 | 12.223 | 13.544 | 92.703 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3410 | 0 | 681.16 | 7.089 | 12.028 | 13.468 | 92.703 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.85 | 50.987 | 360 | 0 | 7.08 | 2555.257 | 2609.083 | 2627.613 | 114.184 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.9 | 33.967 | 240 | 0 | 7.08 | 1713.899 | 1747.848 | 1752.254 | 116.152 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.428 | 25.49 | 180 | 0 | 7.079 | 1287.188 | 1312.794 | 1315.284 | 116.16 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.952 | 16.979 | 120 | 0 | 7.079 | 853.278 | 880.048 | 880.892 | 116.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.129 | 14.176 | 100 | 0 | 7.078 | 718.379 | 865.577 | 867.711 | 116.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.474 | 8.513 | 60 | 0 | 7.08 | 423.435 | 434.486 | 443.074 | 116.23 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.64 | 5.642 | 40 | 0 | 7.092 | 281.685 | 284.695 | 289.871 | 116.23 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3489 | 0 | 697.743 | 1.392 | 1.518 | 1.742 | 132.594 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.002 | 941 | 0 | 188.043 | 5.273 | 5.42 | 5.605 | 132.594 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.003 | 483 | 0 | 96.512 | 10.319 | 10.466 | 10.703 | 135.246 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.032 | 99 | 0 | 19.767 | 50.521 | 50.704 | 50.916 | 135.25 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.016 | 50 | 0 | 9.935 | 100.557 | 100.779 | 101.362 | 135.25 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.607 | 200.786 | 200.845 | 135.25 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16681 | 0 | 3335.353 | 1.421 | 2.022 | 2.429 | 63.469 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16398 | 0 | 3278.786 | 1.446 | 2.068 | 2.475 | 64.008 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17866 | 0 | 3571.891 | 1.33 | 1.905 | 2.287 | 64.156 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 17440 | 0 | 3486.909 | 1.371 | 2.093 | 2.51 | 64.582 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16611 | 0 | 3321.563 | 1.423 | 2.068 | 2.506 | 66.117 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15005 | 0 | 3000.261 | 1.581 | 2.313 | 2.793 | 66.305 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17344 | 0 | 3468.042 | 1.362 | 1.972 | 2.444 | 66.496 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14983 | 0 | 2995.866 | 1.571 | 2.49 | 3.048 | 68.168 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12894 | 0 | 2577.771 | 1.84 | 2.603 | 3.309 | 77.359 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7210 | 0 | 1441.19 | 3.37 | 4.341 | 6.241 | 72.148 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13163 | 0 | 2631.873 | 1.79 | 2.598 | 3.341 | 76.258 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.024 | 2.001 | 13186 | 0 | 2624.418 | 1.725 | 2.524 | 3.279 | 66.43 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9505 | 0 | 1900.296 | 2.339 | 3.89 | 6.737 | 97.207 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4079 | 0 | 814.947 | 6.02 | 8.714 | 11.429 | 76.887 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.001 | 9713 | 0 | 1938.054 | 2.241 | 4.043 | 6.965 | 68.91 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9624 | 0 | 1923.952 | 2.288 | 4.091 | 6.255 | 70.477 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7415 | 0 | 1482.368 | 2.941 | 5.146 | 15.713 | 127.188 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.029 | 2419 | 0 | 482.964 | 10.214 | 15.553 | 19.034 | 81.824 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7887 | 0 | 1576.588 | 2.706 | 5.157 | 14.623 | 76.301 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8009 | 0 | 1601.119 | 2.676 | 5.044 | 14.816 | 76.301 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 5363 | 0 | 1071.505 | 4.187 | 7.206 | 18.155 | 164.805 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.707 | 1331 | 0 | 265.222 | 18.571 | 25.773 | 34.128 | 107.086 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5535 | 0 | 1106.325 | 3.909 | 7.378 | 18.522 | 105.105 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.122 | 2.004 | 5323 | 0 | 1039.229 | 4.081 | 7.636 | 18.32 | 105.105 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.009 | 3234 | 0 | 645.565 | 7.674 | 12.011 | 13.49 | 174.047 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.39 | 7.173 | 1000 | 0 | 135.315 | 36.778 | 38.016 | 66.546 | 113.945 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3698 | 0 | 738.796 | 6.432 | 11.478 | 12.613 | 113.02 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3489 | 0 | 697.001 | 6.774 | 11.854 | 13.608 | 113.023 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.854 | 51.055 | 360 | 0 | 7.079 | 2542.473 | 2562.391 | 2574.341 | 131.719 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.906 | 33.991 | 240 | 0 | 7.078 | 1694.907 | 1711.91 | 1723.45 | 136.684 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.431 | 25.501 | 180 | 0 | 7.078 | 1271.143 | 1287.024 | 1298.785 | 136.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.942 | 17.043 | 120 | 0 | 7.083 | 846.826 | 856.702 | 863.464 | 136.758 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.124 | 14.174 | 100 | 0 | 7.08 | 807.171 | 848.628 | 851.645 | 136.762 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.471 | 8.497 | 60 | 0 | 7.083 | 423.626 | 432.747 | 434.835 | 136.762 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.644 | 5.657 | 40 | 0 | 7.087 | 282.002 | 283.331 | 284.045 | 136.762 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3612 | 0 | 722.346 | 1.349 | 1.468 | 1.742 | 121.898 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 942 | 0 | 188.32 | 5.268 | 5.407 | 5.729 | 124.051 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.003 | 484 | 0 | 96.697 | 10.297 | 10.441 | 10.577 | 124.051 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.031 | 99 | 0 | 19.782 | 50.481 | 50.658 | 50.895 | 124.055 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.015 | 50 | 0 | 9.941 | 100.531 | 100.658 | 100.672 | 124.055 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.009 | 25 | 0 | 4.984 | 200.53 | 200.699 | 200.795 | 124.055 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17413 | 0 | 3481.391 | 1.364 | 1.926 | 2.348 | 63.75 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17157 | 0 | 3430.647 | 1.382 | 1.937 | 2.405 | 63.953 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17581 | 0 | 3515.395 | 1.347 | 1.923 | 2.325 | 64.164 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16527 | 0 | 3304.762 | 1.435 | 2.242 | 2.75 | 64.613 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16864 | 0 | 3371.833 | 1.399 | 1.993 | 2.492 | 66.141 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14420 | 0 | 2883.256 | 1.645 | 2.405 | 2.968 | 66.223 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16596 | 0 | 3318.476 | 1.414 | 2.085 | 2.55 | 66.309 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15871 | 0 | 3173.32 | 1.479 | 2.371 | 2.95 | 68.742 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12821 | 0 | 2563.391 | 1.843 | 2.735 | 3.375 | 79.301 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7145 | 0 | 1428.143 | 3.383 | 4.653 | 6.427 | 72.906 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12964 | 0 | 2592.004 | 1.814 | 2.752 | 3.485 | 80.801 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12939 | 0 | 2586.892 | 1.785 | 2.651 | 3.436 | 68.004 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9321 | 0 | 1863.336 | 2.346 | 4.025 | 7.04 | 104.523 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4131 | 0 | 825.384 | 5.889 | 9.053 | 11.236 | 78.715 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9895 | 0 | 1978.123 | 2.205 | 4.04 | 6.153 | 74.617 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9648 | 0 | 1928.276 | 2.267 | 4.087 | 6.166 | 74.492 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7267 | 0 | 1452.816 | 3.001 | 5.205 | 17.478 | 122.309 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.211 | 2248 | 0 | 448.747 | 10.962 | 16.47 | 20.599 | 81.867 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7237 | 0 | 1446.46 | 2.957 | 5.511 | 17.872 | 79.141 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7076 | 0 | 1414.529 | 2.993 | 5.856 | 18.034 | 79.141 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5052 | 0 | 1009.567 | 4.521 | 7.691 | 19.575 | 136.297 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.919 | 1249 | 0 | 248.956 | 19.783 | 23.143 | 36.427 | 85.012 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5320 | 0 | 1063.259 | 4.045 | 7.788 | 20.009 | 83.809 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4993 | 0 | 997.557 | 4.344 | 8.05 | 19.94 | 83.813 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2953 | 0 | 589.671 | 8.403 | 13.066 | 14.818 | 133.668 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.581 | 7.428 | 1000 | 0 | 131.914 | 37.608 | 39.284 | 69.16 | 86.75 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3095 | 0 | 618.185 | 7.774 | 13.165 | 15.102 | 89.457 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3376 | 0 | 674.281 | 6.996 | 12.368 | 14.042 | 89.457 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.808 | 50.89 | 360 | 0 | 7.086 | 2539.85 | 2561.454 | 2581.448 | 107.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.853 | 33.903 | 240 | 0 | 7.089 | 1693.196 | 1712.067 | 1718.74 | 112.512 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.386 | 25.444 | 180 | 0 | 7.091 | 1268.495 | 1277.55 | 1293.732 | 112.953 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.918 | 16.975 | 120 | 0 | 7.093 | 845.32 | 853.044 | 862.689 | 113.023 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.152 | 14.127 | 100 | 0 | 7.066 | 787.634 | 845.5 | 847.161 | 108.863 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.459 | 8.482 | 60 | 0 | 7.093 | 422.884 | 424.919 | 427.832 | 108.867 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.645 | 5.643 | 40 | 0 | 7.086 | 281.903 | 283.213 | 289.656 | 113.43 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.0 | 3582 | 0 | 716.363 | 1.352 | 1.492 | 1.79 | 120.402 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.003 | 942 | 0 | 188.222 | 5.264 | 5.427 | 5.55 | 122.66 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.006 | 485 | 0 | 96.807 | 10.288 | 10.418 | 10.684 | 122.66 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.019 | 99 | 0 | 19.779 | 50.513 | 50.629 | 50.665 | 122.66 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.016 | 50 | 0 | 9.942 | 100.516 | 100.634 | 100.832 | 122.664 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.007 | 25 | 0 | 4.983 | 200.621 | 200.735 | 200.749 | 122.664 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.161 | 1000 | 0 | 62.08 | 40.974 | 41.953 | 42.34 | 29.066 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.143 | 1000 | 0 | 62.049 | 40.978 | 41.96 | 42.295 | 29.457 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.14 | 1000 | 0 | 62.05 | 40.976 | 41.96 | 42.447 | 29.535 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.153 | 1000 | 0 | 62.085 | 40.972 | 41.876 | 42.149 | 29.73 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.136 | 1000 | 0 | 62.054 | 40.975 | 41.965 | 42.341 | 29.797 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.134 | 1000 | 0 | 62.066 | 40.973 | 41.933 | 42.242 | 29.816 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.133 | 1000 | 0 | 62.106 | 40.972 | 41.946 | 42.126 | 29.832 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.159 | 1000 | 0 | 62.009 | 40.977 | 41.969 | 42.466 | 30.461 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.777 | 14.495 | 1000 | 0 | 67.673 | 40.964 | 41.979 | 42.844 | 30.5 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.372 | 13.453 | 1000 | 0 | 69.58 | 40.96 | 41.967 | 42.77 | 30.547 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12634 | 0 | 2526.04 | 1.07 | 2.056 | 7.727 | 31.004 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.68 | 14.472 | 1000 | 0 | 68.121 | 40.971 | 41.977 | 42.995 | 35.832 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.952 | 8.729 | 1000 | 0 | 111.703 | 40.959 | 42.179 | 43.235 | 35.832 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.326 | 8.257 | 1000 | 0 | 120.11 | 40.942 | 42.363 | 43.24 | 35.832 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.018 | 8777 | 0 | 1754.579 | 1.458 | 3.057 | 18.434 | 35.84 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.818 | 11.89 | 1000 | 0 | 84.619 | 41.767 | 42.927 | 44.288 | 39.922 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.115 | 13.131 | 1000 | 0 | 82.545 | 41.922 | 42.988 | 44.521 | 39.793 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.148 | 12.38 | 1000 | 0 | 82.321 | 41.918 | 43.017 | 44.181 | 39.793 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6660 | 0 | 1331.262 | 1.778 | 3.818 | 45.548 | 40.293 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.813 | 14.095 | 1000 | 0 | 72.393 | 41.969 | 43.566 | 45.053 | 47.336 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.433 | 15.06 | 1000 | 0 | 69.287 | 41.964 | 43.435 | 44.626 | 44.566 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.346 | 14.662 | 1000 | 0 | 69.707 | 42.038 | 44.233 | 46.637 | 44.566 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 4930 | 0 | 985.308 | 2.59 | 5.379 | 25.682 | 47.223 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.725 | 15.987 | 1000 | 0 | 63.591 | 42.995 | 46.036 | 52.982 | 52.895 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.449 | 15.585 | 1000 | 0 | 69.21 | 43.893 | 46.981 | 51.679 | 52.895 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.181 | 15.719 | 1000 | 0 | 65.871 | 44.013 | 48.249 | 50.251 | 52.895 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3277 | 0 | 654.528 | 4.214 | 8.111 | 12.449 | 58.906 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.174 | 16.924 | 1000 | 0 | 61.828 | 45.388 | 49.995 | 58.398 | 70.641 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.006 | 28.77 | 363 | 0 | 12.515 | 241.779 | 242.914 | 19613.399 | 71.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.423 | 19.174 | 243 | 0 | 12.511 | 241.876 | 242.653 | 12808.445 | 71.105 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.387 | 183 | 0 | 12.516 | 241.736 | 242.589 | 10024.162 | 71.113 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.594 | 123 | 0 | 12.516 | 241.767 | 242.468 | 5232.305 | 71.117 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.822 | 9.591 | 103 | 0 | 10.487 | 241.299 | 242.909 | 5130.798 | 71.121 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.793 | 63 | 0 | 12.508 | 241.791 | 242.433 | 242.534 | 71.121 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.8 | 42 | 0 | 8.341 | 241.736 | 242.64 | 242.976 | 71.133 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.019 | 122 | 0 | 24.337 | 41.97 | 42.951 | 42.999 | 71.152 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.031 | 114 | 0 | 22.719 | 44.965 | 45.945 | 45.981 | 71.258 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.04 | 97 | 0 | 19.366 | 51.963 | 52.461 | 52.998 | 71.309 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.062 | 56 | 0 | 11.054 | 90.97 | 91.951 | 92.025 | 71.313 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.057 | 2.084 | 36 | 0 | 7.119 | 141.578 | 142.273 | 142.922 | 71.313 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.378 | 21 | 0 | 4.165 | 241.951 | 242.003 | 242.041 | 71.313 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.168 | 1000 | 0 | 62.04 | 40.981 | 41.931 | 42.567 | 28.984 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.138 | 1000 | 0 | 62.066 | 40.975 | 41.964 | 42.259 | 29.188 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.139 | 1000 | 0 | 62.066 | 40.978 | 41.956 | 42.38 | 29.48 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.157 | 1000 | 0 | 62.085 | 40.975 | 41.889 | 42.273 | 29.555 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.139 | 1000 | 0 | 62.101 | 40.972 | 41.942 | 42.209 | 29.578 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.148 | 1000 | 0 | 62.044 | 40.973 | 41.97 | 42.172 | 29.609 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.147 | 1000 | 0 | 62.073 | 40.975 | 41.945 | 42.296 | 29.617 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.176 | 1000 | 0 | 62.039 | 40.974 | 41.971 | 42.333 | 29.914 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.844 | 14.293 | 1000 | 0 | 67.365 | 40.959 | 41.962 | 42.315 | 29.996 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.327 | 13.778 | 1000 | 0 | 65.246 | 40.964 | 41.956 | 42.39 | 30.066 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12882 | 0 | 2575.186 | 1.046 | 1.978 | 7.317 | 30.508 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.194 | 13.636 | 1000 | 0 | 65.815 | 40.975 | 41.986 | 42.803 | 35.281 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.674 | 10.397 | 1000 | 0 | 103.374 | 40.977 | 42.584 | 43.47 | 35.281 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.799 | 7.583 | 1002 | 0 | 128.477 | 2.628 | 42.229 | 43.741 | 35.281 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9278 | 0 | 1854.962 | 1.35 | 2.767 | 21.282 | 35.473 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.064 | 12.223 | 1000 | 0 | 82.894 | 41.863 | 42.833 | 43.726 | 42.48 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.195 | 13.179 | 1000 | 0 | 82.001 | 41.911 | 42.966 | 44.956 | 41.777 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.343 | 12.627 | 1000 | 0 | 88.163 | 41.916 | 42.976 | 43.935 | 41.777 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.134 | 6743 | 0 | 1347.539 | 1.796 | 3.788 | 20.235 | 42.129 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.542 | 14.929 | 1000 | 0 | 68.768 | 41.971 | 43.547 | 45.062 | 46.43 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.776 | 15.084 | 1000 | 0 | 67.678 | 41.978 | 43.945 | 45.405 | 46.43 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.661 | 15.528 | 1000 | 0 | 68.208 | 41.989 | 44.827 | 47.9 | 46.43 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.004 | 4875 | 0 | 973.923 | 2.623 | 5.445 | 30.476 | 48.031 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.389 | 15.984 | 1000 | 0 | 64.979 | 43.067 | 45.864 | 47.522 | 54.66 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.465 | 15.535 | 1000 | 0 | 69.13 | 43.911 | 46.724 | 48.76 | 54.66 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.761 | 15.587 | 1000 | 0 | 67.747 | 43.947 | 47.419 | 50.494 | 54.66 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.007 | 3141 | 0 | 627.238 | 4.442 | 8.332 | 32.532 | 60.672 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.826 | 17.151 | 1000 | 0 | 59.431 | 45.85 | 50.115 | 52.162 | 64.148 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.009 | 28.766 | 363 | 0 | 12.513 | 241.815 | 242.883 | 19616.015 | 64.09 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.181 | 243 | 0 | 12.512 | 241.852 | 242.86 | 12807.133 | 64.098 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.383 | 183 | 0 | 12.51 | 241.844 | 243.094 | 10024.186 | 64.098 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.591 | 123 | 0 | 12.507 | 241.918 | 242.988 | 5234.898 | 64.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.584 | 103 | 0 | 10.472 | 241.935 | 242.996 | 5137.283 | 64.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.793 | 63 | 0 | 12.52 | 241.382 | 242.269 | 242.411 | 64.105 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.796 | 42 | 0 | 8.343 | 241.434 | 242.36 | 242.949 | 64.105 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.018 | 122 | 0 | 24.332 | 41.973 | 42.957 | 43.005 | 64.137 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.031 | 114 | 0 | 22.727 | 44.968 | 45.928 | 46.001 | 64.145 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.04 | 97 | 0 | 19.345 | 51.967 | 52.973 | 52.989 | 64.145 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.07 | 2.059 | 56 | 0 | 11.045 | 90.979 | 91.981 | 92.335 | 64.16 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.055 | 2.086 | 36 | 0 | 7.122 | 141.14 | 142.065 | 142.668 | 64.16 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.377 | 21 | 0 | 4.165 | 241.964 | 242.832 | 242.962 | 64.16 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.153 | 1000 | 0 | 62.064 | 40.978 | 41.961 | 42.265 | 29.051 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.133 | 1000 | 0 | 62.052 | 40.977 | 41.969 | 42.455 | 29.414 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.139 | 1000 | 0 | 62.028 | 40.977 | 41.966 | 42.471 | 29.527 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.158 | 1000 | 0 | 62.078 | 40.978 | 41.945 | 42.269 | 29.609 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.132 | 1000 | 0 | 62.04 | 40.976 | 41.97 | 42.305 | 29.688 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.143 | 1000 | 0 | 62.054 | 40.975 | 41.963 | 42.33 | 29.719 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.134 | 1000 | 0 | 62.077 | 40.975 | 41.941 | 42.145 | 29.734 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.145 | 1000 | 0 | 62.007 | 40.978 | 41.94 | 42.825 | 30.383 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.966 | 14.496 | 1000 | 0 | 66.819 | 40.959 | 41.957 | 42.974 | 30.383 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.085 | 13.858 | 1000 | 0 | 66.291 | 40.956 | 41.963 | 42.938 | 30.383 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 11876 | 0 | 2374.494 | 1.121 | 2.166 | 6.634 | 30.691 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.089 | 13.942 | 1000 | 0 | 66.273 | 40.969 | 41.983 | 42.969 | 34.098 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.068 | 7.848 | 1000 | 0 | 123.951 | 40.932 | 42.415 | 43.665 | 34.098 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.169 | 8.502 | 1000 | 0 | 122.415 | 40.916 | 42.509 | 44.212 | 34.098 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.021 | 2.002 | 8765 | 0 | 1745.735 | 1.392 | 2.979 | 39.427 | 34.324 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.465 | 10.389 | 1000 | 0 | 87.223 | 41.89 | 42.986 | 44.901 | 41.02 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.155 | 12.185 | 1000 | 0 | 76.018 | 41.924 | 42.972 | 43.769 | 41.02 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.323 | 13.236 | 1000 | 0 | 88.319 | 41.901 | 42.96 | 44.379 | 41.023 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 6759 | 0 | 1351.149 | 1.706 | 3.541 | 68.795 | 41.48 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.105 | 14.507 | 1000 | 0 | 70.896 | 41.961 | 43.542 | 45.056 | 46.488 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.095 | 14.98 | 1000 | 0 | 70.948 | 41.983 | 44.52 | 48.283 | 46.488 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.536 | 15.124 | 1000 | 0 | 68.796 | 41.997 | 44.245 | 56.145 | 44.242 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5392 | 0 | 1077.501 | 2.381 | 4.881 | 22.221 | 47.715 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.796 | 16.253 | 1000 | 0 | 63.306 | 43.084 | 45.945 | 56.941 | 52.23 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.005 | 15.218 | 1000 | 0 | 66.646 | 43.897 | 46.66 | 52.922 | 52.23 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.508 | 15.542 | 1000 | 0 | 68.929 | 43.96 | 48.179 | 64.803 | 52.23 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3185 | 0 | 636.257 | 4.315 | 8.24 | 27.319 | 58.242 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.449 | 17.228 | 1000 | 0 | 60.795 | 45.854 | 51.038 | 53.715 | 68.637 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.002 | 28.793 | 363 | 0 | 12.516 | 241.733 | 243.014 | 19612.819 | 69.125 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.419 | 19.178 | 243 | 0 | 12.514 | 241.792 | 242.81 | 12804.24 | 69.141 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.388 | 183 | 0 | 12.513 | 241.697 | 242.974 | 10021.209 | 69.145 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.59 | 123 | 0 | 12.517 | 241.693 | 242.442 | 5232.627 | 69.145 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.592 | 103 | 0 | 10.476 | 241.802 | 242.542 | 5135.687 | 69.145 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.793 | 63 | 0 | 12.508 | 241.699 | 242.432 | 242.826 | 69.145 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.796 | 42 | 0 | 8.334 | 241.781 | 242.833 | 243.032 | 69.145 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.018 | 122 | 0 | 24.346 | 41.969 | 42.915 | 42.964 | 69.164 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.031 | 114 | 0 | 22.727 | 44.969 | 45.7 | 46.002 | 69.164 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.039 | 97 | 0 | 19.358 | 51.967 | 52.952 | 52.985 | 69.164 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.061 | 56 | 0 | 11.052 | 90.979 | 91.914 | 92.244 | 69.164 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.055 | 2.086 | 36 | 0 | 7.121 | 141.651 | 142.05 | 142.106 | 69.164 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.378 | 21 | 0 | 4.168 | 241.9 | 242.052 | 242.134 | 69.164 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16852 | 0 | 3369.765 | 1.394 | 2.088 | 2.635 | 67.93 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16541 | 0 | 3307.326 | 1.421 | 2.148 | 2.662 | 68.02 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17036 | 0 | 3405.962 | 1.381 | 2.068 | 2.58 | 68.168 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17775 | 0 | 3554.057 | 1.333 | 1.955 | 2.393 | 68.434 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16946 | 0 | 3388.319 | 1.386 | 2.134 | 2.626 | 69.891 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14951 | 0 | 2989.276 | 1.578 | 2.379 | 2.983 | 70.383 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17157 | 0 | 3430.716 | 1.371 | 2.026 | 2.586 | 71.098 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16277 | 0 | 3254.622 | 1.447 | 2.156 | 2.658 | 73.637 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12914 | 0 | 2581.876 | 1.82 | 2.775 | 3.527 | 84.133 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7083 | 0 | 1415.63 | 3.398 | 5.058 | 6.535 | 77.453 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13489 | 0 | 2697.007 | 1.744 | 2.577 | 3.404 | 84.215 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.036 | 2.001 | 13460 | 0 | 2672.883 | 1.393 | 2.233 | 40.783 | 73.934 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.021 | 9532 | 0 | 1905.427 | 2.233 | 4.205 | 7.08 | 112.773 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4286 | 0 | 856.382 | 5.664 | 9.443 | 10.884 | 81.738 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10346 | 0 | 2068.37 | 2.073 | 3.823 | 6.09 | 77.281 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9861 | 0 | 1971.413 | 2.165 | 4.024 | 6.231 | 77.156 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.018 | 7445 | 0 | 1487.216 | 2.791 | 5.384 | 21.364 | 128.387 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.075 | 2409 | 0 | 480.956 | 10.222 | 16.457 | 19.262 | 86.828 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7761 | 0 | 1551.273 | 2.665 | 5.192 | 20.538 | 83.363 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7169 | 0 | 1433.091 | 2.898 | 5.677 | 10.946 | 83.691 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5185 | 0 | 1036.279 | 4.064 | 7.697 | 24.709 | 122.992 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.913 | 1266 | 0 | 252.428 | 19.305 | 31.884 | 37.067 | 87.672 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 5188 | 0 | 1036.69 | 4.068 | 7.868 | 24.399 | 89.762 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 5021 | 0 | 1003.47 | 4.283 | 8.103 | 24.601 | 89.762 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 3312 | 0 | 661.455 | 7.052 | 12.347 | 14.098 | 95.512 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.196 | 7.087 | 1000 | 0 | 138.966 | 35.529 | 57.03 | 65.115 | 91.285 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3491 | 0 | 697.38 | 6.653 | 12.162 | 13.674 | 91.402 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3465 | 0 | 692.197 | 6.831 | 11.978 | 13.855 | 91.402 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.864 | 50.859 | 360 | 0 | 7.078 | 2542.712 | 2547.782 | 2548.315 | 112.051 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.923 | 33.907 | 240 | 0 | 7.075 | 1695.763 | 1700.201 | 1701.012 | 112.141 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.442 | 25.431 | 180 | 0 | 7.075 | 1271.904 | 1276.072 | 1276.665 | 118.141 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.952 | 16.951 | 120 | 0 | 7.079 | 847.442 | 851.511 | 851.97 | 118.203 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.132 | 14.129 | 100 | 0 | 7.076 | 839.892 | 848.116 | 848.27 | 118.703 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.478 | 8.48 | 60 | 0 | 7.077 | 423.85 | 425.631 | 425.663 | 118.891 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.65 | 5.65 | 40 | 0 | 7.079 | 282.444 | 282.674 | 282.737 | 118.891 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1959 | 0 | 391.652 | 2.505 | 2.673 | 2.962 | 120.66 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.0 | 578 | 0 | 115.448 | 8.608 | 8.808 | 8.967 | 120.66 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.009 | 411 | 0 | 82.014 | 12.153 | 12.29 | 12.47 | 120.66 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.046 | 2.019 | 100 | 0 | 19.817 | 50.402 | 50.538 | 50.75 | 120.676 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.01 | 50 | 0 | 9.943 | 100.501 | 100.627 | 100.784 | 120.676 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.469 | 200.528 | 200.547 | 120.676 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18924 | 0 | 3784.1 | 1.248 | 1.795 | 2.282 | 67.922 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18251 | 0 | 3649.497 | 1.293 | 1.898 | 2.4 | 68.219 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18720 | 0 | 3743.284 | 1.259 | 1.848 | 2.326 | 68.32 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18375 | 0 | 3674.177 | 1.285 | 1.874 | 2.316 | 68.941 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18499 | 0 | 3698.845 | 1.273 | 1.893 | 2.372 | 70.332 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16100 | 0 | 3219.188 | 1.461 | 2.266 | 2.828 | 70.621 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18451 | 0 | 3689.535 | 1.275 | 1.907 | 2.38 | 70.688 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16990 | 0 | 3397.081 | 1.388 | 2.069 | 2.551 | 72.699 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13229 | 0 | 2644.973 | 1.775 | 2.786 | 3.431 | 82.41 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7314 | 0 | 1461.944 | 3.285 | 5.222 | 6.392 | 76.617 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13461 | 0 | 2691.426 | 1.736 | 2.784 | 3.404 | 81.547 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.033 | 2.012 | 14299 | 0 | 2841.208 | 1.382 | 2.126 | 3.274 | 72.527 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10289 | 0 | 2057.044 | 2.079 | 3.789 | 5.584 | 103.871 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4281 | 0 | 855.425 | 5.672 | 9.434 | 10.999 | 82.176 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10022 | 0 | 2003.274 | 2.117 | 3.985 | 5.928 | 73.691 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10171 | 0 | 2033.431 | 2.088 | 3.907 | 5.945 | 73.629 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8003 | 0 | 1599.956 | 2.63 | 4.833 | 21.441 | 116.668 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.067 | 2398 | 0 | 478.626 | 10.158 | 17.47 | 19.545 | 86.641 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7537 | 0 | 1506.802 | 2.726 | 5.258 | 22.27 | 77.02 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7265 | 0 | 1452.196 | 2.874 | 5.494 | 22.966 | 77.125 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4857 | 0 | 970.642 | 4.317 | 8.273 | 26.33 | 122.461 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.013 | 1285 | 0 | 256.032 | 19.165 | 30.072 | 35.826 | 87.445 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5391 | 0 | 1077.169 | 3.901 | 7.553 | 24.188 | 80.141 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5249 | 0 | 1049.078 | 4.015 | 7.708 | 24.088 | 80.141 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3542 | 0 | 707.413 | 6.865 | 11.182 | 12.841 | 132.156 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.215 | 7.099 | 1000 | 0 | 138.608 | 35.465 | 63.505 | 66.001 | 87.75 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3204 | 0 | 639.762 | 7.325 | 13.047 | 14.822 | 86.438 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3140 | 0 | 627.074 | 7.535 | 13.385 | 14.698 | 86.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.874 | 50.881 | 360 | 0 | 7.076 | 2543.363 | 2547.588 | 2548.632 | 103.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.918 | 33.903 | 240 | 0 | 7.076 | 1695.561 | 1699.765 | 1700.5 | 104.902 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.441 | 25.43 | 180 | 0 | 7.075 | 1271.831 | 1276.052 | 1276.394 | 105.215 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.958 | 16.954 | 120 | 0 | 7.076 | 847.712 | 850.936 | 851.692 | 105.277 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.251 | 14.133 | 100 | 0 | 7.017 | 843.736 | 848.199 | 848.797 | 105.523 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.48 | 8.478 | 60 | 0 | 7.076 | 423.838 | 425.62 | 426.029 | 105.523 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.652 | 5.651 | 40 | 0 | 7.077 | 282.555 | 282.854 | 283.744 | 105.523 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 1954 | 0 | 390.78 | 2.513 | 2.676 | 2.964 | 117.047 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.008 | 576 | 0 | 115.012 | 8.643 | 8.833 | 8.981 | 118.047 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.002 | 410 | 0 | 81.834 | 12.171 | 12.303 | 12.613 | 120.484 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.021 | 100 | 0 | 19.808 | 50.437 | 50.552 | 50.6 | 120.547 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.012 | 50 | 0 | 9.943 | 100.504 | 100.63 | 100.654 | 120.547 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.523 | 200.611 | 200.647 | 120.547 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 16896 | 0 | 3378.053 | 1.39 | 2.073 | 2.599 | 67.719 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16642 | 0 | 3327.463 | 1.412 | 2.133 | 2.642 | 67.945 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17149 | 0 | 3429.085 | 1.371 | 2.051 | 2.524 | 67.656 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16858 | 0 | 3370.943 | 1.4 | 2.08 | 2.559 | 67.973 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16959 | 0 | 3391.141 | 1.382 | 2.106 | 2.601 | 69.035 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14987 | 0 | 2996.309 | 1.565 | 2.433 | 2.977 | 70.344 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17161 | 0 | 3431.119 | 1.368 | 2.073 | 2.536 | 71.211 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17012 | 0 | 3401.62 | 1.381 | 2.084 | 2.548 | 72.301 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13402 | 0 | 2679.558 | 1.759 | 2.661 | 3.37 | 80.328 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7132 | 0 | 1425.606 | 3.399 | 4.482 | 6.444 | 76.484 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13293 | 0 | 2657.657 | 1.763 | 2.724 | 3.443 | 80.375 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.006 | 13501 | 0 | 2699.177 | 1.574 | 2.378 | 3.422 | 71.883 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9613 | 0 | 1921.875 | 2.201 | 4.054 | 6.656 | 105.633 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 4103 | 0 | 819.69 | 5.93 | 9.846 | 11.505 | 81.039 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9623 | 0 | 1923.988 | 2.204 | 4.099 | 6.54 | 77.793 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.002 | 9630 | 0 | 1922.548 | 2.221 | 4.064 | 6.596 | 77.418 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7297 | 0 | 1458.697 | 2.835 | 5.372 | 23.996 | 117.926 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.097 | 2366 | 0 | 472.144 | 10.356 | 17.223 | 19.78 | 95.426 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7742 | 0 | 1547.731 | 2.681 | 5.07 | 23.317 | 94.578 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7273 | 0 | 1453.942 | 2.849 | 5.463 | 24.029 | 94.668 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4818 | 0 | 962.665 | 4.356 | 8.375 | 27.784 | 126.652 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.979 | 1247 | 0 | 248.461 | 19.818 | 32.421 | 37.247 | 101.855 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.021 | 4837 | 0 | 966.632 | 4.258 | 8.557 | 27.635 | 102.047 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.024 | 2.004 | 4773 | 0 | 949.958 | 4.42 | 8.682 | 27.192 | 102.047 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2929 | 0 | 584.902 | 8.006 | 14.026 | 15.653 | 108.879 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.484 | 7.421 | 1000 | 0 | 133.615 | 36.891 | 59.894 | 67.808 | 107.129 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3030 | 0 | 605.096 | 7.662 | 14.068 | 15.666 | 104.031 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 3120 | 0 | 623.075 | 7.484 | 13.75 | 14.773 | 104.031 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.886 | 50.883 | 360 | 0 | 7.075 | 2543.822 | 2548.03 | 2549.988 | 122.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.911 | 33.919 | 240 | 0 | 7.077 | 1695.214 | 1699.257 | 1699.765 | 112.855 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.438 | 25.435 | 180 | 0 | 7.076 | 1271.634 | 1273.7 | 1274.194 | 112.855 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.962 | 16.953 | 120 | 0 | 7.075 | 847.871 | 851.774 | 852.366 | 118.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.187 | 14.131 | 100 | 0 | 7.049 | 839.875 | 848.036 | 848.171 | 118.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.478 | 8.478 | 60 | 0 | 7.077 | 423.846 | 425.467 | 425.956 | 118.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.65 | 5.651 | 40 | 0 | 7.079 | 282.379 | 282.706 | 282.908 | 118.781 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.0 | 1951 | 0 | 390.019 | 2.517 | 2.674 | 2.997 | 123.859 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.005 | 578 | 0 | 115.43 | 8.618 | 8.793 | 8.962 | 124.426 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.008 | 411 | 0 | 82.057 | 12.142 | 12.266 | 12.484 | 124.488 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.05 | 2.022 | 100 | 0 | 19.803 | 50.443 | 50.571 | 50.737 | 124.488 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.013 | 50 | 0 | 9.941 | 100.537 | 100.662 | 100.713 | 126.738 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.008 | 25 | 0 | 4.986 | 200.481 | 200.554 | 200.571 | 127.051 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

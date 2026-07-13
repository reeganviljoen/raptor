# Puma vs Raptor Simulation

Run ID: `20260713-042604`

## Environment

- Ruby: `ruby 4.0.5 (2026-05-20 revision 64336ffd0e) +PRISM [aarch64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.19 | 1000 | 0 | 62.004 | 40.981 | 41.973 | 42.456 | 29.922 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.183 | 16.207 | 1000 | 0 | 61.792 | 41.001 | 42.345 | 43.035 | 30.055 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.338 | 1000 | 0 | 62.014 | 40.979 | 41.995 | 42.529 | 30.098 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.202 | 16.256 | 1000 | 0 | 61.723 | 41.019 | 42.304 | 42.88 | 30.168 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.148 | 16.288 | 1000 | 0 | 61.927 | 40.987 | 42.032 | 42.549 | 30.199 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.297 | 1000 | 0 | 62.11 | 40.982 | 41.966 | 42.209 | 30.199 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.321 | 1000 | 0 | 62.022 | 40.982 | 41.982 | 42.66 | 30.199 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.295 | 1000 | 0 | 62.02 | 40.983 | 41.978 | 42.248 | 31.254 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.163 | 13.654 | 1000 | 0 | 65.951 | 40.965 | 41.962 | 42.086 | 31.254 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.445 | 13.585 | 1000 | 0 | 69.228 | 40.962 | 41.966 | 42.087 | 31.254 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11208 | 0 | 2240.758 | 1.297 | 1.878 | 3.045 | 31.434 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.153 | 13.833 | 1000 | 0 | 70.654 | 40.971 | 41.994 | 42.792 | 37.789 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.096 | 10.544 | 1000 | 0 | 109.943 | 40.937 | 42.052 | 43.086 | 37.789 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.273 | 8.928 | 1001 | 0 | 107.95 | 40.954 | 42.156 | 43.121 | 37.789 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9223 | 0 | 1843.697 | 1.538 | 2.255 | 39.715 | 38.082 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.41 | 12.646 | 1000 | 0 | 80.579 | 41.84 | 42.929 | 43.721 | 51.02 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.678 | 12.905 | 1000 | 0 | 78.877 | 41.946 | 43.105 | 45.242 | 51.02 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.598 | 13.292 | 1000 | 0 | 73.541 | 41.95 | 42.965 | 43.778 | 51.02 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.194 | 2.002 | 6715 | 0 | 1292.879 | 1.938 | 3.153 | 56.446 | 51.02 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.156 | 14.931 | 1000 | 0 | 70.639 | 41.974 | 43.675 | 49.617 | 62.652 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.604 | 15.605 | 1000 | 0 | 68.476 | 41.978 | 44.103 | 45.448 | 62.652 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.749 | 15.179 | 1000 | 0 | 67.801 | 42.155 | 44.92 | 46.776 | 62.652 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 5127 | 0 | 1024.498 | 2.67 | 4.315 | 13.337 | 62.652 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.47 | 1000 | 0 | 61.972 | 43.001 | 45.931 | 47.899 | 66.531 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.241 | 15.964 | 1000 | 0 | 65.613 | 43.961 | 47.262 | 49.541 | 65.945 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.111 | 16.415 | 1000 | 0 | 66.177 | 44.062 | 48.019 | 50.344 | 65.945 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3545 | 0 | 708.123 | 4.143 | 5.356 | 8.585 | 71.363 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.686 | 17.065 | 1000 | 0 | 59.931 | 45.588 | 50.375 | 52.177 | 78.723 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.037 | 28.807 | 363 | 0 | 12.501 | 241.977 | 243.099 | 19633.15 | 78.984 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.435 | 19.212 | 243 | 0 | 12.503 | 241.961 | 242.99 | 12816.839 | 79.027 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.636 | 14.408 | 183 | 0 | 12.504 | 241.947 | 242.725 | 10033.563 | 79.051 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.848 | 9.609 | 123 | 0 | 12.49 | 241.996 | 243.055 | 5241.204 | 79.066 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.604 | 103 | 0 | 10.47 | 241.894 | 242.54 | 5135.326 | 79.07 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 4.805 | 63 | 0 | 12.488 | 241.97 | 243.169 | 244.075 | 79.07 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.803 | 42 | 0 | 8.338 | 241.906 | 242.282 | 242.977 | 79.07 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.021 | 122 | 0 | 24.371 | 41.976 | 42.074 | 42.98 | 79.07 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.007 | 109 | 0 | 21.766 | 46.97 | 47.75 | 47.968 | 79.09 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.025 | 2.022 | 99 | 0 | 19.703 | 50.971 | 51.977 | 52.034 | 79.094 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.061 | 55 | 0 | 10.959 | 91.959 | 92.352 | 92.975 | 79.117 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.085 | 36 | 0 | 7.104 | 141.949 | 142.402 | 142.987 | 79.129 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.382 | 21 | 0 | 4.167 | 241.958 | 242.969 | 243.006 | 79.129 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.216 | 1000 | 0 | 61.962 | 40.984 | 42.014 | 42.614 | 29.367 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.263 | 1000 | 0 | 61.978 | 40.982 | 42.01 | 42.718 | 29.438 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.204 | 1000 | 0 | 62.039 | 40.98 | 41.992 | 42.708 | 29.488 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.272 | 1000 | 0 | 62.037 | 40.976 | 41.943 | 42.403 | 29.57 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.24 | 1000 | 0 | 61.994 | 40.984 | 41.988 | 42.861 | 29.598 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.162 | 16.31 | 1000 | 0 | 61.874 | 40.992 | 42.246 | 42.647 | 29.598 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.153 | 16.251 | 1000 | 0 | 61.91 | 40.987 | 42.145 | 42.583 | 29.609 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.145 | 16.363 | 1000 | 0 | 61.939 | 40.984 | 42.128 | 42.751 | 30.109 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.678 | 12.991 | 1000 | 0 | 68.129 | 40.965 | 41.962 | 42.187 | 30.109 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.653 | 12.96 | 1000 | 0 | 68.245 | 40.967 | 41.972 | 42.839 | 30.223 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11057 | 0 | 2210.587 | 1.314 | 1.906 | 3.166 | 30.656 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.629 | 14.557 | 1000 | 0 | 68.359 | 40.97 | 41.988 | 42.97 | 40.102 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.74 | 9.236 | 1000 | 0 | 114.412 | 40.947 | 42.229 | 43.067 | 40.102 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.574 | 7.354 | 1000 | 0 | 116.636 | 40.935 | 42.085 | 42.935 | 40.102 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8743 | 0 | 1747.89 | 1.535 | 2.391 | 43.051 | 40.102 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.893 | 9.786 | 1000 | 0 | 84.082 | 41.813 | 42.808 | 43.126 | 49.957 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.69 | 13.019 | 1000 | 0 | 73.047 | 41.945 | 42.961 | 43.996 | 47.797 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.712 | 13.638 | 1000 | 0 | 78.668 | 41.952 | 42.985 | 43.97 | 43.762 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.123 | 6960 | 0 | 1391.238 | 1.923 | 2.931 | 99.335 | 44.633 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.627 | 14.803 | 1000 | 0 | 68.368 | 41.967 | 43.133 | 44.278 | 60.84 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.909 | 15.125 | 1000 | 0 | 67.074 | 41.991 | 44.711 | 47.024 | 60.84 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.412 | 15.342 | 1000 | 0 | 69.388 | 42.84 | 45.008 | 47.247 | 53.852 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 4897 | 0 | 978.508 | 2.82 | 4.4 | 16.589 | 55.723 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.292 | 16.313 | 1000 | 0 | 65.393 | 43.0 | 45.863 | 47.471 | 64.469 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.161 | 15.492 | 1000 | 0 | 65.96 | 43.942 | 46.93 | 48.795 | 58.93 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.583 | 15.118 | 1000 | 0 | 64.172 | 43.981 | 47.961 | 50.032 | 58.93 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3564 | 0 | 711.93 | 4.154 | 5.225 | 8.335 | 64.941 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.167 | 17.137 | 1000 | 0 | 58.252 | 45.012 | 49.146 | 51.019 | 80.848 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.046 | 28.832 | 363 | 0 | 12.498 | 242.001 | 243.217 | 19635.785 | 81.094 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.439 | 19.216 | 243 | 0 | 12.5 | 241.968 | 243.017 | 12811.859 | 81.098 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.643 | 14.408 | 183 | 0 | 12.498 | 241.984 | 243.017 | 10038.75 | 81.113 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.843 | 9.607 | 123 | 0 | 12.496 | 241.978 | 243.19 | 5239.162 | 81.125 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.608 | 103 | 0 | 10.473 | 241.936 | 242.379 | 5138.0 | 81.125 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 4.802 | 63 | 0 | 12.492 | 241.954 | 242.712 | 243.265 | 81.125 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.8 | 42 | 0 | 8.347 | 241.177 | 242.133 | 242.954 | 81.129 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.018 | 122 | 0 | 24.348 | 41.963 | 42.962 | 43.02 | 81.133 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.007 | 109 | 0 | 21.783 | 46.965 | 47.625 | 48.001 | 81.156 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 2.019 | 99 | 0 | 19.695 | 50.968 | 51.977 | 51.984 | 81.164 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.071 | 55 | 0 | 10.948 | 91.962 | 92.966 | 92.981 | 81.168 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.063 | 2.088 | 36 | 0 | 7.11 | 141.94 | 142.292 | 142.956 | 81.168 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.383 | 21 | 0 | 4.172 | 241.775 | 241.993 | 241.999 | 81.168 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.25 | 1000 | 0 | 62.026 | 40.981 | 41.993 | 42.559 | 29.5 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.305 | 1000 | 0 | 61.986 | 40.984 | 42.011 | 42.614 | 29.52 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.212 | 1000 | 0 | 61.975 | 40.983 | 42.016 | 42.827 | 29.527 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.361 | 1000 | 0 | 62.065 | 40.978 | 41.958 | 42.481 | 29.59 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.237 | 1000 | 0 | 62.016 | 40.982 | 41.989 | 42.743 | 29.613 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.171 | 16.243 | 1000 | 0 | 61.84 | 40.995 | 42.295 | 42.763 | 29.668 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.286 | 1000 | 0 | 61.975 | 40.983 | 42.037 | 42.745 | 29.68 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.143 | 16.29 | 1000 | 0 | 61.946 | 40.982 | 42.152 | 42.741 | 30.582 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.671 | 13.604 | 1000 | 0 | 68.162 | 40.965 | 41.949 | 42.442 | 30.715 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.071 | 14.411 | 1000 | 0 | 71.07 | 40.966 | 41.965 | 42.203 | 30.723 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10834 | 0 | 2166.004 | 1.337 | 1.945 | 3.496 | 30.93 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.604 | 13.501 | 1000 | 0 | 73.507 | 40.976 | 42.048 | 43.159 | 39.586 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.077 | 5.576 | 1105 | 0 | 156.146 | 1.492 | 42.468 | 43.694 | 39.586 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.422 | 6.933 | 1000 | 0 | 106.138 | 40.97 | 42.611 | 43.694 | 39.586 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8403 | 0 | 1679.858 | 1.636 | 2.481 | 42.598 | 39.586 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.546 | 9.063 | 1000 | 0 | 104.759 | 41.592 | 42.928 | 43.984 | 46.637 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.229 | 12.756 | 1000 | 0 | 81.77 | 41.927 | 42.899 | 44.53 | 46.637 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.805 | 11.628 | 1000 | 0 | 84.71 | 41.935 | 42.991 | 44.011 | 46.637 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 6661 | 0 | 1331.495 | 2.005 | 3.132 | 27.622 | 46.637 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.19 | 14.864 | 1000 | 0 | 70.474 | 41.971 | 43.565 | 45.543 | 56.953 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.559 | 15.331 | 1000 | 0 | 68.686 | 41.983 | 44.303 | 45.601 | 56.953 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.645 | 14.554 | 1000 | 0 | 68.282 | 42.032 | 45.198 | 50.142 | 56.953 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5006 | 0 | 1000.335 | 2.737 | 4.351 | 15.551 | 58.438 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.471 | 16.209 | 1000 | 0 | 64.638 | 42.998 | 45.926 | 47.396 | 62.59 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.268 | 15.551 | 1000 | 0 | 65.497 | 43.96 | 48.584 | 50.165 | 59.391 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.516 | 15.693 | 1000 | 0 | 64.448 | 43.964 | 46.402 | 49.026 | 59.391 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 3452 | 0 | 689.651 | 4.244 | 5.446 | 10.634 | 65.402 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.003 | 17.16 | 1000 | 0 | 58.814 | 45.577 | 49.306 | 51.787 | 74.465 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.047 | 28.824 | 363 | 0 | 12.497 | 241.999 | 243.189 | 19638.392 | 72.953 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.438 | 19.206 | 243 | 0 | 12.501 | 241.95 | 242.853 | 12813.986 | 73.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.644 | 14.405 | 183 | 0 | 12.497 | 241.986 | 242.991 | 10036.053 | 73.016 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.848 | 9.604 | 123 | 0 | 12.49 | 241.994 | 243.859 | 5238.153 | 73.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.604 | 103 | 0 | 10.472 | 241.925 | 242.905 | 5137.628 | 73.027 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 4.802 | 63 | 0 | 12.493 | 241.925 | 242.861 | 243.119 | 73.027 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.802 | 42 | 0 | 8.332 | 241.944 | 242.164 | 242.609 | 73.027 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.017 | 122 | 0 | 24.386 | 41.968 | 42.114 | 42.164 | 73.031 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.024 | 110 | 0 | 21.796 | 46.963 | 47.961 | 47.981 | 73.031 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 2.024 | 99 | 0 | 19.675 | 50.984 | 51.976 | 52.006 | 73.031 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.075 | 55 | 0 | 10.948 | 91.961 | 92.95 | 92.969 | 73.051 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.074 | 2.09 | 36 | 0 | 7.096 | 141.959 | 142.947 | 142.971 | 73.051 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.379 | 21 | 0 | 4.174 | 240.977 | 242.019 | 242.022 | 73.055 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16027 | 0 | 3204.742 | 1.475 | 2.057 | 2.673 | 94.832 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15675 | 0 | 3134.276 | 1.517 | 2.098 | 2.57 | 97.391 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16134 | 0 | 3226.031 | 1.473 | 2.037 | 2.501 | 99.801 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 14683 | 0 | 2935.479 | 1.626 | 2.182 | 2.716 | 100.703 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16048 | 0 | 3208.665 | 1.49 | 2.0 | 2.399 | 107.824 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14403 | 0 | 2879.743 | 1.674 | 2.201 | 2.541 | 108.324 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16220 | 0 | 3243.27 | 1.477 | 1.969 | 2.316 | 108.59 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 14840 | 0 | 2966.986 | 1.603 | 2.16 | 2.878 | 112.113 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11844 | 0 | 2368.056 | 2.013 | 2.662 | 3.053 | 128.875 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7310 | 0 | 1461.019 | 3.363 | 4.021 | 4.501 | 131.395 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11597 | 0 | 2318.37 | 2.079 | 2.63 | 2.886 | 132.426 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11735 | 0 | 2346.127 | 2.051 | 2.591 | 2.896 | 112.867 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9162 | 0 | 1831.529 | 2.517 | 3.656 | 4.952 | 144.863 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4000 | 0 | 799.168 | 6.25 | 6.98 | 7.423 | 136.504 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9273 | 0 | 1853.764 | 2.453 | 3.536 | 4.837 | 115.922 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9212 | 0 | 1841.394 | 2.489 | 3.531 | 4.857 | 116.359 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7356 | 0 | 1470.374 | 3.107 | 4.736 | 15.583 | 183.594 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.143 | 2315 | 0 | 461.967 | 10.856 | 11.81 | 12.399 | 143.273 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7565 | 0 | 1512.226 | 2.964 | 4.453 | 14.913 | 122.684 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7310 | 0 | 1461.157 | 3.059 | 4.541 | 15.344 | 119.922 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4941 | 0 | 986.939 | 4.832 | 6.57 | 18.593 | 149.316 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.784 | 1293 | 0 | 257.78 | 19.325 | 20.69 | 21.096 | 157.055 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5304 | 0 | 1059.898 | 4.24 | 6.058 | 18.605 | 147.883 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 4769 | 0 | 952.984 | 4.782 | 6.511 | 19.548 | 133.75 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.008 | 2870 | 0 | 572.908 | 8.748 | 11.626 | 12.791 | 141.816 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.47 | 7.397 | 1000 | 0 | 133.877 | 37.262 | 38.244 | 39.022 | 168.313 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3353 | 0 | 669.792 | 7.285 | 8.638 | 9.602 | 145.75 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3216 | 0 | 642.204 | 7.576 | 9.237 | 10.1 | 133.809 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.869 | 51.056 | 360 | 0 | 7.077 | 2542.943 | 2546.453 | 2547.244 | 151.422 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.922 | 34.068 | 240 | 0 | 7.075 | 1695.611 | 1698.391 | 1699.281 | 172.746 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.412 | 25.525 | 180 | 0 | 7.083 | 1269.782 | 1277.061 | 1279.55 | 172.875 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.95 | 16.989 | 120 | 0 | 7.08 | 847.213 | 849.83 | 851.528 | 172.875 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.181 | 14.207 | 100 | 0 | 7.052 | 832.033 | 842.618 | 843.148 | 172.875 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.474 | 8.51 | 60 | 0 | 7.081 | 423.51 | 424.686 | 426.109 | 172.875 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.644 | 5.648 | 40 | 0 | 7.087 | 281.928 | 283.41 | 283.862 | 172.875 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.0 | 3753 | 0 | 750.359 | 1.292 | 1.444 | 1.64 | 184.816 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 941 | 0 | 188.185 | 5.267 | 5.41 | 5.586 | 185.066 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.006 | 485 | 0 | 96.915 | 10.277 | 10.416 | 10.583 | 185.066 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.027 | 99 | 0 | 19.792 | 50.463 | 50.608 | 50.671 | 185.066 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.017 | 50 | 0 | 9.937 | 100.579 | 100.703 | 100.81 | 185.129 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.559 | 200.638 | 200.672 | 185.129 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15642 | 0 | 3127.691 | 1.519 | 2.083 | 2.703 | 94.559 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15595 | 0 | 3117.952 | 1.538 | 2.013 | 2.294 | 94.875 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15789 | 0 | 3157.147 | 1.519 | 1.994 | 2.294 | 94.156 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15038 | 0 | 3006.399 | 1.588 | 2.111 | 2.714 | 93.953 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15723 | 0 | 3143.925 | 1.525 | 1.999 | 2.322 | 101.121 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13964 | 0 | 2791.955 | 1.723 | 2.248 | 2.546 | 100.305 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15509 | 0 | 3100.861 | 1.544 | 2.043 | 2.423 | 100.93 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 14676 | 0 | 2934.086 | 1.63 | 2.168 | 2.63 | 105.695 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11838 | 0 | 2366.694 | 2.042 | 2.565 | 2.875 | 130.363 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7111 | 0 | 1421.233 | 3.465 | 4.138 | 4.681 | 127.914 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11618 | 0 | 2322.551 | 2.076 | 2.594 | 2.872 | 138.105 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11293 | 0 | 2257.688 | 2.074 | 3.025 | 3.612 | 110.621 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9427 | 0 | 1884.495 | 2.435 | 3.437 | 4.71 | 137.051 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4110 | 0 | 821.104 | 6.05 | 6.904 | 7.418 | 131.652 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9721 | 0 | 1943.515 | 2.365 | 3.302 | 4.196 | 107.531 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9578 | 0 | 1914.76 | 2.391 | 3.409 | 4.179 | 107.16 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7407 | 0 | 1480.387 | 3.095 | 4.532 | 15.373 | 177.668 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.047 | 2392 | 0 | 477.375 | 10.502 | 11.393 | 11.849 | 142.117 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7930 | 0 | 1585.181 | 2.848 | 4.063 | 15.299 | 122.813 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7815 | 0 | 1562.196 | 2.886 | 4.125 | 15.588 | 122.441 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5188 | 0 | 1036.75 | 4.568 | 6.245 | 18.407 | 161.102 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.625 | 1347 | 0 | 268.552 | 18.568 | 19.885 | 20.298 | 153.773 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5701 | 0 | 1139.505 | 3.909 | 5.681 | 18.794 | 133.281 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5231 | 0 | 1045.516 | 4.242 | 6.297 | 18.947 | 119.766 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.009 | 2965 | 0 | 592.122 | 8.565 | 11.232 | 12.48 | 135.574 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.07 | 7.059 | 1000 | 0 | 141.435 | 35.327 | 36.265 | 36.562 | 161.832 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3689 | 0 | 736.866 | 6.492 | 7.783 | 10.01 | 127.527 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3642 | 0 | 727.683 | 6.646 | 7.806 | 9.125 | 121.992 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.811 | 50.924 | 360 | 0 | 7.085 | 2539.975 | 2542.406 | 2542.957 | 139.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.866 | 33.993 | 240 | 0 | 7.087 | 1693.062 | 1694.667 | 1695.018 | 145.816 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.417 | 25.466 | 180 | 0 | 7.082 | 1270.358 | 1272.637 | 1274.032 | 145.82 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.934 | 16.988 | 120 | 0 | 7.086 | 846.528 | 852.074 | 852.574 | 145.82 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.167 | 14.2 | 100 | 0 | 7.059 | 831.933 | 840.717 | 841.061 | 145.82 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.466 | 8.492 | 60 | 0 | 7.087 | 423.058 | 424.109 | 424.432 | 149.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.645 | 5.646 | 40 | 0 | 7.085 | 282.123 | 282.861 | 283.155 | 154.516 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3690 | 0 | 737.871 | 1.312 | 1.455 | 1.624 | 171.387 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.005 | 942 | 0 | 188.274 | 5.268 | 5.417 | 5.547 | 171.387 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.006 | 482 | 0 | 96.378 | 10.327 | 10.451 | 10.604 | 171.449 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.027 | 99 | 0 | 19.783 | 50.48 | 50.614 | 50.673 | 171.512 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.034 | 2.017 | 50 | 0 | 9.933 | 100.596 | 100.786 | 100.889 | 171.574 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.582 | 200.79 | 200.834 | 171.637 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15756 | 0 | 3150.006 | 1.501 | 2.16 | 2.765 | 93.125 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 15815 | 0 | 3161.77 | 1.517 | 2.038 | 2.498 | 96.422 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16242 | 0 | 3247.579 | 1.479 | 1.976 | 2.418 | 95.973 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14757 | 0 | 2950.684 | 1.622 | 2.148 | 2.826 | 95.566 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15924 | 0 | 3183.907 | 1.51 | 2.019 | 2.475 | 102.359 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14051 | 0 | 2809.422 | 1.715 | 2.271 | 2.699 | 104.207 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16041 | 0 | 3206.923 | 1.498 | 2.006 | 2.515 | 103.324 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14389 | 0 | 2877.046 | 1.659 | 2.234 | 2.836 | 108.211 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12044 | 0 | 2408.114 | 2.01 | 2.551 | 3.032 | 130.066 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7073 | 0 | 1413.842 | 3.484 | 4.22 | 4.631 | 131.535 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12385 | 0 | 2476.242 | 1.946 | 2.484 | 2.803 | 132.793 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12373 | 0 | 2473.887 | 1.945 | 2.489 | 2.858 | 106.652 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9568 | 0 | 1912.816 | 2.398 | 3.458 | 4.775 | 151.211 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4068 | 0 | 812.705 | 6.125 | 7.008 | 7.4 | 136.902 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9466 | 0 | 1892.022 | 2.382 | 3.488 | 5.077 | 116.176 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9416 | 0 | 1882.455 | 2.402 | 3.492 | 4.745 | 115.984 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6976 | 0 | 1394.303 | 3.249 | 4.725 | 18.207 | 188.297 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.161 | 2314 | 0 | 461.954 | 10.81 | 12.05 | 13.277 | 141.84 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 7557 | 0 | 1509.808 | 2.904 | 4.522 | 18.005 | 126.523 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7657 | 0 | 1530.711 | 2.907 | 4.269 | 17.764 | 125.965 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4848 | 0 | 968.819 | 4.834 | 6.657 | 20.897 | 163.141 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.816 | 1289 | 0 | 256.833 | 19.451 | 20.865 | 21.292 | 154.547 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 2.003 | 5328 | 0 | 1062.217 | 4.118 | 6.147 | 20.935 | 137.691 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.147 | 2.004 | 5046 | 0 | 980.469 | 4.398 | 5.919 | 20.547 | 136.754 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.008 | 2977 | 0 | 594.197 | 8.262 | 11.278 | 12.936 | 155.723 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.391 | 7.288 | 1000 | 0 | 135.297 | 36.884 | 38.157 | 43.687 | 163.691 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3357 | 0 | 670.649 | 7.171 | 8.827 | 10.071 | 158.531 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3367 | 0 | 672.629 | 7.357 | 8.439 | 9.073 | 159.598 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.888 | 51.047 | 360 | 0 | 7.074 | 2544.068 | 2546.512 | 2547.824 | 186.902 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.923 | 33.997 | 240 | 0 | 7.075 | 1695.914 | 1698.585 | 1699.56 | 204.496 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.429 | 25.488 | 180 | 0 | 7.079 | 1271.142 | 1274.08 | 1274.89 | 204.504 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.957 | 17.023 | 120 | 0 | 7.077 | 847.521 | 849.551 | 851.248 | 204.504 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.18 | 14.272 | 100 | 0 | 7.052 | 812.02 | 834.084 | 835.456 | 204.504 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.482 | 8.499 | 60 | 0 | 7.074 | 423.633 | 425.498 | 426.971 | 204.504 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.652 | 5.657 | 40 | 0 | 7.077 | 282.288 | 283.467 | 283.908 | 204.504 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3661 | 0 | 732.005 | 1.316 | 1.492 | 1.745 | 204.504 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.004 | 928 | 0 | 185.534 | 5.33 | 5.518 | 5.845 | 204.566 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.007 | 481 | 0 | 96.11 | 10.349 | 10.476 | 10.749 | 204.566 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.027 | 99 | 0 | 19.783 | 50.482 | 50.625 | 50.813 | 204.566 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.015 | 50 | 0 | 9.931 | 100.607 | 100.984 | 101.564 | 204.566 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.01 | 25 | 0 | 4.982 | 200.641 | 200.739 | 201.034 | 204.566 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.146 | 16.281 | 1000 | 0 | 61.936 | 40.982 | 42.107 | 42.569 | 30.625 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.409 | 1000 | 0 | 61.989 | 40.971 | 41.998 | 42.837 | 30.809 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.203 | 16.413 | 1000 | 0 | 61.719 | 41.006 | 42.318 | 42.963 | 30.887 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.147 | 16.446 | 1000 | 0 | 61.931 | 40.986 | 42.125 | 42.762 | 30.984 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.155 | 16.427 | 1000 | 0 | 61.9 | 40.989 | 42.166 | 42.816 | 31.219 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.149 | 16.36 | 1000 | 0 | 61.924 | 40.982 | 42.118 | 42.636 | 31.227 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.197 | 16.282 | 1000 | 0 | 61.74 | 41.0 | 42.338 | 42.84 | 31.262 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.143 | 16.412 | 1000 | 0 | 61.947 | 40.981 | 42.01 | 42.592 | 31.688 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.843 | 13.418 | 1000 | 0 | 72.238 | 40.955 | 41.955 | 42.189 | 31.742 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.735 | 13.525 | 1000 | 0 | 67.865 | 40.963 | 41.965 | 42.972 | 31.801 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10698 | 0 | 2138.756 | 1.35 | 2.039 | 4.346 | 32.348 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.748 | 14.079 | 1000 | 0 | 72.738 | 40.97 | 42.029 | 42.999 | 39.063 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.333 | 9.656 | 1000 | 0 | 107.15 | 40.957 | 42.403 | 43.459 | 39.063 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.683 | 7.112 | 1000 | 0 | 115.168 | 40.96 | 42.494 | 43.827 | 39.063 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8405 | 0 | 1680.371 | 1.618 | 2.532 | 41.145 | 39.063 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.498 | 10.485 | 1000 | 0 | 86.974 | 41.804 | 42.96 | 44.151 | 45.391 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.433 | 12.689 | 1000 | 0 | 80.43 | 41.922 | 42.975 | 45.094 | 45.391 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.098 | 11.773 | 1000 | 0 | 90.11 | 41.916 | 43.127 | 44.46 | 45.391 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 6226 | 0 | 1244.465 | 2.139 | 3.463 | 20.786 | 45.391 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.401 | 14.245 | 1000 | 0 | 74.624 | 41.966 | 43.941 | 45.317 | 49.469 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.501 | 13.488 | 1000 | 0 | 68.959 | 41.979 | 44.693 | 48.249 | 49.469 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.192 | 15.185 | 1000 | 0 | 70.462 | 42.041 | 44.508 | 46.979 | 49.477 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 4443 | 0 | 887.744 | 2.99 | 5.185 | 24.711 | 50.207 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.68 | 16.157 | 1000 | 0 | 63.774 | 43.297 | 46.89 | 47.998 | 59.375 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.977 | 15.238 | 1000 | 0 | 66.769 | 43.943 | 48.285 | 51.934 | 59.375 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.581 | 15.755 | 1000 | 0 | 64.179 | 44.403 | 48.802 | 51.105 | 59.375 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3320 | 0 | 663.025 | 4.36 | 5.882 | 9.61 | 65.387 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.503 | 17.046 | 1000 | 0 | 60.595 | 45.127 | 50.012 | 52.068 | 76.008 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.044 | 28.8 | 363 | 0 | 12.498 | 241.971 | 243.223 | 19633.939 | 76.426 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.441 | 19.204 | 243 | 0 | 12.499 | 241.971 | 242.983 | 12819.722 | 76.457 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.639 | 14.399 | 183 | 0 | 12.501 | 241.958 | 242.998 | 10035.732 | 76.457 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.841 | 9.604 | 123 | 0 | 12.499 | 241.974 | 242.932 | 5237.345 | 76.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.84 | 9.599 | 103 | 0 | 10.468 | 241.956 | 242.743 | 5141.508 | 76.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 4.802 | 63 | 0 | 12.495 | 241.949 | 242.398 | 242.986 | 76.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.802 | 42 | 0 | 8.344 | 241.78 | 242.131 | 242.179 | 76.461 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.018 | 122 | 0 | 24.342 | 41.965 | 42.91 | 42.971 | 76.516 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.03 | 114 | 0 | 22.723 | 44.968 | 45.439 | 45.968 | 76.547 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.039 | 97 | 0 | 19.353 | 51.967 | 52.966 | 53.002 | 76.555 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.083 | 2.062 | 56 | 0 | 11.018 | 91.081 | 91.988 | 92.08 | 76.574 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.048 | 2.088 | 36 | 0 | 7.132 | 140.985 | 142.308 | 142.968 | 76.574 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.381 | 21 | 0 | 4.168 | 241.949 | 242.116 | 242.156 | 76.582 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.169 | 16.169 | 1000 | 0 | 61.847 | 40.988 | 42.178 | 42.807 | 30.477 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.149 | 16.246 | 1000 | 0 | 61.923 | 40.985 | 42.07 | 42.647 | 30.859 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.193 | 16.305 | 1000 | 0 | 61.756 | 41.003 | 42.322 | 42.914 | 30.965 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.194 | 16.227 | 1000 | 0 | 61.751 | 41.0 | 42.304 | 42.815 | 31.148 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.162 | 16.262 | 1000 | 0 | 61.873 | 40.988 | 42.159 | 43.009 | 31.195 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.238 | 1000 | 0 | 61.995 | 40.979 | 41.994 | 42.726 | 31.195 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.165 | 16.21 | 1000 | 0 | 61.863 | 40.985 | 42.189 | 42.741 | 31.207 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.151 | 16.354 | 1000 | 0 | 61.917 | 40.986 | 42.185 | 42.968 | 32.0 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.672 | 14.526 | 1000 | 0 | 68.158 | 40.961 | 41.953 | 42.125 | 32.0 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.517 | 14.987 | 1000 | 0 | 68.885 | 40.964 | 41.97 | 42.147 | 32.035 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11366 | 0 | 2272.424 | 1.269 | 1.905 | 3.662 | 32.418 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.084 | 13.401 | 1000 | 0 | 66.293 | 40.972 | 41.98 | 42.696 | 38.77 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.428 | 10.982 | 1000 | 0 | 118.647 | 40.955 | 42.204 | 43.164 | 38.77 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.426 | 9.238 | 1000 | 0 | 95.916 | 40.962 | 42.181 | 43.239 | 38.77 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8951 | 0 | 1789.441 | 1.538 | 2.379 | 42.253 | 38.961 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.734 | 9.13 | 1000 | 0 | 114.496 | 41.257 | 42.986 | 44.036 | 46.352 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.603 | 13.337 | 1000 | 0 | 86.187 | 41.905 | 43.136 | 45.364 | 46.352 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.936 | 12.681 | 1000 | 0 | 83.78 | 41.923 | 42.984 | 44.302 | 46.352 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.004 | 6527 | 0 | 1304.863 | 2.028 | 3.262 | 57.922 | 46.352 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.798 | 14.604 | 1000 | 0 | 72.473 | 41.972 | 43.809 | 44.971 | 49.215 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.325 | 15.186 | 1000 | 0 | 69.809 | 41.982 | 44.851 | 45.972 | 49.219 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.009 | 14.539 | 1000 | 0 | 71.382 | 41.994 | 44.904 | 47.362 | 47.32 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4628 | 0 | 924.657 | 2.878 | 4.993 | 23.009 | 49.824 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.581 | 16.082 | 1000 | 0 | 64.181 | 43.021 | 46.426 | 52.775 | 59.262 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.105 | 15.645 | 1000 | 0 | 66.203 | 42.994 | 46.202 | 49.468 | 57.574 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.079 | 15.246 | 1000 | 0 | 66.315 | 43.926 | 48.053 | 50.915 | 57.574 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 3507 | 0 | 700.669 | 4.161 | 5.501 | 8.968 | 63.586 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.693 | 16.984 | 1000 | 0 | 59.904 | 45.403 | 51.027 | 53.01 | 74.453 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.041 | 28.803 | 363 | 0 | 12.499 | 241.965 | 243.272 | 19638.937 | 71.801 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.443 | 19.225 | 243 | 0 | 12.498 | 241.969 | 243.009 | 12822.393 | 71.809 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.643 | 14.407 | 183 | 0 | 12.498 | 241.98 | 243.097 | 10042.206 | 71.813 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.604 | 123 | 0 | 12.502 | 241.949 | 242.415 | 5235.474 | 71.816 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.837 | 9.596 | 103 | 0 | 10.471 | 241.876 | 242.714 | 5140.408 | 71.832 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 4.8 | 63 | 0 | 12.493 | 241.946 | 242.828 | 243.132 | 71.832 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.797 | 42 | 0 | 8.34 | 241.832 | 242.143 | 242.164 | 71.832 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.018 | 122 | 0 | 24.341 | 41.974 | 42.947 | 43.006 | 71.871 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.032 | 114 | 0 | 22.723 | 44.982 | 45.805 | 46.0 | 71.957 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.04 | 97 | 0 | 19.373 | 51.973 | 52.15 | 52.958 | 72.078 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.077 | 2.057 | 56 | 0 | 11.031 | 90.991 | 92.085 | 92.52 | 72.086 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.058 | 2.079 | 36 | 0 | 7.118 | 141.701 | 142.15 | 142.732 | 72.086 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.379 | 21 | 0 | 4.166 | 241.954 | 242.964 | 242.969 | 72.086 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.221 | 1000 | 0 | 62.061 | 40.981 | 41.985 | 42.312 | 30.457 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.186 | 1000 | 0 | 62.047 | 40.983 | 41.994 | 42.585 | 30.875 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.185 | 1000 | 0 | 62.089 | 40.982 | 41.949 | 42.269 | 31.004 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.161 | 1000 | 0 | 62.075 | 40.979 | 41.976 | 42.2 | 31.105 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.183 | 1000 | 0 | 62.101 | 40.98 | 41.958 | 42.181 | 31.207 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.11 | 1000 | 0 | 62.02 | 40.983 | 41.988 | 42.762 | 31.207 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.121 | 1000 | 0 | 62.085 | 40.983 | 41.994 | 42.438 | 31.234 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.116 | 1000 | 0 | 62.105 | 40.981 | 41.974 | 42.182 | 32.02 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.344 | 14.858 | 1000 | 0 | 69.718 | 40.97 | 41.972 | 42.097 | 32.074 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.995 | 15.136 | 1000 | 0 | 66.689 | 40.971 | 41.972 | 42.313 | 32.074 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.001 | 11997 | 0 | 2398.194 | 1.209 | 1.777 | 3.854 | 32.449 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.324 | 15.286 | 1000 | 0 | 69.812 | 40.972 | 41.977 | 42.762 | 38.883 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.907 | 10.426 | 1000 | 0 | 83.982 | 40.973 | 42.092 | 43.345 | 38.883 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.491 | 11.213 | 1000 | 0 | 80.058 | 40.974 | 42.088 | 43.83 | 38.883 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9105 | 0 | 1820.03 | 1.515 | 2.309 | 42.197 | 38.883 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.511 | 10.48 | 1001 | 0 | 86.957 | 40.993 | 42.572 | 43.928 | 43.238 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.541 | 13.198 | 1000 | 0 | 73.848 | 41.936 | 43.088 | 45.779 | 43.148 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.948 | 14.069 | 1000 | 0 | 71.695 | 41.948 | 43.007 | 44.907 | 43.148 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 6926 | 0 | 1384.123 | 1.862 | 2.877 | 37.745 | 43.699 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.194 | 14.628 | 1000 | 0 | 70.454 | 41.978 | 43.945 | 45.548 | 50.289 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.042 | 15.094 | 1000 | 0 | 66.48 | 41.98 | 44.018 | 52.656 | 50.289 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.579 | 15.462 | 1000 | 0 | 68.591 | 41.976 | 44.416 | 54.093 | 50.289 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.165 | 2.003 | 5036 | 0 | 974.932 | 2.647 | 4.231 | 22.909 | 51.762 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.936 | 16.02 | 1000 | 0 | 62.751 | 42.974 | 44.989 | 46.611 | 59.531 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.411 | 15.664 | 1000 | 0 | 64.888 | 42.996 | 47.734 | 49.392 | 58.879 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.449 | 15.882 | 1000 | 0 | 64.727 | 43.734 | 46.988 | 50.259 | 58.879 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.005 | 3666 | 0 | 732.195 | 4.023 | 5.134 | 8.551 | 64.891 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.979 | 17.127 | 1000 | 0 | 58.895 | 45.167 | 50.951 | 66.628 | 76.57 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.022 | 28.799 | 363 | 0 | 12.508 | 241.946 | 242.983 | 19622.103 | 77.004 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.431 | 19.201 | 243 | 0 | 12.506 | 241.942 | 243.013 | 12814.589 | 77.031 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.631 | 14.389 | 183 | 0 | 12.508 | 241.953 | 242.988 | 10028.646 | 77.059 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.6 | 123 | 0 | 12.508 | 241.88 | 242.671 | 5235.469 | 77.063 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.84 | 9.601 | 103 | 0 | 10.468 | 241.935 | 242.907 | 5138.283 | 77.066 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.799 | 63 | 0 | 12.5 | 241.85 | 242.473 | 243.035 | 77.07 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.801 | 42 | 0 | 8.342 | 241.792 | 242.135 | 242.277 | 77.07 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.018 | 122 | 0 | 24.352 | 41.97 | 42.398 | 42.978 | 77.109 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.031 | 114 | 0 | 22.741 | 44.966 | 45.11 | 45.955 | 77.113 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.039 | 97 | 0 | 19.373 | 51.969 | 52.084 | 52.967 | 77.141 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.059 | 56 | 0 | 11.05 | 90.965 | 91.992 | 92.747 | 77.16 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.053 | 2.083 | 36 | 0 | 7.125 | 141.05 | 142.094 | 142.666 | 77.16 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.377 | 21 | 0 | 4.169 | 241.912 | 242.1 | 242.391 | 77.168 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17161 | 0 | 3431.508 | 1.381 | 1.916 | 2.473 | 97.332 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17154 | 0 | 3429.715 | 1.392 | 1.856 | 2.197 | 99.633 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 17643 | 0 | 3527.603 | 1.36 | 1.789 | 2.115 | 99.848 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16903 | 0 | 3379.454 | 1.419 | 1.871 | 2.417 | 100.352 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17109 | 0 | 3421.078 | 1.403 | 1.852 | 2.236 | 107.156 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15006 | 0 | 3000.395 | 1.599 | 2.12 | 2.493 | 108.309 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16429 | 0 | 3285.03 | 1.455 | 1.94 | 2.444 | 108.82 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15307 | 0 | 3060.703 | 1.564 | 2.075 | 2.722 | 112.984 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12159 | 0 | 2430.938 | 1.983 | 2.503 | 2.809 | 138.078 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7010 | 0 | 1401.278 | 3.529 | 4.235 | 4.619 | 137.355 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12061 | 0 | 2411.202 | 1.997 | 2.529 | 2.843 | 137.066 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11833 | 0 | 2365.695 | 2.037 | 2.568 | 2.919 | 116.785 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9157 | 0 | 1830.577 | 2.456 | 3.585 | 4.866 | 154.773 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4036 | 0 | 806.489 | 6.197 | 7.089 | 7.503 | 143.129 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9376 | 0 | 1874.436 | 2.392 | 3.508 | 4.438 | 124.926 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8607 | 0 | 1720.585 | 2.458 | 4.049 | 5.512 | 123.238 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7068 | 0 | 1412.955 | 3.037 | 4.769 | 23.187 | 184.445 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.161 | 2324 | 0 | 463.794 | 10.846 | 11.937 | 12.332 | 162.734 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7585 | 0 | 1516.322 | 2.875 | 4.261 | 22.128 | 142.332 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7392 | 0 | 1477.611 | 2.944 | 4.534 | 21.91 | 130.574 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.021 | 5381 | 0 | 1075.542 | 4.113 | 6.028 | 24.424 | 163.285 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.838 | 1280 | 0 | 255.1 | 19.67 | 21.199 | 22.565 | 173.914 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4946 | 0 | 988.37 | 4.428 | 6.439 | 26.171 | 154.715 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4801 | 0 | 959.448 | 4.593 | 6.502 | 25.792 | 131.219 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.004 | 3196 | 0 | 638.318 | 7.701 | 9.297 | 10.233 | 165.32 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.585 | 7.614 | 1000 | 0 | 131.842 | 37.82 | 44.331 | 45.765 | 193.871 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3454 | 0 | 689.998 | 7.142 | 8.251 | 8.884 | 147.371 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3435 | 0 | 686.06 | 7.142 | 8.432 | 9.092 | 147.496 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.891 | 50.89 | 360 | 0 | 7.074 | 2544.108 | 2545.721 | 2546.444 | 165.336 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.929 | 33.927 | 240 | 0 | 7.074 | 1696.129 | 1696.786 | 1697.044 | 174.68 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.446 | 25.44 | 180 | 0 | 7.074 | 1272.067 | 1272.618 | 1272.969 | 175.305 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.967 | 16.961 | 120 | 0 | 7.072 | 848.148 | 849.027 | 849.399 | 175.309 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.192 | 14.194 | 100 | 0 | 7.046 | 844.447 | 846.291 | 846.449 | 175.316 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.482 | 8.481 | 60 | 0 | 7.074 | 423.985 | 424.293 | 424.633 | 175.316 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.653 | 40 | 0 | 7.076 | 282.553 | 282.737 | 282.788 | 175.316 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 1958 | 0 | 391.494 | 2.508 | 2.675 | 2.873 | 198.77 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.005 | 569 | 0 | 113.778 | 8.754 | 8.866 | 9.09 | 198.832 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.01 | 409 | 0 | 81.782 | 12.172 | 12.376 | 12.524 | 197.641 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.047 | 2.025 | 100 | 0 | 19.813 | 50.412 | 50.544 | 50.602 | 197.641 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.015 | 50 | 0 | 9.941 | 100.522 | 100.664 | 100.859 | 197.641 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.499 | 200.608 | 200.626 | 197.641 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 16927 | 0 | 3384.382 | 1.403 | 1.939 | 2.456 | 98.578 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16863 | 0 | 3371.665 | 1.419 | 1.882 | 2.238 | 99.281 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17191 | 0 | 3437.411 | 1.39 | 1.865 | 2.204 | 99.43 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16727 | 0 | 3344.507 | 1.433 | 1.891 | 2.421 | 100.074 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17100 | 0 | 3419.062 | 1.402 | 1.835 | 2.224 | 106.879 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15168 | 0 | 3032.703 | 1.581 | 2.096 | 2.453 | 108.473 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17197 | 0 | 3438.596 | 1.393 | 1.839 | 2.239 | 110.461 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16567 | 0 | 3312.342 | 1.445 | 1.921 | 2.493 | 114.453 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13212 | 0 | 2641.692 | 1.826 | 2.281 | 2.533 | 135.973 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7455 | 0 | 1489.964 | 3.307 | 3.985 | 4.361 | 136.434 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13158 | 0 | 2630.696 | 1.829 | 2.304 | 2.622 | 138.793 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13312 | 0 | 2661.406 | 1.803 | 2.273 | 2.561 | 114.422 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9506 | 0 | 1900.391 | 2.338 | 3.574 | 5.033 | 148.512 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4205 | 0 | 840.232 | 5.933 | 6.752 | 7.199 | 144.348 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9635 | 0 | 1925.658 | 2.302 | 3.577 | 4.883 | 127.895 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9654 | 0 | 1929.802 | 2.3 | 3.522 | 4.602 | 127.895 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7582 | 0 | 1515.672 | 2.837 | 4.558 | 12.608 | 185.742 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.088 | 2362 | 0 | 471.483 | 10.53 | 11.864 | 14.247 | 153.641 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7630 | 0 | 1525.207 | 2.808 | 4.616 | 22.499 | 133.203 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7573 | 0 | 1513.873 | 2.824 | 4.632 | 22.533 | 133.41 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.003 | 5268 | 0 | 1049.14 | 4.176 | 6.181 | 26.613 | 169.875 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.71 | 1307 | 0 | 260.446 | 19.28 | 22.664 | 24.823 | 173.336 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 5195 | 0 | 1038.236 | 4.205 | 6.203 | 26.317 | 138.844 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.026 | 5112 | 0 | 1021.548 | 4.293 | 6.215 | 26.255 | 138.906 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3481 | 0 | 695.456 | 7.061 | 8.615 | 9.406 | 151.246 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.234 | 7.201 | 1000 | 0 | 138.243 | 36.097 | 42.748 | 43.741 | 171.508 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3219 | 0 | 643.079 | 7.483 | 9.751 | 13.356 | 141.742 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3203 | 0 | 639.895 | 7.654 | 9.176 | 9.982 | 141.805 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.891 | 50.894 | 360 | 0 | 7.074 | 2544.174 | 2546.487 | 2547.561 | 164.098 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.922 | 33.919 | 240 | 0 | 7.075 | 1695.868 | 1696.5 | 1697.649 | 164.223 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.441 | 25.436 | 180 | 0 | 7.075 | 1271.828 | 1272.462 | 1273.078 | 164.223 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.962 | 16.958 | 120 | 0 | 7.075 | 847.911 | 848.328 | 848.694 | 164.223 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.193 | 14.196 | 100 | 0 | 7.046 | 844.47 | 846.239 | 846.554 | 169.234 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.481 | 8.48 | 60 | 0 | 7.074 | 423.955 | 424.354 | 424.594 | 169.234 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.653 | 40 | 0 | 7.078 | 282.442 | 282.815 | 282.895 | 169.234 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 1968 | 0 | 393.495 | 2.497 | 2.659 | 2.803 | 173.242 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.006 | 569 | 0 | 113.79 | 8.747 | 8.873 | 9.118 | 173.305 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.005 | 410 | 0 | 81.864 | 12.155 | 12.352 | 12.498 | 173.313 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.017 | 100 | 0 | 19.809 | 50.418 | 50.707 | 50.906 | 173.313 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.014 | 50 | 0 | 9.949 | 100.446 | 100.567 | 100.622 | 173.313 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.006 | 25 | 0 | 4.985 | 200.503 | 200.629 | 200.674 | 173.313 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17413 | 0 | 3481.775 | 1.367 | 1.863 | 2.331 | 98.027 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17369 | 0 | 3473.01 | 1.38 | 1.809 | 2.147 | 99.254 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17576 | 0 | 3513.745 | 1.366 | 1.791 | 2.1 | 98.246 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17053 | 0 | 3409.731 | 1.406 | 1.847 | 2.371 | 98.762 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17204 | 0 | 3440.09 | 1.394 | 1.822 | 2.193 | 105.617 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15212 | 0 | 3041.705 | 1.571 | 2.129 | 2.527 | 107.398 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17267 | 0 | 3452.539 | 1.386 | 1.836 | 2.258 | 110.336 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16782 | 0 | 3355.591 | 1.429 | 1.887 | 2.412 | 114.539 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13418 | 0 | 2682.819 | 1.796 | 2.27 | 2.547 | 131.898 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7539 | 0 | 1506.875 | 3.267 | 3.95 | 4.318 | 131.613 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13208 | 0 | 2640.812 | 1.828 | 2.308 | 2.565 | 133.508 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13305 | 0 | 2660.253 | 1.814 | 2.277 | 2.553 | 109.262 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 9832 | 0 | 1965.414 | 2.259 | 3.421 | 4.522 | 142.004 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4259 | 0 | 850.876 | 5.855 | 6.719 | 7.119 | 150.457 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10066 | 0 | 2012.392 | 2.211 | 3.289 | 4.062 | 140.941 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 10036 | 0 | 2005.707 | 2.232 | 3.311 | 4.345 | 141.0 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7722 | 0 | 1543.557 | 2.795 | 4.228 | 23.501 | 174.813 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.042 | 2386 | 0 | 476.272 | 10.513 | 11.561 | 11.948 | 150.406 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7788 | 0 | 1556.802 | 2.752 | 4.363 | 23.304 | 122.59 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7744 | 0 | 1548.183 | 2.785 | 4.205 | 23.248 | 122.473 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5457 | 0 | 1090.632 | 4.027 | 5.822 | 26.076 | 157.133 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.667 | 1331 | 0 | 265.207 | 18.897 | 20.851 | 23.151 | 166.301 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.163 | 2.003 | 5299 | 0 | 1026.353 | 4.064 | 6.032 | 27.242 | 133.184 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5226 | 0 | 1044.165 | 4.217 | 5.879 | 26.604 | 133.563 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3667 | 0 | 732.546 | 6.776 | 9.161 | 10.356 | 162.477 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.203 | 7.123 | 1000 | 0 | 138.828 | 35.939 | 42.199 | 43.282 | 178.266 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3634 | 0 | 725.772 | 6.663 | 8.221 | 8.904 | 139.477 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3559 | 0 | 710.908 | 6.849 | 8.353 | 9.09 | 139.602 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.905 | 50.891 | 360 | 0 | 7.072 | 2545.008 | 2549.07 | 2550.315 | 164.695 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.93 | 33.924 | 240 | 0 | 7.073 | 1696.318 | 1698.73 | 1700.331 | 178.641 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.448 | 25.437 | 180 | 0 | 7.073 | 1272.189 | 1274.718 | 1276.971 | 178.645 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.962 | 16.964 | 120 | 0 | 7.075 | 847.969 | 850.085 | 851.516 | 178.645 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.185 | 14.184 | 100 | 0 | 7.05 | 841.712 | 847.552 | 848.735 | 178.645 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.482 | 8.481 | 60 | 0 | 7.074 | 424.037 | 425.96 | 426.559 | 179.895 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.654 | 5.654 | 40 | 0 | 7.075 | 282.557 | 282.929 | 283.039 | 183.582 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1936 | 0 | 387.062 | 2.532 | 2.701 | 2.838 | 195.844 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.001 | 569 | 0 | 113.688 | 8.756 | 8.868 | 9.06 | 195.844 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 407 | 0 | 81.367 | 12.268 | 12.354 | 12.487 | 195.906 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.04 | 2.022 | 100 | 0 | 19.843 | 50.35 | 50.46 | 50.549 | 195.906 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.024 | 2.013 | 50 | 0 | 9.953 | 100.432 | 100.501 | 100.54 | 195.906 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.008 | 25 | 0 | 4.986 | 200.478 | 200.607 | 200.629 | 195.906 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

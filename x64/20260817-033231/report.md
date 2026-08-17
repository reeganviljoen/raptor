# Puma vs Raptor Simulation

Run ID: `20260817-033231`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.116 | 1000 | 0 | 62.008 | 40.985 | 41.957 | 42.127 | 29.832 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.107 | 1000 | 0 | 62.0 | 40.988 | 41.982 | 42.863 | 30.258 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.104 | 1000 | 0 | 62.038 | 40.986 | 41.963 | 42.295 | 30.258 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.114 | 1000 | 0 | 62.053 | 40.988 | 41.972 | 42.277 | 30.316 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.144 | 1000 | 0 | 62.063 | 40.98 | 41.978 | 42.175 | 30.316 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.101 | 1000 | 0 | 62.075 | 40.984 | 41.953 | 42.1 | 30.445 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.107 | 1000 | 0 | 62.052 | 40.987 | 41.924 | 42.283 | 30.445 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.107 | 1000 | 0 | 62.021 | 40.992 | 41.97 | 42.44 | 31.516 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.098 | 14.745 | 1000 | 0 | 70.934 | 40.97 | 41.966 | 42.814 | 31.574 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.016 | 15.468 | 1000 | 0 | 66.594 | 40.978 | 41.969 | 42.417 | 31.574 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 15287 | 0 | 3056.193 | 0.921 | 1.528 | 4.438 | 31.738 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.148 | 14.354 | 1000 | 0 | 66.015 | 40.977 | 41.978 | 42.839 | 41.512 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.677 | 8.046 | 1000 | 0 | 115.241 | 40.958 | 42.015 | 42.85 | 41.523 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.918 | 11.225 | 1000 | 0 | 91.593 | 40.99 | 42.034 | 42.933 | 41.523 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 10899 | 0 | 2179.029 | 1.294 | 1.958 | 36.408 | 41.523 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.122 | 12.51 | 1000 | 0 | 89.916 | 41.199 | 42.257 | 43.052 | 53.645 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.507 | 11.696 | 1000 | 0 | 79.953 | 41.941 | 42.844 | 43.333 | 53.645 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.692 | 13.481 | 1000 | 0 | 78.792 | 41.932 | 42.758 | 43.354 | 53.645 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7154 | 0 | 1429.818 | 1.795 | 3.094 | 40.462 | 53.645 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.334 | 14.111 | 1000 | 0 | 69.765 | 41.978 | 43.086 | 44.171 | 59.832 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.281 | 14.348 | 1000 | 0 | 75.294 | 42.126 | 43.942 | 45.465 | 58.609 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.256 | 13.898 | 1000 | 0 | 75.436 | 42.578 | 43.999 | 45.602 | 58.609 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4855 | 0 | 970.209 | 2.818 | 5.125 | 12.695 | 58.609 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.442 | 15.106 | 1000 | 0 | 64.759 | 43.112 | 44.966 | 46.81 | 71.098 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.191 | 14.578 | 1000 | 0 | 70.469 | 44.138 | 47.028 | 49.765 | 71.098 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.609 | 15.752 | 1000 | 0 | 68.451 | 44.248 | 47.903 | 51.598 | 71.098 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3046 | 0 | 608.396 | 4.838 | 6.342 | 13.131 | 73.027 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.982 | 16.904 | 1000 | 0 | 62.572 | 45.995 | 49.313 | 52.213 | 85.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.016 | 28.78 | 363 | 0 | 12.51 | 241.823 | 243.421 | 19619.936 | 84.996 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.426 | 19.185 | 243 | 0 | 12.509 | 241.884 | 242.849 | 12813.965 | 85.105 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.63 | 14.39 | 183 | 0 | 12.509 | 241.877 | 242.921 | 10024.18 | 85.137 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.595 | 123 | 0 | 12.508 | 241.846 | 243.077 | 5230.056 | 85.137 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.592 | 103 | 0 | 10.473 | 241.908 | 242.872 | 5134.091 | 85.145 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.799 | 63 | 0 | 12.515 | 241.618 | 242.209 | 242.445 | 85.27 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 4.797 | 42 | 0 | 8.331 | 241.928 | 242.774 | 243.002 | 85.277 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.366 | 41.975 | 42.176 | 43.006 | 85.277 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.025 | 110 | 0 | 21.856 | 46.966 | 47.158 | 48.027 | 85.332 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.03 | 98 | 0 | 19.514 | 51.764 | 52.189 | 52.942 | 85.332 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.073 | 55 | 0 | 10.972 | 91.946 | 92.933 | 92.963 | 85.332 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.058 | 2.086 | 36 | 0 | 7.118 | 141.873 | 142.003 | 142.654 | 85.336 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 2.377 | 21 | 0 | 4.163 | 241.974 | 242.9 | 243.094 | 85.336 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.096 | 1000 | 0 | 62.038 | 40.986 | 41.967 | 42.362 | 29.762 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.099 | 1000 | 0 | 62.05 | 40.985 | 41.972 | 42.367 | 29.852 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.095 | 1000 | 0 | 62.065 | 40.984 | 41.965 | 42.23 | 29.973 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.103 | 1000 | 0 | 62.066 | 40.986 | 41.97 | 42.189 | 30.191 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.092 | 1000 | 0 | 62.091 | 40.983 | 41.957 | 42.267 | 30.219 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.097 | 16.097 | 1000 | 0 | 62.124 | 40.981 | 41.951 | 42.16 | 30.223 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.094 | 1000 | 0 | 62.054 | 40.988 | 41.946 | 42.282 | 30.223 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.101 | 1000 | 0 | 62.066 | 40.984 | 41.945 | 42.184 | 31.203 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.479 | 14.971 | 1000 | 0 | 64.604 | 40.974 | 41.965 | 42.173 | 31.219 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.201 | 14.112 | 1000 | 0 | 65.785 | 40.977 | 41.973 | 42.31 | 31.219 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 15094 | 0 | 3018.126 | 0.938 | 1.547 | 4.057 | 31.477 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.462 | 14.194 | 1000 | 0 | 64.675 | 40.979 | 41.98 | 42.76 | 38.883 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.227 | 8.778 | 1001 | 0 | 121.669 | 40.898 | 42.021 | 43.263 | 38.883 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.783 | 8.271 | 1000 | 0 | 113.861 | 40.949 | 42.018 | 42.938 | 38.883 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.016 | 2.002 | 10773 | 0 | 2147.646 | 1.282 | 1.973 | 41.487 | 38.883 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.827 | 11.838 | 1000 | 0 | 77.959 | 41.717 | 42.742 | 43.302 | 54.695 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.488 | 10.673 | 1000 | 0 | 87.049 | 41.927 | 42.733 | 43.814 | 54.695 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.664 | 12.385 | 1000 | 0 | 93.769 | 41.863 | 42.643 | 43.439 | 54.695 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.005 | 7371 | 0 | 1473.514 | 1.813 | 2.882 | 43.74 | 54.695 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.675 | 14.997 | 1000 | 0 | 73.128 | 41.976 | 43.086 | 44.058 | 59.219 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.693 | 13.698 | 1000 | 0 | 73.028 | 42.675 | 43.969 | 48.39 | 58.887 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.814 | 12.764 | 1000 | 0 | 78.042 | 42.677 | 44.109 | 46.729 | 58.887 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4712 | 0 | 941.584 | 2.87 | 5.11 | 14.357 | 60.367 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.516 | 14.961 | 1000 | 0 | 68.89 | 43.103 | 45.047 | 49.321 | 70.27 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.815 | 14.371 | 1000 | 0 | 72.384 | 43.98 | 47.199 | 49.702 | 70.27 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.874 | 15.141 | 1000 | 0 | 72.078 | 43.999 | 46.522 | 49.074 | 70.27 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.007 | 2905 | 0 | 580.12 | 5.069 | 6.932 | 13.411 | 72.273 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.902 | 16.438 | 1000 | 0 | 62.884 | 45.954 | 49.509 | 52.29 | 83.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.023 | 28.78 | 363 | 0 | 12.507 | 241.89 | 243.237 | 19620.096 | 80.723 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.427 | 19.19 | 243 | 0 | 12.508 | 241.838 | 243.174 | 12813.698 | 80.75 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.629 | 14.393 | 183 | 0 | 12.51 | 241.849 | 242.885 | 10026.276 | 80.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.595 | 123 | 0 | 12.509 | 241.818 | 242.584 | 5234.826 | 80.777 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.592 | 103 | 0 | 10.476 | 241.815 | 242.94 | 5134.053 | 80.781 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.795 | 63 | 0 | 12.499 | 241.879 | 242.632 | 243.546 | 80.785 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.799 | 42 | 0 | 8.332 | 241.892 | 242.555 | 242.764 | 80.785 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.018 | 122 | 0 | 24.377 | 41.963 | 42.089 | 42.958 | 80.789 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.028 | 110 | 0 | 21.826 | 46.963 | 47.145 | 47.92 | 80.797 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.033 | 98 | 0 | 19.516 | 51.825 | 52.198 | 52.982 | 80.797 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.071 | 55 | 0 | 10.98 | 91.938 | 92.233 | 92.804 | 80.797 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.087 | 36 | 0 | 7.108 | 141.928 | 142.145 | 142.668 | 80.797 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.38 | 21 | 0 | 4.169 | 241.881 | 242.285 | 242.31 | 80.797 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.097 | 1000 | 0 | 62.066 | 40.983 | 41.962 | 42.207 | 28.336 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.101 | 1000 | 0 | 62.054 | 40.984 | 41.954 | 42.34 | 28.344 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.102 | 1000 | 0 | 62.044 | 40.989 | 41.968 | 42.246 | 28.344 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.105 | 1000 | 0 | 62.068 | 40.988 | 41.976 | 42.41 | 28.387 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.106 | 1000 | 0 | 62.057 | 40.985 | 41.941 | 42.375 | 28.395 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.107 | 1000 | 0 | 62.089 | 40.982 | 41.955 | 42.277 | 28.398 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.102 | 1000 | 0 | 62.055 | 40.985 | 41.947 | 42.321 | 28.418 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.098 | 1000 | 0 | 62.054 | 40.985 | 41.96 | 42.282 | 28.996 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.404 | 14.141 | 1000 | 0 | 64.919 | 40.975 | 41.962 | 42.155 | 28.996 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.414 | 15.229 | 1000 | 0 | 64.876 | 40.978 | 41.972 | 42.387 | 28.996 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 14837 | 0 | 2966.565 | 0.956 | 1.578 | 4.153 | 29.402 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.168 | 15.238 | 1000 | 0 | 65.927 | 40.983 | 41.987 | 42.763 | 34.027 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.591 | 8.093 | 1000 | 0 | 116.396 | 40.944 | 42.025 | 42.962 | 34.027 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.922 | 10.018 | 1001 | 0 | 112.195 | 40.937 | 42.006 | 43.003 | 34.027 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9635 | 0 | 1926.177 | 1.387 | 2.29 | 41.623 | 34.336 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.481 | 12.27 | 1000 | 0 | 87.104 | 41.722 | 42.734 | 43.444 | 40.238 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.509 | 12.563 | 1000 | 0 | 86.888 | 41.936 | 42.985 | 44.271 | 40.238 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.789 | 12.115 | 1000 | 0 | 92.688 | 41.926 | 42.948 | 43.605 | 40.238 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.074 | 2.003 | 7118 | 0 | 1402.822 | 1.854 | 3.021 | 18.577 | 40.238 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.444 | 14.508 | 1000 | 0 | 80.359 | 41.981 | 43.6 | 44.95 | 45.172 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.685 | 14.208 | 1000 | 0 | 78.831 | 42.706 | 44.588 | 46.557 | 45.172 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.81 | 14.043 | 1000 | 0 | 78.064 | 42.671 | 44.162 | 45.84 | 45.172 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4826 | 0 | 964.412 | 2.826 | 4.966 | 14.839 | 46.641 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.379 | 15.189 | 1000 | 0 | 69.544 | 43.561 | 45.965 | 47.368 | 52.133 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.647 | 13.932 | 1000 | 0 | 68.272 | 44.033 | 46.359 | 48.038 | 52.133 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.526 | 14.536 | 1000 | 0 | 73.934 | 44.0 | 47.699 | 50.087 | 52.133 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3020 | 0 | 603.206 | 4.886 | 6.578 | 13.218 | 58.145 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.292 | 17.156 | 1000 | 0 | 61.381 | 46.002 | 50.321 | 56.729 | 82.387 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.026 | 28.785 | 363 | 0 | 12.506 | 241.902 | 243.036 | 19627.576 | 82.676 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.427 | 19.187 | 243 | 0 | 12.509 | 241.864 | 242.975 | 12811.088 | 82.711 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.627 | 14.389 | 183 | 0 | 12.511 | 241.832 | 242.823 | 10028.779 | 82.738 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.597 | 123 | 0 | 12.503 | 241.874 | 242.64 | 5234.457 | 82.738 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.839 | 9.595 | 103 | 0 | 10.469 | 241.939 | 242.827 | 5136.468 | 82.742 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.799 | 63 | 0 | 12.505 | 241.713 | 242.579 | 243.474 | 82.742 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.795 | 42 | 0 | 8.34 | 241.73 | 242.252 | 242.264 | 82.742 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.366 | 41.97 | 42.203 | 42.983 | 82.746 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.027 | 109 | 0 | 21.794 | 46.977 | 47.976 | 48.053 | 82.754 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.036 | 98 | 0 | 19.557 | 51.75 | 52.075 | 52.206 | 82.813 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.069 | 55 | 0 | 10.978 | 91.943 | 92.233 | 92.804 | 82.824 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.088 | 36 | 0 | 7.104 | 141.932 | 142.613 | 142.969 | 82.836 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.378 | 21 | 0 | 4.168 | 241.946 | 242.022 | 242.054 | 82.844 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21158 | 0 | 4231.004 | 1.119 | 1.607 | 1.896 | 65.59 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20665 | 0 | 4132.256 | 1.148 | 1.628 | 1.956 | 65.949 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21198 | 0 | 4238.716 | 1.118 | 1.62 | 1.914 | 66.004 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20628 | 0 | 4124.76 | 1.145 | 1.7 | 2.041 | 66.531 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20612 | 0 | 4121.724 | 1.147 | 1.688 | 2.036 | 68.055 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17749 | 0 | 3548.938 | 1.345 | 1.916 | 2.287 | 68.023 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20518 | 0 | 4102.862 | 1.149 | 1.705 | 2.085 | 68.715 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20257 | 0 | 4050.578 | 1.167 | 1.74 | 2.154 | 69.488 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15576 | 0 | 3114.49 | 1.549 | 2.039 | 2.346 | 78.496 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7669 | 0 | 1533.098 | 3.203 | 3.95 | 4.374 | 73.895 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15634 | 0 | 3125.962 | 1.54 | 2.053 | 2.411 | 78.297 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 2.028 | 15332 | 0 | 3055.551 | 0.967 | 1.772 | 41.103 | 68.445 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10495 | 0 | 2097.68 | 2.18 | 3.472 | 4.645 | 101.859 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4239 | 0 | 847.083 | 5.842 | 6.993 | 7.547 | 77.961 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10499 | 0 | 2099.125 | 2.169 | 3.334 | 4.732 | 73.641 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10591 | 0 | 2117.307 | 2.15 | 3.239 | 4.425 | 73.641 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7338 | 0 | 1467.011 | 3.043 | 5.174 | 14.272 | 119.605 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.01 | 2435 | 0 | 486.398 | 10.265 | 11.861 | 12.797 | 79.02 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.009 | 7530 | 0 | 1505.326 | 2.966 | 4.818 | 14.143 | 75.43 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7521 | 0 | 1503.579 | 2.949 | 4.812 | 14.166 | 75.434 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4626 | 0 | 924.375 | 5.051 | 7.057 | 17.3 | 117.719 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.712 | 1314 | 0 | 262.003 | 18.838 | 22.092 | 23.48 | 80.055 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 4784 | 0 | 956.139 | 4.718 | 7.345 | 17.956 | 78.781 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.008 | 4941 | 0 | 987.381 | 4.554 | 7.173 | 17.66 | 78.785 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2901 | 0 | 579.325 | 8.343 | 13.385 | 15.802 | 131.625 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.053 | 6.571 | 1000 | 0 | 141.774 | 35.008 | 39.704 | 41.751 | 82.859 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3074 | 0 | 614.116 | 7.991 | 9.571 | 10.364 | 84.984 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3311 | 0 | 661.433 | 7.41 | 8.915 | 9.64 | 84.984 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.996 | 51.053 | 360 | 0 | 7.059 | 2549.045 | 2565.278 | 2567.284 | 105.254 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.004 | 34.04 | 240 | 0 | 7.058 | 1699.395 | 1714.461 | 1717.816 | 105.57 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.502 | 25.547 | 180 | 0 | 7.058 | 1274.553 | 1289.865 | 1297.478 | 105.707 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.988 | 17.033 | 120 | 0 | 7.064 | 848.423 | 860.268 | 867.077 | 105.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.164 | 14.198 | 100 | 0 | 7.06 | 817.681 | 852.355 | 854.078 | 105.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.501 | 8.51 | 60 | 0 | 7.058 | 424.961 | 431.645 | 433.213 | 105.777 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.657 | 5.661 | 40 | 0 | 7.071 | 282.726 | 284.649 | 285.674 | 105.777 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3754 | 0 | 750.695 | 1.262 | 1.498 | 1.78 | 113.523 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 953 | 0 | 190.551 | 5.207 | 5.362 | 5.587 | 113.586 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.01 | 486 | 0 | 97.194 | 10.238 | 10.461 | 10.597 | 113.586 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.027 | 99 | 0 | 19.763 | 50.525 | 50.769 | 51.259 | 113.648 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.011 | 50 | 0 | 9.934 | 100.598 | 100.775 | 100.859 | 113.648 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.02 | 2.009 | 25 | 0 | 4.98 | 200.666 | 201.007 | 201.485 | 113.652 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21036 | 0 | 4206.527 | 1.126 | 1.61 | 1.929 | 65.336 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20709 | 0 | 4140.819 | 1.145 | 1.618 | 1.971 | 65.801 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21159 | 0 | 4231.237 | 1.119 | 1.614 | 1.98 | 65.887 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 20677 | 0 | 4134.618 | 1.143 | 1.679 | 2.076 | 66.063 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 20760 | 0 | 4151.335 | 1.14 | 1.665 | 2.046 | 67.578 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17864 | 0 | 3572.188 | 1.339 | 1.889 | 2.296 | 67.734 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20761 | 0 | 4151.057 | 1.138 | 1.643 | 2.001 | 68.383 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20400 | 0 | 4078.953 | 1.164 | 1.667 | 2.044 | 69.465 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15679 | 0 | 3135.019 | 1.535 | 2.051 | 2.393 | 78.004 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7774 | 0 | 1554.055 | 3.152 | 3.925 | 4.375 | 73.512 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15688 | 0 | 3136.857 | 1.529 | 2.041 | 2.36 | 77.805 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.032 | 2.015 | 14846 | 0 | 2950.585 | 0.834 | 1.719 | 41.187 | 67.578 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10195 | 0 | 2038.369 | 2.206 | 3.661 | 5.201 | 99.078 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4181 | 0 | 835.429 | 5.937 | 7.007 | 7.558 | 77.469 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10560 | 0 | 2111.435 | 2.123 | 3.456 | 4.909 | 71.398 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 10332 | 0 | 2065.21 | 2.16 | 3.589 | 4.988 | 71.398 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.002 | 7248 | 0 | 1446.62 | 3.049 | 5.215 | 15.126 | 116.984 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.009 | 2418 | 0 | 482.92 | 10.244 | 12.121 | 13.085 | 81.473 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7253 | 0 | 1449.709 | 3.016 | 5.588 | 15.509 | 73.234 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7274 | 0 | 1453.954 | 3.012 | 5.194 | 15.481 | 73.238 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4584 | 0 | 916.151 | 4.985 | 7.482 | 18.945 | 115.16 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 3.685 | 1302 | 0 | 259.715 | 19.262 | 21.934 | 23.058 | 88.262 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4903 | 0 | 979.881 | 4.639 | 6.783 | 18.392 | 80.789 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 5064 | 0 | 1011.373 | 4.437 | 6.765 | 18.444 | 80.793 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.009 | 2845 | 0 | 568.317 | 8.659 | 12.987 | 15.438 | 111.582 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.037 | 6.644 | 1000 | 0 | 142.111 | 34.629 | 40.103 | 42.281 | 86.184 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3007 | 0 | 600.563 | 8.227 | 9.503 | 10.269 | 84.203 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 3155 | 0 | 629.882 | 7.787 | 9.234 | 10.126 | 84.203 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.027 | 51.122 | 360 | 0 | 7.055 | 2550.801 | 2594.286 | 2605.108 | 100.363 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.019 | 34.061 | 240 | 0 | 7.055 | 1697.977 | 1735.55 | 1749.268 | 102.184 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.516 | 25.549 | 180 | 0 | 7.054 | 1274.122 | 1311.568 | 1320.205 | 102.563 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.043 | 17.035 | 120 | 0 | 7.041 | 850.594 | 876.096 | 882.965 | 102.629 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.183 | 14.24 | 100 | 0 | 7.051 | 727.792 | 844.452 | 855.324 | 102.762 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.498 | 8.523 | 60 | 0 | 7.061 | 424.465 | 434.435 | 437.395 | 102.766 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.659 | 5.658 | 40 | 0 | 7.069 | 282.868 | 287.363 | 287.699 | 102.766 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3757 | 0 | 751.257 | 1.258 | 1.499 | 1.681 | 102.766 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.0 | 952 | 0 | 190.28 | 5.208 | 5.374 | 5.623 | 102.766 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.001 | 485 | 0 | 96.927 | 10.265 | 10.462 | 10.77 | 102.766 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.022 | 99 | 0 | 19.774 | 50.497 | 50.793 | 50.881 | 102.766 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.014 | 50 | 0 | 9.936 | 100.546 | 100.884 | 100.9 | 102.766 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.607 | 200.843 | 200.873 | 102.766 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20848 | 0 | 4169.055 | 1.134 | 1.649 | 1.999 | 65.035 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20189 | 0 | 4036.924 | 1.169 | 1.705 | 2.092 | 65.145 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21076 | 0 | 4214.474 | 1.123 | 1.624 | 1.952 | 65.414 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20448 | 0 | 4088.812 | 1.158 | 1.686 | 2.07 | 65.188 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20458 | 0 | 4090.986 | 1.157 | 1.664 | 2.047 | 66.988 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17608 | 0 | 3520.228 | 1.36 | 1.878 | 2.275 | 66.648 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20342 | 0 | 4067.632 | 1.161 | 1.686 | 2.152 | 68.457 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20051 | 0 | 4009.515 | 1.18 | 1.702 | 2.2 | 69.301 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15479 | 0 | 3095.035 | 1.553 | 2.086 | 2.443 | 78.988 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7712 | 0 | 1541.817 | 3.179 | 3.949 | 4.503 | 72.406 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15564 | 0 | 3112.059 | 1.543 | 2.048 | 2.394 | 78.273 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.031 | 2.041 | 15169 | 0 | 3015.346 | 1.042 | 1.815 | 41.061 | 68.438 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 10602 | 0 | 2119.84 | 2.171 | 3.146 | 4.25 | 111.105 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4173 | 0 | 833.78 | 5.916 | 7.071 | 7.698 | 78.746 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10736 | 0 | 2146.591 | 2.136 | 3.086 | 4.092 | 74.281 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10797 | 0 | 2158.59 | 2.113 | 3.123 | 4.058 | 74.094 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7556 | 0 | 1510.378 | 3.017 | 4.232 | 16.109 | 121.539 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.079 | 2384 | 0 | 476.185 | 10.455 | 12.165 | 12.844 | 84.188 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7631 | 0 | 1525.563 | 2.952 | 4.217 | 16.228 | 84.328 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.002 | 7720 | 0 | 1541.057 | 2.909 | 4.16 | 16.36 | 84.332 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 4809 | 0 | 961.136 | 4.822 | 6.349 | 19.047 | 105.063 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.877 | 1304 | 0 | 259.876 | 19.187 | 21.94 | 22.928 | 86.633 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4941 | 0 | 987.409 | 4.62 | 6.398 | 19.01 | 86.367 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.018 | 5139 | 0 | 1026.86 | 4.408 | 5.906 | 18.864 | 86.371 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 2983 | 0 | 595.784 | 8.246 | 12.029 | 14.204 | 127.594 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.127 | 6.716 | 1000 | 0 | 140.312 | 35.153 | 40.578 | 43.824 | 89.512 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 3036 | 0 | 606.516 | 8.112 | 9.426 | 10.421 | 89.988 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3276 | 0 | 654.126 | 7.488 | 8.812 | 9.767 | 89.992 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.995 | 51.079 | 360 | 0 | 7.059 | 2549.457 | 2566.987 | 2570.105 | 110.68 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.001 | 34.044 | 240 | 0 | 7.059 | 1699.549 | 1715.448 | 1721.089 | 111.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.495 | 25.517 | 180 | 0 | 7.06 | 1274.513 | 1288.193 | 1293.923 | 113.578 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.995 | 17.017 | 120 | 0 | 7.061 | 849.19 | 860.938 | 862.541 | 113.578 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.221 | 14.17 | 100 | 0 | 7.032 | 810.711 | 850.956 | 857.323 | 113.645 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.498 | 8.517 | 60 | 0 | 7.06 | 424.853 | 431.634 | 433.199 | 113.836 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.661 | 5.655 | 40 | 0 | 7.066 | 282.902 | 284.51 | 290.012 | 113.836 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3775 | 0 | 754.84 | 1.254 | 1.486 | 1.719 | 116.988 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.005 | 951 | 0 | 190.1 | 5.212 | 5.417 | 5.712 | 116.988 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.006 | 485 | 0 | 96.863 | 10.273 | 10.508 | 10.65 | 116.988 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.029 | 99 | 0 | 19.792 | 50.469 | 50.674 | 50.706 | 116.988 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.036 | 2.015 | 50 | 0 | 9.929 | 100.613 | 100.791 | 100.875 | 116.988 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.01 | 25 | 0 | 4.981 | 200.719 | 200.951 | 200.999 | 116.992 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.133 | 1000 | 0 | 62.027 | 40.989 | 41.973 | 42.283 | 29.438 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.11 | 1000 | 0 | 62.065 | 40.984 | 41.96 | 42.247 | 29.719 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.097 | 1000 | 0 | 62.078 | 40.984 | 41.973 | 42.242 | 29.875 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.092 | 1000 | 0 | 62.068 | 40.983 | 41.961 | 42.073 | 30.0 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.1 | 1000 | 0 | 62.043 | 40.987 | 41.985 | 42.525 | 30.047 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.088 | 1000 | 0 | 62.083 | 40.987 | 41.967 | 42.245 | 30.051 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.091 | 1000 | 0 | 62.058 | 40.986 | 41.952 | 42.253 | 30.066 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.087 | 1000 | 0 | 62.048 | 40.986 | 41.965 | 42.271 | 30.332 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.002 | 14.91 | 1000 | 0 | 66.657 | 40.972 | 41.955 | 42.15 | 30.363 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.849 | 15.179 | 1000 | 0 | 67.345 | 40.976 | 41.978 | 42.21 | 30.461 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 14459 | 0 | 2891.049 | 0.974 | 1.653 | 4.222 | 30.996 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.028 | 14.94 | 1000 | 0 | 66.54 | 40.979 | 41.986 | 42.311 | 34.699 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.284 | 9.688 | 1000 | 0 | 97.237 | 40.962 | 41.989 | 42.902 | 34.699 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.57 | 8.515 | 1001 | 0 | 116.809 | 40.916 | 41.993 | 42.758 | 34.699 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 9611 | 0 | 1920.779 | 1.392 | 2.286 | 41.854 | 35.281 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.651 | 9.731 | 1001 | 0 | 115.704 | 40.976 | 42.304 | 43.7 | 40.902 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.026 | 8.12 | 1000 | 0 | 90.693 | 41.817 | 42.769 | 44.32 | 40.145 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.016 | 11.79 | 1000 | 0 | 110.913 | 41.692 | 42.631 | 44.042 | 40.145 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.125 | 2.003 | 7040 | 0 | 1373.736 | 1.846 | 3.121 | 40.322 | 40.887 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.874 | 13.96 | 1000 | 0 | 72.075 | 41.965 | 43.005 | 45.367 | 45.848 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.796 | 12.995 | 1001 | 0 | 84.863 | 41.994 | 43.825 | 47.129 | 45.848 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.993 | 12.065 | 1000 | 0 | 100.072 | 41.962 | 43.967 | 46.107 | 45.848 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4562 | 0 | 911.685 | 2.884 | 5.285 | 19.547 | 48.852 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.276 | 14.804 | 1000 | 0 | 70.05 | 43.033 | 44.969 | 47.097 | 53.902 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.704 | 13.651 | 1000 | 0 | 78.713 | 43.895 | 46.116 | 47.85 | 53.328 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.672 | 14.217 | 1000 | 0 | 78.915 | 43.934 | 46.669 | 50.044 | 53.328 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.023 | 2909 | 0 | 580.84 | 4.993 | 6.852 | 12.999 | 59.34 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.259 | 16.192 | 1000 | 0 | 65.535 | 45.729 | 48.871 | 58.467 | 87.0 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.997 | 28.784 | 363 | 0 | 12.518 | 241.682 | 242.838 | 19605.542 | 87.473 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.432 | 19.184 | 243 | 0 | 12.505 | 241.923 | 242.829 | 12817.016 | 87.52 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.385 | 183 | 0 | 12.513 | 241.68 | 242.736 | 10022.303 | 87.523 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.591 | 123 | 0 | 12.512 | 241.684 | 242.758 | 5233.586 | 87.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.587 | 103 | 0 | 10.482 | 241.679 | 242.626 | 5132.442 | 87.547 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.8 | 63 | 0 | 12.508 | 241.78 | 242.374 | 242.57 | 87.551 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.793 | 42 | 0 | 8.343 | 241.702 | 242.315 | 242.591 | 87.555 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.019 | 122 | 0 | 24.357 | 41.978 | 42.185 | 43.005 | 87.582 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.029 | 112 | 0 | 22.227 | 45.976 | 46.805 | 46.985 | 87.609 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.038 | 98 | 0 | 19.573 | 51.661 | 52.051 | 52.145 | 87.633 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.069 | 55 | 0 | 10.965 | 91.923 | 92.943 | 92.966 | 87.656 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.059 | 2.085 | 36 | 0 | 7.116 | 141.812 | 142.047 | 142.153 | 87.656 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.379 | 21 | 0 | 4.166 | 241.976 | 242.373 | 242.518 | 87.66 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.099 | 1000 | 0 | 62.061 | 40.986 | 41.975 | 42.078 | 29.449 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.105 | 1000 | 0 | 62.052 | 40.985 | 41.969 | 42.159 | 29.898 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.105 | 1000 | 0 | 62.09 | 40.986 | 41.962 | 42.178 | 30.055 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.097 | 1000 | 0 | 62.046 | 40.981 | 41.976 | 42.357 | 30.195 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.111 | 1000 | 0 | 62.06 | 40.983 | 41.973 | 42.346 | 30.242 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.101 | 1000 | 0 | 62.053 | 40.986 | 41.972 | 42.344 | 30.242 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.101 | 1000 | 0 | 62.068 | 40.984 | 41.972 | 42.294 | 30.258 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.136 | 1000 | 0 | 62.073 | 40.988 | 41.977 | 42.299 | 30.75 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.372 | 15.218 | 1000 | 0 | 65.055 | 40.975 | 41.974 | 42.462 | 30.785 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.325 | 14.04 | 1000 | 0 | 65.254 | 40.976 | 41.968 | 42.145 | 30.805 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 14691 | 0 | 2936.964 | 0.956 | 1.625 | 4.866 | 31.242 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.671 | 14.903 | 1000 | 0 | 68.163 | 40.979 | 41.971 | 42.631 | 36.332 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.152 | 8.674 | 1000 | 0 | 122.667 | 40.937 | 42.003 | 42.971 | 36.332 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.704 | 9.33 | 1000 | 0 | 114.893 | 40.932 | 42.003 | 42.722 | 36.332 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9758 | 0 | 1950.929 | 1.344 | 2.258 | 41.641 | 36.332 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.383 | 10.286 | 1000 | 0 | 87.849 | 41.098 | 42.277 | 43.038 | 40.793 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.973 | 10.141 | 1000 | 0 | 83.519 | 41.892 | 42.919 | 44.223 | 40.797 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.931 | 11.23 | 1000 | 0 | 91.483 | 41.879 | 42.956 | 43.993 | 40.797 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6935 | 0 | 1386.237 | 1.874 | 3.259 | 19.709 | 40.797 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.522 | 11.981 | 1000 | 0 | 73.952 | 41.979 | 43.438 | 44.979 | 47.316 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.666 | 12.617 | 1000 | 0 | 85.721 | 42.134 | 44.201 | 46.89 | 44.824 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.819 | 12.457 | 1001 | 0 | 92.527 | 41.983 | 44.123 | 46.251 | 44.824 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.021 | 2.017 | 4499 | 0 | 896.079 | 2.894 | 5.671 | 20.443 | 47.289 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.868 | 15.634 | 1000 | 0 | 67.26 | 43.385 | 45.966 | 50.107 | 52.891 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.123 | 13.341 | 1000 | 0 | 76.2 | 43.95 | 47.653 | 49.517 | 51.945 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.258 | 14.663 | 1000 | 0 | 75.424 | 43.955 | 47.398 | 50.725 | 51.945 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 2772 | 0 | 553.657 | 5.167 | 7.563 | 24.286 | 57.957 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.045 | 16.605 | 1000 | 0 | 62.325 | 45.775 | 50.922 | 57.264 | 65.168 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.01 | 28.776 | 363 | 0 | 12.513 | 241.828 | 242.867 | 19616.579 | 65.586 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.42 | 19.177 | 243 | 0 | 12.513 | 241.873 | 242.977 | 12803.05 | 65.59 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.627 | 14.393 | 183 | 0 | 12.511 | 241.809 | 242.989 | 10026.927 | 65.59 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.591 | 123 | 0 | 12.51 | 241.782 | 242.581 | 5236.046 | 65.598 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.59 | 103 | 0 | 10.478 | 241.782 | 242.426 | 5136.058 | 65.598 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.794 | 63 | 0 | 12.513 | 241.678 | 242.572 | 242.738 | 65.598 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.795 | 42 | 0 | 8.337 | 241.859 | 242.298 | 242.875 | 65.598 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.02 | 122 | 0 | 24.341 | 41.969 | 42.911 | 43.007 | 65.609 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.031 | 112 | 0 | 22.205 | 45.981 | 46.962 | 47.245 | 65.648 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.038 | 98 | 0 | 19.537 | 51.764 | 52.147 | 52.316 | 65.66 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.07 | 55 | 0 | 10.968 | 91.949 | 92.228 | 92.722 | 65.664 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.053 | 2.082 | 36 | 0 | 7.124 | 141.034 | 142.206 | 142.796 | 65.668 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.379 | 21 | 0 | 4.168 | 241.893 | 242.05 | 242.148 | 65.668 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.153 | 1000 | 0 | 61.99 | 40.99 | 41.957 | 42.397 | 29.566 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.121 | 1000 | 0 | 62.04 | 40.983 | 41.983 | 42.176 | 29.746 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.112 | 1000 | 0 | 62.052 | 40.986 | 41.902 | 42.17 | 29.992 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.116 | 1000 | 0 | 62.012 | 40.987 | 41.985 | 42.332 | 30.074 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.159 | 16.107 | 1000 | 0 | 61.883 | 40.984 | 41.977 | 42.283 | 30.164 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.098 | 1000 | 0 | 62.043 | 40.989 | 41.964 | 42.338 | 30.172 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.098 | 1000 | 0 | 62.066 | 40.983 | 41.977 | 42.284 | 30.188 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.095 | 1000 | 0 | 62.033 | 40.986 | 41.963 | 42.27 | 30.676 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.282 | 14.885 | 1000 | 0 | 65.436 | 40.975 | 41.976 | 42.926 | 30.789 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.815 | 15.271 | 1000 | 0 | 67.499 | 40.977 | 41.973 | 42.704 | 30.789 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.001 | 14670 | 0 | 2931.546 | 0.963 | 1.602 | 8.895 | 31.082 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.962 | 13.966 | 1000 | 0 | 66.837 | 40.98 | 41.971 | 42.378 | 34.762 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.826 | 9.455 | 1002 | 0 | 171.99 | 1.703 | 42.015 | 43.806 | 34.773 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.245 | 8.261 | 1000 | 0 | 108.167 | 40.96 | 42.129 | 43.138 | 34.773 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9743 | 0 | 1947.648 | 1.355 | 2.288 | 42.391 | 34.809 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.497 | 11.715 | 1000 | 0 | 95.266 | 41.22 | 42.634 | 43.728 | 40.91 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.337 | 11.55 | 1000 | 0 | 88.21 | 41.885 | 42.804 | 44.133 | 40.91 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.739 | 11.192 | 1000 | 0 | 93.115 | 41.794 | 42.859 | 44.852 | 40.91 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.091 | 6876 | 0 | 1374.36 | 1.857 | 3.22 | 55.695 | 40.91 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.02 | 13.613 | 1000 | 0 | 76.803 | 41.968 | 43.242 | 45.097 | 46.73 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.746 | 13.677 | 1000 | 0 | 85.134 | 42.091 | 44.079 | 52.074 | 46.012 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.613 | 13.56 | 1000 | 0 | 86.108 | 42.115 | 44.079 | 45.335 | 46.012 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4414 | 0 | 881.909 | 2.943 | 5.674 | 22.383 | 48.754 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.797 | 14.868 | 1000 | 0 | 67.582 | 43.117 | 45.789 | 47.932 | 54.102 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.674 | 13.695 | 1000 | 0 | 85.662 | 43.715 | 47.75 | 49.678 | 50.762 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.551 | 13.893 | 1000 | 0 | 79.672 | 43.895 | 46.981 | 49.146 | 50.762 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.019 | 2780 | 0 | 555.157 | 5.247 | 7.237 | 14.087 | 56.773 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.229 | 16.173 | 1000 | 0 | 65.664 | 45.867 | 50.666 | 52.965 | 84.504 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.007 | 28.777 | 363 | 0 | 12.514 | 241.755 | 243.159 | 19611.865 | 84.695 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.412 | 19.188 | 243 | 0 | 12.518 | 241.665 | 242.865 | 12802.338 | 84.723 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.629 | 14.387 | 183 | 0 | 12.51 | 241.839 | 242.893 | 10026.141 | 84.738 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.594 | 123 | 0 | 12.512 | 241.655 | 242.645 | 5234.161 | 84.738 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.587 | 103 | 0 | 10.477 | 241.778 | 242.461 | 5134.889 | 84.742 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.796 | 63 | 0 | 12.507 | 241.823 | 242.495 | 242.779 | 84.758 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.794 | 42 | 0 | 8.339 | 241.822 | 242.471 | 242.594 | 84.773 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.02 | 122 | 0 | 24.302 | 41.991 | 42.98 | 43.129 | 84.816 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.03 | 112 | 0 | 22.232 | 45.957 | 46.929 | 47.057 | 84.855 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.038 | 98 | 0 | 19.48 | 51.904 | 52.248 | 52.965 | 84.875 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.075 | 55 | 0 | 10.98 | 91.938 | 92.174 | 92.608 | 84.875 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.058 | 2.089 | 36 | 0 | 7.117 | 141.893 | 142.119 | 142.688 | 84.875 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.38 | 21 | 0 | 4.168 | 241.944 | 242.366 | 242.477 | 84.875 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21264 | 0 | 4252.039 | 1.114 | 1.539 | 1.895 | 69.262 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20619 | 0 | 4123.101 | 1.147 | 1.622 | 1.994 | 69.613 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21140 | 0 | 4227.163 | 1.119 | 1.572 | 1.934 | 69.645 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21021 | 0 | 4203.438 | 1.121 | 1.618 | 1.996 | 69.918 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20416 | 0 | 4082.292 | 1.157 | 1.651 | 2.05 | 71.047 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17490 | 0 | 3497.401 | 1.366 | 1.851 | 2.275 | 71.355 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20600 | 0 | 4119.266 | 1.149 | 1.609 | 2.025 | 71.543 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20583 | 0 | 4115.984 | 1.15 | 1.645 | 2.052 | 72.266 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15647 | 0 | 3128.73 | 1.538 | 2.019 | 2.361 | 80.328 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7794 | 0 | 1557.928 | 3.138 | 3.928 | 4.398 | 76.059 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15674 | 0 | 3134.179 | 1.531 | 2.04 | 2.347 | 79.707 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.037 | 2.04 | 14861 | 0 | 2950.283 | 0.871 | 1.722 | 41.141 | 74.297 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9762 | 0 | 1951.797 | 2.253 | 3.8 | 5.985 | 103.703 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4205 | 0 | 840.12 | 5.871 | 7.082 | 7.856 | 95.207 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.02 | 9783 | 0 | 1956.028 | 2.213 | 3.83 | 6.483 | 93.035 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9665 | 0 | 1932.383 | 2.237 | 3.825 | 6.432 | 92.535 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.005 | 6807 | 0 | 1360.774 | 3.105 | 5.705 | 21.2 | 116.633 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.02 | 2410 | 0 | 481.241 | 10.342 | 12.041 | 12.769 | 95.324 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6949 | 0 | 1389.165 | 3.079 | 5.695 | 21.396 | 92.664 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.005 | 6938 | 0 | 1386.909 | 3.018 | 5.638 | 21.117 | 92.766 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4352 | 0 | 869.604 | 5.13 | 8.27 | 24.847 | 124.188 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.883 | 1308 | 0 | 260.722 | 19.1 | 21.862 | 23.512 | 100.82 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4480 | 0 | 895.161 | 4.885 | 8.288 | 24.863 | 96.801 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4729 | 0 | 945.158 | 4.589 | 7.917 | 24.866 | 96.801 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2828 | 0 | 564.829 | 8.664 | 10.778 | 11.81 | 118.574 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.412 | 6.961 | 1000 | 0 | 134.921 | 36.986 | 41.171 | 42.844 | 109.125 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2846 | 0 | 568.343 | 8.65 | 10.602 | 11.847 | 102.086 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3147 | 0 | 628.557 | 7.869 | 9.454 | 10.634 | 102.086 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.228 | 51.233 | 360 | 0 | 7.027 | 2560.633 | 2583.433 | 2593.482 | 122.301 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.15 | 34.147 | 240 | 0 | 7.028 | 1706.725 | 1722.671 | 1731.928 | 123.379 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.588 | 25.598 | 180 | 0 | 7.035 | 1278.445 | 1290.276 | 1293.755 | 123.441 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.068 | 17.064 | 120 | 0 | 7.031 | 852.642 | 864.795 | 879.867 | 123.441 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.231 | 14.265 | 100 | 0 | 7.027 | 816.082 | 851.88 | 858.682 | 123.508 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.535 | 8.535 | 60 | 0 | 7.03 | 426.115 | 432.575 | 433.641 | 123.508 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.702 | 5.699 | 40 | 0 | 7.016 | 284.953 | 287.751 | 288.515 | 123.508 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1464 | 0 | 292.698 | 3.43 | 3.586 | 3.971 | 123.512 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.008 | 442 | 0 | 88.367 | 11.332 | 11.603 | 11.727 | 115.273 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.012 | 337 | 0 | 67.31 | 14.855 | 15.089 | 15.272 | 115.273 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.027 | 100 | 0 | 19.809 | 50.432 | 50.57 | 50.693 | 115.273 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.015 | 50 | 0 | 9.939 | 100.54 | 100.746 | 100.767 | 115.273 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.579 | 200.896 | 201.067 | 115.277 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20655 | 0 | 4130.424 | 1.147 | 1.574 | 1.945 | 69.941 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20548 | 0 | 4108.951 | 1.154 | 1.602 | 1.956 | 70.07 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20833 | 0 | 4165.906 | 1.137 | 1.582 | 1.928 | 70.25 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20987 | 0 | 4196.61 | 1.126 | 1.587 | 1.941 | 70.504 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20524 | 0 | 4103.841 | 1.154 | 1.616 | 1.983 | 71.977 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17531 | 0 | 3505.611 | 1.365 | 1.862 | 2.214 | 72.117 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20465 | 0 | 4092.283 | 1.157 | 1.628 | 2.041 | 72.664 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20447 | 0 | 4088.708 | 1.159 | 1.628 | 2.055 | 73.723 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15841 | 0 | 3167.539 | 1.517 | 1.997 | 2.276 | 82.676 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7799 | 0 | 1559.182 | 3.135 | 3.939 | 4.329 | 78.063 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15573 | 0 | 3113.793 | 1.541 | 2.042 | 2.334 | 82.438 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.034 | 2.034 | 15249 | 0 | 3029.494 | 1.068 | 1.796 | 40.924 | 74.313 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9967 | 0 | 1992.77 | 2.215 | 3.654 | 5.274 | 104.355 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4172 | 0 | 833.644 | 5.932 | 7.134 | 7.93 | 81.668 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10166 | 0 | 2032.256 | 2.153 | 3.623 | 5.019 | 75.434 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10203 | 0 | 2039.436 | 2.155 | 3.58 | 5.569 | 75.434 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6870 | 0 | 1373.351 | 3.123 | 5.425 | 22.182 | 121.508 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.038 | 2397 | 0 | 478.543 | 10.379 | 12.14 | 12.762 | 84.301 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7124 | 0 | 1424.181 | 3.031 | 4.91 | 22.155 | 80.473 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 7186 | 0 | 1436.49 | 2.979 | 5.079 | 21.887 | 80.547 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.004 | 4571 | 0 | 913.006 | 4.871 | 7.405 | 25.702 | 121.957 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.741 | 1315 | 0 | 262.09 | 18.811 | 22.056 | 27.963 | 85.16 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4638 | 0 | 926.875 | 4.727 | 7.496 | 25.101 | 84.117 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4830 | 0 | 965.18 | 4.517 | 7.041 | 24.975 | 84.117 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2704 | 0 | 539.934 | 9.251 | 10.744 | 11.271 | 100.906 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.199 | 7.041 | 1000 | 0 | 138.909 | 35.907 | 40.392 | 41.968 | 89.191 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 2861 | 0 | 571.552 | 8.685 | 10.071 | 11.391 | 90.813 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3027 | 0 | 604.387 | 8.201 | 9.933 | 10.739 | 90.813 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.195 | 51.217 | 360 | 0 | 7.032 | 2558.334 | 2576.213 | 2580.454 | 109.66 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.131 | 34.14 | 240 | 0 | 7.032 | 1706.249 | 1717.329 | 1721.541 | 109.977 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.596 | 25.598 | 180 | 0 | 7.032 | 1279.886 | 1289.311 | 1293.359 | 110.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.066 | 17.066 | 120 | 0 | 7.032 | 852.319 | 862.66 | 865.179 | 110.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.264 | 14.264 | 100 | 0 | 7.011 | 836.928 | 853.057 | 855.297 | 110.164 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.532 | 8.534 | 60 | 0 | 7.032 | 425.835 | 432.525 | 436.378 | 110.164 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.703 | 5.697 | 40 | 0 | 7.014 | 285.271 | 287.281 | 289.734 | 110.164 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.001 | 1461 | 0 | 292.029 | 3.431 | 3.556 | 3.74 | 110.164 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.009 | 438 | 0 | 87.41 | 11.416 | 11.693 | 11.839 | 110.164 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.012 | 335 | 0 | 66.944 | 14.914 | 15.224 | 15.298 | 110.164 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.043 | 2.018 | 100 | 0 | 19.83 | 50.384 | 50.514 | 50.658 | 110.164 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.012 | 50 | 0 | 9.935 | 100.555 | 100.748 | 100.938 | 110.164 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.553 | 200.747 | 200.795 | 110.164 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20839 | 0 | 4167.024 | 1.136 | 1.566 | 1.885 | 70.547 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20665 | 0 | 4132.362 | 1.147 | 1.586 | 1.925 | 70.809 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21034 | 0 | 4206.119 | 1.129 | 1.557 | 1.89 | 71.039 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20947 | 0 | 4188.816 | 1.127 | 1.601 | 1.953 | 71.254 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20715 | 0 | 4142.212 | 1.144 | 1.583 | 1.939 | 72.793 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17431 | 0 | 3485.506 | 1.374 | 1.869 | 2.225 | 73.008 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20423 | 0 | 4083.847 | 1.153 | 1.652 | 2.028 | 73.074 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20550 | 0 | 4109.434 | 1.149 | 1.631 | 2.074 | 73.855 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15600 | 0 | 3119.274 | 1.542 | 2.044 | 2.456 | 84.184 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7799 | 0 | 1559.064 | 3.148 | 3.873 | 4.306 | 79.008 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15693 | 0 | 3137.747 | 1.531 | 2.048 | 2.429 | 83.988 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.037 | 2.028 | 14981 | 0 | 2974.179 | 0.946 | 1.775 | 41.107 | 77.094 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.02 | 9993 | 0 | 1997.581 | 2.226 | 3.513 | 5.054 | 116.297 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4214 | 0 | 841.963 | 5.852 | 7.002 | 7.663 | 86.387 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 10053 | 0 | 2009.84 | 2.162 | 3.638 | 5.592 | 79.566 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 2.006 | 10328 | 0 | 2059.322 | 2.123 | 3.532 | 4.773 | 79.441 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.022 | 2.002 | 7101 | 0 | 1413.905 | 3.062 | 5.103 | 22.519 | 130.492 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.035 | 2379 | 0 | 475.107 | 10.516 | 12.076 | 12.795 | 90.773 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 7166 | 0 | 1432.627 | 2.996 | 4.988 | 23.005 | 86.773 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.002 | 7075 | 0 | 1409.687 | 3.014 | 5.007 | 23.332 | 86.863 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.003 | 4476 | 0 | 894.065 | 4.978 | 7.608 | 26.277 | 125.527 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.814 | 1310 | 0 | 261.18 | 18.975 | 21.922 | 23.138 | 92.055 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4604 | 0 | 920.064 | 4.685 | 7.989 | 26.41 | 87.488 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4750 | 0 | 949.275 | 4.515 | 7.678 | 26.549 | 87.488 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2706 | 0 | 540.334 | 9.155 | 10.886 | 11.479 | 120.082 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.322 | 6.888 | 1000 | 0 | 136.581 | 36.352 | 41.518 | 43.172 | 97.758 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2897 | 0 | 578.601 | 8.41 | 10.405 | 11.289 | 95.406 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3133 | 0 | 625.712 | 7.891 | 9.427 | 10.256 | 95.406 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.192 | 51.207 | 360 | 0 | 7.032 | 2558.846 | 2573.66 | 2581.401 | 111.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.121 | 34.125 | 240 | 0 | 7.034 | 1704.954 | 1721.317 | 1725.524 | 120.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.6 | 25.598 | 180 | 0 | 7.031 | 1279.635 | 1290.942 | 1297.759 | 120.621 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.066 | 17.061 | 120 | 0 | 7.032 | 853.143 | 862.675 | 864.705 | 120.684 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.26 | 14.239 | 100 | 0 | 7.013 | 813.756 | 854.423 | 859.785 | 120.875 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.529 | 8.531 | 60 | 0 | 7.035 | 426.063 | 432.794 | 434.171 | 120.875 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.697 | 5.693 | 40 | 0 | 7.021 | 285.075 | 287.736 | 289.025 | 120.879 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1463 | 0 | 292.519 | 3.428 | 3.572 | 3.877 | 121.211 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.009 | 441 | 0 | 88.043 | 11.365 | 11.661 | 11.757 | 123.777 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.005 | 338 | 0 | 67.423 | 14.823 | 15.093 | 15.23 | 124.652 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.047 | 2.016 | 100 | 0 | 19.813 | 50.41 | 50.686 | 50.792 | 124.715 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.016 | 50 | 0 | 9.938 | 100.537 | 100.876 | 100.975 | 124.715 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.008 | 25 | 0 | 4.981 | 200.58 | 201.084 | 201.43 | 124.715 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

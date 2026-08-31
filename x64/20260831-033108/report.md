# Puma vs Raptor Simulation

Run ID: `20260831-033108`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.112 | 1000 | 0 | 61.961 | 40.997 | 41.977 | 42.46 | 30.246 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.094 | 1000 | 0 | 61.963 | 40.999 | 42.01 | 42.583 | 30.371 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.089 | 1000 | 0 | 62.01 | 40.995 | 41.978 | 42.28 | 30.441 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.093 | 1000 | 0 | 61.985 | 40.993 | 41.986 | 42.464 | 30.582 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.09 | 1000 | 0 | 62.028 | 40.991 | 41.966 | 42.374 | 30.582 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.091 | 1000 | 0 | 62.038 | 40.994 | 41.963 | 42.366 | 30.582 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.084 | 1000 | 0 | 62.019 | 40.995 | 41.975 | 42.297 | 30.582 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.09 | 1000 | 0 | 62.007 | 40.992 | 41.976 | 42.34 | 31.348 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.455 | 12.953 | 1000 | 0 | 64.704 | 40.984 | 41.982 | 42.36 | 31.348 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.374 | 15.443 | 1000 | 0 | 65.045 | 40.981 | 41.974 | 42.675 | 31.348 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11896 | 0 | 2378.18 | 1.171 | 1.97 | 7.515 | 31.711 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.61 | 15.281 | 1000 | 0 | 64.06 | 40.987 | 41.984 | 42.169 | 38.801 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.841 | 13.338 | 1000 | 0 | 72.248 | 41.924 | 42.279 | 43.403 | 38.801 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.807 | 14.703 | 1000 | 0 | 67.533 | 41.946 | 42.421 | 43.088 | 38.801 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 9402 | 0 | 1879.421 | 1.49 | 2.352 | 38.799 | 38.922 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.149 | 15.327 | 1000 | 0 | 66.009 | 41.974 | 42.451 | 43.252 | 54.789 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.131 | 15.552 | 1000 | 0 | 66.087 | 41.989 | 43.065 | 43.968 | 48.551 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.448 | 15.535 | 1000 | 0 | 64.732 | 41.998 | 43.195 | 44.087 | 48.551 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 6539 | 0 | 1306.876 | 2.083 | 3.55 | 12.074 | 48.926 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.681 | 16.16 | 1000 | 0 | 63.772 | 42.962 | 43.958 | 44.239 | 63.09 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.299 | 16.314 | 1000 | 0 | 61.352 | 43.868 | 44.941 | 47.118 | 63.09 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.706 | 15.925 | 1000 | 0 | 63.67 | 43.744 | 44.954 | 46.889 | 63.09 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4677 | 0 | 934.59 | 2.961 | 5.121 | 12.657 | 64.164 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.585 | 16.469 | 1000 | 0 | 60.294 | 44.004 | 45.731 | 46.573 | 71.477 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.055 | 16.301 | 1000 | 0 | 58.634 | 46.743 | 48.014 | 49.67 | 70.621 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.81 | 17.0 | 1000 | 0 | 59.487 | 46.92 | 48.327 | 52.553 | 70.621 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.009 | 2930 | 0 | 585.166 | 4.97 | 6.687 | 14.951 | 71.641 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.972 | 18.202 | 1000 | 0 | 55.643 | 47.985 | 50.963 | 55.897 | 82.434 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.998 | 28.761 | 363 | 0 | 12.518 | 241.677 | 243.056 | 19604.297 | 82.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.412 | 19.169 | 243 | 0 | 12.518 | 241.678 | 242.997 | 12793.417 | 82.703 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.38 | 183 | 0 | 12.512 | 241.861 | 242.961 | 10023.128 | 82.766 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.589 | 123 | 0 | 12.514 | 241.701 | 242.736 | 5236.236 | 82.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.586 | 103 | 0 | 10.484 | 241.685 | 242.48 | 5135.686 | 82.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.795 | 63 | 0 | 12.504 | 241.757 | 242.387 | 243.079 | 82.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.789 | 42 | 0 | 8.348 | 241.222 | 242.207 | 242.266 | 82.777 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.018 | 122 | 0 | 24.386 | 41.975 | 42.062 | 42.341 | 82.781 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 2.004 | 110 | 0 | 21.805 | 46.977 | 47.122 | 47.967 | 82.816 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.023 | 2.012 | 99 | 0 | 19.711 | 50.989 | 51.904 | 51.965 | 82.82 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.081 | 2.063 | 56 | 0 | 11.022 | 91.005 | 92.029 | 92.295 | 82.82 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.059 | 2.084 | 36 | 0 | 7.116 | 141.924 | 142.015 | 142.458 | 82.82 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.377 | 21 | 0 | 4.173 | 241.764 | 242.003 | 242.017 | 82.82 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.083 | 1000 | 0 | 62.021 | 40.993 | 41.986 | 42.455 | 29.738 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.088 | 1000 | 0 | 62.036 | 40.995 | 41.982 | 42.396 | 29.797 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.086 | 1000 | 0 | 62.025 | 41.0 | 41.985 | 42.268 | 30.023 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.082 | 1000 | 0 | 62.047 | 40.996 | 41.96 | 42.272 | 30.145 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.088 | 1000 | 0 | 62.061 | 40.988 | 41.962 | 42.109 | 30.164 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.091 | 1000 | 0 | 61.96 | 41.0 | 41.975 | 42.257 | 30.18 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.087 | 1000 | 0 | 62.012 | 40.997 | 41.985 | 42.372 | 30.188 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.158 | 16.126 | 1000 | 0 | 61.887 | 40.992 | 41.944 | 42.115 | 31.227 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.348 | 13.959 | 1000 | 0 | 65.154 | 40.985 | 41.979 | 42.405 | 31.227 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.25 | 14.871 | 1000 | 0 | 65.575 | 40.982 | 41.976 | 42.124 | 31.227 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12074 | 0 | 2414.046 | 1.146 | 1.933 | 8.954 | 31.512 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.813 | 13.702 | 1000 | 0 | 72.396 | 41.109 | 42.227 | 43.163 | 41.91 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.137 | 11.39 | 1000 | 0 | 70.737 | 41.937 | 42.439 | 43.184 | 41.91 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.039 | 14.341 | 1000 | 0 | 66.495 | 41.936 | 42.304 | 43.01 | 38.684 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9367 | 0 | 1872.654 | 1.53 | 2.455 | 39.617 | 38.684 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.485 | 14.865 | 1000 | 0 | 64.58 | 41.975 | 42.951 | 43.217 | 49.188 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.048 | 15.237 | 1000 | 0 | 66.452 | 41.997 | 43.082 | 44.251 | 49.188 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.671 | 15.711 | 1000 | 0 | 68.16 | 42.003 | 43.23 | 44.074 | 49.188 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.094 | 2.003 | 6835 | 0 | 1341.827 | 2.042 | 3.194 | 11.181 | 49.188 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.691 | 15.561 | 1000 | 0 | 63.731 | 42.926 | 43.957 | 44.491 | 62.02 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.348 | 15.653 | 1000 | 0 | 65.154 | 43.781 | 44.955 | 46.065 | 62.02 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.961 | 16.032 | 1000 | 0 | 62.652 | 43.846 | 44.963 | 45.971 | 62.02 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.135 | 4624 | 0 | 924.033 | 3.004 | 5.243 | 18.387 | 62.246 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.086 | 16.446 | 1000 | 0 | 62.164 | 44.506 | 46.206 | 48.194 | 63.68 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.39 | 16.153 | 1000 | 0 | 61.013 | 46.915 | 48.218 | 49.948 | 63.68 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.536 | 17.025 | 1000 | 0 | 60.473 | 46.853 | 48.519 | 51.166 | 63.68 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.01 | 2.008 | 2923 | 0 | 583.489 | 4.991 | 6.729 | 15.595 | 67.688 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.946 | 17.84 | 1000 | 0 | 55.722 | 47.978 | 50.08 | 52.587 | 85.68 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.992 | 28.765 | 363 | 0 | 12.521 | 241.642 | 243.844 | 19599.398 | 85.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.418 | 19.171 | 243 | 0 | 12.514 | 241.635 | 242.881 | 12803.15 | 86.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.622 | 14.373 | 183 | 0 | 12.516 | 241.74 | 242.893 | 10023.539 | 86.031 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.589 | 123 | 0 | 12.518 | 241.66 | 242.87 | 5230.508 | 86.039 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.585 | 103 | 0 | 10.475 | 241.784 | 242.975 | 5134.582 | 86.043 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.796 | 63 | 0 | 12.511 | 241.311 | 242.773 | 243.462 | 86.043 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.789 | 42 | 0 | 8.344 | 241.508 | 242.183 | 242.378 | 86.051 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.017 | 122 | 0 | 24.367 | 41.983 | 42.191 | 42.989 | 86.063 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.025 | 109 | 0 | 21.784 | 46.978 | 47.902 | 48.004 | 86.063 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.002 | 99 | 0 | 19.742 | 50.981 | 51.337 | 51.992 | 86.063 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.082 | 2.066 | 56 | 0 | 11.02 | 91.019 | 92.024 | 92.46 | 86.063 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.056 | 2.086 | 36 | 0 | 7.12 | 141.476 | 142.01 | 142.089 | 86.063 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 2.378 | 21 | 0 | 4.176 | 240.995 | 241.987 | 242.069 | 86.063 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.09 | 1000 | 0 | 62.062 | 40.989 | 41.931 | 42.239 | 28.195 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.082 | 1000 | 0 | 61.997 | 40.997 | 41.967 | 42.334 | 28.211 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.081 | 1000 | 0 | 62.036 | 40.994 | 41.971 | 42.269 | 28.223 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.085 | 1000 | 0 | 62.059 | 40.989 | 41.946 | 42.425 | 28.246 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.088 | 1000 | 0 | 61.997 | 40.994 | 41.971 | 42.668 | 28.266 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.09 | 1000 | 0 | 62.037 | 40.998 | 41.954 | 42.269 | 28.266 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.089 | 1000 | 0 | 62.039 | 40.991 | 41.954 | 42.29 | 28.281 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.091 | 1000 | 0 | 62.007 | 40.993 | 41.956 | 42.326 | 28.484 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.535 | 14.72 | 1000 | 0 | 64.37 | 40.984 | 41.973 | 42.259 | 28.602 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.463 | 13.137 | 1000 | 0 | 69.141 | 40.979 | 41.979 | 42.291 | 28.695 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11878 | 0 | 2374.826 | 1.17 | 1.944 | 9.781 | 29.242 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.054 | 14.712 | 1000 | 0 | 66.426 | 40.988 | 41.988 | 42.909 | 34.223 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.98 | 14.687 | 1000 | 0 | 66.755 | 41.947 | 42.402 | 43.079 | 34.223 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.438 | 14.063 | 1000 | 0 | 69.261 | 41.949 | 42.45 | 43.528 | 34.223 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.028 | 2.002 | 8744 | 0 | 1739.187 | 1.588 | 2.55 | 40.354 | 34.223 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.447 | 14.512 | 1000 | 0 | 69.221 | 41.973 | 42.91 | 43.241 | 39.863 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.117 | 15.853 | 1000 | 0 | 66.152 | 42.014 | 43.229 | 44.342 | 39.863 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.984 | 14.898 | 1000 | 0 | 66.737 | 42.001 | 43.22 | 44.643 | 39.863 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.005 | 6746 | 0 | 1348.852 | 2.048 | 3.199 | 57.747 | 40.078 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.781 | 16.278 | 1000 | 0 | 63.369 | 42.952 | 43.954 | 47.938 | 43.461 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.468 | 16.126 | 1000 | 0 | 64.648 | 43.908 | 45.037 | 47.209 | 43.461 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.548 | 15.746 | 1000 | 0 | 64.316 | 43.922 | 45.061 | 48.004 | 43.461 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 4562 | 0 | 911.421 | 3.008 | 5.241 | 16.168 | 45.652 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.199 | 1000 | 0 | 62.108 | 44.596 | 46.031 | 47.871 | 50.75 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.595 | 16.687 | 1000 | 0 | 64.123 | 46.88 | 48.42 | 50.237 | 47.875 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.558 | 16.697 | 1000 | 0 | 60.395 | 46.904 | 48.83 | 50.622 | 47.875 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.119 | 2773 | 0 | 553.869 | 5.274 | 7.443 | 17.193 | 53.887 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.267 | 18.137 | 1000 | 0 | 57.913 | 47.976 | 50.888 | 52.837 | 81.406 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.993 | 28.757 | 363 | 0 | 12.52 | 241.659 | 243.242 | 19589.324 | 81.699 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.416 | 19.177 | 243 | 0 | 12.516 | 241.743 | 242.985 | 12799.402 | 81.742 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.629 | 14.381 | 183 | 0 | 12.509 | 241.818 | 243.485 | 10027.35 | 81.746 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.842 | 9.592 | 123 | 0 | 12.497 | 241.962 | 242.937 | 5239.191 | 81.754 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.594 | 103 | 0 | 10.469 | 241.9 | 242.86 | 5137.678 | 81.77 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 4.798 | 63 | 0 | 12.492 | 241.985 | 242.775 | 242.99 | 81.77 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.797 | 42 | 0 | 8.335 | 241.942 | 242.282 | 242.404 | 81.77 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.018 | 122 | 0 | 24.349 | 41.962 | 42.867 | 42.962 | 81.773 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.023 | 110 | 0 | 21.849 | 46.957 | 47.061 | 47.473 | 81.824 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.023 | 2.038 | 98 | 0 | 19.511 | 51.91 | 52.07 | 52.936 | 81.844 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.069 | 55 | 0 | 10.992 | 91.921 | 92.912 | 92.972 | 81.871 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.064 | 2.086 | 36 | 0 | 7.109 | 141.947 | 142.017 | 142.643 | 81.875 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.378 | 21 | 0 | 4.169 | 241.936 | 242.055 | 242.061 | 81.875 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15332 | 0 | 3065.603 | 1.563 | 2.127 | 2.556 | 66.523 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14892 | 0 | 2977.575 | 1.608 | 2.168 | 2.662 | 66.621 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15234 | 0 | 3045.751 | 1.569 | 2.138 | 2.629 | 66.387 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15106 | 0 | 3020.508 | 1.587 | 2.171 | 2.628 | 66.563 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15123 | 0 | 3023.934 | 1.58 | 2.174 | 2.659 | 68.355 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13225 | 0 | 2644.366 | 1.818 | 2.448 | 2.958 | 68.434 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15096 | 0 | 3018.348 | 1.583 | 2.201 | 2.704 | 68.625 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14730 | 0 | 2945.075 | 1.617 | 2.292 | 2.891 | 69.148 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12259 | 0 | 2451.068 | 1.976 | 2.581 | 3.144 | 77.191 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6196 | 0 | 1238.481 | 3.978 | 4.845 | 5.427 | 73.316 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12241 | 0 | 2447.222 | 1.981 | 2.552 | 3.032 | 77.523 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 2.002 | 12116 | 0 | 2414.696 | 1.642 | 2.41 | 3.953 | 70.285 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9205 | 0 | 1840.441 | 2.494 | 3.813 | 5.861 | 110.02 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3370 | 0 | 673.327 | 7.424 | 8.944 | 9.581 | 82.383 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9264 | 0 | 1852.164 | 2.47 | 3.878 | 5.636 | 76.34 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9215 | 0 | 1842.283 | 2.527 | 3.522 | 5.129 | 76.031 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6747 | 0 | 1348.772 | 3.404 | 5.024 | 14.968 | 125.719 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.512 | 1913 | 0 | 381.794 | 13.135 | 15.756 | 16.739 | 87.715 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 6946 | 0 | 1388.174 | 3.288 | 4.789 | 14.604 | 90.711 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6823 | 0 | 1363.948 | 3.357 | 4.88 | 14.86 | 90.711 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4237 | 0 | 846.606 | 5.567 | 7.632 | 18.11 | 137.406 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.56 | 1001 | 0 | 199.399 | 25.094 | 28.995 | 30.863 | 100.754 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4228 | 0 | 844.775 | 5.436 | 8.076 | 19.109 | 105.363 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4345 | 0 | 868.209 | 5.323 | 7.377 | 18.251 | 105.363 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.118 | 2374 | 0 | 473.876 | 10.443 | 12.475 | 13.72 | 119.082 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.179 | 8.574 | 1000 | 0 | 108.945 | 46.146 | 53.272 | 57.251 | 107.105 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2565 | 0 | 512.106 | 9.589 | 11.327 | 12.12 | 110.078 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2675 | 0 | 534.236 | 9.213 | 10.743 | 11.772 | 110.078 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.049 | 51.061 | 360 | 0 | 7.052 | 2556.271 | 2618.532 | 2631.834 | 126.727 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.038 | 34.049 | 240 | 0 | 7.051 | 1705.913 | 1753.47 | 1777.009 | 141.871 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.53 | 25.526 | 180 | 0 | 7.051 | 1279.024 | 1324.419 | 1341.101 | 141.875 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.019 | 17.024 | 120 | 0 | 7.051 | 850.362 | 877.427 | 889.16 | 142.199 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.175 | 14.196 | 100 | 0 | 7.055 | 765.449 | 861.826 | 866.926 | 142.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.5 | 8.504 | 60 | 0 | 7.059 | 425.165 | 440.648 | 448.406 | 142.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.67 | 5.667 | 40 | 0 | 7.055 | 282.977 | 292.875 | 301.241 | 142.266 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3576 | 0 | 715.183 | 1.367 | 1.485 | 1.71 | 142.266 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.004 | 926 | 0 | 185.09 | 5.353 | 5.533 | 5.785 | 142.27 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 475 | 0 | 94.983 | 10.47 | 10.668 | 11.046 | 142.27 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.021 | 2.031 | 99 | 0 | 19.719 | 50.659 | 50.753 | 50.839 | 142.27 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.036 | 2.017 | 50 | 0 | 9.928 | 100.656 | 100.766 | 100.934 | 142.27 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.008 | 25 | 0 | 4.981 | 200.691 | 200.762 | 200.763 | 142.27 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15268 | 0 | 3052.855 | 1.568 | 2.108 | 2.57 | 64.941 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14897 | 0 | 2978.784 | 1.609 | 2.169 | 2.657 | 65.152 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15276 | 0 | 3054.136 | 1.57 | 2.107 | 2.596 | 64.824 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15001 | 0 | 2999.511 | 1.594 | 2.204 | 2.719 | 64.914 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 15081 | 0 | 3014.957 | 1.583 | 2.202 | 2.671 | 67.008 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13156 | 0 | 2630.488 | 1.829 | 2.437 | 2.979 | 66.91 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15048 | 0 | 3008.553 | 1.592 | 2.182 | 2.643 | 67.129 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14701 | 0 | 2939.428 | 1.621 | 2.312 | 2.892 | 67.641 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12265 | 0 | 2452.237 | 1.976 | 2.58 | 3.118 | 75.082 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6198 | 0 | 1238.893 | 3.98 | 4.877 | 5.674 | 73.84 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12204 | 0 | 2440.186 | 1.992 | 2.508 | 2.927 | 83.738 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.024 | 2.018 | 12092 | 0 | 2407.063 | 1.713 | 2.391 | 3.681 | 70.262 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8834 | 0 | 1765.852 | 2.549 | 4.159 | 6.891 | 103.473 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3353 | 0 | 669.818 | 7.447 | 8.953 | 9.73 | 79.191 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8798 | 0 | 1758.941 | 2.569 | 4.001 | 7.86 | 76.109 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.002 | 8725 | 0 | 1742.61 | 2.598 | 4.103 | 7.821 | 76.297 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.015 | 6264 | 0 | 1252.104 | 3.537 | 6.374 | 16.293 | 136.629 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.498 | 1886 | 0 | 376.52 | 13.312 | 15.756 | 16.719 | 125.684 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.002 | 6717 | 0 | 1341.411 | 3.348 | 5.566 | 15.728 | 129.051 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6566 | 0 | 1312.642 | 3.42 | 5.748 | 9.644 | 94.633 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3996 | 0 | 798.295 | 5.814 | 8.39 | 20.246 | 108.332 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 4.556 | 1032 | 0 | 205.714 | 24.423 | 28.77 | 31.38 | 100.652 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4180 | 0 | 835.151 | 5.501 | 8.244 | 20.168 | 97.93 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.007 | 4200 | 0 | 839.333 | 5.467 | 8.155 | 21.039 | 97.93 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.03 | 2398 | 0 | 478.771 | 10.269 | 12.352 | 13.629 | 107.949 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.226 | 8.767 | 1000 | 0 | 108.384 | 46.529 | 53.347 | 56.936 | 104.516 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2537 | 0 | 506.482 | 9.692 | 11.655 | 12.729 | 101.074 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2598 | 0 | 518.694 | 9.39 | 11.826 | 13.176 | 101.074 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.047 | 51.069 | 360 | 0 | 7.052 | 2550.334 | 2621.155 | 2639.867 | 121.582 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.04 | 34.042 | 240 | 0 | 7.051 | 1700.214 | 1761.689 | 1783.218 | 126.461 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.522 | 25.509 | 180 | 0 | 7.053 | 1266.26 | 1324.642 | 1338.883 | 126.535 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.029 | 17.011 | 120 | 0 | 7.047 | 845.917 | 898.808 | 903.806 | 126.668 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.18 | 14.177 | 100 | 0 | 7.052 | 717.981 | 837.786 | 860.495 | 126.668 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.517 | 8.505 | 60 | 0 | 7.044 | 424.361 | 448.979 | 459.99 | 126.672 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.668 | 5.671 | 40 | 0 | 7.058 | 282.758 | 293.917 | 296.817 | 126.672 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3562 | 0 | 712.366 | 1.372 | 1.505 | 1.799 | 118.004 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 923 | 0 | 184.556 | 5.358 | 5.603 | 5.936 | 120.754 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.011 | 474 | 0 | 94.784 | 10.49 | 10.687 | 11.106 | 122.129 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.023 | 2.031 | 99 | 0 | 19.711 | 50.671 | 50.837 | 51.078 | 122.133 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.036 | 2.016 | 50 | 0 | 9.929 | 100.661 | 100.74 | 100.812 | 122.133 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.008 | 25 | 0 | 4.981 | 200.666 | 200.823 | 200.883 | 122.133 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15211 | 0 | 3041.187 | 1.576 | 2.118 | 2.586 | 66.367 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14849 | 0 | 2969.013 | 1.614 | 2.177 | 2.666 | 66.574 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15236 | 0 | 3046.335 | 1.571 | 2.14 | 2.634 | 66.457 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14962 | 0 | 2991.481 | 1.601 | 2.202 | 2.7 | 66.77 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15112 | 0 | 3021.643 | 1.588 | 2.153 | 2.618 | 68.348 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13112 | 0 | 2621.773 | 1.835 | 2.45 | 2.999 | 68.254 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15010 | 0 | 3001.236 | 1.59 | 2.204 | 2.659 | 68.441 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14779 | 0 | 2954.8 | 1.614 | 2.255 | 2.78 | 69.289 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12179 | 0 | 2435.167 | 1.985 | 2.621 | 3.184 | 77.234 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 6201 | 0 | 1239.594 | 3.984 | 4.891 | 5.748 | 73.945 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12188 | 0 | 2436.942 | 1.995 | 2.529 | 3.008 | 79.66 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.038 | 12022 | 0 | 2403.552 | 1.875 | 2.56 | 3.507 | 70.594 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8906 | 0 | 1780.589 | 2.546 | 3.973 | 7.255 | 107.711 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3342 | 0 | 667.677 | 7.452 | 8.959 | 9.9 | 82.586 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8915 | 0 | 1782.32 | 2.544 | 3.87 | 7.191 | 73.949 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8799 | 0 | 1759.009 | 2.591 | 3.87 | 7.444 | 73.824 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6447 | 0 | 1288.815 | 3.506 | 5.417 | 17.03 | 135.035 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.57 | 1865 | 0 | 372.3 | 13.524 | 15.761 | 16.993 | 117.879 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6623 | 0 | 1323.895 | 3.421 | 5.244 | 16.815 | 118.27 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6658 | 0 | 1330.993 | 3.341 | 5.397 | 17.004 | 118.27 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4247 | 0 | 848.639 | 5.376 | 8.33 | 20.395 | 137.137 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 4.447 | 1048 | 0 | 208.964 | 23.86 | 28.65 | 30.199 | 88.102 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4361 | 0 | 871.393 | 5.232 | 7.958 | 20.069 | 87.398 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4362 | 0 | 871.687 | 5.212 | 7.748 | 20.719 | 87.398 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.006 | 2508 | 0 | 500.709 | 9.85 | 11.812 | 12.705 | 120.16 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.879 | 8.418 | 1000 | 0 | 112.629 | 43.742 | 52.493 | 55.664 | 91.23 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2644 | 0 | 528.074 | 9.243 | 11.288 | 12.894 | 90.848 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2855 | 0 | 570.163 | 8.631 | 10.038 | 10.993 | 90.852 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.0 | 50.985 | 360 | 0 | 7.059 | 2546.236 | 2606.668 | 2634.202 | 106.434 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.989 | 34.01 | 240 | 0 | 7.061 | 1697.495 | 1748.441 | 1780.142 | 114.855 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.492 | 25.492 | 180 | 0 | 7.061 | 1268.661 | 1313.313 | 1328.295 | 115.055 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.992 | 16.987 | 120 | 0 | 7.062 | 848.727 | 895.909 | 900.149 | 115.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.165 | 14.178 | 100 | 0 | 7.06 | 765.848 | 844.303 | 855.452 | 115.184 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.498 | 8.505 | 60 | 0 | 7.06 | 423.142 | 447.4 | 450.868 | 115.188 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.668 | 5.666 | 40 | 0 | 7.057 | 283.23 | 295.867 | 299.003 | 115.188 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3574 | 0 | 714.728 | 1.365 | 1.51 | 1.782 | 128.547 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.001 | 932 | 0 | 186.301 | 5.325 | 5.48 | 5.729 | 129.676 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.009 | 480 | 0 | 95.975 | 10.371 | 10.526 | 10.641 | 133.738 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.029 | 99 | 0 | 19.73 | 50.609 | 50.861 | 51.019 | 129.926 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.038 | 2.016 | 50 | 0 | 9.926 | 100.636 | 101.008 | 101.122 | 129.93 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.02 | 2.008 | 25 | 0 | 4.98 | 200.677 | 201.003 | 201.077 | 129.93 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.153 | 1000 | 0 | 62.0 | 40.995 | 41.972 | 42.368 | 29.59 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.144 | 16.122 | 1000 | 0 | 61.943 | 40.998 | 41.975 | 42.409 | 29.82 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.12 | 1000 | 0 | 61.985 | 40.991 | 41.973 | 42.357 | 30.105 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.143 | 16.138 | 1000 | 0 | 61.947 | 40.999 | 41.971 | 42.68 | 30.242 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.188 | 16.128 | 1000 | 0 | 61.773 | 40.998 | 41.98 | 42.389 | 30.285 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.15 | 16.121 | 1000 | 0 | 61.921 | 41.002 | 41.985 | 42.44 | 30.285 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.144 | 16.112 | 1000 | 0 | 61.944 | 40.999 | 41.998 | 42.512 | 30.352 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.149 | 16.133 | 1000 | 0 | 61.925 | 40.996 | 41.975 | 42.49 | 30.957 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.266 | 12.477 | 1000 | 0 | 70.098 | 40.982 | 41.984 | 42.848 | 30.957 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.479 | 12.035 | 1000 | 0 | 69.064 | 40.993 | 41.989 | 42.915 | 30.969 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 11304 | 0 | 2259.245 | 1.253 | 2.098 | 8.147 | 31.281 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.086 | 12.214 | 1000 | 0 | 70.993 | 41.129 | 42.2 | 43.146 | 35.934 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.592 | 11.897 | 1000 | 0 | 94.409 | 41.792 | 42.934 | 44.902 | 35.934 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.618 | 9.785 | 1000 | 0 | 94.18 | 41.893 | 42.906 | 43.959 | 35.934 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8450 | 0 | 1689.217 | 1.623 | 2.653 | 32.796 | 35.934 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.555 | 13.166 | 1000 | 0 | 79.65 | 41.959 | 42.92 | 43.824 | 41.617 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.472 | 13.988 | 1000 | 0 | 74.227 | 41.985 | 43.186 | 45.012 | 41.617 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.69 | 14.913 | 1000 | 0 | 73.044 | 42.041 | 43.387 | 44.582 | 41.617 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 6355 | 0 | 1269.776 | 2.103 | 3.54 | 52.053 | 41.902 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.8 | 15.359 | 1000 | 0 | 67.565 | 42.905 | 43.95 | 51.475 | 47.387 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.672 | 15.401 | 1000 | 0 | 68.157 | 43.519 | 44.915 | 55.002 | 47.387 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.642 | 15.152 | 1000 | 0 | 68.296 | 43.737 | 44.963 | 47.896 | 47.387 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 4281 | 0 | 855.485 | 3.092 | 5.962 | 20.103 | 48.949 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.427 | 15.901 | 1000 | 0 | 64.821 | 44.006 | 45.946 | 47.543 | 54.863 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.89 | 15.868 | 1000 | 0 | 62.932 | 45.954 | 47.884 | 51.06 | 54.328 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.498 | 15.528 | 1000 | 0 | 68.975 | 45.933 | 48.351 | 52.837 | 54.328 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.059 | 2737 | 0 | 546.446 | 5.411 | 7.299 | 13.345 | 60.34 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.004 | 17.435 | 1000 | 0 | 58.811 | 47.885 | 50.719 | 54.301 | 69.039 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.999 | 28.755 | 363 | 0 | 12.517 | 241.713 | 242.935 | 19605.383 | 69.445 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.423 | 19.177 | 243 | 0 | 12.511 | 241.828 | 242.978 | 12812.263 | 69.48 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.627 | 14.382 | 183 | 0 | 12.511 | 241.779 | 242.686 | 10027.934 | 69.488 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.587 | 123 | 0 | 12.51 | 241.795 | 242.801 | 5237.281 | 69.488 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.58 | 103 | 0 | 10.481 | 241.718 | 242.525 | 5132.08 | 69.488 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.793 | 63 | 0 | 12.516 | 241.661 | 242.413 | 242.586 | 69.488 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.788 | 42 | 0 | 8.336 | 241.923 | 242.247 | 242.262 | 69.488 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.019 | 122 | 0 | 24.348 | 41.967 | 42.561 | 42.976 | 69.539 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.029 | 112 | 0 | 22.374 | 45.931 | 46.052 | 46.965 | 69.539 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.015 | 99 | 0 | 19.654 | 50.99 | 51.99 | 52.931 | 69.547 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.069 | 55 | 0 | 10.989 | 91.941 | 92.08 | 92.981 | 69.551 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.077 | 36 | 0 | 7.105 | 141.949 | 142.034 | 142.647 | 69.555 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.378 | 21 | 0 | 4.17 | 241.927 | 242.009 | 242.318 | 69.555 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.14 | 1000 | 0 | 62.017 | 40.989 | 41.963 | 42.275 | 29.75 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.115 | 1000 | 0 | 62.048 | 40.988 | 41.966 | 42.327 | 29.902 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.107 | 1000 | 0 | 61.991 | 40.99 | 41.985 | 42.564 | 30.117 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.095 | 1000 | 0 | 62.021 | 40.988 | 41.981 | 42.313 | 30.367 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.089 | 1000 | 0 | 62.039 | 40.988 | 41.98 | 42.418 | 30.402 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.088 | 1000 | 0 | 62.014 | 40.993 | 41.968 | 42.51 | 30.422 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.094 | 1000 | 0 | 62.015 | 40.991 | 41.979 | 42.344 | 30.453 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.086 | 1000 | 0 | 62.009 | 41.0 | 41.971 | 42.152 | 31.055 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.137 | 12.488 | 1000 | 0 | 66.064 | 40.978 | 41.978 | 42.986 | 31.168 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.123 | 14.3 | 1000 | 0 | 66.123 | 40.981 | 41.988 | 42.313 | 31.195 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 11733 | 0 | 2345.728 | 1.215 | 1.981 | 4.831 | 31.531 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.843 | 14.03 | 1000 | 0 | 67.371 | 40.989 | 41.992 | 42.719 | 36.039 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.581 | 9.971 | 1000 | 0 | 73.63 | 41.838 | 42.734 | 43.212 | 36.039 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.202 | 13.278 | 1000 | 0 | 75.748 | 41.911 | 42.542 | 43.837 | 36.039 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.025 | 8643 | 0 | 1727.719 | 1.562 | 2.595 | 38.55 | 36.516 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.75 | 13.905 | 1000 | 0 | 72.729 | 41.963 | 42.956 | 44.928 | 41.258 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.166 | 14.745 | 1000 | 0 | 65.935 | 41.985 | 43.022 | 44.294 | 40.758 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.939 | 15.25 | 1000 | 0 | 66.937 | 41.991 | 43.057 | 44.019 | 40.758 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.025 | 6483 | 0 | 1295.632 | 2.071 | 3.523 | 19.465 | 41.32 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.633 | 15.443 | 1000 | 0 | 63.968 | 42.759 | 43.924 | 46.659 | 47.879 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.954 | 14.964 | 1000 | 0 | 66.872 | 43.397 | 44.849 | 47.183 | 47.879 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.565 | 15.463 | 1000 | 0 | 73.719 | 43.064 | 44.933 | 46.744 | 47.879 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4384 | 0 | 876.052 | 3.016 | 5.739 | 20.268 | 48.82 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.663 | 15.153 | 1000 | 0 | 68.199 | 44.036 | 46.051 | 47.933 | 56.16 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.359 | 15.992 | 1000 | 0 | 65.108 | 45.949 | 47.844 | 50.005 | 56.16 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.727 | 16.007 | 1000 | 0 | 63.586 | 45.973 | 48.033 | 50.976 | 56.16 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.01 | 2.024 | 2687 | 0 | 536.347 | 5.469 | 7.61 | 13.968 | 62.172 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.033 | 17.638 | 1000 | 0 | 58.711 | 47.952 | 50.758 | 56.301 | 69.488 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.988 | 28.755 | 363 | 0 | 12.522 | 241.536 | 243.02 | 19595.442 | 69.813 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.408 | 19.159 | 243 | 0 | 12.521 | 241.583 | 242.892 | 12799.594 | 69.828 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.614 | 14.372 | 183 | 0 | 12.522 | 241.384 | 242.954 | 10020.599 | 69.844 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.581 | 123 | 0 | 12.511 | 241.72 | 242.845 | 5233.066 | 69.852 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.579 | 103 | 0 | 10.486 | 241.46 | 242.64 | 5131.551 | 69.852 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.788 | 63 | 0 | 12.517 | 241.352 | 242.39 | 242.599 | 69.859 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.028 | 4.784 | 42 | 0 | 8.353 | 241.013 | 242.142 | 242.245 | 69.859 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.019 | 122 | 0 | 24.342 | 41.981 | 42.975 | 43.086 | 69.914 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.025 | 2.027 | 113 | 0 | 22.489 | 45.058 | 46.17 | 46.916 | 69.941 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.003 | 99 | 0 | 19.726 | 50.979 | 51.945 | 52.06 | 69.973 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.08 | 2.058 | 56 | 0 | 11.024 | 91.014 | 92.015 | 92.046 | 69.973 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.08 | 36 | 0 | 7.107 | 141.965 | 142.024 | 142.653 | 69.973 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.375 | 21 | 0 | 4.172 | 241.947 | 241.997 | 242.016 | 69.973 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.14 | 1000 | 0 | 62.023 | 40.994 | 41.964 | 42.282 | 29.664 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.103 | 1000 | 0 | 61.975 | 41.0 | 41.983 | 42.546 | 29.805 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.09 | 1000 | 0 | 62.045 | 40.993 | 41.981 | 42.159 | 29.914 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.091 | 1000 | 0 | 62.071 | 40.992 | 41.969 | 42.236 | 30.285 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.084 | 1000 | 0 | 62.049 | 40.99 | 41.956 | 42.372 | 30.336 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.165 | 16.129 | 1000 | 0 | 61.861 | 40.989 | 41.971 | 42.228 | 30.34 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.085 | 1000 | 0 | 62.034 | 40.987 | 41.981 | 42.257 | 30.352 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.156 | 16.08 | 1000 | 0 | 61.896 | 40.993 | 41.979 | 42.185 | 30.648 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.288 | 14.98 | 1000 | 0 | 65.409 | 40.98 | 41.978 | 42.237 | 30.738 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.421 | 12.995 | 1000 | 0 | 64.848 | 40.983 | 41.981 | 42.924 | 30.777 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11781 | 0 | 2355.395 | 1.227 | 1.957 | 6.964 | 31.281 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.518 | 14.851 | 1000 | 0 | 64.439 | 40.987 | 41.983 | 42.955 | 34.082 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.757 | 12.427 | 1000 | 0 | 78.388 | 41.619 | 42.185 | 43.493 | 34.082 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.846 | 11.415 | 1000 | 0 | 77.844 | 41.92 | 42.602 | 43.234 | 34.082 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 9083 | 0 | 1815.038 | 1.503 | 2.51 | 40.688 | 34.555 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.088 | 14.116 | 1000 | 0 | 70.982 | 41.961 | 42.772 | 45.12 | 40.656 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.322 | 15.38 | 1000 | 0 | 69.823 | 41.978 | 43.043 | 44.396 | 40.648 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.953 | 15.497 | 1000 | 0 | 66.877 | 41.987 | 43.06 | 44.018 | 40.648 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 6326 | 0 | 1264.326 | 2.118 | 3.683 | 21.403 | 40.762 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.658 | 15.933 | 1000 | 0 | 68.224 | 42.765 | 43.889 | 44.892 | 45.359 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.309 | 14.897 | 1000 | 0 | 65.32 | 43.077 | 44.873 | 53.93 | 45.215 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.276 | 14.662 | 1000 | 0 | 65.464 | 43.579 | 44.945 | 47.775 | 45.215 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.006 | 4325 | 0 | 864.252 | 3.05 | 5.78 | 21.934 | 48.012 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.489 | 15.951 | 1000 | 0 | 64.563 | 43.999 | 45.73 | 47.185 | 54.063 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.303 | 16.054 | 1000 | 0 | 65.348 | 45.924 | 47.425 | 51.098 | 53.926 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.664 | 16.911 | 1000 | 0 | 63.841 | 45.973 | 47.992 | 50.052 | 53.926 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.037 | 2711 | 0 | 541.358 | 5.364 | 7.656 | 21.027 | 59.941 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.921 | 17.745 | 1000 | 0 | 59.1 | 47.933 | 50.184 | 52.508 | 88.781 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.993 | 28.758 | 363 | 0 | 12.52 | 241.67 | 242.935 | 19600.691 | 89.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.406 | 19.173 | 243 | 0 | 12.522 | 241.496 | 242.668 | 12795.986 | 89.285 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.619 | 14.366 | 183 | 0 | 12.518 | 241.633 | 242.664 | 10018.907 | 89.293 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.582 | 123 | 0 | 12.517 | 241.654 | 242.871 | 5232.8 | 89.297 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.576 | 103 | 0 | 10.482 | 241.709 | 242.446 | 5131.561 | 89.305 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.795 | 63 | 0 | 12.51 | 241.705 | 242.662 | 242.916 | 89.305 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.793 | 42 | 0 | 8.348 | 241.221 | 242.194 | 242.241 | 89.305 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.019 | 122 | 0 | 24.352 | 41.979 | 42.123 | 42.982 | 89.324 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.02 | 114 | 0 | 22.652 | 44.994 | 45.99 | 46.023 | 89.359 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.023 | 2.005 | 99 | 0 | 19.71 | 50.983 | 51.989 | 52.032 | 89.375 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.084 | 2.063 | 56 | 0 | 11.015 | 91.147 | 92.012 | 92.039 | 89.387 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.06 | 2.086 | 36 | 0 | 7.115 | 141.908 | 142.126 | 143.106 | 89.391 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 2.378 | 21 | 0 | 4.175 | 241.008 | 242.03 | 242.051 | 89.391 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15658 | 0 | 3130.914 | 1.538 | 1.997 | 2.416 | 68.594 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15165 | 0 | 3032.414 | 1.591 | 2.052 | 2.44 | 68.852 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15658 | 0 | 3130.906 | 1.54 | 1.996 | 2.397 | 68.828 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15448 | 0 | 3088.89 | 1.557 | 2.052 | 2.546 | 68.992 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15587 | 0 | 3116.817 | 1.545 | 2.015 | 2.498 | 71.156 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13556 | 0 | 2710.579 | 1.782 | 2.301 | 2.7 | 70.555 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15543 | 0 | 3107.926 | 1.546 | 2.032 | 2.514 | 70.918 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15373 | 0 | 3073.797 | 1.563 | 2.042 | 2.592 | 71.867 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12475 | 0 | 2494.284 | 1.952 | 2.411 | 2.683 | 86.512 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6553 | 0 | 1309.835 | 3.788 | 4.574 | 5.02 | 77.805 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12687 | 0 | 2536.336 | 1.912 | 2.369 | 2.677 | 85.109 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12416 | 0 | 2482.115 | 1.903 | 2.382 | 2.811 | 74.625 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9252 | 0 | 1849.546 | 2.454 | 3.691 | 5.943 | 103.629 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3543 | 0 | 707.721 | 7.064 | 8.329 | 9.026 | 81.75 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9464 | 0 | 1892.052 | 2.414 | 3.434 | 5.57 | 78.805 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9277 | 0 | 1854.376 | 2.434 | 3.785 | 6.121 | 78.68 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6713 | 0 | 1342.06 | 3.322 | 5.109 | 20.429 | 120.891 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.338 | 2034 | 0 | 406.079 | 12.297 | 14.54 | 15.843 | 84.785 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 2.002 | 6949 | 0 | 1384.788 | 3.218 | 4.772 | 20.079 | 81.859 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6710 | 0 | 1341.416 | 3.327 | 4.885 | 20.177 | 82.066 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4241 | 0 | 847.515 | 5.387 | 8.114 | 23.83 | 136.031 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.709 | 1079 | 0 | 215.005 | 23.15 | 27.56 | 29.952 | 89.609 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4354 | 0 | 870.033 | 5.145 | 7.913 | 24.598 | 88.664 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4358 | 0 | 870.899 | 5.105 | 7.37 | 23.844 | 88.727 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.009 | 2471 | 0 | 493.527 | 10.027 | 11.713 | 12.794 | 108.766 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.682 | 8.189 | 1000 | 0 | 115.183 | 42.994 | 51.234 | 53.407 | 91.219 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2716 | 0 | 542.207 | 9.081 | 10.695 | 11.576 | 94.684 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2794 | 0 | 557.989 | 8.772 | 10.541 | 11.405 | 94.684 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.145 | 51.141 | 360 | 0 | 7.039 | 2558.874 | 2588.18 | 2598.603 | 113.152 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.094 | 34.098 | 240 | 0 | 7.039 | 1703.422 | 1732.907 | 1739.407 | 118.68 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.568 | 25.579 | 180 | 0 | 7.04 | 1275.975 | 1300.218 | 1310.838 | 118.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.042 | 17.047 | 120 | 0 | 7.041 | 851.045 | 874.569 | 879.16 | 113.301 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.223 | 14.208 | 100 | 0 | 7.031 | 799.444 | 854.009 | 858.393 | 116.41 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.522 | 8.523 | 60 | 0 | 7.04 | 426.248 | 438.736 | 442.032 | 116.414 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.683 | 5.679 | 40 | 0 | 7.038 | 283.9 | 287.066 | 289.433 | 116.477 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1896 | 0 | 379.157 | 2.621 | 2.974 | 3.217 | 117.102 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.007 | 556 | 0 | 111.034 | 8.962 | 9.707 | 10.083 | 117.102 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.011 | 382 | 0 | 76.22 | 13.125 | 13.674 | 13.971 | 117.102 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.025 | 99 | 0 | 19.783 | 50.48 | 50.613 | 50.993 | 117.102 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.013 | 50 | 0 | 9.936 | 100.563 | 100.696 | 101.293 | 117.102 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.559 | 200.635 | 200.756 | 117.105 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15506 | 0 | 3100.361 | 1.552 | 2.019 | 2.497 | 68.895 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15327 | 0 | 3064.616 | 1.575 | 2.014 | 2.448 | 69.059 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15720 | 0 | 3143.436 | 1.533 | 1.991 | 2.365 | 69.457 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15336 | 0 | 3066.483 | 1.571 | 2.074 | 2.546 | 69.781 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15447 | 0 | 3088.591 | 1.555 | 2.052 | 2.598 | 71.094 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13526 | 0 | 2704.468 | 1.785 | 2.295 | 2.744 | 71.254 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15563 | 0 | 3111.945 | 1.544 | 2.036 | 2.516 | 71.34 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15226 | 0 | 3044.554 | 1.578 | 2.11 | 2.633 | 72.191 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 12503 | 0 | 2499.79 | 1.938 | 2.433 | 2.89 | 98.031 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6420 | 0 | 1283.11 | 3.857 | 4.635 | 5.129 | 84.902 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12593 | 0 | 2517.879 | 1.929 | 2.396 | 2.744 | 100.082 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.029 | 12440 | 0 | 2487.268 | 1.87 | 2.372 | 2.788 | 78.711 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9091 | 0 | 1817.412 | 2.473 | 3.768 | 6.709 | 106.098 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3501 | 0 | 699.409 | 7.096 | 8.464 | 9.283 | 89.98 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9204 | 0 | 1840.092 | 2.461 | 3.57 | 5.827 | 92.125 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 8617 | 0 | 1722.538 | 2.569 | 3.999 | 8.697 | 87.211 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 6458 | 0 | 1290.313 | 3.397 | 5.664 | 21.693 | 128.965 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.557 | 2015 | 0 | 402.172 | 12.451 | 14.82 | 15.981 | 93.816 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6764 | 0 | 1352.097 | 3.27 | 5.017 | 21.733 | 98.047 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6672 | 0 | 1333.615 | 3.298 | 5.124 | 21.319 | 98.395 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4182 | 0 | 835.719 | 5.339 | 8.57 | 25.504 | 128.602 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.344 | 1082 | 0 | 215.518 | 23.102 | 27.776 | 29.494 | 94.996 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4311 | 0 | 861.338 | 5.168 | 7.543 | 25.132 | 96.223 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.017 | 4458 | 0 | 890.778 | 5.003 | 7.409 | 24.838 | 96.535 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.043 | 2504 | 0 | 500.107 | 9.842 | 11.836 | 13.082 | 100.063 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.835 | 8.326 | 1000 | 0 | 113.186 | 43.857 | 52.455 | 55.995 | 96.152 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2683 | 0 | 535.748 | 9.229 | 10.614 | 11.405 | 99.77 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2770 | 0 | 553.032 | 8.952 | 10.28 | 11.511 | 100.082 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.15 | 51.144 | 360 | 0 | 7.038 | 2554.762 | 2597.553 | 2615.414 | 119.848 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.105 | 34.127 | 240 | 0 | 7.037 | 1705.048 | 1740.632 | 1756.832 | 123.668 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.577 | 25.58 | 180 | 0 | 7.038 | 1278.514 | 1311.232 | 1320.813 | 123.004 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.05 | 17.045 | 120 | 0 | 7.038 | 852.54 | 877.127 | 884.163 | 117.91 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.214 | 14.199 | 100 | 0 | 7.035 | 801.298 | 844.303 | 853.375 | 123.656 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.526 | 8.53 | 60 | 0 | 7.038 | 425.954 | 440.588 | 444.883 | 127.211 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.68 | 5.675 | 40 | 0 | 7.042 | 284.0 | 291.322 | 294.517 | 127.211 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1932 | 0 | 386.221 | 2.521 | 2.959 | 3.166 | 131.848 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.001 | 563 | 0 | 112.501 | 8.815 | 9.696 | 10.049 | 131.848 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.006 | 383 | 0 | 76.45 | 13.094 | 13.599 | 13.777 | 133.66 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.022 | 100 | 0 | 19.809 | 50.456 | 50.532 | 50.791 | 133.66 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.009 | 50 | 0 | 9.942 | 100.517 | 100.583 | 100.979 | 133.66 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.006 | 25 | 0 | 4.987 | 200.456 | 200.567 | 200.596 | 133.66 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15704 | 0 | 3140.122 | 1.538 | 1.967 | 2.466 | 70.234 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15256 | 0 | 3050.338 | 1.582 | 2.027 | 2.445 | 70.723 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15577 | 0 | 3114.893 | 1.548 | 2.006 | 2.364 | 70.227 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15457 | 0 | 3090.553 | 1.56 | 2.035 | 2.529 | 70.285 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15578 | 0 | 3114.952 | 1.548 | 2.003 | 2.419 | 71.977 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13468 | 0 | 2692.925 | 1.8 | 2.283 | 2.743 | 72.168 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15451 | 0 | 3089.624 | 1.557 | 2.055 | 2.484 | 72.398 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15377 | 0 | 3074.418 | 1.565 | 2.051 | 2.537 | 73.195 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12710 | 0 | 2541.214 | 1.914 | 2.4 | 2.77 | 80.66 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6412 | 0 | 1281.739 | 3.863 | 4.658 | 5.112 | 78.645 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12575 | 0 | 2514.254 | 1.929 | 2.444 | 2.857 | 81.016 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.016 | 12474 | 0 | 2494.205 | 1.768 | 2.357 | 3.478 | 75.313 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9382 | 0 | 1875.621 | 2.414 | 3.63 | 5.239 | 103.926 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3534 | 0 | 705.979 | 7.061 | 8.355 | 9.169 | 83.059 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9389 | 0 | 1876.996 | 2.401 | 3.568 | 5.346 | 79.281 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 9143 | 0 | 1827.628 | 2.451 | 3.82 | 5.81 | 79.332 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6845 | 0 | 1368.464 | 3.234 | 4.956 | 22.317 | 120.973 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.369 | 2045 | 0 | 408.22 | 12.193 | 14.769 | 16.232 | 85.793 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6810 | 0 | 1361.344 | 3.252 | 4.809 | 22.868 | 82.09 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6625 | 0 | 1324.229 | 3.251 | 5.151 | 22.793 | 82.176 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4072 | 0 | 813.715 | 5.528 | 8.115 | 28.083 | 121.777 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.539 | 1057 | 0 | 210.584 | 23.794 | 27.764 | 29.669 | 86.684 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.004 | 4265 | 0 | 851.874 | 5.194 | 8.155 | 27.141 | 87.801 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.005 | 4276 | 0 | 853.833 | 5.155 | 8.014 | 27.081 | 87.801 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.048 | 2382 | 0 | 475.674 | 10.439 | 12.036 | 12.799 | 101.77 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.813 | 8.328 | 1000 | 0 | 113.469 | 44.053 | 50.989 | 54.077 | 89.996 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2589 | 0 | 516.919 | 9.587 | 11.228 | 12.282 | 90.863 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.007 | 2754 | 0 | 549.671 | 8.897 | 10.516 | 12.01 | 90.863 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.155 | 51.139 | 360 | 0 | 7.037 | 2585.466 | 2637.354 | 2662.023 | 108.824 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.102 | 34.137 | 240 | 0 | 7.038 | 1713.837 | 1774.377 | 1786.512 | 111.324 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.589 | 25.575 | 180 | 0 | 7.034 | 1284.774 | 1334.021 | 1341.136 | 111.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.049 | 17.063 | 120 | 0 | 7.039 | 860.307 | 894.952 | 900.15 | 111.887 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.21 | 14.215 | 100 | 0 | 7.037 | 744.197 | 851.333 | 866.925 | 111.949 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.528 | 8.532 | 60 | 0 | 7.036 | 424.109 | 450.269 | 455.327 | 111.949 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.689 | 5.68 | 40 | 0 | 7.031 | 284.812 | 296.75 | 298.861 | 111.949 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1998 | 0 | 399.524 | 2.467 | 2.801 | 3.122 | 111.949 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.007 | 558 | 0 | 111.558 | 8.962 | 9.886 | 10.447 | 111.949 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.002 | 385 | 0 | 76.844 | 13.099 | 13.553 | 13.81 | 111.949 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.045 | 2.016 | 100 | 0 | 19.82 | 50.403 | 50.551 | 50.695 | 111.949 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.013 | 50 | 0 | 9.949 | 100.458 | 100.536 | 100.588 | 111.953 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.541 | 200.768 | 201.316 | 111.953 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

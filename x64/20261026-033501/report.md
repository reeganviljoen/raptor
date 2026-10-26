# Puma vs Raptor Simulation

Run ID: `20261026-033501`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.108 | 1000 | 0 | 61.963 | 40.986 | 41.957 | 42.382 | 30.668 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.099 | 1000 | 0 | 61.995 | 40.988 | 41.975 | 42.454 | 30.719 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.097 | 1000 | 0 | 62.004 | 40.989 | 41.982 | 42.598 | 30.719 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.102 | 1000 | 0 | 62.009 | 40.988 | 41.964 | 42.397 | 30.887 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.089 | 1000 | 0 | 62.002 | 40.984 | 41.975 | 42.47 | 30.887 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.093 | 1000 | 0 | 62.058 | 40.983 | 41.972 | 42.45 | 30.887 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.092 | 1000 | 0 | 62.03 | 40.982 | 41.958 | 42.258 | 30.906 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.095 | 1000 | 0 | 61.992 | 40.987 | 41.978 | 42.397 | 31.891 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.377 | 15.082 | 1000 | 0 | 65.031 | 40.975 | 41.971 | 42.15 | 31.918 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.332 | 15.526 | 1000 | 0 | 65.223 | 40.976 | 41.968 | 42.127 | 31.918 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13135 | 0 | 2625.869 | 1.056 | 1.828 | 8.391 | 32.117 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.081 | 14.532 | 1000 | 0 | 66.31 | 40.988 | 42.015 | 42.952 | 43.57 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.769 | 13.834 | 1000 | 0 | 67.71 | 41.954 | 42.756 | 43.124 | 43.57 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.304 | 14.196 | 1000 | 0 | 65.344 | 41.957 | 42.822 | 43.266 | 43.57 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.002 | 10322 | 0 | 2061.239 | 1.358 | 2.227 | 40.499 | 43.57 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.741 | 16.047 | 1000 | 0 | 63.528 | 41.973 | 42.953 | 43.136 | 57.066 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.974 | 14.542 | 1000 | 0 | 66.781 | 41.996 | 43.102 | 44.142 | 57.066 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.434 | 14.978 | 1000 | 0 | 64.791 | 42.018 | 43.222 | 44.297 | 57.066 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7536 | 0 | 1506.255 | 1.891 | 2.864 | 5.808 | 57.066 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.763 | 15.411 | 1000 | 0 | 63.44 | 42.962 | 43.963 | 44.616 | 65.945 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.737 | 15.846 | 1000 | 0 | 67.857 | 43.955 | 45.008 | 46.67 | 62.016 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.599 | 16.311 | 1000 | 0 | 64.105 | 43.965 | 45.226 | 47.369 | 62.016 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 4911 | 0 | 981.013 | 2.743 | 5.308 | 13.896 | 63.746 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.53 | 16.918 | 1000 | 0 | 60.497 | 44.884 | 46.033 | 48.38 | 74.488 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.963 | 17.789 | 1000 | 0 | 58.951 | 46.945 | 48.609 | 51.007 | 68.449 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.983 | 17.562 | 1000 | 0 | 58.882 | 46.953 | 48.791 | 56.941 | 68.449 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.008 | 3039 | 0 | 606.974 | 4.855 | 6.463 | 16.745 | 73.02 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.165 | 18.52 | 1000 | 0 | 55.05 | 48.002 | 51.168 | 53.308 | 86.313 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.014 | 28.796 | 363 | 0 | 12.511 | 241.868 | 242.819 | 19616.6 | 86.84 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.425 | 19.191 | 243 | 0 | 12.509 | 241.893 | 242.48 | 12809.411 | 86.855 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.631 | 14.386 | 183 | 0 | 12.508 | 241.822 | 243.002 | 10027.178 | 86.887 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.593 | 123 | 0 | 12.505 | 241.834 | 242.498 | 5233.235 | 86.898 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.592 | 103 | 0 | 10.477 | 241.742 | 242.614 | 5136.065 | 86.902 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.796 | 63 | 0 | 12.503 | 241.862 | 242.449 | 242.505 | 86.902 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.797 | 42 | 0 | 8.334 | 241.92 | 242.193 | 242.62 | 86.902 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.017 | 122 | 0 | 24.366 | 41.972 | 42.049 | 42.948 | 86.906 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.027 | 109 | 0 | 21.774 | 46.961 | 47.342 | 47.981 | 86.953 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.035 | 99 | 0 | 19.628 | 51.011 | 51.983 | 52.072 | 87.02 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.072 | 55 | 0 | 10.997 | 91.921 | 92.03 | 92.059 | 87.031 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.062 | 2.087 | 36 | 0 | 7.112 | 141.939 | 141.991 | 142.001 | 87.031 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.379 | 21 | 0 | 4.17 | 241.949 | 242.016 | 242.018 | 87.031 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.093 | 1000 | 0 | 62.03 | 40.986 | 41.98 | 42.375 | 28.039 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.092 | 1000 | 0 | 62.038 | 40.984 | 41.968 | 42.36 | 28.246 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.088 | 1000 | 0 | 62.042 | 40.984 | 41.958 | 42.222 | 28.449 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.084 | 1000 | 0 | 62.027 | 40.981 | 41.979 | 42.261 | 28.488 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.089 | 1000 | 0 | 62.057 | 40.983 | 41.964 | 42.238 | 28.488 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.084 | 1000 | 0 | 61.993 | 40.984 | 41.955 | 42.28 | 28.516 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.086 | 1000 | 0 | 62.021 | 40.985 | 41.981 | 42.336 | 28.539 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.089 | 1000 | 0 | 62.005 | 40.984 | 41.986 | 42.336 | 29.098 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.42 | 14.884 | 1000 | 0 | 64.85 | 40.977 | 41.973 | 42.632 | 29.215 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.011 | 15.445 | 1000 | 0 | 66.619 | 40.976 | 41.978 | 42.925 | 29.238 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 13037 | 0 | 2606.697 | 1.066 | 1.85 | 10.207 | 29.633 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.342 | 15.112 | 1000 | 0 | 65.182 | 40.985 | 41.985 | 42.565 | 33.395 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.332 | 14.718 | 1000 | 0 | 65.224 | 41.952 | 42.932 | 43.177 | 33.395 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.028 | 14.98 | 1000 | 0 | 66.544 | 41.958 | 42.83 | 43.095 | 33.395 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9334 | 0 | 1865.886 | 1.476 | 2.562 | 31.435 | 33.395 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.952 | 16.058 | 1000 | 0 | 62.688 | 41.972 | 42.96 | 43.557 | 38.465 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.548 | 15.749 | 1000 | 0 | 64.316 | 42.002 | 43.071 | 43.975 | 38.445 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.415 | 15.372 | 1000 | 0 | 64.872 | 42.187 | 43.211 | 44.681 | 38.445 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 6868 | 0 | 1372.533 | 1.894 | 3.581 | 15.113 | 39.188 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.995 | 16.078 | 1000 | 0 | 66.691 | 42.965 | 43.998 | 45.966 | 44.227 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.921 | 16.259 | 1000 | 0 | 62.809 | 43.962 | 44.991 | 46.29 | 43.25 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.167 | 16.37 | 1000 | 0 | 61.853 | 43.961 | 45.028 | 47.706 | 43.25 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4708 | 0 | 940.605 | 2.871 | 5.213 | 16.511 | 46.141 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.583 | 17.042 | 1000 | 0 | 60.301 | 44.963 | 46.797 | 48.879 | 53.082 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.047 | 17.574 | 1000 | 0 | 58.661 | 46.975 | 49.051 | 56.6 | 53.082 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.811 | 17.262 | 1000 | 0 | 59.486 | 46.963 | 49.011 | 51.583 | 53.082 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 2982 | 0 | 595.588 | 4.936 | 6.582 | 17.679 | 59.094 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.326 | 18.575 | 1000 | 0 | 54.567 | 48.389 | 51.843 | 58.916 | 63.762 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.018 | 28.791 | 363 | 0 | 12.51 | 241.9 | 242.892 | 19619.408 | 63.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.424 | 19.191 | 243 | 0 | 12.511 | 241.878 | 243.04 | 12811.481 | 63.992 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.395 | 183 | 0 | 12.513 | 241.757 | 242.816 | 10026.522 | 64.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.597 | 123 | 0 | 12.505 | 241.903 | 242.556 | 5235.967 | 64.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.597 | 103 | 0 | 10.476 | 241.792 | 242.402 | 5135.707 | 64.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.798 | 63 | 0 | 12.501 | 241.873 | 242.475 | 243.229 | 64.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.794 | 42 | 0 | 8.334 | 241.963 | 242.459 | 242.846 | 64.008 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.018 | 122 | 0 | 24.333 | 41.974 | 42.929 | 42.98 | 64.031 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.027 | 109 | 0 | 21.774 | 46.964 | 47.39 | 47.974 | 64.031 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.032 | 99 | 0 | 19.656 | 50.997 | 51.963 | 52.022 | 64.07 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.066 | 55 | 0 | 10.985 | 91.949 | 92.154 | 92.761 | 64.07 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.064 | 2.08 | 36 | 0 | 7.109 | 141.943 | 142.007 | 142.066 | 64.07 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.38 | 21 | 0 | 4.169 | 241.933 | 242.026 | 242.049 | 64.074 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.094 | 1000 | 0 | 62.051 | 40.984 | 41.956 | 42.436 | 29.75 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.089 | 1000 | 0 | 62.02 | 40.989 | 41.986 | 42.444 | 29.813 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.083 | 1000 | 0 | 61.981 | 40.987 | 41.986 | 42.516 | 29.91 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.084 | 1000 | 0 | 62.051 | 40.984 | 41.965 | 42.401 | 30.105 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.091 | 1000 | 0 | 62.002 | 40.986 | 41.973 | 42.399 | 30.105 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.166 | 16.083 | 1000 | 0 | 61.859 | 40.986 | 41.972 | 42.418 | 30.105 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.084 | 1000 | 0 | 61.992 | 40.989 | 41.966 | 42.322 | 30.113 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.091 | 1000 | 0 | 62.027 | 40.985 | 41.951 | 42.264 | 30.734 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.144 | 14.881 | 1000 | 0 | 66.031 | 40.976 | 41.976 | 42.468 | 30.734 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.29 | 15.247 | 1000 | 0 | 65.403 | 40.976 | 41.96 | 42.585 | 30.801 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13233 | 0 | 2645.78 | 1.045 | 1.799 | 7.286 | 31.23 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.15 | 14.876 | 1000 | 0 | 66.006 | 40.985 | 41.99 | 42.474 | 41.336 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.528 | 15.59 | 1000 | 0 | 68.831 | 41.954 | 42.759 | 43.187 | 41.336 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.563 | 15.549 | 1000 | 0 | 68.669 | 41.953 | 42.678 | 43.085 | 41.336 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 10130 | 0 | 2024.725 | 1.375 | 2.167 | 42.164 | 41.336 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.144 | 15.472 | 1000 | 0 | 66.034 | 41.968 | 42.949 | 43.516 | 51.582 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.913 | 15.299 | 1000 | 0 | 67.054 | 42.022 | 43.433 | 44.496 | 51.582 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.367 | 15.045 | 1000 | 0 | 65.074 | 42.018 | 43.269 | 44.382 | 51.582 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7054 | 0 | 1409.904 | 1.909 | 3.371 | 14.649 | 51.582 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.983 | 15.905 | 1000 | 0 | 66.744 | 42.963 | 44.025 | 45.137 | 61.973 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.324 | 15.748 | 1000 | 0 | 65.258 | 43.96 | 45.012 | 47.044 | 61.973 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.658 | 15.538 | 1000 | 0 | 63.866 | 43.969 | 45.048 | 46.91 | 61.973 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.005 | 4807 | 0 | 960.033 | 2.781 | 4.875 | 18.002 | 61.973 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.276 | 16.929 | 1000 | 0 | 61.441 | 44.923 | 46.215 | 48.051 | 66.109 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.599 | 17.03 | 1000 | 0 | 60.245 | 46.958 | 48.894 | 50.853 | 66.109 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.072 | 16.951 | 1000 | 0 | 58.574 | 46.962 | 48.988 | 51.301 | 66.109 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.043 | 2737 | 0 | 546.578 | 5.363 | 7.415 | 12.874 | 68.113 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.227 | 18.771 | 1000 | 0 | 54.863 | 48.951 | 51.958 | 54.946 | 82.453 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.022 | 28.793 | 363 | 0 | 12.508 | 241.887 | 243.119 | 19621.082 | 82.742 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.428 | 19.196 | 243 | 0 | 12.508 | 241.886 | 243.04 | 12815.313 | 82.777 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.635 | 14.393 | 183 | 0 | 12.505 | 241.928 | 242.724 | 10036.256 | 82.801 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.837 | 9.595 | 123 | 0 | 12.504 | 241.785 | 242.707 | 5237.007 | 82.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.597 | 103 | 0 | 10.473 | 241.899 | 242.451 | 5135.76 | 82.82 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.798 | 63 | 0 | 12.515 | 241.554 | 242.565 | 243.256 | 82.82 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.799 | 42 | 0 | 8.334 | 241.923 | 242.229 | 242.334 | 82.824 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.017 | 122 | 0 | 24.377 | 41.967 | 42.046 | 42.84 | 82.836 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.027 | 109 | 0 | 21.784 | 46.964 | 47.153 | 47.959 | 82.906 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.016 | 99 | 0 | 19.663 | 51.002 | 51.952 | 51.967 | 82.914 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.065 | 55 | 0 | 10.996 | 91.915 | 92.033 | 92.066 | 82.914 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.06 | 2.087 | 36 | 0 | 7.115 | 141.938 | 142.04 | 142.116 | 82.918 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.378 | 21 | 0 | 4.17 | 241.888 | 241.978 | 242.002 | 82.934 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17438 | 0 | 3486.877 | 1.367 | 1.954 | 2.335 | 68.059 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16252 | 0 | 3249.804 | 1.448 | 2.172 | 2.663 | 68.137 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17256 | 0 | 3450.471 | 1.375 | 2.006 | 2.46 | 67.816 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17158 | 0 | 3430.924 | 1.391 | 1.963 | 2.447 | 67.906 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17176 | 0 | 3434.373 | 1.388 | 1.952 | 2.319 | 69.898 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14726 | 0 | 2944.553 | 1.629 | 2.253 | 2.829 | 69.441 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17152 | 0 | 3429.513 | 1.387 | 1.975 | 2.376 | 69.543 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16488 | 0 | 3296.904 | 1.426 | 2.13 | 2.688 | 70.406 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13616 | 0 | 2722.395 | 1.761 | 2.443 | 3.002 | 80.063 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6552 | 0 | 1309.531 | 3.734 | 4.694 | 5.489 | 75.891 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13375 | 0 | 2674.189 | 1.8 | 2.451 | 2.974 | 80.504 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.025 | 2.001 | 13184 | 0 | 2623.764 | 1.121 | 2.03 | 41.355 | 69.461 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9502 | 0 | 1899.714 | 2.305 | 4.279 | 6.82 | 112.484 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3553 | 0 | 709.631 | 6.977 | 8.382 | 9.224 | 82.949 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9781 | 0 | 1955.588 | 2.254 | 4.02 | 6.475 | 75.199 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9601 | 0 | 1919.498 | 2.31 | 4.009 | 6.507 | 75.387 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6763 | 0 | 1352.01 | 3.115 | 6.598 | 17.118 | 137.805 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.377 | 1993 | 0 | 397.859 | 12.554 | 14.467 | 15.468 | 86.16 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.006 | 7223 | 0 | 1444.003 | 3.015 | 5.872 | 16.013 | 79.871 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6827 | 0 | 1364.55 | 3.172 | 6.061 | 16.632 | 79.871 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 4317 | 0 | 862.282 | 5.122 | 9.035 | 21.272 | 179.688 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.024 | 4.359 | 1068 | 0 | 212.576 | 23.511 | 27.178 | 28.577 | 88.16 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4466 | 0 | 892.457 | 5.044 | 8.383 | 21.3 | 85.695 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4492 | 0 | 897.749 | 4.952 | 8.331 | 21.577 | 85.758 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.037 | 2650 | 0 | 529.214 | 8.957 | 15.848 | 19.624 | 145.277 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.252 | 8.875 | 1000 | 0 | 108.083 | 46.47 | 52.349 | 54.694 | 93.16 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2697 | 0 | 538.547 | 9.082 | 11.167 | 12.157 | 87.98 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2744 | 0 | 547.95 | 8.853 | 11.084 | 15.19 | 87.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.028 | 50.992 | 360 | 0 | 7.055 | 2552.422 | 2581.408 | 2593.461 | 107.801 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.979 | 33.975 | 240 | 0 | 7.063 | 1699.085 | 1722.713 | 1730.634 | 117.633 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.479 | 25.509 | 180 | 0 | 7.065 | 1273.807 | 1293.516 | 1303.458 | 117.887 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.98 | 16.994 | 120 | 0 | 7.067 | 848.228 | 874.667 | 879.099 | 119.855 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.195 | 14.171 | 100 | 0 | 7.045 | 770.139 | 836.046 | 850.918 | 119.859 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.501 | 8.5 | 60 | 0 | 7.058 | 424.922 | 435.419 | 439.721 | 119.926 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.662 | 5.665 | 40 | 0 | 7.065 | 282.852 | 287.302 | 296.415 | 119.926 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3607 | 0 | 721.201 | 1.366 | 1.487 | 1.778 | 129.012 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.002 | 943 | 0 | 188.496 | 5.27 | 5.401 | 5.611 | 129.137 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.007 | 484 | 0 | 96.616 | 10.315 | 10.383 | 10.527 | 129.137 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.024 | 99 | 0 | 19.743 | 50.58 | 50.726 | 50.948 | 129.137 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.015 | 50 | 0 | 9.931 | 100.629 | 100.706 | 100.798 | 129.141 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.67 | 200.717 | 200.744 | 129.141 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17280 | 0 | 3455.158 | 1.376 | 1.979 | 2.363 | 65.078 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16986 | 0 | 3396.48 | 1.406 | 1.974 | 2.43 | 65.109 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17168 | 0 | 3432.972 | 1.382 | 1.985 | 2.392 | 64.852 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17125 | 0 | 3424.234 | 1.394 | 2.001 | 2.433 | 64.906 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17144 | 0 | 3427.971 | 1.389 | 1.959 | 2.456 | 66.441 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14921 | 0 | 2983.509 | 1.614 | 2.185 | 2.633 | 67.004 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17215 | 0 | 3442.355 | 1.382 | 1.944 | 2.335 | 67.152 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16913 | 0 | 3381.939 | 1.408 | 2.028 | 2.421 | 69.391 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 13761 | 0 | 2750.803 | 1.752 | 2.349 | 2.883 | 78.719 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6678 | 0 | 1334.909 | 3.687 | 4.561 | 5.034 | 72.648 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13718 | 0 | 2742.963 | 1.761 | 2.316 | 2.734 | 78.543 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.014 | 2.001 | 13335 | 0 | 2659.337 | 1.173 | 2.087 | 41.19 | 67.063 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9658 | 0 | 1930.876 | 2.274 | 4.199 | 6.42 | 104.5 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3573 | 0 | 713.752 | 6.975 | 8.23 | 8.944 | 79.527 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 2.002 | 9725 | 0 | 1938.889 | 2.225 | 4.298 | 6.865 | 74.27 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 9593 | 0 | 1917.828 | 2.278 | 4.43 | 7.045 | 74.52 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 6680 | 0 | 1335.026 | 3.189 | 6.422 | 17.412 | 132.848 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.439 | 1990 | 0 | 397.153 | 12.611 | 14.586 | 15.54 | 82.52 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 7000 | 0 | 1399.419 | 3.009 | 6.378 | 11.815 | 76.664 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6947 | 0 | 1388.549 | 3.069 | 6.172 | 13.205 | 76.664 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 2.004 | 4182 | 0 | 833.843 | 5.321 | 9.778 | 22.617 | 104.391 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.023 | 4.947 | 1073 | 0 | 213.609 | 23.376 | 26.631 | 28.435 | 85.91 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4725 | 0 | 944.349 | 4.663 | 8.006 | 21.444 | 78.578 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.018 | 4551 | 0 | 909.483 | 4.865 | 8.218 | 22.159 | 78.578 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 2597 | 0 | 518.68 | 9.089 | 16.822 | 20.169 | 132.547 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.944 | 8.775 | 1000 | 0 | 111.804 | 44.202 | 50.448 | 53.472 | 89.035 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.01 | 2693 | 0 | 537.635 | 9.036 | 11.572 | 13.657 | 81.691 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2745 | 0 | 548.186 | 8.756 | 11.639 | 14.078 | 81.754 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.998 | 50.967 | 360 | 0 | 7.059 | 2549.98 | 2570.594 | 2587.302 | 104.504 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.012 | 34.007 | 240 | 0 | 7.056 | 1700.028 | 1731.738 | 1738.591 | 106.512 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.502 | 25.519 | 180 | 0 | 7.058 | 1274.459 | 1289.906 | 1298.652 | 106.578 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.99 | 17.012 | 120 | 0 | 7.063 | 849.24 | 867.641 | 879.823 | 107.625 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.172 | 14.172 | 100 | 0 | 7.056 | 801.868 | 849.064 | 850.831 | 107.629 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.493 | 8.49 | 60 | 0 | 7.065 | 424.367 | 436.285 | 444.292 | 108.316 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.668 | 5.669 | 40 | 0 | 7.058 | 283.259 | 294.662 | 296.556 | 113.816 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3581 | 0 | 716.148 | 1.373 | 1.534 | 1.851 | 124.695 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.004 | 936 | 0 | 187.061 | 5.299 | 5.488 | 5.725 | 124.695 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.004 | 479 | 0 | 95.669 | 10.4 | 10.623 | 10.759 | 124.695 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.024 | 2.031 | 99 | 0 | 19.706 | 50.684 | 50.769 | 51.051 | 124.695 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.04 | 2.017 | 50 | 0 | 9.921 | 100.725 | 100.894 | 100.983 | 124.695 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.009 | 25 | 0 | 4.974 | 200.787 | 201.697 | 202.095 | 124.855 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17070 | 0 | 3412.76 | 1.393 | 1.976 | 2.413 | 67.336 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16650 | 0 | 3329.142 | 1.428 | 2.013 | 2.487 | 67.52 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17045 | 0 | 3408.103 | 1.39 | 1.99 | 2.476 | 67.223 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16907 | 0 | 3380.638 | 1.405 | 2.029 | 2.47 | 67.297 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16747 | 0 | 3348.668 | 1.412 | 2.052 | 2.576 | 69.254 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14474 | 0 | 2893.822 | 1.647 | 2.345 | 2.802 | 69.238 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16718 | 0 | 3342.868 | 1.413 | 2.074 | 2.572 | 69.371 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16445 | 0 | 3288.235 | 1.428 | 2.147 | 2.71 | 70.473 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13478 | 0 | 2694.868 | 1.777 | 2.459 | 3.129 | 78.805 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6480 | 0 | 1295.107 | 3.783 | 4.709 | 5.496 | 75.039 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13297 | 0 | 2658.553 | 1.803 | 2.434 | 2.987 | 81.418 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.039 | 2.001 | 13072 | 0 | 2594.211 | 1.453 | 2.339 | 40.821 | 71.227 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.014 | 8941 | 0 | 1787.233 | 2.433 | 4.205 | 7.906 | 114.266 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3464 | 0 | 692.074 | 7.16 | 8.692 | 9.405 | 84.418 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 9388 | 0 | 1877.061 | 2.314 | 4.217 | 7.621 | 76.656 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.005 | 9553 | 0 | 1909.95 | 2.318 | 4.036 | 6.124 | 76.219 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 6925 | 0 | 1383.566 | 3.16 | 5.487 | 19.814 | 128.535 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.514 | 1910 | 0 | 381.163 | 13.136 | 15.059 | 16.17 | 86.883 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.015 | 6681 | 0 | 1335.533 | 3.202 | 6.272 | 19.712 | 77.699 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6659 | 0 | 1331.157 | 3.215 | 6.055 | 20.139 | 77.699 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4079 | 0 | 815.029 | 5.529 | 8.345 | 25.156 | 148.316 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 4.618 | 1015 | 0 | 202.352 | 24.291 | 29.142 | 35.741 | 114.047 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4252 | 0 | 849.719 | 5.255 | 8.193 | 25.067 | 112.688 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4374 | 0 | 873.804 | 4.988 | 8.472 | 25.149 | 112.879 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.01 | 2463 | 0 | 491.656 | 9.932 | 12.127 | 14.092 | 155.266 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.22 | 9.111 | 1000 | 0 | 108.459 | 45.625 | 52.382 | 55.011 | 125.469 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2674 | 0 | 534.057 | 9.132 | 11.08 | 13.422 | 122.348 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2712 | 0 | 541.455 | 9.035 | 10.916 | 12.74 | 122.348 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.119 | 51.121 | 360 | 0 | 7.042 | 2554.906 | 2574.937 | 2586.193 | 144.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.094 | 34.068 | 240 | 0 | 7.039 | 1704.181 | 1730.198 | 1738.334 | 146.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.57 | 25.554 | 180 | 0 | 7.039 | 1278.644 | 1300.545 | 1307.262 | 147.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.043 | 17.034 | 120 | 0 | 7.041 | 852.181 | 875.75 | 884.497 | 113.719 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.261 | 14.207 | 100 | 0 | 7.012 | 806.173 | 853.524 | 856.012 | 119.797 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.526 | 8.519 | 60 | 0 | 7.038 | 426.236 | 432.13 | 437.728 | 119.863 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.682 | 5.671 | 40 | 0 | 7.039 | 283.95 | 289.084 | 295.29 | 119.863 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3538 | 0 | 707.467 | 1.38 | 1.546 | 1.894 | 124.629 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.005 | 934 | 0 | 186.601 | 5.296 | 5.597 | 5.852 | 128.754 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.007 | 478 | 0 | 95.524 | 10.406 | 10.667 | 10.982 | 128.758 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.021 | 2.031 | 99 | 0 | 19.716 | 50.661 | 50.746 | 50.828 | 128.758 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.038 | 2.018 | 50 | 0 | 9.924 | 100.703 | 100.775 | 100.792 | 128.758 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.021 | 2.009 | 25 | 0 | 4.979 | 200.708 | 201.147 | 201.232 | 128.758 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.167 | 1000 | 0 | 62.033 | 40.983 | 41.964 | 42.286 | 29.551 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.143 | 16.127 | 1000 | 0 | 61.947 | 40.991 | 42.014 | 42.47 | 29.914 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.144 | 1000 | 0 | 62.021 | 40.986 | 41.967 | 42.294 | 30.012 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.156 | 16.143 | 1000 | 0 | 61.897 | 40.997 | 42.009 | 42.509 | 30.164 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.123 | 1000 | 0 | 61.972 | 40.99 | 41.98 | 42.605 | 30.207 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.165 | 16.142 | 1000 | 0 | 61.863 | 40.985 | 41.968 | 42.486 | 30.391 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.103 | 1000 | 0 | 61.984 | 40.987 | 41.978 | 42.409 | 30.406 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.168 | 16.144 | 1000 | 0 | 61.851 | 41.009 | 42.08 | 42.937 | 30.719 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.566 | 11.887 | 1000 | 0 | 73.714 | 40.984 | 42.02 | 42.894 | 30.762 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.56 | 12.179 | 1000 | 0 | 68.681 | 41.011 | 42.112 | 43.645 | 30.82 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 12438 | 0 | 2486.821 | 1.114 | 1.966 | 6.134 | 31.352 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.825 | 12.261 | 1000 | 0 | 77.972 | 41.157 | 42.512 | 43.227 | 34.465 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.6 | 13.926 | 1000 | 0 | 73.531 | 41.926 | 42.934 | 43.757 | 34.465 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.525 | 13.535 | 1000 | 0 | 73.936 | 41.935 | 42.953 | 49.902 | 34.465 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8925 | 0 | 1784.209 | 1.454 | 2.619 | 38.582 | 34.473 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.191 | 14.763 | 1000 | 0 | 65.829 | 41.956 | 42.905 | 43.529 | 40.473 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.629 | 14.864 | 1000 | 0 | 68.357 | 42.04 | 43.601 | 45.034 | 40.188 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.284 | 14.311 | 1000 | 0 | 70.009 | 42.03 | 43.469 | 44.404 | 40.188 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 6490 | 0 | 1296.692 | 1.977 | 3.868 | 21.193 | 41.008 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.396 | 15.227 | 1000 | 0 | 64.952 | 42.958 | 44.053 | 45.763 | 46.469 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.818 | 15.398 | 1000 | 0 | 67.484 | 43.916 | 45.093 | 50.671 | 46.469 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.704 | 15.965 | 1000 | 0 | 68.009 | 43.921 | 45.029 | 56.383 | 46.473 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 4312 | 0 | 861.733 | 2.965 | 6.058 | 24.39 | 48.234 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.472 | 16.498 | 1000 | 0 | 64.634 | 44.888 | 46.721 | 62.358 | 53.539 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.372 | 16.411 | 1000 | 0 | 61.079 | 46.78 | 48.533 | 64.27 | 53.207 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.797 | 17.242 | 1000 | 0 | 63.302 | 46.871 | 49.07 | 58.963 | 53.207 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.051 | 2647 | 0 | 528.444 | 5.364 | 8.153 | 27.326 | 59.219 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.961 | 18.237 | 1000 | 0 | 55.676 | 48.838 | 51.837 | 61.312 | 66.68 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.031 | 28.799 | 363 | 0 | 12.504 | 241.944 | 243.294 | 19624.007 | 67.055 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.426 | 19.194 | 243 | 0 | 12.509 | 241.833 | 242.622 | 12814.566 | 67.082 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.631 | 14.392 | 183 | 0 | 12.508 | 241.892 | 242.664 | 10031.152 | 67.082 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.597 | 123 | 0 | 12.507 | 241.759 | 242.84 | 5236.231 | 67.09 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.601 | 103 | 0 | 10.474 | 241.864 | 242.676 | 5138.82 | 67.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.799 | 63 | 0 | 12.505 | 241.823 | 242.365 | 242.567 | 67.105 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.801 | 42 | 0 | 8.333 | 241.912 | 242.787 | 243.418 | 67.113 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.02 | 122 | 0 | 24.357 | 41.948 | 42.123 | 42.928 | 67.145 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 2.029 | 112 | 0 | 22.259 | 45.943 | 46.321 | 46.928 | 67.156 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.026 | 99 | 0 | 19.67 | 50.972 | 51.997 | 52.093 | 67.16 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.085 | 2.067 | 56 | 0 | 11.012 | 91.429 | 92.024 | 92.452 | 67.16 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.075 | 2.091 | 36 | 0 | 7.094 | 141.954 | 142.105 | 142.715 | 67.16 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.38 | 21 | 0 | 4.17 | 241.724 | 242.045 | 242.707 | 67.164 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.138 | 16.18 | 1000 | 0 | 61.964 | 40.987 | 41.986 | 42.312 | 29.531 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.155 | 16.14 | 1000 | 0 | 61.901 | 40.996 | 41.988 | 42.597 | 30.055 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.132 | 1000 | 0 | 61.955 | 40.993 | 41.984 | 42.629 | 30.16 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.148 | 16.145 | 1000 | 0 | 61.926 | 40.993 | 42.034 | 42.819 | 30.293 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.182 | 16.126 | 1000 | 0 | 61.797 | 40.991 | 41.995 | 42.483 | 30.355 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.144 | 1000 | 0 | 62.007 | 40.985 | 41.952 | 42.27 | 30.383 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.146 | 16.128 | 1000 | 0 | 61.936 | 40.99 | 41.987 | 42.491 | 30.391 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.168 | 16.154 | 1000 | 0 | 61.852 | 41.002 | 42.112 | 42.655 | 30.969 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.299 | 11.478 | 1000 | 0 | 69.936 | 40.993 | 41.997 | 42.777 | 31.008 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.545 | 11.514 | 1000 | 0 | 68.752 | 40.997 | 42.028 | 42.942 | 31.039 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12310 | 0 | 2461.04 | 1.111 | 2.029 | 12.4 | 31.434 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.691 | 12.335 | 1000 | 0 | 78.794 | 41.176 | 42.593 | 43.395 | 35.48 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.607 | 13.198 | 1000 | 0 | 79.32 | 41.905 | 42.982 | 44.3 | 35.48 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.749 | 14.455 | 1000 | 0 | 67.801 | 41.936 | 42.964 | 43.458 | 35.48 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8934 | 0 | 1786.082 | 1.461 | 2.722 | 31.869 | 35.605 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.898 | 15.0 | 1000 | 0 | 67.123 | 41.959 | 42.968 | 43.388 | 43.063 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.301 | 14.92 | 1000 | 0 | 65.356 | 42.038 | 43.381 | 48.089 | 43.063 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.408 | 14.459 | 1000 | 0 | 74.58 | 42.076 | 43.557 | 45.921 | 43.063 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 6467 | 0 | 1292.441 | 1.932 | 3.657 | 26.243 | 43.32 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.85 | 15.724 | 1000 | 0 | 63.091 | 42.954 | 44.001 | 45.119 | 47.336 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.099 | 15.419 | 1000 | 0 | 66.229 | 43.908 | 45.087 | 47.057 | 47.336 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.922 | 15.407 | 1000 | 0 | 71.829 | 43.921 | 45.578 | 50.029 | 47.336 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4230 | 0 | 845.138 | 3.01 | 6.252 | 26.184 | 49.352 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.434 | 16.365 | 1000 | 0 | 64.791 | 44.917 | 46.962 | 51.938 | 55.023 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.325 | 16.769 | 1000 | 0 | 65.253 | 46.147 | 48.358 | 50.563 | 53.848 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.72 | 16.847 | 1000 | 0 | 63.613 | 46.86 | 48.958 | 58.297 | 53.848 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.068 | 2678 | 0 | 534.79 | 5.478 | 7.676 | 13.588 | 59.859 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.422 | 18.39 | 1000 | 0 | 57.4 | 48.785 | 51.774 | 60.947 | 66.684 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.027 | 28.8 | 363 | 0 | 12.506 | 241.92 | 242.967 | 19624.897 | 65.414 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.427 | 19.192 | 243 | 0 | 12.508 | 241.833 | 242.837 | 12808.362 | 65.422 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.637 | 14.394 | 183 | 0 | 12.503 | 241.943 | 242.516 | 10035.099 | 65.43 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.596 | 123 | 0 | 12.505 | 241.885 | 242.464 | 5238.215 | 65.43 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.596 | 103 | 0 | 10.473 | 241.836 | 242.71 | 5137.034 | 65.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.798 | 63 | 0 | 12.501 | 241.875 | 242.598 | 242.686 | 65.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.799 | 42 | 0 | 8.334 | 241.946 | 242.217 | 242.693 | 65.438 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.021 | 122 | 0 | 24.341 | 41.956 | 42.87 | 42.943 | 65.477 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 2.03 | 112 | 0 | 22.267 | 45.945 | 46.199 | 47.029 | 65.496 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.022 | 99 | 0 | 19.645 | 50.993 | 51.988 | 52.088 | 65.504 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.075 | 55 | 0 | 10.976 | 91.927 | 92.055 | 92.474 | 65.512 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.075 | 2.088 | 36 | 0 | 7.094 | 141.967 | 142.831 | 142.947 | 65.512 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.38 | 21 | 0 | 4.168 | 241.934 | 242.487 | 242.781 | 65.512 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.144 | 16.151 | 1000 | 0 | 61.941 | 40.993 | 42.058 | 42.551 | 29.977 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.14 | 16.15 | 1000 | 0 | 61.958 | 40.991 | 41.993 | 42.442 | 30.246 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.137 | 1000 | 0 | 61.971 | 40.986 | 41.991 | 42.662 | 30.34 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.133 | 1000 | 0 | 61.955 | 40.988 | 41.98 | 42.712 | 30.453 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.134 | 1000 | 0 | 62.016 | 40.983 | 41.976 | 42.423 | 30.484 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.144 | 16.13 | 1000 | 0 | 61.942 | 40.987 | 41.998 | 42.783 | 30.484 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.126 | 1000 | 0 | 61.954 | 40.99 | 41.975 | 42.624 | 30.488 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.157 | 16.189 | 1000 | 0 | 61.892 | 40.992 | 42.016 | 42.614 | 31.047 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.416 | 11.188 | 1000 | 0 | 74.54 | 40.98 | 42.037 | 43.107 | 31.055 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.98 | 11.049 | 1000 | 0 | 71.53 | 40.995 | 42.067 | 43.004 | 31.055 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12472 | 0 | 2493.601 | 1.106 | 1.974 | 11.517 | 31.402 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.607 | 12.657 | 1000 | 0 | 79.319 | 41.118 | 42.489 | 43.107 | 35.324 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.419 | 13.67 | 1000 | 0 | 74.523 | 41.91 | 42.941 | 43.901 | 35.324 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.559 | 14.652 | 1000 | 0 | 68.685 | 41.934 | 42.947 | 43.876 | 35.324 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9148 | 0 | 1828.877 | 1.438 | 2.578 | 40.86 | 36.129 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.758 | 14.934 | 1000 | 0 | 67.758 | 41.965 | 43.001 | 44.029 | 40.148 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.132 | 14.062 | 1000 | 0 | 70.762 | 42.034 | 43.486 | 45.396 | 40.148 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.845 | 14.447 | 1000 | 0 | 67.364 | 42.044 | 43.524 | 45.262 | 40.148 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6620 | 0 | 1323.288 | 1.956 | 3.584 | 23.668 | 40.648 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.607 | 15.621 | 1000 | 0 | 64.076 | 42.945 | 44.037 | 45.996 | 46.074 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.59 | 15.467 | 1000 | 0 | 68.538 | 43.888 | 45.009 | 47.275 | 44.93 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.387 | 15.848 | 1000 | 0 | 64.989 | 43.924 | 44.98 | 51.335 | 44.93 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.006 | 4699 | 0 | 939.13 | 2.762 | 5.064 | 24.192 | 48.66 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.064 | 16.505 | 1000 | 0 | 62.25 | 44.454 | 46.196 | 52.08 | 53.582 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.606 | 17.287 | 1000 | 0 | 64.08 | 46.733 | 48.558 | 54.76 | 52.039 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.988 | 16.907 | 1000 | 0 | 62.547 | 46.857 | 49.012 | 51.188 | 52.039 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.064 | 2710 | 0 | 541.369 | 5.397 | 7.335 | 15.096 | 58.051 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.863 | 17.962 | 1000 | 0 | 55.982 | 48.011 | 51.93 | 71.858 | 84.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.029 | 28.806 | 363 | 0 | 12.505 | 241.904 | 243.24 | 19622.807 | 84.449 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.436 | 19.195 | 243 | 0 | 12.502 | 241.916 | 243.214 | 12815.33 | 84.457 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.636 | 14.397 | 183 | 0 | 12.504 | 241.912 | 243.345 | 10033.068 | 84.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.84 | 9.6 | 123 | 0 | 12.5 | 241.931 | 243.051 | 5238.37 | 84.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.842 | 9.599 | 103 | 0 | 10.465 | 241.992 | 242.834 | 5140.958 | 84.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.801 | 63 | 0 | 12.5 | 241.941 | 242.719 | 243.087 | 84.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.799 | 42 | 0 | 8.331 | 241.952 | 242.546 | 242.953 | 84.461 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.022 | 122 | 0 | 24.312 | 41.967 | 42.926 | 43.313 | 84.488 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 2.03 | 112 | 0 | 22.272 | 45.937 | 46.198 | 46.971 | 84.508 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.05 | 2.034 | 99 | 0 | 19.606 | 51.035 | 51.979 | 52.074 | 84.543 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.075 | 55 | 0 | 10.981 | 91.87 | 92.09 | 92.346 | 84.547 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.075 | 2.089 | 36 | 0 | 7.094 | 141.945 | 142.539 | 142.877 | 84.547 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.378 | 21 | 0 | 4.172 | 241.827 | 242.025 | 242.033 | 84.547 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17101 | 0 | 3419.494 | 1.384 | 1.935 | 2.539 | 70.254 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16735 | 0 | 3346.385 | 1.427 | 1.963 | 2.349 | 70.648 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17127 | 0 | 3424.629 | 1.385 | 1.959 | 2.402 | 70.52 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16873 | 0 | 3373.899 | 1.409 | 1.99 | 2.478 | 70.414 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16769 | 0 | 3352.984 | 1.41 | 2.017 | 2.603 | 72.199 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14537 | 0 | 2906.724 | 1.646 | 2.261 | 2.76 | 72.215 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16977 | 0 | 3394.728 | 1.401 | 1.979 | 2.426 | 72.465 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17172 | 0 | 3433.623 | 1.395 | 1.918 | 2.392 | 73.34 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13988 | 0 | 2796.77 | 1.732 | 2.256 | 2.638 | 81.406 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6765 | 0 | 1352.262 | 3.622 | 4.426 | 5.038 | 77.289 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13859 | 0 | 2771.095 | 1.737 | 2.316 | 2.797 | 81.34 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.034 | 13573 | 0 | 2708.012 | 1.541 | 2.176 | 3.197 | 75.195 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9578 | 0 | 1915.002 | 2.264 | 3.895 | 6.29 | 107.402 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3396 | 0 | 678.384 | 7.292 | 8.668 | 9.395 | 83.723 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9720 | 0 | 1943.334 | 2.231 | 3.67 | 6.344 | 79.949 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9871 | 0 | 1973.511 | 2.265 | 3.419 | 4.818 | 79.887 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6661 | 0 | 1331.559 | 3.244 | 5.238 | 25.316 | 125.918 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.488 | 1930 | 0 | 385.197 | 12.775 | 15.304 | 20.518 | 87.098 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.023 | 6463 | 0 | 1291.791 | 3.269 | 5.773 | 26.157 | 85.285 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.028 | 6846 | 0 | 1368.471 | 3.195 | 4.91 | 25.159 | 85.359 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 4135 | 0 | 826.253 | 5.357 | 8.055 | 29.445 | 144.43 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.602 | 1061 | 0 | 211.454 | 23.565 | 26.876 | 28.604 | 100.336 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4273 | 0 | 853.877 | 5.161 | 7.968 | 29.158 | 101.191 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.071 | 4116 | 0 | 822.105 | 5.267 | 8.381 | 30.296 | 101.254 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2491 | 0 | 497.404 | 9.873 | 12.085 | 14.021 | 108.988 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.238 | 8.775 | 1000 | 0 | 108.248 | 45.406 | 54.397 | 68.657 | 104.316 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2746 | 0 | 548.448 | 8.962 | 10.644 | 11.841 | 105.23 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2710 | 0 | 541.268 | 9.01 | 10.841 | 12.437 | 105.23 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.223 | 51.221 | 360 | 0 | 7.028 | 2560.703 | 2588.026 | 2599.995 | 126.473 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.147 | 34.131 | 240 | 0 | 7.028 | 1707.407 | 1726.946 | 1734.111 | 127.434 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.607 | 25.597 | 180 | 0 | 7.029 | 1279.981 | 1298.731 | 1307.156 | 118.645 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.077 | 17.072 | 120 | 0 | 7.027 | 854.734 | 868.926 | 874.468 | 118.645 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.234 | 14.277 | 100 | 0 | 7.025 | 802.495 | 858.307 | 863.016 | 118.645 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.532 | 8.531 | 60 | 0 | 7.033 | 426.556 | 433.929 | 437.174 | 119.023 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.687 | 5.684 | 40 | 0 | 7.034 | 284.07 | 287.547 | 288.411 | 119.086 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.001 | 1608 | 0 | 321.417 | 3.081 | 3.304 | 3.681 | 119.961 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.007 | 480 | 0 | 95.88 | 10.463 | 10.714 | 10.872 | 120.023 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.006 | 359 | 0 | 71.615 | 13.927 | 14.15 | 14.456 | 122.398 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.02 | 2.029 | 99 | 0 | 19.722 | 50.614 | 50.904 | 51.156 | 122.398 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.043 | 2.017 | 50 | 0 | 9.915 | 100.663 | 101.494 | 101.807 | 122.398 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.009 | 25 | 0 | 4.982 | 200.65 | 200.73 | 200.842 | 122.398 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17507 | 0 | 3500.448 | 1.365 | 1.856 | 2.244 | 69.125 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16977 | 0 | 3394.577 | 1.411 | 1.919 | 2.287 | 69.34 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17601 | 0 | 3519.47 | 1.359 | 1.871 | 2.254 | 69.594 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 17225 | 0 | 3442.913 | 1.386 | 1.94 | 2.389 | 69.941 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 17372 | 0 | 3472.196 | 1.377 | 1.917 | 2.314 | 71.547 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14915 | 0 | 2982.366 | 1.611 | 2.195 | 2.607 | 71.879 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16626 | 0 | 3324.589 | 1.402 | 2.084 | 3.207 | 71.934 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16860 | 0 | 3371.299 | 1.405 | 2.017 | 2.649 | 72.723 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13757 | 0 | 2750.56 | 1.75 | 2.308 | 2.742 | 83.996 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6639 | 0 | 1327.005 | 3.685 | 4.55 | 5.095 | 77.809 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13864 | 0 | 2772.022 | 1.741 | 2.288 | 2.768 | 83.824 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.029 | 2.001 | 13589 | 0 | 2701.938 | 1.309 | 2.084 | 40.99 | 74.668 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9363 | 0 | 1872.01 | 2.308 | 3.973 | 7.317 | 114.723 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3503 | 0 | 699.66 | 7.046 | 8.409 | 9.564 | 86.953 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9763 | 0 | 1951.887 | 2.213 | 3.725 | 5.625 | 79.98 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9462 | 0 | 1891.744 | 2.283 | 3.994 | 6.668 | 79.531 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6705 | 0 | 1340.356 | 3.222 | 5.185 | 26.591 | 124.012 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.531 | 1912 | 0 | 381.708 | 13.035 | 14.912 | 16.311 | 86.066 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7083 | 0 | 1415.934 | 3.043 | 4.973 | 26.453 | 85.227 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6624 | 0 | 1323.917 | 3.251 | 5.174 | 27.235 | 85.316 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 3953 | 0 | 789.915 | 5.536 | 8.949 | 31.643 | 141.176 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.962 | 1016 | 0 | 202.371 | 24.576 | 28.119 | 31.026 | 89.469 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4017 | 0 | 802.575 | 5.393 | 8.402 | 31.435 | 88.477 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4043 | 0 | 807.977 | 5.332 | 8.876 | 32.354 | 88.477 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2464 | 0 | 491.976 | 10.066 | 11.592 | 12.436 | 99.184 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.046 | 8.767 | 1000 | 0 | 110.545 | 45.121 | 50.948 | 53.407 | 92.047 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2632 | 0 | 525.631 | 9.44 | 10.713 | 11.402 | 95.496 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2624 | 0 | 524.087 | 9.509 | 10.739 | 11.852 | 95.496 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.218 | 51.265 | 360 | 0 | 7.029 | 2559.681 | 2591.407 | 2599.164 | 119.488 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.123 | 34.127 | 240 | 0 | 7.033 | 1705.78 | 1737.618 | 1743.84 | 119.742 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.577 | 25.614 | 180 | 0 | 7.038 | 1276.136 | 1305.737 | 1311.17 | 120.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.048 | 17.05 | 120 | 0 | 7.039 | 852.002 | 867.796 | 872.5 | 120.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.221 | 14.227 | 100 | 0 | 7.032 | 805.239 | 852.057 | 862.38 | 120.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.523 | 8.524 | 60 | 0 | 7.04 | 425.669 | 436.464 | 438.94 | 120.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.686 | 5.684 | 40 | 0 | 7.034 | 283.872 | 288.851 | 292.196 | 120.438 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.0 | 1636 | 0 | 327.185 | 3.05 | 3.226 | 3.526 | 125.852 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.01 | 484 | 0 | 96.784 | 10.402 | 10.519 | 10.627 | 127.055 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.011 | 362 | 0 | 72.347 | 13.812 | 14.118 | 14.438 | 127.055 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.021 | 99 | 0 | 19.794 | 50.46 | 50.642 | 50.8 | 127.055 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.013 | 50 | 0 | 9.937 | 100.552 | 100.612 | 100.678 | 127.055 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.565 | 200.643 | 200.654 | 127.055 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17690 | 0 | 3536.925 | 1.358 | 1.807 | 2.131 | 69.094 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17228 | 0 | 3444.665 | 1.394 | 1.848 | 2.182 | 69.352 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 17674 | 0 | 3534.14 | 1.359 | 1.82 | 2.201 | 69.492 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17434 | 0 | 3486.02 | 1.377 | 1.858 | 2.259 | 69.711 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17429 | 0 | 3485.077 | 1.378 | 1.856 | 2.253 | 71.164 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14873 | 0 | 2973.525 | 1.62 | 2.13 | 2.524 | 71.512 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17367 | 0 | 3472.536 | 1.378 | 1.872 | 2.313 | 75.516 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16979 | 0 | 3395.092 | 1.403 | 1.938 | 2.459 | 76.84 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13862 | 0 | 2771.624 | 1.748 | 2.25 | 2.585 | 90.902 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6714 | 0 | 1342.026 | 3.661 | 4.399 | 4.848 | 80.852 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13888 | 0 | 2776.936 | 1.739 | 2.28 | 2.747 | 90.078 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.014 | 2.017 | 13449 | 0 | 2682.127 | 1.293 | 2.051 | 41.088 | 78.402 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9529 | 0 | 1905.093 | 2.284 | 3.683 | 5.727 | 113.262 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3468 | 0 | 692.854 | 7.137 | 8.436 | 10.0 | 86.293 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9876 | 0 | 1973.954 | 2.198 | 3.596 | 5.393 | 81.879 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9527 | 0 | 1904.693 | 2.265 | 3.803 | 6.823 | 81.816 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6677 | 0 | 1334.861 | 3.127 | 5.694 | 26.38 | 138.727 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.434 | 1962 | 0 | 391.61 | 12.769 | 14.605 | 15.528 | 89.074 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6967 | 0 | 1392.821 | 2.967 | 5.553 | 26.631 | 85.496 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.005 | 6952 | 0 | 1388.027 | 3.023 | 5.182 | 25.955 | 85.578 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4359 | 0 | 870.69 | 4.962 | 8.278 | 30.962 | 142.184 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.219 | 4.585 | 1000 | 0 | 191.593 | 25.257 | 31.62 | 47.821 | 89.477 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.005 | 4230 | 0 | 844.73 | 5.181 | 8.279 | 32.076 | 93.852 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4282 | 0 | 855.704 | 5.14 | 7.876 | 32.444 | 93.914 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.257 | 2423 | 0 | 483.678 | 10.223 | 11.851 | 12.713 | 114.719 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.881 | 8.377 | 1000 | 0 | 112.599 | 44.182 | 50.066 | 52.486 | 94.516 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2643 | 0 | 527.708 | 9.369 | 10.909 | 11.716 | 95.059 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.009 | 2666 | 0 | 532.417 | 9.129 | 10.875 | 20.139 | 95.059 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.188 | 51.189 | 360 | 0 | 7.033 | 2557.287 | 2592.491 | 2603.862 | 117.918 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.104 | 34.091 | 240 | 0 | 7.037 | 1705.192 | 1730.669 | 1737.54 | 120.668 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.587 | 25.599 | 180 | 0 | 7.035 | 1277.055 | 1300.957 | 1308.273 | 115.859 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.058 | 17.048 | 120 | 0 | 7.035 | 852.352 | 870.159 | 872.474 | 119.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.215 | 14.272 | 100 | 0 | 7.035 | 774.604 | 853.561 | 865.713 | 119.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.527 | 8.521 | 60 | 0 | 7.036 | 425.048 | 439.306 | 441.085 | 119.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.688 | 5.687 | 40 | 0 | 7.033 | 285.169 | 291.177 | 293.889 | 119.262 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1612 | 0 | 322.316 | 3.089 | 3.332 | 3.7 | 120.891 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.002 | 477 | 0 | 95.284 | 10.493 | 10.833 | 11.251 | 120.891 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.014 | 358 | 0 | 71.486 | 13.959 | 14.132 | 14.428 | 120.891 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.028 | 99 | 0 | 19.751 | 50.57 | 50.659 | 50.866 | 120.891 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.015 | 50 | 0 | 9.937 | 100.574 | 100.647 | 100.68 | 120.891 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.983 | 200.628 | 200.685 | 200.687 | 120.891 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

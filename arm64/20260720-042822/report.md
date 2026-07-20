# Puma vs Raptor Simulation

Run ID: `20260720-042822`

## Environment

- Ruby: `ruby 4.0.6 (2026-07-14 revision 03b6d3f889) +PRISM [aarch64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.147 | 1000 | 0 | 62.076 | 40.981 | 41.98 | 42.414 | 28.137 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.13 | 1000 | 0 | 62.097 | 40.978 | 41.92 | 42.106 | 28.152 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.105 | 1000 | 0 | 62.063 | 40.981 | 41.929 | 42.333 | 28.152 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.131 | 1000 | 0 | 62.107 | 40.974 | 41.936 | 42.261 | 28.18 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.15 | 1000 | 0 | 62.066 | 40.98 | 41.953 | 42.357 | 28.18 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.119 | 1000 | 0 | 62.058 | 40.98 | 41.959 | 42.432 | 28.18 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.113 | 1000 | 0 | 62.098 | 40.979 | 41.843 | 42.278 | 28.223 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.135 | 1000 | 0 | 62.069 | 40.98 | 41.952 | 42.428 | 28.234 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.915 | 13.498 | 1000 | 0 | 67.047 | 40.967 | 41.96 | 42.26 | 28.359 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.349 | 13.758 | 1000 | 0 | 65.151 | 40.971 | 41.954 | 42.922 | 28.434 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13932 | 0 | 2785.476 | 0.979 | 1.722 | 7.229 | 28.91 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.05 | 14.483 | 1000 | 0 | 71.176 | 40.972 | 41.978 | 42.382 | 33.473 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.684 | 8.769 | 1000 | 0 | 93.594 | 40.965 | 42.017 | 42.952 | 33.473 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.658 | 10.494 | 1000 | 0 | 103.538 | 40.97 | 42.215 | 43.174 | 33.473 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10269 | 0 | 2052.832 | 1.218 | 2.407 | 42.924 | 33.723 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.578 | 12.29 | 1000 | 0 | 79.502 | 41.892 | 42.912 | 43.546 | 42.902 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.308 | 11.608 | 1000 | 0 | 75.145 | 41.927 | 42.513 | 43.483 | 42.902 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.747 | 12.603 | 1000 | 0 | 78.449 | 41.941 | 42.85 | 43.733 | 42.902 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7738 | 0 | 1546.802 | 1.642 | 3.413 | 21.558 | 43.234 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.951 | 14.386 | 1000 | 0 | 71.679 | 41.969 | 43.281 | 44.269 | 50.746 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.093 | 15.021 | 1000 | 0 | 70.959 | 41.981 | 43.939 | 50.901 | 50.746 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.964 | 14.671 | 1000 | 0 | 66.825 | 42.021 | 43.922 | 46.061 | 50.746 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 5593 | 0 | 1117.816 | 2.372 | 4.72 | 14.077 | 50.746 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.5 | 15.989 | 1000 | 0 | 64.518 | 42.998 | 45.619 | 47.974 | 58.453 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.498 | 15.907 | 1000 | 0 | 64.525 | 43.954 | 46.481 | 48.974 | 58.453 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.555 | 15.899 | 1000 | 0 | 64.29 | 43.988 | 47.11 | 48.334 | 58.453 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3666 | 0 | 732.24 | 3.788 | 6.953 | 42.536 | 62.914 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.493 | 17.117 | 1000 | 0 | 60.633 | 44.991 | 48.729 | 50.265 | 87.34 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.004 | 28.778 | 363 | 0 | 12.516 | 241.763 | 243.163 | 19606.155 | 85.313 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.411 | 19.173 | 243 | 0 | 12.519 | 241.691 | 242.875 | 12799.671 | 85.434 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.616 | 14.379 | 183 | 0 | 12.521 | 241.51 | 242.815 | 10016.53 | 85.508 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.586 | 123 | 0 | 12.521 | 241.469 | 242.683 | 5230.592 | 85.523 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.821 | 9.588 | 103 | 0 | 10.488 | 241.485 | 242.299 | 5127.014 | 85.531 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.793 | 63 | 0 | 12.513 | 241.062 | 242.172 | 242.541 | 85.547 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.796 | 42 | 0 | 8.336 | 241.835 | 242.746 | 243.214 | 85.547 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.018 | 122 | 0 | 24.362 | 41.97 | 42.107 | 42.963 | 85.563 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.032 | 110 | 0 | 21.823 | 46.965 | 47.623 | 47.97 | 85.617 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.018 | 99 | 0 | 19.663 | 50.974 | 51.992 | 52.978 | 85.617 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.075 | 55 | 0 | 10.975 | 91.953 | 92.441 | 92.957 | 85.621 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.091 | 36 | 0 | 7.1 | 141.965 | 142.082 | 142.684 | 85.621 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.38 | 21 | 0 | 4.167 | 241.954 | 242.339 | 242.83 | 85.621 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.113 | 1000 | 0 | 62.059 | 40.979 | 41.954 | 42.375 | 27.445 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.116 | 1000 | 0 | 62.073 | 40.98 | 41.954 | 42.282 | 27.465 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.11 | 1000 | 0 | 62.086 | 40.979 | 41.883 | 42.196 | 27.477 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.105 | 1000 | 0 | 62.062 | 40.98 | 41.95 | 42.298 | 27.734 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.113 | 1000 | 0 | 62.094 | 40.98 | 41.946 | 42.358 | 27.746 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.109 | 1000 | 0 | 62.078 | 40.983 | 41.979 | 42.344 | 27.746 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.113 | 1000 | 0 | 62.099 | 40.978 | 41.926 | 42.253 | 27.75 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.124 | 1000 | 0 | 62.075 | 40.981 | 41.935 | 42.422 | 28.434 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.628 | 11.709 | 1000 | 0 | 68.362 | 40.966 | 41.966 | 42.216 | 28.434 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.157 | 14.187 | 1000 | 0 | 65.976 | 40.969 | 41.968 | 42.218 | 28.434 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 14339 | 0 | 2866.893 | 0.96 | 1.671 | 10.921 | 28.73 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.116 | 15.045 | 1000 | 0 | 66.157 | 40.975 | 41.978 | 42.733 | 34.449 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.183 | 10.338 | 1000 | 0 | 98.203 | 40.964 | 42.075 | 42.98 | 34.449 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.517 | 10.325 | 1000 | 0 | 105.071 | 40.985 | 42.252 | 43.018 | 34.449 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10666 | 0 | 2132.464 | 1.222 | 2.453 | 20.637 | 34.449 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.102 | 10.793 | 1000 | 0 | 76.324 | 41.804 | 42.825 | 43.346 | 40.637 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.966 | 11.403 | 1000 | 0 | 77.124 | 41.94 | 42.942 | 44.175 | 38.254 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.473 | 13.555 | 1000 | 0 | 74.224 | 41.943 | 42.916 | 43.715 | 38.254 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 7439 | 0 | 1487.09 | 1.646 | 3.438 | 34.103 | 38.387 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.233 | 14.818 | 1000 | 0 | 70.26 | 41.971 | 43.05 | 43.981 | 44.953 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.774 | 15.244 | 1000 | 0 | 67.686 | 41.988 | 43.757 | 45.682 | 43.43 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.849 | 15.408 | 1000 | 0 | 67.345 | 41.979 | 43.484 | 45.444 | 43.43 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5739 | 0 | 1146.967 | 2.276 | 4.597 | 14.531 | 45.508 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.678 | 15.926 | 1000 | 0 | 63.783 | 42.981 | 44.913 | 45.933 | 51.316 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.618 | 15.97 | 1000 | 0 | 64.027 | 43.958 | 46.322 | 48.757 | 51.316 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.613 | 16.039 | 1000 | 0 | 64.048 | 43.984 | 46.786 | 49.195 | 51.316 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 3628 | 0 | 724.79 | 3.808 | 7.064 | 23.269 | 57.328 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.165 | 17.287 | 1000 | 0 | 61.862 | 44.968 | 47.192 | 49.546 | 83.09 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.999 | 28.755 | 363 | 0 | 12.518 | 241.764 | 242.977 | 19610.682 | 83.367 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.409 | 19.165 | 243 | 0 | 12.52 | 241.593 | 242.835 | 12801.26 | 83.391 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.619 | 14.384 | 183 | 0 | 12.518 | 241.747 | 242.467 | 10019.946 | 83.41 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.587 | 123 | 0 | 12.518 | 241.707 | 242.411 | 5232.601 | 83.43 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.583 | 103 | 0 | 10.475 | 241.917 | 242.414 | 5135.058 | 83.434 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.791 | 63 | 0 | 12.507 | 241.744 | 242.829 | 243.128 | 83.438 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.792 | 42 | 0 | 8.335 | 241.948 | 242.23 | 242.986 | 83.445 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.018 | 122 | 0 | 24.357 | 41.968 | 42.079 | 42.979 | 83.453 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.025 | 2.02 | 110 | 0 | 21.891 | 46.961 | 47.088 | 47.965 | 83.539 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.025 | 2.027 | 99 | 0 | 19.702 | 50.973 | 51.958 | 52.015 | 83.539 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.066 | 55 | 0 | 10.987 | 91.945 | 92.024 | 92.931 | 83.539 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.058 | 2.09 | 36 | 0 | 7.118 | 141.864 | 142.112 | 142.521 | 83.539 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.383 | 21 | 0 | 4.17 | 241.919 | 241.999 | 242.002 | 83.539 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.133 | 1000 | 0 | 62.074 | 40.979 | 41.947 | 42.303 | 27.324 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.124 | 1000 | 0 | 62.081 | 40.979 | 41.969 | 42.35 | 27.523 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.116 | 1000 | 0 | 62.12 | 40.979 | 41.885 | 42.262 | 27.523 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.115 | 1000 | 0 | 62.066 | 40.98 | 41.972 | 42.256 | 27.531 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.125 | 1000 | 0 | 62.057 | 40.98 | 41.957 | 42.286 | 27.555 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.134 | 1000 | 0 | 62.07 | 40.978 | 41.889 | 42.268 | 27.559 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.122 | 1000 | 0 | 62.088 | 40.981 | 41.917 | 42.236 | 27.586 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.146 | 1000 | 0 | 62.088 | 40.978 | 41.902 | 42.152 | 28.117 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.15 | 14.4 | 1000 | 0 | 70.671 | 40.965 | 41.968 | 42.889 | 28.117 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.286 | 13.295 | 1000 | 0 | 65.419 | 40.968 | 41.97 | 42.477 | 28.117 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13638 | 0 | 2726.629 | 1.003 | 1.799 | 6.637 | 28.48 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.419 | 14.272 | 1000 | 0 | 64.856 | 40.97 | 41.99 | 43.01 | 33.758 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.062 | 10.24 | 1000 | 0 | 99.382 | 40.963 | 42.011 | 42.979 | 33.758 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.851 | 10.385 | 1000 | 0 | 101.512 | 40.97 | 42.081 | 42.923 | 33.758 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9887 | 0 | 1976.296 | 1.283 | 2.662 | 41.179 | 33.883 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.732 | 12.411 | 1000 | 0 | 93.182 | 41.717 | 42.648 | 43.425 | 37.355 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.943 | 13.396 | 1000 | 0 | 83.733 | 41.929 | 42.949 | 43.95 | 37.344 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.763 | 13.97 | 1000 | 0 | 72.661 | 41.953 | 42.848 | 44.189 | 37.344 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.163 | 2.019 | 7722 | 0 | 1495.585 | 1.634 | 3.407 | 28.236 | 37.957 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.493 | 14.948 | 1000 | 0 | 74.113 | 41.967 | 43.228 | 45.184 | 43.113 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.378 | 15.285 | 1000 | 0 | 69.553 | 41.978 | 43.778 | 46.1 | 43.113 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.397 | 15.363 | 1000 | 0 | 64.948 | 41.982 | 43.516 | 50.249 | 43.113 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5541 | 0 | 1107.421 | 2.308 | 4.815 | 15.795 | 45.566 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.598 | 16.084 | 1000 | 0 | 64.111 | 42.983 | 45.014 | 47.514 | 50.023 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.118 | 15.746 | 1000 | 0 | 66.146 | 43.96 | 47.271 | 51.08 | 50.023 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.399 | 16.083 | 1000 | 0 | 64.937 | 43.973 | 46.382 | 49.041 | 50.023 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3558 | 0 | 710.807 | 3.931 | 7.314 | 21.007 | 56.035 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.662 | 17.569 | 1000 | 0 | 60.016 | 45.009 | 49.072 | 51.97 | 62.953 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.014 | 28.752 | 363 | 0 | 12.511 | 241.928 | 243.135 | 19614.748 | 63.164 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.409 | 19.168 | 243 | 0 | 12.52 | 241.583 | 243.075 | 12797.927 | 63.199 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.612 | 14.378 | 183 | 0 | 12.524 | 241.511 | 242.521 | 10014.964 | 63.207 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.586 | 123 | 0 | 12.511 | 241.684 | 242.992 | 5228.8 | 63.215 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.592 | 103 | 0 | 10.482 | 241.787 | 242.429 | 5126.555 | 63.223 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.794 | 63 | 0 | 12.51 | 241.787 | 242.388 | 242.713 | 63.223 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.799 | 42 | 0 | 8.345 | 241.663 | 242.186 | 242.603 | 63.223 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.017 | 122 | 0 | 24.372 | 41.969 | 42.127 | 42.983 | 63.223 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.003 | 109 | 0 | 21.761 | 46.974 | 47.947 | 47.984 | 63.395 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.021 | 99 | 0 | 19.662 | 50.984 | 51.994 | 52.058 | 63.43 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.066 | 55 | 0 | 10.99 | 91.953 | 92.016 | 92.155 | 63.438 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.091 | 36 | 0 | 7.097 | 141.966 | 142.328 | 142.926 | 63.438 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.379 | 21 | 0 | 4.163 | 241.977 | 242.953 | 242.973 | 63.438 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19335 | 0 | 3866.198 | 1.227 | 1.722 | 2.082 | 63.793 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19056 | 0 | 3810.324 | 1.242 | 1.752 | 2.134 | 64.18 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19645 | 0 | 3928.152 | 1.206 | 1.713 | 2.05 | 63.586 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18811 | 0 | 3761.378 | 1.263 | 1.92 | 2.345 | 64.238 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19224 | 0 | 3844.104 | 1.231 | 1.766 | 2.139 | 65.777 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16906 | 0 | 3380.448 | 1.411 | 2.0 | 2.508 | 65.727 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19146 | 0 | 3828.426 | 1.233 | 1.795 | 2.159 | 65.84 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18301 | 0 | 3659.322 | 1.296 | 2.029 | 2.457 | 68.359 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14311 | 0 | 2861.481 | 1.653 | 2.346 | 2.99 | 77.266 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7902 | 0 | 1579.529 | 3.078 | 3.891 | 5.674 | 71.547 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14665 | 0 | 2932.215 | 1.613 | 2.25 | 2.956 | 76.484 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.023 | 2.034 | 14550 | 0 | 2896.491 | 1.503 | 2.229 | 3.045 | 68.359 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10769 | 0 | 2152.801 | 2.08 | 3.407 | 5.477 | 98.348 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4399 | 0 | 878.91 | 5.573 | 8.547 | 10.553 | 74.734 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11133 | 0 | 2225.769 | 2.003 | 3.518 | 5.021 | 68.016 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10950 | 0 | 2189.335 | 2.041 | 3.614 | 4.906 | 68.078 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8316 | 0 | 1662.211 | 2.704 | 4.464 | 13.225 | 121.594 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.021 | 2484 | 0 | 495.888 | 10.011 | 11.318 | 18.296 | 76.754 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8637 | 0 | 1726.692 | 2.529 | 4.644 | 13.302 | 72.641 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8347 | 0 | 1668.641 | 2.589 | 4.888 | 13.018 | 72.641 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5487 | 0 | 1096.692 | 4.213 | 7.147 | 15.744 | 151.699 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.639 | 1345 | 0 | 268.024 | 18.223 | 30.896 | 33.809 | 129.262 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5772 | 0 | 1153.71 | 3.784 | 7.174 | 15.935 | 128.738 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5626 | 0 | 1124.281 | 3.91 | 7.35 | 16.365 | 128.805 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.008 | 3544 | 0 | 708.126 | 6.858 | 11.301 | 13.109 | 199.172 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.084 | 6.95 | 1000 | 0 | 141.171 | 35.25 | 54.969 | 63.476 | 165.891 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3633 | 0 | 725.803 | 6.477 | 11.675 | 13.172 | 78.57 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3826 | 0 | 764.359 | 6.303 | 10.551 | 12.225 | 78.57 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.987 | 51.05 | 360 | 0 | 7.061 | 2549.539 | 2569.006 | 2575.429 | 98.582 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.98 | 34.051 | 240 | 0 | 7.063 | 1698.537 | 1714.005 | 1717.469 | 99.094 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.482 | 25.536 | 180 | 0 | 7.064 | 1273.85 | 1288.725 | 1298.543 | 99.223 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.989 | 17.036 | 120 | 0 | 7.063 | 849.526 | 863.702 | 871.058 | 99.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.224 | 14.188 | 100 | 0 | 7.031 | 789.759 | 850.097 | 850.542 | 99.23 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.5 | 8.507 | 60 | 0 | 7.058 | 424.91 | 428.144 | 434.244 | 99.23 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.664 | 5.663 | 40 | 0 | 7.062 | 283.185 | 283.58 | 291.073 | 99.23 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3654 | 0 | 730.706 | 1.329 | 1.483 | 1.684 | 107.555 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.004 | 947 | 0 | 189.373 | 5.246 | 5.342 | 5.517 | 107.68 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.005 | 486 | 0 | 97.14 | 10.26 | 10.368 | 10.532 | 109.57 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.044 | 2.023 | 100 | 0 | 19.825 | 50.389 | 50.543 | 50.641 | 109.57 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.015 | 50 | 0 | 9.943 | 100.515 | 100.628 | 100.815 | 109.57 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.566 | 200.64 | 200.656 | 109.57 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19843 | 0 | 3967.786 | 1.194 | 1.678 | 2.053 | 63.742 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19411 | 0 | 3881.418 | 1.22 | 1.704 | 2.143 | 63.773 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19596 | 0 | 3918.564 | 1.209 | 1.694 | 2.052 | 63.59 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18974 | 0 | 3794.12 | 1.239 | 1.91 | 2.403 | 64.105 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19521 | 0 | 3903.319 | 1.216 | 1.705 | 2.091 | 65.914 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17256 | 0 | 3450.248 | 1.382 | 1.913 | 2.389 | 66.031 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19609 | 0 | 3921.066 | 1.207 | 1.715 | 2.071 | 66.078 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18946 | 0 | 3788.466 | 1.249 | 1.887 | 2.293 | 69.02 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14856 | 0 | 2970.056 | 1.592 | 2.249 | 2.889 | 77.148 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8168 | 0 | 1632.836 | 2.984 | 3.701 | 5.46 | 71.266 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15131 | 0 | 3025.546 | 1.566 | 2.156 | 2.838 | 76.309 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 15060 | 0 | 3010.894 | 1.448 | 2.054 | 2.887 | 66.441 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 10888 | 0 | 2176.939 | 2.037 | 3.448 | 5.597 | 94.316 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4555 | 0 | 910.027 | 5.381 | 8.525 | 10.164 | 75.719 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11068 | 0 | 2212.909 | 1.979 | 3.564 | 5.665 | 66.98 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10947 | 0 | 2188.591 | 2.009 | 3.598 | 5.65 | 67.168 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 8398 | 0 | 1678.385 | 2.592 | 4.512 | 14.583 | 119.086 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.008 | 2559 | 0 | 510.825 | 9.663 | 11.219 | 17.94 | 77.293 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8587 | 0 | 1716.727 | 2.486 | 4.658 | 14.105 | 70.688 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 8261 | 0 | 1650.93 | 2.588 | 4.834 | 14.486 | 70.688 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5435 | 0 | 1085.874 | 4.249 | 7.175 | 17.272 | 132.188 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.581 | 1375 | 0 | 274.047 | 17.874 | 29.279 | 32.931 | 78.371 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5617 | 0 | 1122.674 | 3.829 | 7.343 | 17.663 | 73.883 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5572 | 0 | 1113.749 | 3.842 | 7.272 | 17.721 | 73.953 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3144 | 0 | 628.089 | 7.85 | 12.677 | 14.136 | 132.094 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.953 | 6.892 | 1000 | 0 | 143.823 | 34.493 | 55.418 | 62.715 | 84.352 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 3692 | 0 | 737.521 | 6.334 | 11.374 | 12.883 | 79.164 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3856 | 0 | 770.143 | 6.217 | 10.143 | 12.142 | 79.164 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.831 | 51.052 | 360 | 0 | 7.082 | 2540.336 | 2558.761 | 2564.455 | 97.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.887 | 34.041 | 240 | 0 | 7.082 | 1694.718 | 1708.666 | 1714.378 | 98.375 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.403 | 25.532 | 180 | 0 | 7.086 | 1270.416 | 1286.353 | 1291.564 | 100.891 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.947 | 17.067 | 120 | 0 | 7.081 | 846.808 | 855.218 | 866.428 | 99.016 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.13 | 14.158 | 100 | 0 | 7.077 | 787.299 | 835.674 | 847.8 | 95.527 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.466 | 8.501 | 60 | 0 | 7.087 | 423.027 | 426.68 | 432.792 | 95.527 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.638 | 5.64 | 40 | 0 | 7.094 | 281.457 | 283.025 | 288.961 | 97.828 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3624 | 0 | 724.623 | 1.335 | 1.476 | 1.777 | 109.273 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.003 | 943 | 0 | 188.573 | 5.257 | 5.418 | 5.73 | 109.652 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.004 | 485 | 0 | 96.886 | 10.28 | 10.401 | 10.668 | 109.652 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.024 | 99 | 0 | 19.789 | 50.483 | 50.643 | 50.701 | 109.652 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.014 | 50 | 0 | 9.945 | 100.484 | 100.619 | 100.663 | 109.652 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.985 | 200.516 | 200.668 | 200.701 | 109.652 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18909 | 0 | 3781.02 | 1.254 | 1.751 | 2.161 | 63.867 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18648 | 0 | 3728.808 | 1.268 | 1.803 | 2.202 | 64.02 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19024 | 0 | 3804.105 | 1.243 | 1.77 | 2.116 | 63.781 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 18260 | 0 | 3650.725 | 1.293 | 2.007 | 2.466 | 63.848 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18563 | 0 | 3711.782 | 1.273 | 1.824 | 2.207 | 65.715 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16374 | 0 | 3273.866 | 1.456 | 2.072 | 2.6 | 65.508 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18436 | 0 | 3686.152 | 1.276 | 1.856 | 2.292 | 66.094 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17255 | 0 | 3450.305 | 1.367 | 2.15 | 2.638 | 68.285 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14164 | 0 | 2832.101 | 1.669 | 2.407 | 3.045 | 77.633 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7743 | 0 | 1547.883 | 3.126 | 4.132 | 5.866 | 69.977 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14271 | 0 | 2853.269 | 1.651 | 2.367 | 3.085 | 76.543 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.038 | 2.002 | 14266 | 0 | 2831.506 | 1.495 | 2.291 | 3.129 | 67.742 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10373 | 0 | 2073.872 | 2.122 | 3.645 | 5.881 | 104.523 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4329 | 0 | 865.025 | 5.641 | 9.213 | 10.659 | 75.504 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 10461 | 0 | 2090.822 | 2.082 | 3.813 | 6.218 | 69.125 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10097 | 0 | 2018.384 | 2.153 | 3.966 | 6.413 | 69.0 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7947 | 0 | 1588.525 | 2.743 | 4.749 | 16.234 | 125.629 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.056 | 2414 | 0 | 481.97 | 10.227 | 16.514 | 19.127 | 78.727 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.002 | 7901 | 0 | 1574.26 | 2.683 | 5.198 | 15.836 | 74.387 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7850 | 0 | 1569.249 | 2.656 | 5.228 | 16.024 | 74.387 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5267 | 0 | 1052.376 | 4.346 | 7.403 | 19.063 | 138.141 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.766 | 1322 | 0 | 263.565 | 18.65 | 30.435 | 34.464 | 78.25 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 5396 | 0 | 1078.383 | 3.96 | 7.66 | 19.092 | 78.172 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5347 | 0 | 1068.645 | 4.114 | 7.605 | 18.846 | 78.242 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 3042 | 0 | 607.369 | 8.116 | 12.912 | 14.537 | 133.359 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.319 | 7.252 | 1000 | 0 | 136.633 | 36.318 | 37.794 | 66.443 | 79.824 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3413 | 0 | 681.581 | 6.903 | 12.345 | 13.759 | 82.012 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3419 | 0 | 682.822 | 6.974 | 12.229 | 13.805 | 82.016 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.904 | 51.055 | 360 | 0 | 7.072 | 2546.747 | 2565.301 | 2568.803 | 100.063 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.941 | 34.053 | 240 | 0 | 7.071 | 1697.142 | 1717.509 | 1726.764 | 103.066 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.471 | 25.548 | 180 | 0 | 7.067 | 1273.321 | 1289.159 | 1292.129 | 103.195 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.969 | 17.015 | 120 | 0 | 7.072 | 848.272 | 857.224 | 858.357 | 103.199 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.182 | 14.209 | 100 | 0 | 7.051 | 816.613 | 849.528 | 851.319 | 109.203 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.48 | 8.519 | 60 | 0 | 7.076 | 423.866 | 427.698 | 428.137 | 109.203 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.652 | 5.649 | 40 | 0 | 7.077 | 282.66 | 284.405 | 284.432 | 109.203 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3644 | 0 | 728.733 | 1.335 | 1.458 | 1.677 | 118.613 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.0 | 944 | 0 | 188.675 | 5.254 | 5.43 | 5.7 | 119.059 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.006 | 485 | 0 | 96.915 | 10.28 | 10.392 | 10.572 | 121.277 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.018 | 99 | 0 | 19.798 | 50.443 | 50.58 | 50.789 | 121.281 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.014 | 50 | 0 | 9.945 | 100.483 | 100.62 | 100.705 | 121.281 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.512 | 200.656 | 200.851 | 121.281 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.188 | 1000 | 0 | 62.077 | 40.981 | 41.962 | 42.421 | 28.777 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.149 | 1000 | 0 | 62.071 | 40.978 | 41.943 | 42.429 | 29.133 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.145 | 1000 | 0 | 62.057 | 40.98 | 41.956 | 42.622 | 29.41 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.172 | 1000 | 0 | 62.115 | 40.978 | 41.571 | 42.339 | 29.508 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.135 | 1000 | 0 | 62.098 | 40.976 | 41.771 | 42.28 | 29.535 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.113 | 1000 | 0 | 62.073 | 40.978 | 41.952 | 42.42 | 29.535 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.097 | 1000 | 0 | 62.074 | 40.978 | 41.95 | 42.279 | 29.594 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.118 | 1000 | 0 | 62.092 | 40.98 | 41.944 | 42.265 | 29.922 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.6 | 13.044 | 1000 | 0 | 68.494 | 40.964 | 41.979 | 42.465 | 29.957 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.108 | 14.186 | 1000 | 0 | 66.191 | 40.967 | 41.964 | 42.909 | 30.043 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13600 | 0 | 2719.062 | 1.012 | 1.777 | 6.038 | 30.535 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.869 | 14.878 | 1000 | 0 | 67.254 | 40.968 | 41.985 | 42.974 | 34.77 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.161 | 7.12 | 1000 | 0 | 109.153 | 40.945 | 42.221 | 43.817 | 34.777 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.656 | 9.107 | 1000 | 0 | 130.61 | 40.879 | 42.214 | 43.322 | 34.777 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9395 | 0 | 1878.326 | 1.327 | 2.728 | 30.254 | 34.992 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.879 | 10.876 | 1000 | 0 | 112.622 | 41.127 | 42.779 | 43.522 | 42.324 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.335 | 11.533 | 1000 | 0 | 88.224 | 41.871 | 42.854 | 44.071 | 39.531 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.319 | 12.819 | 1000 | 0 | 88.349 | 41.898 | 42.847 | 44.365 | 39.531 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.171 | 2.003 | 6963 | 0 | 1346.581 | 1.653 | 3.593 | 48.778 | 39.98 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.028 | 14.235 | 1000 | 0 | 71.287 | 41.955 | 42.995 | 44.207 | 44.824 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.87 | 14.803 | 1000 | 0 | 72.1 | 41.964 | 43.466 | 45.846 | 44.684 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.548 | 14.22 | 1000 | 0 | 68.74 | 41.976 | 43.712 | 45.779 | 44.684 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.014 | 2.004 | 5386 | 0 | 1074.247 | 2.383 | 4.842 | 23.009 | 46.582 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.571 | 15.709 | 1000 | 0 | 64.223 | 42.983 | 45.148 | 46.698 | 53.09 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.83 | 14.848 | 1000 | 0 | 67.431 | 43.599 | 46.649 | 57.554 | 53.09 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.977 | 15.386 | 1000 | 0 | 66.771 | 43.937 | 46.799 | 49.035 | 53.09 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 3390 | 0 | 677.248 | 3.936 | 7.753 | 29.457 | 59.102 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.627 | 16.464 | 1000 | 0 | 60.142 | 45.934 | 49.967 | 61.555 | 65.637 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.005 | 28.782 | 363 | 0 | 12.515 | 241.806 | 242.934 | 19606.181 | 64.344 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.417 | 19.178 | 243 | 0 | 12.515 | 241.736 | 242.882 | 12805.137 | 64.359 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.382 | 183 | 0 | 12.516 | 241.762 | 242.487 | 10027.322 | 64.359 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.583 | 123 | 0 | 12.509 | 241.882 | 242.971 | 5235.322 | 64.363 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.586 | 103 | 0 | 10.48 | 241.571 | 242.821 | 5129.273 | 64.363 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.797 | 63 | 0 | 12.512 | 241.65 | 242.437 | 242.51 | 64.367 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.796 | 42 | 0 | 8.342 | 241.813 | 242.636 | 243.019 | 64.367 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.018 | 122 | 0 | 24.347 | 41.965 | 42.946 | 43.08 | 64.387 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.031 | 114 | 0 | 22.729 | 44.962 | 45.954 | 45.977 | 64.387 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.04 | 97 | 0 | 19.369 | 51.963 | 52.163 | 53.003 | 64.398 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.064 | 2.061 | 56 | 0 | 11.059 | 90.966 | 91.95 | 91.972 | 64.398 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.085 | 36 | 0 | 7.141 | 140.97 | 141.962 | 142.072 | 64.398 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.378 | 21 | 0 | 4.169 | 241.94 | 242.215 | 242.833 | 64.398 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.167 | 1000 | 0 | 62.074 | 40.975 | 41.966 | 42.208 | 28.852 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.141 | 1000 | 0 | 62.062 | 40.974 | 41.946 | 42.416 | 29.273 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.114 | 1000 | 0 | 62.051 | 40.976 | 41.963 | 42.317 | 29.367 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.143 | 1000 | 0 | 62.058 | 40.973 | 41.973 | 42.646 | 29.508 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.12 | 1000 | 0 | 62.029 | 40.979 | 41.965 | 42.397 | 29.574 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.124 | 1000 | 0 | 62.088 | 40.976 | 41.939 | 42.269 | 29.59 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.126 | 1000 | 0 | 62.057 | 40.977 | 41.927 | 42.346 | 29.602 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.157 | 1000 | 0 | 62.078 | 40.977 | 41.958 | 42.398 | 30.172 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.481 | 14.746 | 1000 | 0 | 69.057 | 40.963 | 41.964 | 42.367 | 30.172 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.658 | 13.993 | 1000 | 0 | 73.218 | 40.961 | 41.946 | 42.712 | 30.172 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 13302 | 0 | 2659.727 | 1.027 | 1.864 | 7.701 | 30.559 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.233 | 14.374 | 1000 | 0 | 70.259 | 40.968 | 41.976 | 42.65 | 34.602 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.234 | 8.531 | 1000 | 0 | 121.443 | 40.896 | 42.046 | 42.962 | 34.602 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 6.232 | 8.715 | 1001 | 0 | 160.628 | 1.23 | 41.99 | 43.018 | 34.602 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 10164 | 0 | 2031.452 | 1.234 | 2.504 | 33.873 | 34.73 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.946 | 11.596 | 1000 | 0 | 83.709 | 41.436 | 42.522 | 43.298 | 40.719 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.302 | 13.365 | 1000 | 0 | 88.483 | 41.885 | 42.905 | 45.166 | 40.723 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.549 | 11.845 | 1000 | 0 | 79.69 | 41.916 | 42.929 | 44.027 | 40.727 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7392 | 0 | 1477.482 | 1.649 | 3.289 | 49.868 | 40.727 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.89 | 15.026 | 1000 | 0 | 71.992 | 41.962 | 43.163 | 45.108 | 44.844 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.747 | 15.068 | 1000 | 0 | 67.811 | 41.973 | 43.245 | 45.252 | 44.223 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.475 | 14.849 | 1000 | 0 | 69.085 | 41.984 | 43.937 | 45.444 | 44.223 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.003 | 5062 | 0 | 1011.257 | 2.497 | 5.261 | 26.261 | 45.645 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.656 | 15.778 | 1000 | 0 | 63.871 | 42.994 | 45.683 | 62.126 | 52.082 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.146 | 14.931 | 1000 | 0 | 66.023 | 43.025 | 46.559 | 53.209 | 52.082 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.7 | 14.435 | 1000 | 0 | 68.028 | 43.939 | 46.789 | 49.375 | 52.09 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 3431 | 0 | 685.403 | 4.116 | 7.502 | 28.856 | 58.102 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.419 | 17.025 | 1000 | 0 | 60.906 | 45.07 | 49.999 | 56.829 | 64.609 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.996 | 28.768 | 363 | 0 | 12.519 | 241.586 | 242.955 | 19600.622 | 65.031 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.411 | 19.17 | 243 | 0 | 12.518 | 241.71 | 242.545 | 12797.881 | 65.043 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.38 | 183 | 0 | 12.511 | 241.773 | 243.111 | 10028.408 | 65.051 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.589 | 123 | 0 | 12.522 | 241.459 | 242.375 | 5229.232 | 65.055 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.589 | 103 | 0 | 10.482 | 241.635 | 242.562 | 5135.168 | 65.055 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.793 | 63 | 0 | 12.515 | 241.616 | 242.402 | 242.537 | 65.059 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.795 | 42 | 0 | 8.337 | 241.859 | 242.9 | 243.123 | 65.059 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.367 | 41.968 | 42.11 | 42.938 | 65.125 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.031 | 114 | 0 | 22.715 | 44.969 | 45.969 | 45.995 | 65.176 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.039 | 97 | 0 | 19.366 | 51.964 | 52.296 | 52.969 | 65.258 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.054 | 56 | 0 | 11.052 | 90.975 | 91.977 | 92.434 | 65.273 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.048 | 2.083 | 36 | 0 | 7.132 | 140.983 | 141.977 | 142.005 | 65.273 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.377 | 21 | 0 | 4.164 | 241.963 | 242.088 | 242.767 | 65.273 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.159 | 1000 | 0 | 62.038 | 40.98 | 41.958 | 42.388 | 29.152 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.153 | 1000 | 0 | 62.108 | 40.977 | 41.823 | 42.193 | 29.449 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.135 | 1000 | 0 | 62.082 | 40.979 | 41.943 | 42.227 | 29.547 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.13 | 1000 | 0 | 62.054 | 40.979 | 41.948 | 42.365 | 29.703 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.133 | 1000 | 0 | 62.062 | 40.978 | 41.965 | 42.454 | 29.746 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.127 | 1000 | 0 | 62.08 | 40.978 | 41.927 | 42.384 | 29.746 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.161 | 1000 | 0 | 62.104 | 40.977 | 41.97 | 42.36 | 29.762 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.14 | 1000 | 0 | 62.064 | 40.978 | 41.949 | 42.259 | 30.34 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.191 | 13.857 | 1000 | 0 | 70.468 | 40.965 | 41.969 | 42.29 | 30.34 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.866 | 14.285 | 1000 | 0 | 67.269 | 40.965 | 41.958 | 42.211 | 30.34 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 13377 | 0 | 2674.715 | 1.028 | 1.829 | 6.831 | 30.699 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.958 | 14.432 | 1000 | 0 | 66.853 | 40.97 | 41.998 | 42.962 | 35.395 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.446 | 7.524 | 1001 | 0 | 118.518 | 40.923 | 42.138 | 43.774 | 35.402 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.647 | 6.387 | 1000 | 0 | 130.773 | 40.924 | 42.436 | 43.496 | 35.402 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9844 | 0 | 1968.152 | 1.282 | 2.649 | 40.839 | 35.402 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.506 | 12.45 | 1000 | 0 | 95.186 | 41.427 | 42.577 | 43.525 | 41.625 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.263 | 10.807 | 1000 | 0 | 81.546 | 41.92 | 42.715 | 44.405 | 41.625 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.983 | 11.643 | 1000 | 0 | 91.052 | 41.902 | 42.901 | 44.085 | 41.625 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.039 | 2.003 | 7202 | 0 | 1429.141 | 1.634 | 3.328 | 81.673 | 41.703 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.154 | 14.066 | 1000 | 0 | 76.025 | 41.961 | 43.263 | 46.624 | 46.973 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.154 | 14.637 | 1000 | 0 | 70.65 | 41.957 | 43.396 | 45.947 | 44.918 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.801 | 14.857 | 1000 | 0 | 72.461 | 41.978 | 43.781 | 45.824 | 44.918 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.179 | 5130 | 0 | 1025.201 | 2.462 | 5.172 | 36.963 | 47.18 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.419 | 16.08 | 1000 | 0 | 64.854 | 42.972 | 44.954 | 46.813 | 57.18 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.619 | 14.497 | 1000 | 0 | 68.405 | 42.99 | 45.933 | 47.452 | 57.18 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.837 | 15.287 | 1000 | 0 | 67.4 | 43.924 | 46.999 | 66.402 | 57.18 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3511 | 0 | 701.411 | 3.976 | 7.43 | 10.738 | 61.188 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.571 | 17.038 | 1000 | 0 | 60.348 | 44.987 | 49.55 | 51.842 | 65.695 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.008 | 28.763 | 363 | 0 | 12.514 | 241.803 | 242.99 | 19608.115 | 66.164 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.412 | 19.17 | 243 | 0 | 12.518 | 241.709 | 242.809 | 12804.122 | 66.172 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.385 | 183 | 0 | 12.517 | 241.687 | 242.96 | 10022.171 | 66.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.583 | 123 | 0 | 12.517 | 241.728 | 242.372 | 5232.994 | 66.188 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.595 | 103 | 0 | 10.479 | 241.755 | 242.542 | 5134.743 | 66.188 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.797 | 63 | 0 | 12.513 | 241.49 | 242.688 | 242.886 | 66.188 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.804 | 42 | 0 | 8.339 | 241.757 | 242.972 | 242.978 | 66.188 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.018 | 122 | 0 | 24.362 | 41.97 | 42.316 | 42.985 | 66.211 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.023 | 2.03 | 114 | 0 | 22.696 | 44.972 | 45.962 | 45.99 | 66.262 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.038 | 97 | 0 | 19.362 | 51.963 | 52.926 | 52.972 | 66.273 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.057 | 56 | 0 | 11.041 | 90.977 | 92.013 | 92.149 | 66.285 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.053 | 2.084 | 36 | 0 | 7.125 | 140.977 | 142.158 | 142.677 | 66.289 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.381 | 21 | 0 | 4.168 | 241.948 | 241.991 | 242.014 | 66.289 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19141 | 0 | 3827.409 | 1.231 | 1.751 | 2.238 | 67.672 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18898 | 0 | 3779.014 | 1.249 | 1.768 | 2.247 | 68.051 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 19033 | 0 | 3805.813 | 1.239 | 1.769 | 2.238 | 67.82 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19048 | 0 | 3808.996 | 1.237 | 1.796 | 2.247 | 67.945 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18756 | 0 | 3750.385 | 1.257 | 1.816 | 2.28 | 69.91 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16617 | 0 | 3322.771 | 1.431 | 2.033 | 2.617 | 70.012 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18684 | 0 | 3736.17 | 1.258 | 1.85 | 2.328 | 70.074 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18489 | 0 | 3696.924 | 1.272 | 1.893 | 2.32 | 72.605 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14329 | 0 | 2865.023 | 1.649 | 2.333 | 3.13 | 81.484 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7836 | 0 | 1566.451 | 3.093 | 4.009 | 5.85 | 76.051 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14307 | 0 | 2860.476 | 1.652 | 2.29 | 3.133 | 81.355 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.027 | 2.014 | 14525 | 0 | 2889.362 | 1.182 | 1.935 | 41.035 | 72.727 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10325 | 0 | 2064.274 | 2.075 | 3.822 | 6.028 | 103.32 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4346 | 0 | 868.248 | 5.601 | 9.302 | 10.807 | 87.039 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10307 | 0 | 2060.571 | 2.09 | 3.855 | 6.003 | 83.77 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 10418 | 0 | 2082.338 | 2.061 | 3.774 | 5.63 | 83.957 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7779 | 0 | 1555.112 | 2.685 | 5.077 | 20.405 | 117.586 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.058 | 2455 | 0 | 490.108 | 10.125 | 11.669 | 18.902 | 81.801 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 2.003 | 8204 | 0 | 1635.768 | 2.541 | 4.844 | 20.032 | 82.719 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.006 | 7876 | 0 | 1574.393 | 2.673 | 5.075 | 20.28 | 82.781 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.011 | 5194 | 0 | 1038.119 | 4.071 | 7.693 | 23.615 | 129.457 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.768 | 1311 | 0 | 261.351 | 18.831 | 30.099 | 34.973 | 84.324 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5358 | 0 | 1070.832 | 3.971 | 7.518 | 23.488 | 82.68 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5231 | 0 | 1045.444 | 4.073 | 7.52 | 23.452 | 82.742 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3488 | 0 | 696.603 | 6.925 | 11.343 | 12.988 | 100.715 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.273 | 7.233 | 1000 | 0 | 137.504 | 36.128 | 44.683 | 66.329 | 86.824 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3445 | 0 | 687.945 | 6.863 | 12.11 | 13.736 | 87.617 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3315 | 0 | 662.108 | 7.207 | 11.775 | 14.37 | 87.617 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.857 | 50.864 | 360 | 0 | 7.079 | 2542.411 | 2544.492 | 2545.161 | 103.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.895 | 33.892 | 240 | 0 | 7.081 | 1694.317 | 1697.695 | 1698.171 | 104.145 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.429 | 25.42 | 180 | 0 | 7.079 | 1271.225 | 1274.455 | 1276.164 | 107.188 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.951 | 16.957 | 120 | 0 | 7.079 | 847.316 | 851.053 | 851.29 | 107.211 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.186 | 14.126 | 100 | 0 | 7.049 | 840.079 | 847.71 | 847.924 | 107.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.477 | 8.477 | 60 | 0 | 7.078 | 423.79 | 424.974 | 425.954 | 112.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.649 | 5.649 | 40 | 0 | 7.081 | 282.359 | 282.69 | 282.713 | 112.961 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.001 | 1902 | 0 | 380.206 | 2.628 | 2.771 | 3.071 | 118.273 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.004 | 568 | 0 | 113.531 | 8.76 | 8.894 | 9.071 | 120.063 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.003 | 406 | 0 | 81.069 | 12.289 | 12.418 | 12.648 | 120.063 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.049 | 2.022 | 100 | 0 | 19.806 | 50.438 | 50.57 | 50.598 | 120.063 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.013 | 50 | 0 | 9.944 | 100.468 | 100.697 | 100.826 | 120.063 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.007 | 25 | 0 | 4.987 | 200.454 | 200.572 | 200.59 | 120.063 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19044 | 0 | 3808.025 | 1.238 | 1.766 | 2.229 | 67.957 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18553 | 0 | 3709.494 | 1.269 | 1.854 | 2.331 | 68.453 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 19027 | 0 | 3804.743 | 1.238 | 1.776 | 2.284 | 68.566 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18670 | 0 | 3733.324 | 1.262 | 1.86 | 2.324 | 68.906 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18785 | 0 | 3756.079 | 1.253 | 1.815 | 2.278 | 70.59 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16471 | 0 | 3293.457 | 1.439 | 2.081 | 2.659 | 70.781 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18781 | 0 | 3755.435 | 1.254 | 1.831 | 2.312 | 70.816 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18508 | 0 | 3700.991 | 1.27 | 1.912 | 2.354 | 72.758 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14315 | 0 | 2862.277 | 1.647 | 2.333 | 3.122 | 82.023 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7744 | 0 | 1548.018 | 3.123 | 4.586 | 5.964 | 77.078 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14078 | 0 | 2814.875 | 1.674 | 2.411 | 3.189 | 81.824 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.04 | 14449 | 0 | 2880.1 | 1.263 | 2.019 | 3.6 | 72.633 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9969 | 0 | 1993.161 | 2.12 | 3.938 | 6.638 | 101.488 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4263 | 0 | 851.683 | 5.657 | 9.367 | 10.969 | 81.43 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9964 | 0 | 1992.092 | 2.092 | 4.054 | 6.48 | 74.859 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10258 | 0 | 2050.89 | 2.066 | 3.854 | 6.18 | 74.805 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 7841 | 0 | 1567.477 | 2.648 | 5.043 | 21.343 | 116.82 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.061 | 2391 | 0 | 477.398 | 10.32 | 16.394 | 19.634 | 98.348 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7840 | 0 | 1567.449 | 2.6 | 5.192 | 21.441 | 94.34 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 7848 | 0 | 1568.994 | 2.601 | 5.035 | 21.478 | 94.406 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5269 | 0 | 1052.698 | 4.017 | 7.597 | 24.856 | 135.816 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 3.774 | 1312 | 0 | 261.364 | 18.878 | 29.979 | 34.778 | 105.781 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5275 | 0 | 1053.908 | 4.023 | 7.673 | 24.838 | 104.027 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5204 | 0 | 1040.098 | 4.086 | 7.635 | 24.352 | 104.09 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3335 | 0 | 666.195 | 7.133 | 12.159 | 13.851 | 118.563 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.308 | 7.229 | 1000 | 0 | 136.843 | 36.139 | 39.657 | 66.762 | 116.355 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.006 | 3482 | 0 | 695.163 | 6.72 | 11.967 | 13.717 | 113.793 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3487 | 0 | 696.602 | 6.815 | 11.639 | 13.771 | 113.793 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.86 | 50.861 | 360 | 0 | 7.078 | 2542.594 | 2546.768 | 2547.289 | 131.91 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.899 | 33.898 | 240 | 0 | 7.08 | 1694.665 | 1698.187 | 1698.654 | 133.238 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.427 | 25.423 | 180 | 0 | 7.079 | 1270.968 | 1274.477 | 1275.045 | 133.426 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.951 | 16.949 | 120 | 0 | 7.079 | 847.287 | 850.686 | 851.411 | 133.488 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.128 | 14.127 | 100 | 0 | 7.078 | 840.106 | 847.866 | 848.178 | 133.488 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.477 | 8.476 | 60 | 0 | 7.078 | 423.701 | 425.239 | 425.518 | 133.488 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.648 | 5.649 | 40 | 0 | 7.082 | 282.352 | 282.701 | 282.715 | 133.488 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1898 | 0 | 379.497 | 2.634 | 2.771 | 3.067 | 135.762 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.003 | 567 | 0 | 113.331 | 8.782 | 8.902 | 9.075 | 117.582 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.008 | 404 | 0 | 80.791 | 12.335 | 12.455 | 12.608 | 119.328 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.019 | 100 | 0 | 19.81 | 50.419 | 50.538 | 50.586 | 119.328 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.013 | 50 | 0 | 9.948 | 100.447 | 100.609 | 100.887 | 119.328 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.487 | 200.826 | 200.891 | 119.328 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18808 | 0 | 3761.005 | 1.251 | 1.796 | 2.298 | 67.777 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18605 | 0 | 3720.301 | 1.266 | 1.786 | 2.276 | 67.887 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18967 | 0 | 3792.566 | 1.243 | 1.763 | 2.253 | 68.16 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18820 | 0 | 3763.095 | 1.252 | 1.833 | 2.289 | 68.527 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18694 | 0 | 3737.78 | 1.261 | 1.8 | 2.314 | 70.09 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16337 | 0 | 3266.679 | 1.453 | 2.041 | 2.673 | 70.414 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18677 | 0 | 3734.634 | 1.261 | 1.801 | 2.328 | 70.492 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18490 | 0 | 3697.261 | 1.271 | 1.883 | 2.35 | 72.629 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14281 | 0 | 2855.451 | 1.661 | 2.233 | 3.072 | 81.891 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7703 | 0 | 1539.786 | 3.161 | 3.948 | 5.932 | 76.512 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14167 | 0 | 2832.681 | 1.683 | 2.173 | 3.07 | 81.344 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 2.001 | 14234 | 0 | 2837.814 | 1.338 | 2.046 | 3.544 | 71.488 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10180 | 0 | 2035.354 | 2.103 | 3.785 | 6.382 | 107.414 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4324 | 0 | 863.906 | 5.601 | 9.399 | 10.863 | 81.191 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10230 | 0 | 2045.266 | 2.1 | 3.865 | 6.132 | 73.473 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 10084 | 0 | 2015.979 | 2.113 | 3.878 | 6.153 | 73.66 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7726 | 0 | 1544.513 | 2.658 | 5.132 | 22.577 | 115.172 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.048 | 2409 | 0 | 480.928 | 10.292 | 16.625 | 19.091 | 84.695 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 7869 | 0 | 1573.173 | 2.612 | 5.093 | 22.557 | 76.957 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7790 | 0 | 1557.268 | 2.653 | 5.161 | 22.378 | 77.105 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5261 | 0 | 1051.553 | 3.98 | 7.615 | 25.646 | 124.539 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.732 | 1326 | 0 | 264.21 | 18.726 | 26.839 | 34.831 | 86.359 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.015 | 5273 | 0 | 1053.926 | 3.98 | 7.658 | 25.849 | 83.453 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.041 | 2.005 | 5217 | 0 | 1034.926 | 4.047 | 7.697 | 25.502 | 83.516 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3524 | 0 | 703.971 | 6.731 | 11.108 | 12.631 | 96.434 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.172 | 7.172 | 1000 | 0 | 139.425 | 35.508 | 38.033 | 64.949 | 88.895 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3609 | 0 | 720.966 | 6.525 | 11.711 | 13.023 | 89.117 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3575 | 0 | 713.822 | 6.661 | 11.339 | 13.012 | 89.117 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.86 | 50.86 | 360 | 0 | 7.078 | 2542.487 | 2545.551 | 2547.319 | 106.473 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.895 | 33.893 | 240 | 0 | 7.081 | 1694.516 | 1697.699 | 1697.987 | 107.602 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.426 | 25.423 | 180 | 0 | 7.079 | 1271.08 | 1274.832 | 1275.306 | 108.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.95 | 16.951 | 120 | 0 | 7.08 | 847.359 | 849.08 | 849.284 | 108.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.185 | 14.126 | 100 | 0 | 7.05 | 844.048 | 847.748 | 847.931 | 108.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.476 | 8.477 | 60 | 0 | 7.078 | 423.827 | 424.872 | 425.907 | 108.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.649 | 5.649 | 40 | 0 | 7.081 | 282.375 | 282.666 | 282.853 | 108.102 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1906 | 0 | 381.033 | 2.631 | 2.754 | 2.987 | 114.641 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.008 | 566 | 0 | 113.02 | 8.788 | 9.064 | 9.357 | 115.578 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 405 | 0 | 80.984 | 12.307 | 12.436 | 12.631 | 116.641 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.023 | 100 | 0 | 19.809 | 50.426 | 50.562 | 50.703 | 116.641 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.012 | 50 | 0 | 9.949 | 100.433 | 100.591 | 100.756 | 116.641 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.473 | 200.595 | 200.747 | 116.641 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

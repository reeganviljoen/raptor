# Puma vs Raptor Simulation

Run ID: `20261026-033456`

## Environment

- Ruby: `ruby 4.0.9 (2026-10-23 revision 3e93b23afc) +PRISM [aarch64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.148 | 1000 | 0 | 61.968 | 40.98 | 41.974 | 42.54 | 28.367 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.144 | 1000 | 0 | 62.061 | 40.977 | 41.939 | 42.459 | 28.379 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.107 | 1000 | 0 | 62.039 | 40.981 | 41.969 | 42.291 | 28.379 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.148 | 1000 | 0 | 62.061 | 40.983 | 41.899 | 42.43 | 28.43 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.113 | 1000 | 0 | 62.105 | 40.981 | 41.946 | 42.136 | 28.477 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.123 | 1000 | 0 | 62.097 | 40.977 | 41.936 | 42.255 | 28.477 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.135 | 1000 | 0 | 62.048 | 40.976 | 41.956 | 42.398 | 28.48 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.164 | 1000 | 0 | 62.067 | 40.979 | 41.832 | 42.392 | 28.914 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.793 | 14.713 | 1000 | 0 | 67.599 | 40.965 | 41.959 | 42.191 | 28.914 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.272 | 14.849 | 1000 | 0 | 65.479 | 40.968 | 41.963 | 42.335 | 28.945 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 13348 | 0 | 2668.823 | 1.024 | 1.848 | 7.287 | 29.207 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.866 | 14.514 | 1000 | 0 | 67.267 | 40.969 | 41.979 | 42.912 | 34.797 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.514 | 9.391 | 1000 | 0 | 79.913 | 41.008 | 42.074 | 42.837 | 34.797 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.714 | 10.569 | 1000 | 0 | 72.916 | 40.989 | 42.147 | 42.985 | 34.797 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10338 | 0 | 2066.671 | 1.247 | 2.509 | 32.689 | 34.797 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.345 | 13.072 | 1000 | 0 | 81.006 | 41.893 | 42.906 | 43.324 | 44.727 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.841 | 13.366 | 1000 | 0 | 77.877 | 41.943 | 42.925 | 43.921 | 44.727 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.402 | 14.619 | 1000 | 0 | 74.616 | 41.949 | 43.035 | 44.115 | 44.727 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.116 | 7228 | 0 | 1444.886 | 1.657 | 3.425 | 77.727 | 44.727 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.613 | 14.997 | 1000 | 0 | 68.434 | 41.967 | 43.06 | 44.082 | 52.477 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.641 | 15.421 | 1000 | 0 | 68.301 | 41.998 | 44.027 | 46.767 | 52.477 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.664 | 15.497 | 1000 | 0 | 68.193 | 42.036 | 44.18 | 48.582 | 52.477 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 5539 | 0 | 1106.712 | 2.356 | 4.789 | 15.662 | 52.723 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.868 | 16.366 | 1000 | 0 | 63.02 | 43.016 | 45.171 | 46.997 | 57.137 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.333 | 16.276 | 1000 | 0 | 65.218 | 43.962 | 46.466 | 48.51 | 57.137 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.459 | 16.245 | 1000 | 0 | 64.688 | 43.997 | 47.497 | 49.457 | 57.137 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 3662 | 0 | 731.63 | 3.803 | 6.91 | 12.41 | 64.066 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.987 | 17.328 | 1000 | 0 | 58.87 | 45.842 | 49.876 | 51.736 | 75.695 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.997 | 28.759 | 363 | 0 | 12.518 | 241.614 | 243.028 | 19601.112 | 75.906 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.174 | 243 | 0 | 12.512 | 241.745 | 243.048 | 12801.67 | 75.922 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.384 | 183 | 0 | 12.513 | 241.716 | 242.834 | 10021.258 | 75.934 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.593 | 123 | 0 | 12.514 | 241.738 | 242.722 | 5228.867 | 75.938 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.585 | 103 | 0 | 10.475 | 241.886 | 242.665 | 5133.058 | 75.941 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.79 | 63 | 0 | 12.506 | 241.707 | 242.291 | 243.023 | 75.953 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.8 | 42 | 0 | 8.334 | 241.908 | 242.974 | 243.073 | 75.957 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.021 | 122 | 0 | 24.373 | 41.963 | 42.141 | 42.856 | 75.977 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.045 | 110 | 0 | 21.796 | 46.964 | 47.954 | 47.988 | 75.977 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.037 | 98 | 0 | 19.593 | 51.067 | 51.996 | 52.141 | 76.031 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.023 | 2.075 | 55 | 0 | 10.95 | 91.946 | 92.622 | 94.243 | 76.031 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.09 | 36 | 0 | 7.104 | 141.952 | 142.112 | 142.66 | 76.031 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.378 | 21 | 0 | 4.164 | 241.96 | 242.395 | 242.412 | 76.031 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.129 | 1000 | 0 | 62.057 | 40.979 | 41.966 | 42.471 | 27.652 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.13 | 1000 | 0 | 62.066 | 40.975 | 41.962 | 42.307 | 27.883 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.123 | 1000 | 0 | 62.063 | 40.979 | 41.938 | 42.325 | 27.902 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.123 | 1000 | 0 | 62.093 | 40.977 | 41.946 | 42.249 | 27.957 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.117 | 1000 | 0 | 62.085 | 40.977 | 41.955 | 42.367 | 27.957 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.118 | 1000 | 0 | 62.05 | 40.981 | 41.947 | 42.258 | 27.98 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.108 | 1000 | 0 | 62.101 | 40.978 | 41.964 | 42.289 | 28.0 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.127 | 1000 | 0 | 62.085 | 40.975 | 41.947 | 42.251 | 28.684 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.845 | 13.905 | 1000 | 0 | 77.85 | 40.958 | 41.96 | 42.939 | 28.684 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.857 | 13.907 | 1000 | 0 | 72.165 | 40.958 | 41.962 | 42.23 | 28.824 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11554 | 0 | 2310.08 | 1.157 | 2.294 | 7.131 | 29.184 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.036 | 12.818 | 1000 | 0 | 66.509 | 40.988 | 42.057 | 42.959 | 35.094 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.18 | 8.992 | 1000 | 0 | 98.228 | 41.073 | 42.461 | 43.371 | 35.094 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.0 | 10.52 | 1000 | 0 | 111.116 | 41.052 | 42.63 | 43.634 | 35.094 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.002 | 9100 | 0 | 1816.586 | 1.41 | 2.946 | 46.099 | 35.16 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.402 | 11.513 | 1000 | 0 | 74.617 | 41.916 | 42.939 | 43.809 | 39.953 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.704 | 13.364 | 1000 | 0 | 72.971 | 41.935 | 42.932 | 43.48 | 39.953 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.368 | 14.067 | 1000 | 0 | 80.856 | 41.938 | 43.192 | 44.164 | 39.953 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7160 | 0 | 1431.179 | 1.733 | 3.571 | 34.257 | 39.953 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.093 | 15.188 | 1000 | 0 | 70.955 | 41.978 | 43.661 | 44.613 | 45.992 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.985 | 15.225 | 1000 | 0 | 71.508 | 42.748 | 44.838 | 47.026 | 43.848 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.05 | 15.28 | 1000 | 0 | 71.177 | 42.919 | 44.906 | 46.399 | 43.848 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5262 | 0 | 1051.523 | 2.521 | 5.008 | 16.431 | 46.133 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.69 | 16.402 | 1000 | 0 | 63.733 | 42.99 | 45.212 | 46.906 | 54.211 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.744 | 15.372 | 1000 | 0 | 63.516 | 43.976 | 47.508 | 49.424 | 54.211 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.29 | 15.577 | 1000 | 0 | 65.402 | 43.983 | 47.021 | 49.331 | 54.211 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.007 | 3450 | 0 | 688.83 | 4.034 | 7.552 | 22.589 | 60.223 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.983 | 17.397 | 1000 | 0 | 58.881 | 45.044 | 50.231 | 52.01 | 84.617 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.004 | 28.761 | 363 | 0 | 12.516 | 241.745 | 242.942 | 19606.66 | 83.926 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.422 | 19.174 | 243 | 0 | 12.511 | 241.782 | 243.21 | 12808.763 | 83.965 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.62 | 14.38 | 183 | 0 | 12.517 | 241.696 | 242.976 | 10023.218 | 83.988 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.587 | 123 | 0 | 12.512 | 241.724 | 242.516 | 5231.782 | 83.988 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.589 | 103 | 0 | 10.481 | 241.699 | 242.641 | 5128.771 | 83.992 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.791 | 63 | 0 | 12.504 | 241.786 | 242.832 | 243.506 | 84.0 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.795 | 42 | 0 | 8.347 | 241.707 | 242.189 | 242.212 | 84.0 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.361 | 41.97 | 42.221 | 42.948 | 84.008 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.022 | 109 | 0 | 21.791 | 46.965 | 47.123 | 48.006 | 84.031 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.033 | 98 | 0 | 19.577 | 51.005 | 52.174 | 52.976 | 84.031 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.065 | 55 | 0 | 10.967 | 91.956 | 92.706 | 92.96 | 84.047 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.059 | 2.091 | 36 | 0 | 7.116 | 141.911 | 142.045 | 142.056 | 84.078 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.378 | 21 | 0 | 4.167 | 241.939 | 242.236 | 242.783 | 84.078 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.131 | 1000 | 0 | 62.038 | 40.979 | 41.975 | 42.32 | 27.625 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.147 | 1000 | 0 | 62.041 | 40.978 | 41.976 | 42.31 | 27.863 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.146 | 1000 | 0 | 62.065 | 40.977 | 41.936 | 42.335 | 27.883 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.168 | 1000 | 0 | 62.025 | 40.98 | 41.966 | 42.362 | 27.949 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.136 | 1000 | 0 | 62.057 | 40.977 | 41.932 | 42.282 | 27.949 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.15 | 1000 | 0 | 62.082 | 40.978 | 41.756 | 42.151 | 27.949 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.128 | 1000 | 0 | 62.071 | 40.977 | 41.881 | 42.259 | 27.953 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.169 | 1000 | 0 | 62.01 | 40.978 | 41.965 | 42.26 | 28.633 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.137 | 14.238 | 1000 | 0 | 66.064 | 40.955 | 41.958 | 42.673 | 28.75 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.966 | 14.153 | 1000 | 0 | 66.816 | 40.963 | 41.961 | 42.716 | 28.75 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 12663 | 0 | 2531.877 | 1.063 | 2.074 | 6.637 | 29.129 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.504 | 12.984 | 1000 | 0 | 68.946 | 40.974 | 42.012 | 42.954 | 33.34 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.048 | 8.409 | 1000 | 0 | 110.524 | 41.075 | 42.263 | 43.174 | 33.34 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.087 | 9.055 | 1000 | 0 | 99.137 | 41.043 | 42.661 | 43.311 | 33.34 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8731 | 0 | 1745.383 | 1.451 | 3.09 | 41.153 | 33.34 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.25 | 13.232 | 1000 | 0 | 75.473 | 41.924 | 42.921 | 43.517 | 39.461 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.767 | 13.802 | 1000 | 0 | 78.328 | 41.931 | 42.954 | 43.737 | 39.254 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.287 | 13.481 | 1000 | 0 | 75.263 | 41.929 | 42.934 | 44.29 | 39.254 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.187 | 6794 | 0 | 1358.293 | 1.751 | 3.618 | 65.678 | 40.172 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.019 | 14.743 | 1000 | 0 | 71.331 | 41.975 | 43.816 | 44.878 | 45.988 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.906 | 13.914 | 1000 | 0 | 71.913 | 42.866 | 44.778 | 46.159 | 45.988 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.301 | 15.074 | 1000 | 0 | 69.923 | 42.916 | 44.635 | 47.181 | 45.988 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5073 | 0 | 1013.697 | 2.538 | 5.218 | 22.193 | 48.516 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.55 | 16.098 | 1000 | 0 | 64.31 | 42.988 | 45.252 | 50.893 | 53.465 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.061 | 15.849 | 1000 | 0 | 66.396 | 43.969 | 47.093 | 49.567 | 53.465 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.32 | 15.86 | 1000 | 0 | 65.274 | 43.98 | 47.014 | 50.674 | 53.465 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3402 | 0 | 679.409 | 4.032 | 7.555 | 20.249 | 59.477 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.212 | 17.354 | 1000 | 0 | 61.683 | 45.465 | 49.749 | 51.497 | 84.355 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.016 | 28.764 | 363 | 0 | 12.51 | 241.846 | 242.983 | 19621.634 | 84.625 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.429 | 19.176 | 243 | 0 | 12.507 | 241.932 | 242.998 | 12808.769 | 84.652 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.379 | 183 | 0 | 12.51 | 241.782 | 243.093 | 10031.388 | 84.668 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.589 | 123 | 0 | 12.508 | 241.84 | 242.555 | 5234.196 | 84.684 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.589 | 103 | 0 | 10.485 | 241.568 | 242.797 | 5129.11 | 84.691 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.793 | 63 | 0 | 12.505 | 241.756 | 242.87 | 243.237 | 84.707 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.797 | 42 | 0 | 8.343 | 241.377 | 242.623 | 242.96 | 84.711 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.018 | 122 | 0 | 24.319 | 41.971 | 42.944 | 42.979 | 84.711 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.034 | 110 | 0 | 21.913 | 46.931 | 47.945 | 48.056 | 84.805 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.037 | 98 | 0 | 19.573 | 51.088 | 52.01 | 52.13 | 84.805 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.074 | 55 | 0 | 10.965 | 91.966 | 92.116 | 92.951 | 84.816 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.09 | 36 | 0 | 7.107 | 141.948 | 142.301 | 142.983 | 84.82 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.381 | 21 | 0 | 4.166 | 241.936 | 242.911 | 242.964 | 84.82 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18420 | 0 | 3683.058 | 1.288 | 1.812 | 2.206 | 63.637 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17816 | 0 | 3562.27 | 1.326 | 1.893 | 2.342 | 63.727 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18509 | 0 | 3700.749 | 1.279 | 1.82 | 2.257 | 63.582 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17865 | 0 | 3572.218 | 1.326 | 2.023 | 2.501 | 64.043 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18238 | 0 | 3646.817 | 1.299 | 1.868 | 2.309 | 65.445 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15843 | 0 | 3167.938 | 1.496 | 2.179 | 2.757 | 66.156 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17772 | 0 | 3553.596 | 1.338 | 1.881 | 2.394 | 68.957 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17134 | 0 | 3426.038 | 1.381 | 2.141 | 2.582 | 70.254 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13780 | 0 | 2755.36 | 1.705 | 2.595 | 3.194 | 82.148 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7607 | 0 | 1520.611 | 3.177 | 4.401 | 6.002 | 73.301 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13701 | 0 | 2739.271 | 1.702 | 2.769 | 3.309 | 81.453 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.037 | 2.001 | 14248 | 0 | 2828.642 | 1.452 | 2.274 | 3.137 | 71.996 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10770 | 0 | 2153.268 | 2.083 | 3.395 | 5.055 | 110.402 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4313 | 0 | 861.74 | 5.553 | 9.737 | 10.851 | 78.449 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10865 | 0 | 2172.299 | 2.014 | 3.688 | 5.196 | 70.797 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10824 | 0 | 2164.068 | 2.044 | 3.671 | 5.124 | 70.672 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8230 | 0 | 1645.311 | 2.689 | 4.519 | 13.457 | 133.039 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.092 | 2430 | 0 | 485.254 | 9.877 | 17.391 | 19.23 | 82.531 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8184 | 0 | 1636.153 | 2.593 | 4.96 | 13.621 | 74.016 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8269 | 0 | 1652.88 | 2.607 | 4.942 | 13.606 | 74.016 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5589 | 0 | 1117.019 | 4.093 | 6.731 | 16.584 | 156.25 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.801 | 1308 | 0 | 260.634 | 18.547 | 31.175 | 34.648 | 122.961 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5628 | 0 | 1124.73 | 3.863 | 7.259 | 17.154 | 121.742 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5528 | 0 | 1104.844 | 3.956 | 7.451 | 16.347 | 121.742 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3329 | 0 | 664.877 | 7.357 | 11.888 | 13.585 | 224.984 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.376 | 7.2 | 1000 | 0 | 135.574 | 36.464 | 59.498 | 66.902 | 198.781 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3724 | 0 | 743.877 | 6.334 | 11.281 | 12.295 | 147.695 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3632 | 0 | 725.437 | 6.573 | 11.529 | 12.837 | 147.695 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.872 | 51.059 | 360 | 0 | 7.077 | 2542.689 | 2559.509 | 2578.463 | 166.609 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.91 | 34.036 | 240 | 0 | 7.078 | 1694.919 | 1711.465 | 1718.123 | 171.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.418 | 25.522 | 180 | 0 | 7.082 | 1271.457 | 1281.719 | 1284.908 | 171.332 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.951 | 17.027 | 120 | 0 | 7.079 | 847.302 | 855.55 | 864.648 | 171.398 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.193 | 14.202 | 100 | 0 | 7.046 | 815.798 | 848.922 | 849.988 | 171.402 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.472 | 8.513 | 60 | 0 | 7.082 | 423.438 | 427.999 | 433.496 | 171.402 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.652 | 5.653 | 40 | 0 | 7.077 | 282.594 | 284.434 | 285.181 | 171.406 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3668 | 0 | 733.499 | 1.326 | 1.456 | 1.695 | 177.496 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.001 | 946 | 0 | 189.061 | 5.245 | 5.389 | 5.702 | 177.813 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.002 | 485 | 0 | 96.833 | 10.287 | 10.409 | 10.54 | 182.156 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.049 | 2.024 | 100 | 0 | 19.808 | 50.425 | 50.584 | 50.621 | 182.156 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.017 | 50 | 0 | 9.939 | 100.547 | 100.704 | 100.782 | 182.156 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.009 | 25 | 0 | 4.983 | 200.6 | 200.692 | 200.713 | 182.156 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18098 | 0 | 3618.826 | 1.304 | 1.841 | 2.287 | 63.73 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17975 | 0 | 3594.231 | 1.321 | 1.844 | 2.308 | 63.969 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17928 | 0 | 3584.407 | 1.322 | 1.884 | 2.245 | 63.984 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17540 | 0 | 3506.918 | 1.357 | 2.079 | 2.497 | 64.344 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17511 | 0 | 3501.213 | 1.348 | 1.954 | 2.404 | 65.855 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15507 | 0 | 3100.517 | 1.533 | 2.2 | 2.737 | 66.148 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17425 | 0 | 3484.361 | 1.353 | 1.993 | 2.435 | 66.191 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15607 | 0 | 3120.619 | 1.517 | 2.359 | 2.951 | 68.457 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13363 | 0 | 2671.796 | 1.761 | 2.688 | 3.261 | 77.133 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7333 | 0 | 1465.894 | 3.261 | 5.4 | 6.297 | 71.914 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13298 | 0 | 2658.852 | 1.746 | 2.91 | 3.43 | 76.758 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.04 | 2.001 | 13554 | 0 | 2689.407 | 1.581 | 2.477 | 3.286 | 67.961 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10165 | 0 | 2032.235 | 2.178 | 3.672 | 5.868 | 96.035 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3990 | 0 | 797.046 | 5.983 | 9.951 | 11.393 | 76.418 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10020 | 0 | 2003.128 | 2.146 | 3.996 | 6.366 | 71.867 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9891 | 0 | 1977.416 | 2.19 | 4.04 | 6.426 | 71.805 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.002 | 7835 | 0 | 1565.019 | 2.798 | 4.848 | 15.237 | 118.875 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.127 | 2343 | 0 | 467.686 | 10.375 | 17.861 | 19.831 | 80.879 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7754 | 0 | 1549.835 | 2.694 | 5.299 | 15.043 | 74.059 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7649 | 0 | 1529.102 | 2.754 | 5.376 | 15.793 | 74.059 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5112 | 0 | 1021.694 | 4.517 | 7.523 | 18.474 | 129.18 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.869 | 1278 | 0 | 254.794 | 18.991 | 32.803 | 35.699 | 79.164 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5266 | 0 | 1052.445 | 4.034 | 7.831 | 18.842 | 74.797 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5048 | 0 | 1008.788 | 4.227 | 8.205 | 19.5 | 74.801 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 2837 | 0 | 566.584 | 8.711 | 13.708 | 15.55 | 105.16 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.593 | 7.473 | 1000 | 0 | 131.694 | 37.654 | 58.434 | 68.612 | 83.238 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3338 | 0 | 666.761 | 6.956 | 12.859 | 14.286 | 77.301 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3408 | 0 | 680.825 | 6.954 | 12.358 | 13.589 | 77.305 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.981 | 51.073 | 360 | 0 | 7.061 | 2548.733 | 2572.63 | 2585.552 | 96.406 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.976 | 34.046 | 240 | 0 | 7.064 | 1698.157 | 1711.732 | 1723.478 | 101.719 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.478 | 25.506 | 180 | 0 | 7.065 | 1274.106 | 1288.166 | 1298.855 | 101.723 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.978 | 17.026 | 120 | 0 | 7.068 | 848.589 | 858.327 | 859.211 | 102.355 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.151 | 14.181 | 100 | 0 | 7.067 | 770.25 | 852.306 | 855.566 | 102.359 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.491 | 8.504 | 60 | 0 | 7.066 | 424.403 | 426.379 | 426.539 | 102.359 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.666 | 5.664 | 40 | 0 | 7.06 | 283.22 | 284.725 | 284.751 | 102.359 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3607 | 0 | 721.36 | 1.35 | 1.504 | 1.784 | 109.48 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.005 | 937 | 0 | 187.305 | 5.294 | 5.444 | 5.627 | 110.98 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.007 | 481 | 0 | 96.021 | 10.36 | 10.497 | 10.689 | 112.043 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.026 | 99 | 0 | 19.779 | 50.497 | 50.636 | 50.818 | 114.18 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.016 | 50 | 0 | 9.934 | 100.597 | 100.759 | 100.889 | 114.18 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.009 | 25 | 0 | 4.983 | 200.591 | 200.728 | 200.814 | 114.18 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16870 | 0 | 3373.343 | 1.404 | 1.985 | 2.406 | 63.797 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16388 | 0 | 3276.784 | 1.444 | 2.074 | 2.511 | 64.23 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17070 | 0 | 3413.143 | 1.385 | 1.977 | 2.431 | 64.25 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16450 | 0 | 3289.041 | 1.441 | 2.265 | 2.759 | 64.582 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16439 | 0 | 3287.071 | 1.434 | 2.123 | 2.625 | 66.137 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14303 | 0 | 2859.654 | 1.655 | 2.507 | 2.964 | 66.434 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16266 | 0 | 3252.26 | 1.439 | 2.102 | 2.669 | 66.465 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15780 | 0 | 3155.244 | 1.491 | 2.386 | 2.932 | 68.367 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12554 | 0 | 2509.774 | 1.875 | 2.852 | 3.47 | 77.5 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7025 | 0 | 1404.136 | 3.404 | 5.58 | 6.601 | 72.176 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12950 | 0 | 2589.13 | 1.797 | 2.932 | 3.53 | 77.125 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.001 | 13126 | 0 | 2618.847 | 1.774 | 2.717 | 3.391 | 67.59 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9851 | 0 | 1969.392 | 2.23 | 3.858 | 6.397 | 97.684 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4068 | 0 | 812.784 | 5.829 | 10.305 | 11.394 | 75.805 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 9874 | 0 | 1973.807 | 2.151 | 4.062 | 6.556 | 73.594 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9950 | 0 | 1989.289 | 2.153 | 4.017 | 6.181 | 71.547 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 7737 | 0 | 1546.248 | 2.826 | 4.814 | 16.15 | 124.367 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.105 | 2320 | 0 | 463.034 | 10.146 | 18.181 | 19.898 | 79.059 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7630 | 0 | 1525.386 | 2.718 | 5.305 | 16.508 | 75.344 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7625 | 0 | 1524.077 | 2.698 | 5.358 | 16.499 | 75.406 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 5072 | 0 | 1013.406 | 4.506 | 7.579 | 20.474 | 125.594 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.924 | 1287 | 0 | 256.521 | 18.887 | 32.411 | 35.458 | 83.898 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5266 | 0 | 1052.397 | 3.942 | 7.885 | 20.181 | 75.535 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5230 | 0 | 1045.304 | 4.066 | 7.945 | 19.672 | 75.539 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.008 | 2878 | 0 | 574.463 | 8.57 | 13.344 | 15.143 | 111.105 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.474 | 7.45 | 1000 | 0 | 133.797 | 36.616 | 61.569 | 67.944 | 85.594 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3334 | 0 | 665.885 | 6.781 | 12.502 | 15.106 | 78.434 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3502 | 0 | 699.57 | 6.644 | 12.08 | 13.56 | 78.434 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.017 | 51.125 | 360 | 0 | 7.056 | 2549.65 | 2573.539 | 2576.924 | 99.113 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.022 | 34.069 | 240 | 0 | 7.054 | 1701.245 | 1712.437 | 1721.658 | 103.301 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.517 | 25.574 | 180 | 0 | 7.054 | 1275.394 | 1290.432 | 1291.303 | 104.305 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.007 | 17.033 | 120 | 0 | 7.056 | 850.484 | 860.647 | 867.566 | 104.438 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.179 | 14.181 | 100 | 0 | 7.053 | 804.544 | 851.576 | 858.314 | 104.438 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.508 | 8.53 | 60 | 0 | 7.052 | 425.322 | 434.425 | 435.934 | 104.438 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.667 | 5.673 | 40 | 0 | 7.058 | 283.409 | 284.467 | 286.313 | 104.441 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3542 | 0 | 708.229 | 1.36 | 1.556 | 1.83 | 114.426 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 940 | 0 | 187.978 | 5.278 | 5.417 | 5.648 | 118.316 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.004 | 484 | 0 | 96.599 | 10.306 | 10.459 | 10.714 | 118.441 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.019 | 99 | 0 | 19.796 | 50.452 | 50.605 | 50.921 | 118.441 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.034 | 2.016 | 50 | 0 | 9.933 | 100.561 | 100.882 | 101.001 | 118.441 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.564 | 200.997 | 201.05 | 118.445 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.174 | 1000 | 0 | 62.087 | 40.975 | 41.943 | 42.314 | 29.215 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.177 | 1000 | 0 | 62.023 | 40.98 | 41.969 | 42.518 | 29.609 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.17 | 1000 | 0 | 62.05 | 40.977 | 41.966 | 42.344 | 29.734 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.206 | 1000 | 0 | 62.086 | 40.976 | 41.941 | 42.293 | 29.777 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.188 | 1000 | 0 | 62.083 | 40.976 | 41.853 | 42.291 | 29.805 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.165 | 1000 | 0 | 62.099 | 40.976 | 41.785 | 42.281 | 29.859 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.14 | 1000 | 0 | 62.052 | 40.975 | 41.972 | 42.355 | 29.922 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.168 | 1000 | 0 | 62.032 | 40.979 | 41.973 | 42.63 | 30.52 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.789 | 13.372 | 1000 | 0 | 67.619 | 40.969 | 41.973 | 42.215 | 30.566 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.44 | 14.483 | 1000 | 0 | 64.769 | 40.966 | 41.972 | 42.809 | 30.582 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12897 | 0 | 2578.611 | 1.047 | 2.034 | 6.575 | 31.098 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.286 | 15.031 | 1000 | 0 | 65.419 | 40.973 | 41.981 | 42.821 | 35.43 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.193 | 9.059 | 1000 | 0 | 122.049 | 40.928 | 42.381 | 43.367 | 35.438 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.746 | 10.477 | 1000 | 0 | 114.34 | 40.955 | 42.232 | 43.128 | 35.438 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9224 | 0 | 1844.133 | 1.329 | 2.754 | 41.162 | 36.141 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.837 | 12.097 | 1000 | 0 | 84.481 | 41.692 | 42.81 | 43.834 | 42.0 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.57 | 12.619 | 1000 | 0 | 79.554 | 41.926 | 42.895 | 43.941 | 42.0 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.51 | 11.757 | 1000 | 0 | 79.936 | 41.93 | 43.035 | 44.277 | 42.0 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.018 | 6832 | 0 | 1365.438 | 1.812 | 3.785 | 19.641 | 42.875 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.766 | 14.143 | 1000 | 0 | 72.643 | 41.965 | 43.535 | 45.03 | 47.465 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.587 | 15.01 | 1000 | 0 | 68.553 | 41.97 | 43.995 | 46.024 | 46.727 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.416 | 15.104 | 1000 | 0 | 69.369 | 42.001 | 43.958 | 45.84 | 46.727 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 4884 | 0 | 976.164 | 2.608 | 5.617 | 22.917 | 48.949 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.785 | 15.974 | 1000 | 0 | 63.349 | 43.302 | 45.882 | 60.115 | 56.023 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.029 | 15.955 | 1000 | 0 | 66.539 | 43.933 | 47.55 | 51.913 | 56.023 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.962 | 15.468 | 1000 | 0 | 66.835 | 44.021 | 47.827 | 49.945 | 56.023 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3280 | 0 | 655.156 | 4.276 | 7.913 | 21.06 | 62.035 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.514 | 17.149 | 1000 | 0 | 60.555 | 45.615 | 49.78 | 60.556 | 67.59 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.996 | 28.76 | 363 | 0 | 12.519 | 241.72 | 242.904 | 19602.287 | 64.844 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.415 | 19.16 | 243 | 0 | 12.516 | 241.724 | 243.207 | 12803.435 | 64.855 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.622 | 14.368 | 183 | 0 | 12.516 | 241.727 | 242.784 | 10025.069 | 64.863 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.582 | 123 | 0 | 12.52 | 241.459 | 242.514 | 5230.388 | 64.863 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.594 | 103 | 0 | 10.482 | 241.753 | 242.474 | 5132.12 | 64.871 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.796 | 63 | 0 | 12.508 | 241.799 | 242.603 | 242.68 | 64.871 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.793 | 42 | 0 | 8.338 | 241.866 | 242.245 | 242.657 | 64.883 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.019 | 122 | 0 | 24.376 | 41.979 | 42.121 | 42.981 | 64.891 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.03 | 114 | 0 | 22.692 | 44.986 | 45.964 | 45.991 | 64.973 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.04 | 97 | 0 | 19.369 | 51.971 | 52.971 | 52.999 | 65.082 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.058 | 56 | 0 | 11.052 | 90.975 | 91.999 | 92.176 | 65.109 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.085 | 36 | 0 | 7.139 | 140.967 | 141.998 | 142.268 | 65.109 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.38 | 21 | 0 | 4.164 | 241.972 | 243.032 | 243.065 | 65.117 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.212 | 1000 | 0 | 62.073 | 40.982 | 41.958 | 42.273 | 29.141 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.145 | 1000 | 0 | 62.102 | 40.981 | 41.89 | 42.173 | 29.574 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.214 | 1000 | 0 | 62.062 | 40.979 | 41.969 | 42.548 | 29.715 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.184 | 1000 | 0 | 62.121 | 40.979 | 41.703 | 42.24 | 29.816 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.176 | 1000 | 0 | 62.1 | 40.982 | 41.941 | 42.171 | 29.863 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.195 | 1000 | 0 | 62.101 | 40.979 | 41.618 | 42.341 | 29.906 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.193 | 1000 | 0 | 62.091 | 40.977 | 41.969 | 42.278 | 29.926 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.184 | 1000 | 0 | 62.066 | 40.977 | 41.964 | 42.59 | 30.566 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.289 | 13.821 | 1000 | 0 | 69.982 | 40.96 | 41.96 | 42.701 | 30.566 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.233 | 14.395 | 1000 | 0 | 65.649 | 40.964 | 41.954 | 42.275 | 30.629 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12995 | 0 | 2597.832 | 1.035 | 1.995 | 7.242 | 30.977 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.607 | 13.578 | 1000 | 0 | 68.461 | 40.969 | 42.012 | 42.931 | 34.445 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 6.53 | 7.697 | 1062 | 0 | 162.624 | 1.126 | 42.017 | 43.302 | 34.445 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.729 | 7.984 | 1001 | 0 | 129.512 | 19.863 | 42.203 | 44.137 | 34.445 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9435 | 0 | 1886.056 | 1.323 | 2.84 | 37.75 | 34.582 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.671 | 10.115 | 1000 | 0 | 78.918 | 41.682 | 42.933 | 43.904 | 41.016 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.098 | 12.921 | 1000 | 0 | 82.656 | 41.918 | 42.991 | 45.903 | 41.016 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.008 | 13.158 | 1000 | 0 | 83.279 | 41.927 | 42.979 | 44.922 | 41.016 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.064 | 2.002 | 6919 | 0 | 1366.298 | 1.762 | 3.855 | 21.577 | 41.016 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.748 | 14.485 | 1000 | 0 | 72.739 | 41.962 | 43.114 | 44.178 | 46.762 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.36 | 14.563 | 1000 | 0 | 69.638 | 41.976 | 44.406 | 55.608 | 45.328 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.399 | 15.032 | 1000 | 0 | 69.451 | 41.98 | 44.194 | 50.429 | 45.328 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 5313 | 0 | 1061.865 | 2.415 | 4.934 | 22.62 | 48.199 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.105 | 15.878 | 1000 | 0 | 66.201 | 42.986 | 45.691 | 47.992 | 53.938 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.785 | 15.633 | 1000 | 0 | 67.638 | 43.11 | 46.952 | 49.678 | 53.938 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.696 | 15.696 | 1000 | 0 | 68.047 | 43.95 | 47.899 | 50.88 | 51.418 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3302 | 0 | 659.421 | 4.062 | 7.915 | 60.103 | 57.43 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.349 | 17.112 | 1000 | 0 | 61.167 | 45.288 | 49.942 | 52.643 | 86.879 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.993 | 28.771 | 363 | 0 | 12.52 | 241.644 | 242.968 | 19600.3 | 87.078 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.416 | 19.181 | 243 | 0 | 12.516 | 241.743 | 242.864 | 12800.358 | 87.137 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.612 | 14.384 | 183 | 0 | 12.524 | 241.422 | 242.399 | 10022.863 | 87.137 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.582 | 123 | 0 | 12.516 | 241.74 | 242.676 | 5235.238 | 87.148 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.82 | 9.584 | 103 | 0 | 10.489 | 241.245 | 242.389 | 5128.493 | 87.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.79 | 63 | 0 | 12.503 | 241.879 | 242.347 | 242.374 | 87.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 4.793 | 42 | 0 | 8.351 | 241.064 | 242.324 | 242.536 | 87.156 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.018 | 122 | 0 | 24.351 | 41.976 | 42.167 | 42.974 | 87.223 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.026 | 2.029 | 114 | 0 | 22.682 | 44.979 | 45.971 | 46.042 | 87.262 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 2.039 | 98 | 0 | 19.425 | 51.963 | 52.928 | 52.996 | 87.297 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.062 | 2.055 | 56 | 0 | 11.064 | 90.976 | 91.915 | 91.954 | 87.34 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.048 | 2.083 | 36 | 0 | 7.132 | 140.98 | 141.995 | 142.599 | 87.344 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.38 | 21 | 0 | 4.164 | 241.964 | 242.949 | 242.957 | 87.344 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.129 | 1000 | 0 | 62.095 | 40.98 | 41.958 | 42.255 | 29.238 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.116 | 1000 | 0 | 62.098 | 40.979 | 41.956 | 42.106 | 29.641 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.105 | 1000 | 0 | 62.119 | 40.978 | 41.643 | 42.227 | 29.754 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.089 | 16.103 | 1000 | 0 | 62.153 | 40.977 | 41.464 | 42.111 | 29.922 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.099 | 1000 | 0 | 62.107 | 40.979 | 41.771 | 42.343 | 29.938 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.095 | 16.109 | 1000 | 0 | 62.131 | 40.979 | 41.595 | 42.284 | 29.961 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.1 | 1000 | 0 | 62.108 | 40.978 | 41.827 | 42.182 | 30.012 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.104 | 1000 | 0 | 62.097 | 40.978 | 41.95 | 42.314 | 30.684 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.146 | 13.092 | 1000 | 0 | 66.023 | 40.972 | 41.952 | 42.183 | 30.715 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.069 | 14.988 | 1000 | 0 | 66.359 | 40.968 | 41.965 | 42.38 | 30.715 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 13394 | 0 | 2678.005 | 1.006 | 1.924 | 6.416 | 31.004 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.213 | 15.407 | 1000 | 0 | 65.732 | 40.971 | 41.981 | 42.852 | 36.094 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.553 | 10.534 | 1000 | 0 | 94.759 | 40.954 | 42.05 | 43.073 | 36.094 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.945 | 9.433 | 1000 | 0 | 100.55 | 40.948 | 42.049 | 43.167 | 36.094 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9551 | 0 | 1909.31 | 1.305 | 2.77 | 41.824 | 36.309 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.47 | 11.973 | 1000 | 0 | 95.513 | 41.248 | 42.9 | 43.509 | 41.133 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.596 | 13.066 | 1000 | 0 | 86.233 | 41.919 | 42.937 | 43.947 | 41.133 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.053 | 13.57 | 1000 | 0 | 82.969 | 41.938 | 42.989 | 44.531 | 41.133 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.002 | 7047 | 0 | 1408.003 | 1.702 | 3.616 | 65.287 | 42.313 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.742 | 14.661 | 1000 | 0 | 67.833 | 41.966 | 43.023 | 44.866 | 50.895 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.241 | 15.314 | 1000 | 0 | 70.218 | 41.98 | 43.704 | 50.301 | 50.887 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.39 | 15.551 | 1000 | 0 | 69.494 | 41.976 | 43.942 | 45.257 | 50.887 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 5234 | 0 | 1046.242 | 2.355 | 4.971 | 34.951 | 51.465 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.595 | 15.904 | 1000 | 0 | 64.124 | 42.98 | 45.023 | 47.154 | 54.785 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.129 | 15.786 | 1000 | 0 | 66.099 | 43.285 | 47.036 | 51.025 | 52.715 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.6 | 15.586 | 1000 | 0 | 68.492 | 43.541 | 47.416 | 50.354 | 52.715 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3578 | 0 | 714.71 | 3.847 | 7.199 | 30.046 | 58.727 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.249 | 17.129 | 1000 | 0 | 61.541 | 45.004 | 50.266 | 53.906 | 84.918 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.999 | 28.767 | 363 | 0 | 12.518 | 241.738 | 242.547 | 19605.237 | 85.469 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.412 | 19.169 | 243 | 0 | 12.518 | 241.684 | 242.9 | 12799.392 | 85.492 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.378 | 183 | 0 | 12.514 | 241.827 | 242.981 | 10024.683 | 85.5 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.582 | 123 | 0 | 12.518 | 241.589 | 242.514 | 5228.939 | 85.516 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.599 | 103 | 0 | 10.477 | 241.805 | 242.483 | 5135.236 | 85.543 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.79 | 63 | 0 | 12.512 | 241.498 | 242.914 | 243.079 | 85.543 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.795 | 42 | 0 | 8.347 | 241.254 | 242.073 | 242.634 | 85.543 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.019 | 122 | 0 | 24.356 | 41.98 | 42.626 | 43.007 | 85.559 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.03 | 114 | 0 | 22.742 | 44.977 | 45.025 | 45.988 | 85.621 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.039 | 97 | 0 | 19.374 | 51.967 | 52.935 | 52.992 | 85.648 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.062 | 56 | 0 | 11.052 | 90.97 | 91.979 | 92.01 | 85.652 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.082 | 36 | 0 | 7.139 | 140.975 | 141.987 | 142.636 | 85.652 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.381 | 21 | 0 | 4.164 | 241.96 | 242.158 | 242.788 | 85.664 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18920 | 0 | 3783.391 | 1.248 | 1.797 | 2.365 | 68.168 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18453 | 0 | 3689.937 | 1.274 | 1.842 | 2.372 | 68.234 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18965 | 0 | 3792.161 | 1.242 | 1.804 | 2.332 | 68.379 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18756 | 0 | 3750.443 | 1.26 | 1.845 | 2.285 | 68.602 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18552 | 0 | 3709.493 | 1.267 | 1.924 | 2.415 | 70.25 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16197 | 0 | 3238.616 | 1.456 | 2.183 | 2.786 | 70.402 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18032 | 0 | 3605.641 | 1.303 | 1.98 | 2.467 | 70.52 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16828 | 0 | 3364.266 | 1.399 | 2.12 | 2.675 | 72.789 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13287 | 0 | 2656.58 | 1.743 | 3.01 | 3.485 | 82.164 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7328 | 0 | 1464.765 | 3.214 | 5.61 | 6.435 | 76.645 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13478 | 0 | 2694.698 | 1.721 | 2.965 | 3.448 | 81.945 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.037 | 2.001 | 13708 | 0 | 2721.639 | 1.333 | 2.3 | 3.75 | 71.676 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 9929 | 0 | 1985.287 | 2.142 | 3.946 | 5.778 | 105.52 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 4054 | 0 | 809.867 | 5.845 | 10.408 | 11.507 | 83.988 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9777 | 0 | 1954.685 | 2.139 | 4.062 | 6.43 | 78.277 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9981 | 0 | 1995.538 | 2.117 | 4.002 | 6.089 | 78.215 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7655 | 0 | 1530.235 | 2.69 | 5.251 | 20.959 | 130.375 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.098 | 2360 | 0 | 470.932 | 10.097 | 17.799 | 19.904 | 96.242 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7908 | 0 | 1581.04 | 2.572 | 5.191 | 20.148 | 94.516 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.003 | 7625 | 0 | 1522.927 | 2.516 | 5.003 | 20.703 | 94.602 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5171 | 0 | 1033.442 | 4.042 | 7.778 | 24.035 | 128.293 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.859 | 1288 | 0 | 256.771 | 18.72 | 32.579 | 35.409 | 102.898 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5247 | 0 | 1048.667 | 3.95 | 7.769 | 23.826 | 98.668 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.104 | 2.004 | 5256 | 0 | 1029.774 | 3.968 | 7.804 | 23.393 | 98.668 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3353 | 0 | 669.724 | 6.949 | 11.891 | 13.305 | 112.34 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.355 | 7.337 | 1000 | 0 | 135.965 | 36.124 | 59.582 | 66.765 | 106.461 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3494 | 0 | 697.995 | 6.537 | 12.061 | 13.335 | 102.145 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3572 | 0 | 713.427 | 6.516 | 11.899 | 13.238 | 102.145 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.92 | 50.886 | 360 | 0 | 7.07 | 2546.062 | 2552.043 | 2554.634 | 124.492 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.929 | 33.925 | 240 | 0 | 7.074 | 1696.206 | 1699.372 | 1700.558 | 117.734 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.439 | 25.434 | 180 | 0 | 7.076 | 1272.002 | 1274.787 | 1275.535 | 117.984 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.959 | 16.956 | 120 | 0 | 7.076 | 847.872 | 851.08 | 852.016 | 123.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.194 | 14.185 | 100 | 0 | 7.045 | 833.884 | 848.453 | 848.649 | 123.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.481 | 8.479 | 60 | 0 | 7.074 | 424.014 | 426.115 | 426.675 | 123.184 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.652 | 5.651 | 40 | 0 | 7.077 | 282.491 | 282.846 | 283.425 | 123.184 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.003 | 1941 | 0 | 388.075 | 2.515 | 2.706 | 2.831 | 127.402 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.003 | 567 | 0 | 113.252 | 8.779 | 9.02 | 9.323 | 128.09 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.001 | 408 | 0 | 81.476 | 12.28 | 12.394 | 12.501 | 128.09 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.019 | 100 | 0 | 19.809 | 50.427 | 50.57 | 50.755 | 128.09 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.027 | 2.012 | 50 | 0 | 9.947 | 100.469 | 100.629 | 100.659 | 128.09 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.536 | 200.623 | 200.645 | 128.09 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18203 | 0 | 3639.959 | 1.297 | 1.851 | 2.367 | 68.055 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17706 | 0 | 3540.555 | 1.331 | 1.944 | 2.493 | 68.246 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17525 | 0 | 3504.276 | 1.344 | 1.971 | 2.503 | 68.16 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 17124 | 0 | 3424.075 | 1.375 | 2.039 | 2.55 | 68.551 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17289 | 0 | 3456.883 | 1.361 | 2.062 | 2.587 | 70.316 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15138 | 0 | 3026.805 | 1.555 | 2.376 | 2.957 | 70.453 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16734 | 0 | 3346.057 | 1.405 | 2.137 | 2.636 | 70.602 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17203 | 0 | 3439.902 | 1.367 | 2.065 | 2.562 | 72.836 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13501 | 0 | 2699.495 | 1.726 | 2.922 | 3.438 | 82.195 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 7321 | 0 | 1463.14 | 3.28 | 5.432 | 6.34 | 76.559 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13595 | 0 | 2718.318 | 1.708 | 2.955 | 3.403 | 81.727 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 2.001 | 13680 | 0 | 2727.651 | 1.431 | 2.434 | 3.762 | 71.254 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 9726 | 0 | 1944.465 | 2.158 | 4.049 | 6.794 | 104.219 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4195 | 0 | 838.12 | 5.658 | 10.092 | 11.11 | 81.703 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9941 | 0 | 1987.574 | 2.106 | 4.014 | 6.373 | 76.379 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9928 | 0 | 1984.872 | 2.101 | 4.004 | 6.377 | 76.191 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.017 | 7623 | 0 | 1523.896 | 2.716 | 5.095 | 21.904 | 117.242 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.104 | 2323 | 0 | 463.668 | 10.361 | 18.191 | 19.997 | 84.414 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 7291 | 0 | 1456.96 | 2.779 | 5.53 | 22.998 | 78.027 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7112 | 0 | 1421.625 | 2.888 | 5.772 | 22.98 | 78.137 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4859 | 0 | 971.017 | 4.352 | 8.305 | 25.46 | 120.98 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.024 | 1226 | 0 | 244.294 | 19.648 | 35.374 | 37.92 | 88.133 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5011 | 0 | 1001.457 | 4.164 | 8.306 | 25.644 | 84.195 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4700 | 0 | 939.306 | 4.508 | 8.667 | 26.41 | 84.195 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3176 | 0 | 634.416 | 7.323 | 12.521 | 14.27 | 98.535 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.693 | 7.537 | 1000 | 0 | 129.991 | 37.838 | 62.613 | 69.814 | 88.383 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3138 | 0 | 626.676 | 7.364 | 13.549 | 15.171 | 88.344 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3302 | 0 | 659.288 | 7.019 | 12.915 | 14.315 | 88.344 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.869 | 50.881 | 360 | 0 | 7.077 | 2542.996 | 2546.135 | 2546.753 | 103.945 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.922 | 33.91 | 240 | 0 | 7.075 | 1695.82 | 1699.375 | 1699.8 | 104.008 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.436 | 25.432 | 180 | 0 | 7.077 | 1271.563 | 1274.39 | 1274.938 | 104.137 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.956 | 16.953 | 120 | 0 | 7.077 | 847.668 | 850.372 | 850.596 | 105.586 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.135 | 14.133 | 100 | 0 | 7.075 | 840.827 | 848.358 | 848.427 | 106.988 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.483 | 8.48 | 60 | 0 | 7.073 | 423.947 | 425.433 | 426.489 | 107.055 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.655 | 40 | 0 | 7.078 | 282.468 | 282.92 | 283.248 | 107.059 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1915 | 0 | 382.837 | 2.609 | 2.766 | 2.989 | 114.691 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.009 | 568 | 0 | 113.489 | 8.77 | 8.904 | 9.096 | 117.066 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.01 | 405 | 0 | 80.995 | 12.305 | 12.427 | 12.566 | 117.066 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.026 | 99 | 0 | 19.792 | 50.463 | 50.586 | 50.785 | 117.695 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.015 | 50 | 0 | 9.944 | 100.491 | 100.66 | 100.768 | 117.695 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.515 | 200.655 | 200.668 | 117.695 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18011 | 0 | 3601.447 | 1.305 | 1.891 | 2.456 | 67.98 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17591 | 0 | 3517.499 | 1.335 | 2.002 | 2.495 | 68.242 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 17607 | 0 | 3520.757 | 1.338 | 1.975 | 2.514 | 68.18 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17527 | 0 | 3504.759 | 1.345 | 1.997 | 2.495 | 68.547 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17593 | 0 | 3517.862 | 1.332 | 2.07 | 2.559 | 70.172 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14931 | 0 | 2985.435 | 1.572 | 2.433 | 3.045 | 70.395 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16578 | 0 | 3314.835 | 1.41 | 2.197 | 2.734 | 70.438 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16424 | 0 | 3284.181 | 1.423 | 2.196 | 2.702 | 72.672 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12867 | 0 | 2572.619 | 1.809 | 3.028 | 3.593 | 82.574 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7151 | 0 | 1429.333 | 3.354 | 5.526 | 6.558 | 76.203 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12944 | 0 | 2587.679 | 1.79 | 3.088 | 3.583 | 82.023 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.029 | 2.016 | 13241 | 0 | 2633.054 | 1.417 | 2.425 | 3.597 | 72.707 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9395 | 0 | 1878.417 | 2.216 | 4.24 | 7.354 | 106.719 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4100 | 0 | 819.091 | 5.84 | 10.201 | 11.407 | 81.367 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9636 | 0 | 1926.556 | 2.16 | 4.115 | 6.813 | 76.988 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9592 | 0 | 1917.755 | 2.182 | 4.119 | 6.988 | 76.922 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7237 | 0 | 1446.73 | 2.807 | 5.7 | 23.627 | 118.605 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.127 | 2333 | 0 | 465.831 | 10.39 | 18.01 | 19.938 | 84.309 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7382 | 0 | 1475.826 | 2.743 | 5.614 | 23.566 | 81.133 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7519 | 0 | 1503.034 | 2.68 | 5.322 | 23.409 | 81.227 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4968 | 0 | 992.779 | 4.187 | 7.988 | 26.952 | 121.59 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.868 | 1271 | 0 | 253.367 | 19.258 | 33.143 | 36.207 | 84.41 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 5274 | 0 | 1053.659 | 3.863 | 7.813 | 26.828 | 86.047 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4875 | 0 | 974.271 | 4.271 | 8.315 | 27.252 | 86.047 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3418 | 0 | 682.829 | 6.91 | 11.492 | 13.088 | 101.707 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.417 | 7.389 | 1000 | 0 | 134.822 | 36.206 | 59.498 | 67.08 | 89.945 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3371 | 0 | 673.25 | 6.781 | 12.612 | 14.035 | 88.805 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3317 | 0 | 662.478 | 6.967 | 12.818 | 14.463 | 88.805 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.888 | 50.864 | 360 | 0 | 7.074 | 2543.821 | 2548.038 | 2549.37 | 104.688 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.939 | 33.908 | 240 | 0 | 7.071 | 1696.68 | 1698.399 | 1700.229 | 106.836 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.445 | 25.431 | 180 | 0 | 7.074 | 1272.032 | 1275.874 | 1276.354 | 114.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.96 | 16.961 | 120 | 0 | 7.076 | 847.821 | 851.56 | 851.703 | 115.098 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.133 | 14.134 | 100 | 0 | 7.076 | 840.339 | 848.045 | 848.822 | 115.098 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.48 | 8.479 | 60 | 0 | 7.075 | 423.828 | 425.32 | 426.23 | 115.848 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.652 | 40 | 0 | 7.076 | 282.553 | 282.833 | 282.92 | 115.848 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1894 | 0 | 378.65 | 2.634 | 2.779 | 3.09 | 118.098 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.001 | 567 | 0 | 113.249 | 8.787 | 8.914 | 9.065 | 118.16 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.007 | 405 | 0 | 80.954 | 12.304 | 12.45 | 12.646 | 118.723 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.021 | 99 | 0 | 19.797 | 50.453 | 50.623 | 50.766 | 116.602 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.011 | 50 | 0 | 9.936 | 100.542 | 100.778 | 101.219 | 120.539 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.507 | 200.6 | 200.666 | 120.539 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

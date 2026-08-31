# Puma vs Raptor Simulation

Run ID: `20260831-033107`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.191 | 1000 | 0 | 62.003 | 40.98 | 41.988 | 42.894 | 27.875 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.183 | 1000 | 0 | 62.022 | 40.98 | 41.974 | 42.293 | 27.887 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.157 | 1000 | 0 | 62.04 | 40.983 | 41.968 | 42.365 | 27.887 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.206 | 1000 | 0 | 62.076 | 40.979 | 41.95 | 42.562 | 27.887 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.216 | 1000 | 0 | 62.043 | 40.979 | 41.971 | 42.492 | 27.887 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.244 | 1000 | 0 | 62.007 | 40.981 | 41.98 | 42.409 | 27.887 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.217 | 1000 | 0 | 62.017 | 40.979 | 41.968 | 42.457 | 27.926 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.206 | 1000 | 0 | 62.039 | 40.979 | 41.964 | 42.502 | 28.215 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.117 | 13.522 | 1000 | 0 | 70.835 | 40.964 | 41.955 | 42.271 | 28.215 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.8 | 12.373 | 1000 | 0 | 67.568 | 40.964 | 41.96 | 42.27 | 28.219 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 13000 | 0 | 2599.28 | 1.032 | 1.94 | 7.388 | 28.59 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.022 | 13.508 | 1000 | 0 | 71.317 | 40.975 | 42.06 | 42.812 | 34.586 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.621 | 10.041 | 1000 | 0 | 115.996 | 40.965 | 42.46 | 43.194 | 34.586 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.559 | 9.134 | 1000 | 0 | 86.512 | 41.04 | 42.384 | 43.098 | 34.586 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 9960 | 0 | 1991.195 | 1.314 | 2.627 | 41.155 | 34.586 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.003 | 12.279 | 1000 | 0 | 76.904 | 41.903 | 42.908 | 43.788 | 41.781 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.654 | 13.629 | 1000 | 0 | 73.237 | 41.942 | 42.624 | 43.622 | 41.781 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.715 | 13.766 | 1000 | 0 | 78.65 | 41.932 | 42.94 | 43.673 | 41.781 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 7280 | 0 | 1454.969 | 1.735 | 3.51 | 20.519 | 41.781 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.105 | 14.743 | 1000 | 0 | 66.201 | 41.962 | 43.044 | 44.359 | 46.848 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.515 | 14.967 | 1000 | 0 | 68.895 | 42.293 | 44.034 | 45.478 | 46.848 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.63 | 14.304 | 1000 | 0 | 68.352 | 42.854 | 44.245 | 45.983 | 46.848 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5283 | 0 | 1055.75 | 2.51 | 5.0 | 15.434 | 46.969 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.795 | 16.503 | 1000 | 0 | 63.31 | 43.003 | 45.576 | 47.986 | 52.672 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.927 | 16.335 | 1000 | 0 | 62.788 | 43.983 | 48.253 | 50.05 | 52.672 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.556 | 16.457 | 1000 | 0 | 64.284 | 44.023 | 48.108 | 49.852 | 52.672 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3355 | 0 | 670.17 | 4.213 | 7.708 | 35.039 | 59.539 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.993 | 17.464 | 1000 | 0 | 58.849 | 45.927 | 50.281 | 52.338 | 83.422 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.008 | 28.775 | 363 | 0 | 12.514 | 241.762 | 243.633 | 19610.994 | 83.16 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.432 | 19.179 | 243 | 0 | 12.505 | 241.913 | 243.013 | 12812.096 | 83.191 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.62 | 14.381 | 183 | 0 | 12.517 | 241.623 | 243.237 | 10022.235 | 83.207 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.591 | 123 | 0 | 12.519 | 241.686 | 242.468 | 5231.569 | 83.215 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.595 | 103 | 0 | 10.478 | 241.699 | 242.931 | 5131.822 | 83.215 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.795 | 63 | 0 | 12.51 | 241.552 | 242.743 | 243.129 | 83.215 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.796 | 42 | 0 | 8.34 | 241.764 | 242.238 | 242.27 | 83.219 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.017 | 122 | 0 | 24.363 | 41.962 | 42.163 | 42.998 | 83.219 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 2.013 | 110 | 0 | 21.861 | 46.952 | 47.167 | 47.962 | 83.242 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.035 | 99 | 0 | 19.617 | 51.005 | 52.001 | 52.157 | 83.242 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.068 | 55 | 0 | 10.981 | 91.919 | 92.374 | 92.979 | 83.242 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.074 | 2.091 | 36 | 0 | 7.095 | 141.967 | 142.957 | 142.987 | 83.242 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.384 | 21 | 0 | 4.171 | 241.869 | 242.09 | 242.795 | 83.25 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.153 | 1000 | 0 | 62.067 | 40.978 | 41.927 | 42.326 | 27.426 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.161 | 1000 | 0 | 62.059 | 40.976 | 41.969 | 42.29 | 27.434 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.137 | 1000 | 0 | 62.055 | 40.978 | 41.958 | 42.493 | 27.648 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.145 | 1000 | 0 | 62.015 | 40.983 | 41.962 | 42.41 | 27.711 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.147 | 1000 | 0 | 62.039 | 40.978 | 41.948 | 42.458 | 27.711 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.146 | 1000 | 0 | 62.049 | 40.975 | 41.971 | 42.172 | 27.73 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.128 | 1000 | 0 | 62.043 | 40.98 | 41.871 | 42.334 | 27.746 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.187 | 1000 | 0 | 62.06 | 40.974 | 41.952 | 42.291 | 28.367 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.491 | 13.659 | 1000 | 0 | 64.556 | 40.959 | 41.966 | 42.246 | 28.438 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.684 | 13.477 | 1000 | 0 | 68.103 | 40.963 | 41.963 | 42.69 | 28.492 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12888 | 0 | 2576.796 | 1.056 | 1.899 | 7.105 | 28.859 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.134 | 13.762 | 1000 | 0 | 70.753 | 40.972 | 42.013 | 43.031 | 34.84 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.756 | 9.856 | 1000 | 0 | 102.5 | 41.033 | 42.467 | 43.313 | 34.84 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.566 | 11.311 | 1000 | 0 | 86.462 | 41.08 | 42.423 | 43.246 | 34.84 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10221 | 0 | 2043.481 | 1.315 | 2.54 | 7.206 | 34.84 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.069 | 12.671 | 1000 | 0 | 76.517 | 41.874 | 42.924 | 43.951 | 38.605 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.178 | 13.56 | 1000 | 0 | 75.886 | 41.932 | 42.966 | 44.14 | 38.566 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.929 | 14.392 | 1000 | 0 | 77.345 | 41.935 | 42.955 | 44.289 | 38.566 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 7147 | 0 | 1428.386 | 1.705 | 3.338 | 33.852 | 38.613 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.437 | 15.395 | 1000 | 0 | 69.268 | 41.952 | 43.119 | 44.976 | 44.352 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.28 | 14.728 | 1000 | 0 | 70.03 | 42.595 | 44.563 | 46.1 | 43.617 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.569 | 14.718 | 1000 | 0 | 68.638 | 42.829 | 44.337 | 47.987 | 43.617 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 5222 | 0 | 1043.629 | 2.515 | 5.006 | 16.127 | 46.184 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.427 | 16.189 | 1000 | 0 | 64.823 | 43.04 | 45.659 | 47.0 | 51.75 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.495 | 16.346 | 1000 | 0 | 64.538 | 43.964 | 47.558 | 49.535 | 49.668 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.666 | 16.523 | 1000 | 0 | 63.832 | 43.979 | 47.004 | 49.119 | 49.668 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 3468 | 0 | 692.848 | 4.042 | 7.37 | 24.032 | 55.68 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.016 | 17.529 | 1000 | 0 | 58.768 | 45.419 | 50.816 | 55.923 | 62.445 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.007 | 28.752 | 363 | 0 | 12.514 | 241.878 | 243.197 | 19616.996 | 62.469 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.434 | 19.166 | 243 | 0 | 12.504 | 241.946 | 242.999 | 12816.225 | 62.492 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.617 | 14.371 | 183 | 0 | 12.52 | 241.687 | 242.574 | 10022.393 | 62.5 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.585 | 123 | 0 | 12.512 | 241.773 | 242.859 | 5234.64 | 62.504 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.591 | 103 | 0 | 10.481 | 241.678 | 242.442 | 5131.322 | 62.508 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.793 | 63 | 0 | 12.512 | 241.528 | 242.399 | 242.709 | 62.516 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.794 | 42 | 0 | 8.345 | 241.276 | 242.242 | 242.917 | 62.516 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.019 | 122 | 0 | 24.378 | 41.969 | 42.037 | 42.951 | 62.527 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 2.019 | 110 | 0 | 21.861 | 46.959 | 47.551 | 47.962 | 62.57 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.029 | 98 | 0 | 19.584 | 51.029 | 52.007 | 52.115 | 62.664 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.068 | 55 | 0 | 10.986 | 91.935 | 92.088 | 92.896 | 62.664 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.088 | 36 | 0 | 7.1 | 141.953 | 142.293 | 142.981 | 62.664 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.382 | 21 | 0 | 4.164 | 241.962 | 242.019 | 242.744 | 62.664 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.152 | 1000 | 0 | 62.107 | 40.974 | 41.93 | 42.213 | 27.41 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.131 | 1000 | 0 | 62.07 | 40.979 | 41.969 | 42.524 | 27.41 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.127 | 1000 | 0 | 62.059 | 40.979 | 41.954 | 42.232 | 27.641 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.125 | 1000 | 0 | 62.101 | 40.981 | 41.943 | 42.334 | 27.676 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.117 | 1000 | 0 | 62.07 | 40.977 | 41.977 | 42.309 | 27.676 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.145 | 1000 | 0 | 62.071 | 40.976 | 41.972 | 42.174 | 27.695 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.131 | 1000 | 0 | 62.076 | 40.977 | 41.927 | 42.289 | 27.715 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.157 | 1000 | 0 | 62.089 | 40.976 | 41.84 | 42.211 | 28.324 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.967 | 12.986 | 1000 | 0 | 66.814 | 40.965 | 41.963 | 42.779 | 28.398 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.957 | 13.975 | 1000 | 0 | 66.856 | 40.959 | 41.951 | 42.314 | 28.398 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13132 | 0 | 2625.442 | 1.036 | 1.847 | 7.176 | 28.746 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.385 | 13.652 | 1000 | 0 | 69.517 | 40.973 | 41.995 | 42.998 | 33.0 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.617 | 11.412 | 1001 | 0 | 104.084 | 40.95 | 42.26 | 43.391 | 33.0 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.731 | 10.128 | 1000 | 0 | 93.19 | 41.272 | 42.703 | 43.335 | 33.0 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.013 | 2.002 | 9090 | 0 | 1813.176 | 1.402 | 2.876 | 15.769 | 33.0 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.047 | 12.568 | 1000 | 0 | 76.647 | 41.915 | 42.961 | 43.615 | 40.738 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.184 | 13.91 | 1000 | 0 | 75.851 | 41.933 | 42.966 | 44.003 | 37.746 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.668 | 12.212 | 1000 | 0 | 73.166 | 41.932 | 42.949 | 44.099 | 37.746 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.003 | 6902 | 0 | 1379.105 | 1.841 | 3.732 | 35.097 | 38.121 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.489 | 15.178 | 1000 | 0 | 69.017 | 41.979 | 43.94 | 48.096 | 44.801 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.663 | 15.087 | 1000 | 0 | 68.199 | 42.848 | 44.525 | 48.599 | 44.801 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.118 | 15.177 | 1000 | 0 | 70.831 | 42.892 | 44.212 | 46.837 | 41.402 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4918 | 0 | 982.793 | 2.655 | 5.457 | 17.287 | 44.707 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.883 | 16.428 | 1000 | 0 | 62.958 | 43.752 | 45.953 | 47.177 | 50.539 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.384 | 15.692 | 1000 | 0 | 65.003 | 43.972 | 47.925 | 50.381 | 50.539 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.007 | 16.565 | 1000 | 0 | 62.474 | 43.989 | 47.758 | 49.259 | 50.539 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 3378 | 0 | 674.868 | 4.133 | 7.746 | 16.303 | 56.551 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.218 | 17.402 | 1000 | 0 | 58.078 | 45.722 | 49.122 | 52.453 | 68.594 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.01 | 28.746 | 363 | 0 | 12.513 | 241.823 | 243.182 | 19613.168 | 68.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.427 | 19.162 | 243 | 0 | 12.509 | 241.925 | 242.983 | 12802.313 | 68.824 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.631 | 14.377 | 183 | 0 | 12.508 | 241.942 | 243.064 | 10032.553 | 68.836 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.576 | 123 | 0 | 12.514 | 241.717 | 242.561 | 5234.404 | 68.84 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.581 | 103 | 0 | 10.479 | 241.91 | 242.994 | 5132.544 | 68.84 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.794 | 63 | 0 | 12.508 | 241.613 | 242.909 | 243.279 | 68.844 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.795 | 42 | 0 | 8.337 | 241.794 | 242.258 | 242.871 | 68.844 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.367 | 41.963 | 42.118 | 43.083 | 68.855 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 2.006 | 110 | 0 | 21.862 | 46.951 | 47.709 | 48.008 | 68.973 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.034 | 99 | 0 | 19.655 | 50.985 | 52.014 | 52.116 | 68.996 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.072 | 55 | 0 | 10.97 | 91.943 | 92.118 | 92.946 | 69.0 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.062 | 2.088 | 36 | 0 | 7.111 | 141.939 | 142.033 | 142.105 | 69.0 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.382 | 21 | 0 | 4.168 | 241.836 | 242.913 | 242.944 | 69.004 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16525 | 0 | 3304.357 | 1.428 | 2.088 | 2.457 | 63.82 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16235 | 0 | 3246.333 | 1.451 | 2.106 | 2.612 | 63.938 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16495 | 0 | 3298.297 | 1.427 | 2.101 | 2.542 | 63.984 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15901 | 0 | 3179.548 | 1.481 | 2.378 | 2.835 | 64.406 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16410 | 0 | 3281.377 | 1.431 | 2.152 | 2.604 | 66.098 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14645 | 0 | 2928.331 | 1.619 | 2.473 | 2.903 | 66.191 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16594 | 0 | 3317.999 | 1.405 | 2.092 | 2.651 | 66.367 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15621 | 0 | 3123.387 | 1.5 | 2.405 | 2.971 | 67.973 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12935 | 0 | 2585.839 | 1.831 | 2.596 | 3.325 | 77.75 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7254 | 0 | 1450.109 | 3.346 | 4.29 | 6.133 | 71.727 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13004 | 0 | 2599.911 | 1.804 | 2.622 | 3.418 | 77.086 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.001 | 13102 | 0 | 2617.708 | 1.643 | 2.448 | 3.347 | 67.977 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9812 | 0 | 1961.611 | 2.287 | 3.734 | 5.783 | 98.07 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4114 | 0 | 821.954 | 5.976 | 7.217 | 11.345 | 75.754 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10082 | 0 | 2015.44 | 2.203 | 3.914 | 5.773 | 71.176 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9662 | 0 | 1931.586 | 2.282 | 4.084 | 6.381 | 71.363 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.003 | 7246 | 0 | 1447.341 | 3.063 | 5.188 | 14.467 | 123.648 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.244 | 2203 | 0 | 439.685 | 11.344 | 12.456 | 20.378 | 79.426 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7616 | 0 | 1522.552 | 2.846 | 5.311 | 9.136 | 75.578 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7385 | 0 | 1476.128 | 2.942 | 5.453 | 15.014 | 75.578 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4795 | 0 | 958.333 | 4.803 | 8.043 | 18.446 | 164.559 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 4.041 | 1225 | 0 | 244.16 | 20.144 | 22.854 | 36.945 | 79.219 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 4914 | 0 | 981.845 | 4.571 | 8.204 | 17.942 | 81.395 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.004 | 4895 | 0 | 977.693 | 4.527 | 8.483 | 18.459 | 81.461 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2792 | 0 | 557.516 | 8.919 | 13.974 | 15.598 | 117.793 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.67 | 7.441 | 1000 | 0 | 130.376 | 38.192 | 39.263 | 68.754 | 82.859 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 3186 | 0 | 636.236 | 7.518 | 12.532 | 14.691 | 82.199 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3333 | 0 | 665.656 | 7.258 | 11.911 | 13.968 | 82.199 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.783 | 50.925 | 360 | 0 | 7.089 | 2539.635 | 2560.419 | 2568.674 | 99.359 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.863 | 33.963 | 240 | 0 | 7.087 | 1693.02 | 1709.084 | 1714.85 | 99.988 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.378 | 25.467 | 180 | 0 | 7.093 | 1268.322 | 1282.542 | 1284.082 | 103.684 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.936 | 16.951 | 120 | 0 | 7.086 | 846.713 | 859.585 | 860.758 | 103.938 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.112 | 14.147 | 100 | 0 | 7.086 | 799.278 | 847.501 | 852.111 | 103.938 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.466 | 8.468 | 60 | 0 | 7.087 | 422.931 | 425.71 | 426.091 | 103.941 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.64 | 5.638 | 40 | 0 | 7.093 | 281.785 | 282.616 | 282.873 | 104.566 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3549 | 0 | 709.645 | 1.366 | 1.499 | 1.74 | 111.613 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.004 | 937 | 0 | 187.344 | 5.295 | 5.435 | 5.581 | 113.254 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.005 | 481 | 0 | 96.085 | 10.355 | 10.483 | 10.648 | 115.73 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.029 | 99 | 0 | 19.768 | 50.519 | 50.705 | 51.182 | 117.984 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.016 | 50 | 0 | 9.936 | 100.564 | 100.727 | 100.854 | 117.984 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.592 | 200.719 | 200.781 | 117.984 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17438 | 0 | 3487.004 | 1.358 | 1.926 | 2.302 | 63.695 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16468 | 0 | 3292.894 | 1.433 | 2.068 | 2.517 | 63.805 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16756 | 0 | 3350.402 | 1.406 | 2.047 | 2.467 | 63.59 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16448 | 0 | 3288.793 | 1.442 | 2.241 | 2.726 | 64.113 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17023 | 0 | 3404.013 | 1.382 | 2.007 | 2.447 | 66.137 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14772 | 0 | 2953.746 | 1.6 | 2.371 | 2.923 | 66.219 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16580 | 0 | 3315.07 | 1.414 | 2.099 | 2.574 | 66.27 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15865 | 0 | 3172.032 | 1.48 | 2.387 | 2.875 | 68.324 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12775 | 0 | 2554.242 | 1.85 | 2.661 | 3.368 | 77.617 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7243 | 0 | 1447.858 | 3.34 | 4.361 | 6.195 | 71.984 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13002 | 0 | 2599.661 | 1.807 | 2.661 | 3.395 | 77.309 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 2.03 | 13241 | 0 | 2639.71 | 1.612 | 2.439 | 3.323 | 66.996 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9596 | 0 | 1918.416 | 2.304 | 3.859 | 6.452 | 97.098 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 4088 | 0 | 816.58 | 5.91 | 10.035 | 11.43 | 74.973 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9592 | 0 | 1917.761 | 2.269 | 4.147 | 6.647 | 71.438 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9976 | 0 | 1994.506 | 2.185 | 3.972 | 6.186 | 71.438 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7517 | 0 | 1502.614 | 2.926 | 4.994 | 15.848 | 120.734 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.127 | 2339 | 0 | 466.968 | 10.471 | 17.894 | 19.797 | 78.488 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.009 | 7445 | 0 | 1488.416 | 2.839 | 5.523 | 15.892 | 75.465 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7541 | 0 | 1507.215 | 2.815 | 5.363 | 15.544 | 75.465 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5000 | 0 | 998.957 | 4.674 | 7.577 | 18.398 | 141.367 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.934 | 1257 | 0 | 250.541 | 19.8 | 21.372 | 36.021 | 79.102 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5098 | 0 | 1018.809 | 4.262 | 8.045 | 18.874 | 78.965 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5070 | 0 | 1013.354 | 4.334 | 8.013 | 18.594 | 79.031 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2822 | 0 | 563.57 | 8.691 | 13.824 | 15.912 | 125.207 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.423 | 7.348 | 1000 | 0 | 134.723 | 36.807 | 38.29 | 67.154 | 81.566 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 3138 | 0 | 626.906 | 7.405 | 13.29 | 16.056 | 82.488 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3306 | 0 | 660.393 | 7.154 | 12.532 | 14.336 | 82.488 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.031 | 51.187 | 360 | 0 | 7.055 | 2550.982 | 2561.963 | 2563.285 | 99.0 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.026 | 34.112 | 240 | 0 | 7.053 | 1700.791 | 1710.813 | 1729.108 | 99.129 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.525 | 25.579 | 180 | 0 | 7.052 | 1276.554 | 1296.068 | 1304.943 | 101.555 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.005 | 17.056 | 120 | 0 | 7.057 | 850.333 | 860.361 | 860.941 | 101.563 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.234 | 14.206 | 100 | 0 | 7.025 | 818.298 | 851.202 | 855.351 | 101.563 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.504 | 8.529 | 60 | 0 | 7.055 | 425.155 | 428.884 | 430.497 | 103.5 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.67 | 5.672 | 40 | 0 | 7.055 | 283.552 | 286.284 | 287.815 | 106.629 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3503 | 0 | 700.484 | 1.378 | 1.529 | 1.888 | 111.703 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.004 | 935 | 0 | 186.922 | 5.304 | 5.447 | 5.635 | 116.016 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.007 | 481 | 0 | 96.135 | 10.352 | 10.51 | 10.708 | 116.266 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.027 | 99 | 0 | 19.76 | 50.521 | 50.938 | 51.057 | 116.266 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.017 | 50 | 0 | 9.935 | 100.557 | 100.922 | 101.065 | 116.266 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.009 | 25 | 0 | 4.983 | 200.55 | 200.754 | 201.284 | 116.27 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17546 | 0 | 3508.56 | 1.348 | 1.918 | 2.403 | 63.59 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16853 | 0 | 3369.928 | 1.4 | 2.038 | 2.513 | 67.297 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17433 | 0 | 3485.786 | 1.355 | 1.959 | 2.4 | 67.156 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16905 | 0 | 3380.322 | 1.405 | 2.18 | 2.693 | 67.648 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17265 | 0 | 3452.262 | 1.364 | 1.983 | 2.396 | 69.551 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14748 | 0 | 2948.771 | 1.61 | 2.329 | 2.854 | 69.84 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16900 | 0 | 3379.294 | 1.387 | 2.023 | 2.514 | 69.773 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16020 | 0 | 3203.285 | 1.467 | 2.367 | 2.965 | 71.297 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13137 | 0 | 2626.765 | 1.799 | 2.566 | 3.272 | 91.602 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7292 | 0 | 1457.41 | 3.31 | 4.454 | 6.305 | 80.074 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13139 | 0 | 2626.965 | 1.786 | 2.636 | 3.414 | 90.094 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.041 | 2.001 | 12922 | 0 | 2563.236 | 1.773 | 2.612 | 3.451 | 78.625 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9507 | 0 | 1900.767 | 2.32 | 3.895 | 6.454 | 104.652 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 4097 | 0 | 818.684 | 5.934 | 9.977 | 11.515 | 85.574 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9697 | 0 | 1938.583 | 2.237 | 4.078 | 7.167 | 74.738 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9607 | 0 | 1920.735 | 2.284 | 4.113 | 6.284 | 74.613 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 7723 | 0 | 1543.409 | 2.843 | 4.845 | 16.146 | 135.727 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.103 | 2332 | 0 | 465.528 | 10.538 | 17.466 | 19.823 | 89.781 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7483 | 0 | 1495.748 | 2.837 | 5.448 | 16.699 | 82.449 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7498 | 0 | 1498.834 | 2.81 | 5.355 | 16.786 | 82.449 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5034 | 0 | 1005.98 | 4.561 | 7.583 | 19.755 | 139.191 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.935 | 1257 | 0 | 250.547 | 19.522 | 32.667 | 36.381 | 91.918 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 5017 | 0 | 1002.244 | 4.322 | 8.158 | 20.439 | 87.012 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4939 | 0 | 986.623 | 4.423 | 8.369 | 20.33 | 87.074 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2864 | 0 | 571.924 | 8.649 | 13.572 | 15.552 | 140.227 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.58 | 7.416 | 1000 | 0 | 131.933 | 37.586 | 59.867 | 69.071 | 95.793 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 3303 | 0 | 659.839 | 7.205 | 12.76 | 14.135 | 93.078 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3337 | 0 | 666.455 | 7.114 | 12.4 | 14.329 | 93.145 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.954 | 51.074 | 360 | 0 | 7.065 | 2546.92 | 2569.243 | 2578.764 | 110.434 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.985 | 34.024 | 240 | 0 | 7.062 | 1698.951 | 1709.821 | 1727.436 | 114.844 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.465 | 25.521 | 180 | 0 | 7.069 | 1273.012 | 1283.143 | 1290.044 | 115.348 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.981 | 17.007 | 120 | 0 | 7.067 | 848.959 | 863.32 | 874.03 | 116.977 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.15 | 14.184 | 100 | 0 | 7.067 | 816.354 | 849.431 | 850.002 | 116.977 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.495 | 8.519 | 60 | 0 | 7.063 | 424.518 | 434.007 | 437.187 | 116.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.659 | 5.657 | 40 | 0 | 7.068 | 282.705 | 284.152 | 284.444 | 117.918 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3595 | 0 | 718.957 | 1.352 | 1.474 | 1.695 | 127.27 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.002 | 942 | 0 | 188.207 | 5.274 | 5.402 | 5.533 | 127.27 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.003 | 482 | 0 | 96.345 | 10.338 | 10.463 | 10.624 | 127.27 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.02 | 99 | 0 | 19.786 | 50.482 | 50.604 | 50.664 | 127.27 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.013 | 50 | 0 | 9.936 | 100.584 | 100.766 | 100.805 | 127.457 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.57 | 200.694 | 200.757 | 127.457 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.17 | 1000 | 0 | 62.0 | 40.982 | 41.969 | 42.498 | 29.0 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.138 | 1000 | 0 | 62.027 | 40.979 | 41.996 | 42.695 | 29.176 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.145 | 1000 | 0 | 62.085 | 40.977 | 41.821 | 42.289 | 29.332 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.148 | 1000 | 0 | 62.015 | 40.977 | 41.974 | 42.27 | 29.605 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.125 | 1000 | 0 | 62.037 | 40.978 | 41.946 | 42.302 | 29.656 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.157 | 1000 | 0 | 62.059 | 40.976 | 41.925 | 42.218 | 29.688 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.135 | 1000 | 0 | 62.06 | 40.975 | 41.962 | 42.277 | 29.715 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.158 | 1000 | 0 | 62.048 | 40.975 | 41.979 | 42.631 | 30.098 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.129 | 14.132 | 1000 | 0 | 66.098 | 40.96 | 41.953 | 42.215 | 30.102 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.761 | 13.7 | 1000 | 0 | 67.746 | 40.963 | 41.948 | 42.178 | 30.113 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 12738 | 0 | 2546.816 | 1.064 | 1.959 | 6.803 | 30.617 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.892 | 13.486 | 1000 | 0 | 67.15 | 40.97 | 41.978 | 42.947 | 35.367 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.235 | 9.738 | 1001 | 0 | 138.364 | 2.288 | 42.372 | 43.503 | 35.367 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.083 | 8.827 | 1001 | 0 | 110.211 | 40.948 | 42.502 | 43.78 | 35.367 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9315 | 0 | 1862.361 | 1.337 | 2.773 | 42.327 | 35.426 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.356 | 11.303 | 1000 | 0 | 80.931 | 41.886 | 42.955 | 43.899 | 38.488 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.915 | 12.094 | 1000 | 0 | 91.614 | 41.887 | 43.065 | 44.694 | 38.488 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.895 | 12.902 | 1000 | 0 | 84.069 | 41.924 | 42.977 | 44.676 | 38.496 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 7238 | 0 | 1446.355 | 1.713 | 3.447 | 18.759 | 38.984 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.756 | 14.615 | 1000 | 0 | 72.698 | 41.95 | 42.993 | 43.954 | 47.652 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.079 | 14.549 | 1000 | 0 | 71.025 | 41.97 | 44.071 | 46.798 | 47.652 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.808 | 14.666 | 1000 | 0 | 72.423 | 41.997 | 44.357 | 47.724 | 47.652 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 5058 | 0 | 1010.728 | 2.492 | 5.293 | 30.961 | 50.453 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.71 | 16.108 | 1000 | 0 | 63.654 | 42.981 | 45.228 | 47.175 | 54.684 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.188 | 15.358 | 1000 | 0 | 65.841 | 43.926 | 47.252 | 50.141 | 53.34 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.796 | 14.953 | 1000 | 0 | 67.587 | 43.945 | 46.384 | 49.068 | 50.953 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3386 | 0 | 676.212 | 4.17 | 7.677 | 24.882 | 56.965 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.593 | 17.247 | 1000 | 0 | 60.265 | 45.102 | 50.79 | 54.386 | 65.086 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.003 | 28.818 | 363 | 0 | 12.516 | 241.712 | 243.39 | 19609.977 | 65.578 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.2 | 243 | 0 | 12.512 | 241.793 | 242.78 | 12810.972 | 65.59 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.619 | 14.407 | 183 | 0 | 12.518 | 241.68 | 242.641 | 10017.794 | 65.59 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.593 | 123 | 0 | 12.508 | 241.877 | 242.808 | 5235.666 | 65.59 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.593 | 103 | 0 | 10.481 | 241.687 | 242.704 | 5135.608 | 65.602 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.794 | 63 | 0 | 12.505 | 241.804 | 242.798 | 243.571 | 65.602 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.792 | 42 | 0 | 8.34 | 241.728 | 242.292 | 242.972 | 65.602 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.019 | 122 | 0 | 24.342 | 41.971 | 42.937 | 43.016 | 65.648 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.03 | 114 | 0 | 22.714 | 44.97 | 45.961 | 45.988 | 65.648 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.04 | 97 | 0 | 19.374 | 51.971 | 52.105 | 52.971 | 65.648 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.065 | 56 | 0 | 11.052 | 90.973 | 91.968 | 92.042 | 65.68 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.054 | 2.087 | 36 | 0 | 7.123 | 141.052 | 142.048 | 142.645 | 65.68 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.377 | 21 | 0 | 4.168 | 241.935 | 242.102 | 242.129 | 65.68 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.156 | 1000 | 0 | 62.076 | 40.979 | 41.954 | 42.296 | 28.922 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.145 | 1000 | 0 | 62.096 | 40.975 | 41.941 | 42.176 | 29.281 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.153 | 1000 | 0 | 62.074 | 40.978 | 41.942 | 42.27 | 29.426 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.167 | 1000 | 0 | 62.059 | 40.978 | 41.966 | 42.611 | 29.539 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.139 | 1000 | 0 | 62.051 | 40.977 | 41.97 | 42.259 | 29.598 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.139 | 1000 | 0 | 62.068 | 40.98 | 41.966 | 42.403 | 29.598 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.132 | 1000 | 0 | 62.008 | 40.981 | 41.999 | 42.859 | 29.605 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.137 | 1000 | 0 | 62.048 | 40.977 | 41.954 | 42.541 | 29.938 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.839 | 13.772 | 1000 | 0 | 67.39 | 40.962 | 41.954 | 42.212 | 29.957 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.36 | 14.255 | 1000 | 0 | 65.104 | 40.963 | 41.957 | 42.658 | 29.98 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12930 | 0 | 2585.185 | 1.049 | 1.934 | 6.865 | 30.504 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.888 | 14.206 | 1000 | 0 | 67.167 | 40.974 | 41.994 | 42.974 | 34.664 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.001 | 8.833 | 1001 | 0 | 125.106 | 40.875 | 42.083 | 42.951 | 34.664 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.292 | 9.638 | 1000 | 0 | 97.166 | 40.974 | 42.602 | 43.722 | 34.664 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.056 | 2.002 | 9891 | 0 | 1956.243 | 1.295 | 2.612 | 16.298 | 34.973 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.11 | 12.311 | 1000 | 0 | 98.908 | 41.566 | 42.831 | 43.983 | 42.516 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.825 | 12.484 | 1000 | 0 | 84.564 | 41.903 | 42.935 | 44.358 | 39.953 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.1 | 12.681 | 1000 | 0 | 82.644 | 41.929 | 42.973 | 44.35 | 39.953 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 7235 | 0 | 1445.889 | 1.736 | 3.467 | 44.917 | 40.695 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.901 | 14.328 | 1000 | 0 | 71.936 | 41.964 | 43.183 | 45.012 | 45.734 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.34 | 13.185 | 1000 | 0 | 69.737 | 41.972 | 43.737 | 58.769 | 45.734 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.111 | 15.007 | 1000 | 0 | 70.864 | 41.967 | 43.871 | 46.062 | 45.734 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5178 | 0 | 1034.769 | 2.429 | 5.215 | 23.964 | 47.633 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.533 | 15.974 | 1000 | 0 | 64.381 | 42.984 | 45.209 | 47.057 | 54.191 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.869 | 15.381 | 1000 | 0 | 67.255 | 42.999 | 46.108 | 50.266 | 54.191 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.403 | 15.261 | 1000 | 0 | 64.921 | 43.578 | 46.985 | 50.217 | 52.156 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3490 | 0 | 697.193 | 3.965 | 7.449 | 21.215 | 58.176 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.512 | 16.853 | 1000 | 0 | 60.561 | 45.479 | 50.239 | 52.823 | 64.379 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.003 | 28.784 | 363 | 0 | 12.516 | 241.772 | 242.88 | 19608.968 | 64.813 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.424 | 19.171 | 243 | 0 | 12.51 | 241.891 | 242.558 | 12808.775 | 64.82 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.378 | 183 | 0 | 12.516 | 241.702 | 242.826 | 10022.44 | 64.828 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.589 | 123 | 0 | 12.513 | 241.741 | 242.434 | 5232.364 | 64.836 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.583 | 103 | 0 | 10.483 | 241.687 | 242.421 | 5132.55 | 64.836 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.794 | 63 | 0 | 12.507 | 241.777 | 242.454 | 242.845 | 64.836 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.795 | 42 | 0 | 8.34 | 241.7 | 242.233 | 242.378 | 64.836 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.018 | 122 | 0 | 24.372 | 41.965 | 42.047 | 42.948 | 64.863 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.034 | 114 | 0 | 22.72 | 44.962 | 45.825 | 45.982 | 64.863 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.042 | 97 | 0 | 19.354 | 51.966 | 52.962 | 53.02 | 64.871 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.058 | 56 | 0 | 11.041 | 90.98 | 91.961 | 92.029 | 64.895 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.05 | 2.082 | 36 | 0 | 7.129 | 140.991 | 142.073 | 142.685 | 64.895 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 2.38 | 21 | 0 | 4.175 | 240.988 | 242.316 | 242.734 | 64.895 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.17 | 1000 | 0 | 62.086 | 40.974 | 41.959 | 42.316 | 29.0 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.142 | 1000 | 0 | 62.085 | 40.973 | 41.945 | 42.217 | 29.316 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.135 | 1000 | 0 | 62.028 | 40.977 | 41.976 | 42.447 | 29.422 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.151 | 1000 | 0 | 62.06 | 40.98 | 41.879 | 42.262 | 29.59 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.132 | 1000 | 0 | 62.068 | 40.976 | 41.942 | 42.197 | 29.648 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.125 | 1000 | 0 | 62.043 | 40.98 | 41.954 | 42.275 | 29.648 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.136 | 1000 | 0 | 62.08 | 40.977 | 41.932 | 42.341 | 29.652 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.151 | 1000 | 0 | 62.038 | 40.978 | 41.96 | 42.395 | 29.922 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.037 | 12.641 | 1000 | 0 | 66.503 | 40.96 | 41.955 | 42.149 | 29.98 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.28 | 14.455 | 1000 | 0 | 65.445 | 40.964 | 41.964 | 42.752 | 29.98 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12180 | 0 | 2434.934 | 1.1 | 2.044 | 6.933 | 30.5 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.663 | 14.249 | 1000 | 0 | 68.198 | 40.972 | 42.019 | 42.885 | 34.711 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.087 | 8.247 | 1000 | 0 | 110.046 | 40.944 | 42.219 | 43.167 | 34.711 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.907 | 8.133 | 1000 | 0 | 100.937 | 40.965 | 42.225 | 43.28 | 34.711 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9376 | 0 | 1874.054 | 1.338 | 2.788 | 20.307 | 35.281 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.78 | 9.108 | 1000 | 0 | 84.893 | 41.751 | 42.936 | 43.752 | 40.992 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.586 | 12.905 | 1000 | 0 | 86.308 | 41.917 | 42.781 | 45.044 | 39.094 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.667 | 13.129 | 1000 | 0 | 85.715 | 41.915 | 42.937 | 43.959 | 39.094 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 6599 | 0 | 1318.974 | 1.815 | 3.709 | 45.643 | 40.555 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.572 | 14.242 | 1000 | 0 | 73.681 | 41.955 | 43.544 | 44.988 | 45.281 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.384 | 15.217 | 1000 | 0 | 69.52 | 41.963 | 43.82 | 45.477 | 44.469 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.257 | 14.989 | 1000 | 0 | 70.141 | 41.979 | 43.97 | 46.887 | 44.469 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 4526 | 0 | 904.247 | 2.772 | 6.104 | 25.795 | 46.906 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.277 | 15.795 | 1000 | 0 | 65.459 | 43.026 | 45.955 | 56.427 | 54.039 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.188 | 15.411 | 1000 | 0 | 65.842 | 43.465 | 46.942 | 48.592 | 54.039 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.87 | 15.48 | 1000 | 0 | 67.248 | 43.932 | 46.312 | 51.681 | 54.039 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3216 | 0 | 642.269 | 4.313 | 8.101 | 13.031 | 60.051 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.582 | 17.209 | 1000 | 0 | 60.308 | 45.828 | 50.388 | 58.973 | 67.82 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.996 | 28.763 | 363 | 0 | 12.519 | 241.718 | 242.635 | 19605.974 | 68.219 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.416 | 19.172 | 243 | 0 | 12.516 | 241.762 | 242.66 | 12806.944 | 68.227 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.379 | 183 | 0 | 12.517 | 241.713 | 242.704 | 10021.691 | 68.242 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.586 | 123 | 0 | 12.512 | 241.764 | 242.502 | 5234.802 | 68.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.585 | 103 | 0 | 10.485 | 241.621 | 242.362 | 5134.511 | 68.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.793 | 63 | 0 | 12.515 | 241.506 | 242.42 | 242.481 | 68.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.786 | 42 | 0 | 8.343 | 241.708 | 242.239 | 242.274 | 68.262 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.019 | 122 | 0 | 24.344 | 41.966 | 42.963 | 42.977 | 68.273 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.031 | 114 | 0 | 22.724 | 44.965 | 45.931 | 45.96 | 68.273 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.04 | 97 | 0 | 19.35 | 51.968 | 52.964 | 52.973 | 68.273 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.078 | 2.059 | 56 | 0 | 11.028 | 90.983 | 92.838 | 92.967 | 68.289 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.053 | 2.082 | 36 | 0 | 7.125 | 140.991 | 142.092 | 142.804 | 68.297 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.38 | 21 | 0 | 4.164 | 241.96 | 242.951 | 242.961 | 68.301 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17778 | 0 | 3554.823 | 1.32 | 1.935 | 2.434 | 67.84 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17165 | 0 | 3432.258 | 1.37 | 2.066 | 2.524 | 68.109 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17664 | 0 | 3531.863 | 1.329 | 1.972 | 2.479 | 68.215 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17434 | 0 | 3486.137 | 1.352 | 1.989 | 2.476 | 68.586 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17290 | 0 | 3456.892 | 1.356 | 2.074 | 2.549 | 70.27 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15056 | 0 | 3010.417 | 1.565 | 2.387 | 2.945 | 70.215 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17383 | 0 | 3476.005 | 1.348 | 2.052 | 2.513 | 70.316 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17071 | 0 | 3413.55 | 1.376 | 2.06 | 2.542 | 72.844 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13585 | 0 | 2716.148 | 1.742 | 2.364 | 3.259 | 81.52 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7313 | 0 | 1461.758 | 3.332 | 4.181 | 6.138 | 76.289 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13414 | 0 | 2682.149 | 1.77 | 2.391 | 3.241 | 81.156 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13677 | 0 | 2734.703 | 1.377 | 2.156 | 3.551 | 71.391 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9874 | 0 | 1973.561 | 2.206 | 3.946 | 5.897 | 99.371 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4154 | 0 | 829.985 | 5.893 | 9.159 | 11.189 | 80.188 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 10063 | 0 | 2011.911 | 2.165 | 3.877 | 5.803 | 75.902 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9911 | 0 | 1981.564 | 2.18 | 3.965 | 6.224 | 75.848 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7517 | 0 | 1502.685 | 2.816 | 5.153 | 21.388 | 117.336 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.216 | 2292 | 0 | 457.577 | 10.786 | 17.676 | 20.113 | 84.391 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7336 | 0 | 1466.546 | 2.861 | 5.427 | 21.639 | 80.855 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7447 | 0 | 1488.561 | 2.839 | 5.327 | 21.306 | 80.934 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5074 | 0 | 1013.938 | 4.15 | 7.911 | 24.002 | 147.441 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.928 | 1259 | 0 | 250.919 | 19.438 | 32.864 | 36.676 | 105.176 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4981 | 0 | 995.559 | 4.221 | 8.241 | 24.872 | 106.148 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4870 | 0 | 973.235 | 4.368 | 8.417 | 24.211 | 106.273 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.005 | 3198 | 0 | 638.435 | 7.255 | 12.929 | 14.396 | 156.25 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.01 | 7.487 | 1000 | 0 | 124.852 | 39.676 | 64.029 | 72.639 | 122.035 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.01 | 2617 | 0 | 522.476 | 9.069 | 15.729 | 17.821 | 123.098 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2811 | 0 | 561.306 | 8.619 | 14.544 | 16.719 | 123.16 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.913 | 50.906 | 360 | 0 | 7.071 | 2544.719 | 2554.178 | 2558.752 | 143.211 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.936 | 33.932 | 240 | 0 | 7.072 | 1696.331 | 1704.316 | 1706.809 | 143.469 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.445 | 25.446 | 180 | 0 | 7.074 | 1271.704 | 1278.322 | 1281.601 | 145.746 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.967 | 16.96 | 120 | 0 | 7.073 | 848.042 | 855.041 | 857.37 | 145.809 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.171 | 14.204 | 100 | 0 | 7.056 | 826.149 | 840.239 | 843.837 | 145.813 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.483 | 8.483 | 60 | 0 | 7.073 | 423.87 | 427.048 | 428.6 | 145.813 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.654 | 5.654 | 40 | 0 | 7.074 | 282.62 | 284.212 | 284.397 | 112.211 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1926 | 0 | 385.067 | 2.532 | 2.774 | 3.034 | 120.738 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.008 | 566 | 0 | 113.149 | 8.792 | 8.95 | 9.084 | 121.738 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.006 | 405 | 0 | 80.983 | 12.325 | 12.462 | 12.679 | 123.059 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.028 | 99 | 0 | 19.776 | 50.461 | 50.921 | 51.007 | 123.184 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.015 | 50 | 0 | 9.938 | 100.468 | 101.268 | 101.465 | 123.184 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.507 | 200.617 | 200.666 | 123.184 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17657 | 0 | 3530.683 | 1.326 | 2.04 | 2.532 | 67.684 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 17311 | 0 | 3461.352 | 1.35 | 2.114 | 2.586 | 67.836 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17539 | 0 | 3507.134 | 1.331 | 2.096 | 2.564 | 68.418 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17201 | 0 | 3439.393 | 1.361 | 2.116 | 2.597 | 68.578 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17275 | 0 | 3454.22 | 1.348 | 2.158 | 2.602 | 70.023 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15223 | 0 | 3043.662 | 1.532 | 2.439 | 2.976 | 69.922 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16809 | 0 | 3361.102 | 1.38 | 2.252 | 2.663 | 69.953 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16342 | 0 | 3267.423 | 1.432 | 2.238 | 2.741 | 72.875 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13348 | 0 | 2668.877 | 1.749 | 2.769 | 3.419 | 81.816 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7259 | 0 | 1451.134 | 3.3 | 5.369 | 6.421 | 74.906 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13151 | 0 | 2629.481 | 1.774 | 2.899 | 3.464 | 81.027 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.001 | 13501 | 0 | 2694.351 | 1.319 | 2.277 | 41.112 | 72.59 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9804 | 0 | 1960.114 | 2.177 | 3.987 | 6.29 | 104.27 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4164 | 0 | 831.789 | 5.758 | 10.04 | 11.232 | 78.965 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9629 | 0 | 1925.02 | 2.18 | 4.134 | 6.714 | 74.742 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.017 | 9449 | 0 | 1888.82 | 2.247 | 4.217 | 6.806 | 74.629 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7189 | 0 | 1436.926 | 2.869 | 5.551 | 22.627 | 115.246 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.109 | 2311 | 0 | 461.428 | 10.505 | 18.087 | 20.219 | 82.473 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7397 | 0 | 1478.799 | 2.719 | 5.486 | 22.625 | 78.047 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7408 | 0 | 1480.891 | 2.78 | 5.365 | 22.289 | 78.117 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 4958 | 0 | 991.007 | 4.289 | 8.076 | 25.53 | 119.75 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.925 | 1256 | 0 | 250.312 | 19.466 | 33.517 | 36.239 | 82.5 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4938 | 0 | 987.041 | 4.202 | 8.452 | 25.577 | 80.543 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.005 | 4753 | 0 | 949.033 | 4.462 | 8.548 | 26.24 | 80.605 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3203 | 0 | 639.8 | 7.373 | 12.289 | 14.329 | 108.41 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.636 | 7.568 | 1000 | 0 | 130.95 | 37.749 | 61.465 | 69.713 | 84.402 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3146 | 0 | 628.364 | 7.389 | 13.351 | 15.051 | 87.844 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3144 | 0 | 628.001 | 7.589 | 13.405 | 14.912 | 87.906 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.919 | 50.909 | 360 | 0 | 7.07 | 2545.374 | 2553.956 | 2557.056 | 103.555 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.929 | 33.931 | 240 | 0 | 7.074 | 1695.891 | 1703.293 | 1706.137 | 110.242 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.445 | 25.442 | 180 | 0 | 7.074 | 1271.526 | 1278.513 | 1281.686 | 110.309 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.968 | 16.967 | 120 | 0 | 7.072 | 848.139 | 854.577 | 856.081 | 110.684 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.18 | 14.195 | 100 | 0 | 7.052 | 837.448 | 849.331 | 850.112 | 110.684 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.484 | 8.481 | 60 | 0 | 7.072 | 423.964 | 427.832 | 429.344 | 110.809 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.653 | 40 | 0 | 7.076 | 282.507 | 282.858 | 283.107 | 110.809 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 1912 | 0 | 382.332 | 2.564 | 2.78 | 3.021 | 110.934 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 564 | 0 | 112.76 | 8.821 | 8.97 | 9.132 | 110.934 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.003 | 404 | 0 | 80.602 | 12.353 | 12.637 | 13.129 | 110.934 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.05 | 2.023 | 100 | 0 | 19.803 | 50.432 | 50.567 | 50.855 | 110.934 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.013 | 50 | 0 | 9.943 | 100.502 | 100.597 | 100.713 | 110.934 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.555 | 200.652 | 200.654 | 110.934 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17223 | 0 | 3443.806 | 1.359 | 2.071 | 2.553 | 67.762 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16847 | 0 | 3368.701 | 1.393 | 2.13 | 2.615 | 67.887 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17224 | 0 | 3443.842 | 1.362 | 2.079 | 2.534 | 68.496 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16814 | 0 | 3362.066 | 1.399 | 2.086 | 2.558 | 68.563 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16895 | 0 | 3377.706 | 1.381 | 2.191 | 2.645 | 70.016 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14983 | 0 | 2995.774 | 1.573 | 2.439 | 2.983 | 70.207 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16962 | 0 | 3390.992 | 1.378 | 2.156 | 2.574 | 70.281 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16648 | 0 | 3328.903 | 1.404 | 2.15 | 2.663 | 72.645 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13237 | 0 | 2646.698 | 1.775 | 2.527 | 3.419 | 82.926 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7129 | 0 | 1424.91 | 3.396 | 4.672 | 6.478 | 76.387 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12761 | 0 | 2551.548 | 1.844 | 2.675 | 3.578 | 81.387 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.035 | 2.017 | 12911 | 0 | 2564.474 | 1.625 | 2.48 | 3.615 | 72.414 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 2.003 | 9475 | 0 | 1887.3 | 2.263 | 4.112 | 6.414 | 99.711 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4041 | 0 | 807.244 | 6.014 | 9.869 | 11.6 | 80.012 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9632 | 0 | 1925.648 | 2.222 | 4.094 | 6.56 | 77.41 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9558 | 0 | 1910.858 | 2.241 | 4.076 | 6.316 | 77.285 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7502 | 0 | 1499.612 | 2.799 | 5.135 | 23.764 | 118.559 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.126 | 2291 | 0 | 457.25 | 10.617 | 18.055 | 20.476 | 84.34 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 7291 | 0 | 1456.632 | 2.855 | 5.445 | 23.984 | 81.879 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7197 | 0 | 1438.756 | 2.874 | 5.498 | 23.966 | 81.957 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4749 | 0 | 948.979 | 4.459 | 8.297 | 26.892 | 128.164 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.955 | 1258 | 0 | 250.666 | 19.685 | 22.509 | 36.889 | 83.504 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.022 | 4828 | 0 | 964.813 | 4.376 | 8.36 | 26.808 | 83.156 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.018 | 4808 | 0 | 961.017 | 4.425 | 8.503 | 27.062 | 83.344 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2941 | 0 | 587.204 | 8.161 | 13.432 | 16.115 | 97.273 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.477 | 7.455 | 1000 | 0 | 133.738 | 36.967 | 39.876 | 67.636 | 85.0 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 2846 | 0 | 568.47 | 8.314 | 15.129 | 16.872 | 85.297 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3055 | 0 | 610.113 | 8.013 | 12.984 | 15.406 | 85.297 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.892 | 50.893 | 360 | 0 | 7.074 | 2544.314 | 2554.856 | 2558.01 | 103.016 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.931 | 33.922 | 240 | 0 | 7.073 | 1696.067 | 1703.628 | 1705.663 | 103.832 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.445 | 25.439 | 180 | 0 | 7.074 | 1271.69 | 1278.967 | 1280.901 | 103.895 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.96 | 16.956 | 120 | 0 | 7.075 | 847.552 | 852.639 | 855.362 | 103.895 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.184 | 14.132 | 100 | 0 | 7.05 | 832.261 | 848.343 | 850.718 | 103.895 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.483 | 8.478 | 60 | 0 | 7.073 | 423.872 | 427.718 | 427.99 | 101.957 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.654 | 40 | 0 | 7.078 | 282.466 | 284.12 | 284.348 | 103.082 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1938 | 0 | 387.517 | 2.517 | 2.745 | 2.905 | 103.457 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.002 | 566 | 0 | 113.065 | 8.796 | 8.932 | 9.141 | 103.457 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.01 | 406 | 0 | 81.167 | 12.304 | 12.434 | 12.664 | 103.395 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.049 | 2.025 | 100 | 0 | 19.806 | 50.43 | 50.601 | 50.667 | 103.332 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.025 | 2.009 | 50 | 0 | 9.95 | 100.442 | 100.531 | 100.604 | 103.332 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.5 | 200.588 | 200.653 | 103.332 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

# Puma vs Raptor Simulation

Run ID: `20260803-042546`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.206 | 1000 | 0 | 61.996 | 40.984 | 41.983 | 42.675 | 29.23 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.249 | 1000 | 0 | 62.074 | 40.978 | 41.965 | 42.367 | 29.262 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.279 | 1000 | 0 | 62.035 | 40.984 | 41.962 | 42.3 | 29.277 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.325 | 1000 | 0 | 62.041 | 40.981 | 41.953 | 42.304 | 29.352 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.263 | 1000 | 0 | 62.035 | 40.978 | 41.956 | 42.4 | 29.449 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.21 | 1000 | 0 | 62.103 | 40.973 | 41.957 | 42.245 | 29.492 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.2 | 1000 | 0 | 62.04 | 40.979 | 41.96 | 42.323 | 29.586 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.226 | 1000 | 0 | 62.047 | 40.978 | 41.962 | 42.579 | 30.195 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.279 | 14.411 | 1000 | 0 | 65.45 | 40.967 | 41.957 | 42.55 | 30.195 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.921 | 13.986 | 1000 | 0 | 67.019 | 40.965 | 41.963 | 42.332 | 30.285 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 13837 | 0 | 2766.6 | 0.983 | 1.779 | 6.447 | 30.473 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.839 | 14.021 | 1000 | 0 | 67.39 | 40.97 | 41.979 | 42.962 | 41.379 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.84 | 9.403 | 1000 | 0 | 84.462 | 40.992 | 42.255 | 43.219 | 41.379 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.546 | 11.16 | 1001 | 0 | 104.865 | 40.949 | 42.164 | 42.973 | 41.379 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10488 | 0 | 2096.773 | 1.246 | 2.465 | 41.932 | 41.379 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.411 | 13.061 | 1000 | 0 | 96.051 | 41.892 | 42.805 | 43.693 | 50.207 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.705 | 12.597 | 1000 | 0 | 72.967 | 41.944 | 42.951 | 44.011 | 50.207 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.688 | 13.861 | 1000 | 0 | 73.056 | 41.95 | 43.003 | 43.896 | 50.207 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 7496 | 0 | 1498.313 | 1.631 | 3.275 | 75.067 | 50.207 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.599 | 14.283 | 1000 | 0 | 68.5 | 41.974 | 43.729 | 44.925 | 63.836 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.685 | 15.161 | 1000 | 0 | 68.097 | 42.346 | 44.09 | 45.491 | 63.836 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.121 | 15.316 | 1000 | 0 | 66.132 | 42.907 | 44.039 | 45.122 | 63.836 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 4921 | 0 | 983.285 | 2.69 | 5.333 | 42.169 | 63.836 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.818 | 16.146 | 1000 | 0 | 63.219 | 43.83 | 45.795 | 47.195 | 77.828 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.402 | 16.044 | 1000 | 0 | 64.928 | 43.989 | 47.79 | 49.929 | 77.828 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.985 | 16.127 | 1000 | 0 | 62.558 | 43.972 | 47.269 | 49.918 | 77.828 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3122 | 0 | 623.546 | 4.459 | 8.338 | 42.431 | 77.828 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.992 | 17.448 | 1000 | 0 | 58.853 | 45.967 | 50.979 | 53.842 | 90.691 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.013 | 28.759 | 363 | 0 | 12.512 | 241.821 | 242.995 | 19610.207 | 91.063 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.422 | 19.17 | 243 | 0 | 12.512 | 241.799 | 242.855 | 12800.294 | 91.09 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.63 | 14.376 | 183 | 0 | 12.508 | 241.821 | 242.877 | 10034.149 | 91.098 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.594 | 123 | 0 | 12.502 | 241.947 | 243.091 | 5239.377 | 91.102 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.592 | 103 | 0 | 10.481 | 241.547 | 242.454 | 5131.187 | 91.102 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.79 | 63 | 0 | 12.506 | 241.765 | 242.688 | 242.869 | 91.102 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.8 | 42 | 0 | 8.338 | 241.712 | 242.986 | 243.132 | 91.102 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.024 | 122 | 0 | 24.362 | 41.96 | 42.135 | 42.962 | 91.113 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.043 | 109 | 0 | 21.775 | 46.965 | 47.572 | 47.998 | 91.156 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.018 | 99 | 0 | 19.723 | 50.968 | 51.965 | 52.009 | 91.156 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.062 | 55 | 0 | 10.997 | 91.925 | 92.035 | 92.504 | 91.16 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.09 | 36 | 0 | 7.104 | 141.941 | 142.245 | 142.718 | 91.16 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 2.401 | 21 | 0 | 4.163 | 241.925 | 242.994 | 247.803 | 91.16 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.146 | 1000 | 0 | 62.036 | 40.98 | 41.972 | 42.356 | 27.617 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.142 | 1000 | 0 | 62.059 | 40.978 | 41.935 | 42.122 | 27.641 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.132 | 1000 | 0 | 62.063 | 40.978 | 41.936 | 42.449 | 27.645 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.147 | 1000 | 0 | 62.12 | 40.981 | 41.942 | 42.216 | 27.695 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.234 | 1000 | 0 | 62.022 | 40.981 | 41.964 | 42.656 | 27.711 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.223 | 1000 | 0 | 62.062 | 40.983 | 41.966 | 42.417 | 27.711 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.288 | 1000 | 0 | 62.1 | 40.979 | 41.96 | 42.281 | 27.727 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.206 | 1000 | 0 | 62.065 | 40.978 | 41.959 | 42.662 | 28.086 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.209 | 14.484 | 1000 | 0 | 70.38 | 40.962 | 41.954 | 42.821 | 28.086 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.24 | 14.3 | 1000 | 0 | 65.617 | 40.966 | 41.954 | 42.169 | 28.191 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13675 | 0 | 2734.115 | 0.992 | 1.818 | 13.486 | 28.719 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.788 | 14.417 | 1000 | 0 | 67.623 | 40.974 | 41.986 | 42.886 | 34.602 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.614 | 10.516 | 1000 | 0 | 116.094 | 40.932 | 42.249 | 43.01 | 34.602 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.84 | 7.802 | 1000 | 0 | 101.624 | 41.017 | 42.42 | 43.149 | 34.602 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9827 | 0 | 1964.622 | 1.318 | 2.675 | 35.808 | 34.922 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.113 | 12.136 | 1000 | 0 | 82.557 | 41.868 | 42.817 | 43.75 | 39.043 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.057 | 14.076 | 1000 | 0 | 71.141 | 41.945 | 42.97 | 44.104 | 39.043 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.291 | 13.021 | 1000 | 0 | 75.239 | 41.94 | 42.969 | 43.974 | 39.043 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 7427 | 0 | 1484.295 | 1.662 | 3.43 | 69.502 | 39.543 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.108 | 15.597 | 1000 | 0 | 70.88 | 41.98 | 43.784 | 44.839 | 43.914 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.552 | 15.286 | 1000 | 0 | 68.721 | 42.16 | 44.662 | 47.628 | 41.945 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.527 | 15.234 | 1000 | 0 | 68.835 | 42.77 | 44.924 | 46.857 | 41.945 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5384 | 0 | 1076.024 | 2.399 | 4.802 | 17.048 | 44.938 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.702 | 16.448 | 1000 | 0 | 63.684 | 43.915 | 46.282 | 49.168 | 51.125 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.722 | 16.433 | 1000 | 0 | 63.604 | 43.987 | 47.969 | 50.714 | 49.984 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.877 | 16.416 | 1000 | 0 | 62.985 | 44.063 | 47.967 | 50.279 | 49.984 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3579 | 0 | 714.992 | 3.848 | 7.408 | 16.349 | 55.996 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.831 | 17.398 | 1000 | 0 | 59.414 | 45.449 | 49.807 | 52.882 | 82.93 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.995 | 28.801 | 363 | 0 | 12.52 | 241.607 | 242.704 | 19601.114 | 82.148 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.409 | 19.172 | 243 | 0 | 12.52 | 241.579 | 242.61 | 12797.398 | 82.203 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.619 | 14.376 | 183 | 0 | 12.518 | 241.624 | 242.498 | 10024.678 | 82.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.595 | 123 | 0 | 12.514 | 241.741 | 242.64 | 5232.408 | 82.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.595 | 103 | 0 | 10.482 | 241.636 | 242.364 | 5128.371 | 82.242 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.792 | 63 | 0 | 12.506 | 241.761 | 242.306 | 242.531 | 82.242 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.792 | 42 | 0 | 8.347 | 241.25 | 242.186 | 242.224 | 82.246 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.021 | 122 | 0 | 24.377 | 41.952 | 42.126 | 42.763 | 82.266 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.035 | 110 | 0 | 21.809 | 46.959 | 47.908 | 47.98 | 82.293 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.035 | 98 | 0 | 19.481 | 51.928 | 52.04 | 52.157 | 82.387 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.068 | 55 | 0 | 10.996 | 91.933 | 92.021 | 92.265 | 82.402 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.088 | 36 | 0 | 7.107 | 141.922 | 142.618 | 143.29 | 82.43 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.38 | 21 | 0 | 4.166 | 241.942 | 242.271 | 242.81 | 82.434 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.167 | 1000 | 0 | 62.028 | 40.976 | 41.974 | 42.471 | 27.406 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.167 | 1000 | 0 | 62.035 | 40.971 | 41.928 | 42.497 | 27.43 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.166 | 1000 | 0 | 62.023 | 40.975 | 41.972 | 42.324 | 27.43 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.184 | 1000 | 0 | 62.026 | 40.974 | 41.962 | 42.257 | 27.508 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.152 | 1000 | 0 | 62.006 | 40.976 | 41.961 | 42.297 | 27.711 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.125 | 1000 | 0 | 62.028 | 40.982 | 41.969 | 42.362 | 27.719 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.155 | 1000 | 0 | 62.068 | 40.978 | 41.965 | 42.532 | 27.738 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.132 | 1000 | 0 | 62.094 | 40.978 | 41.932 | 42.33 | 28.066 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.316 | 14.421 | 1000 | 0 | 65.29 | 40.968 | 41.955 | 42.108 | 28.156 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.15 | 14.213 | 1000 | 0 | 66.007 | 40.97 | 41.953 | 42.136 | 28.156 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13625 | 0 | 2723.766 | 0.99 | 1.885 | 6.991 | 28.719 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.965 | 14.356 | 1000 | 0 | 66.822 | 40.972 | 41.976 | 42.139 | 34.363 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.641 | 12.626 | 1000 | 0 | 79.107 | 40.976 | 42.035 | 43.972 | 34.363 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.347 | 12.393 | 1000 | 0 | 80.993 | 40.978 | 42.059 | 42.832 | 34.363 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 10333 | 0 | 2065.52 | 1.208 | 2.456 | 41.328 | 34.363 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.333 | 12.871 | 1000 | 0 | 81.083 | 41.922 | 42.931 | 43.277 | 38.48 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.239 | 13.12 | 1000 | 0 | 81.708 | 41.927 | 43.089 | 44.03 | 38.48 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.606 | 13.347 | 1000 | 0 | 73.497 | 41.938 | 43.043 | 44.171 | 38.48 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6458 | 0 | 1290.789 | 1.927 | 4.172 | 24.485 | 38.574 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.893 | 15.231 | 1000 | 0 | 71.979 | 41.988 | 43.858 | 45.214 | 44.664 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.131 | 14.887 | 1000 | 0 | 70.767 | 42.902 | 44.538 | 53.579 | 44.664 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.427 | 15.066 | 1000 | 0 | 69.316 | 42.911 | 44.28 | 45.51 | 44.664 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 4905 | 0 | 980.184 | 2.68 | 5.388 | 18.787 | 47.289 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.68 | 16.425 | 1000 | 0 | 63.774 | 43.692 | 45.954 | 47.76 | 54.676 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.846 | 16.142 | 1000 | 0 | 67.36 | 43.965 | 47.574 | 49.579 | 54.676 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.086 | 15.506 | 1000 | 0 | 66.285 | 43.945 | 46.719 | 49.413 | 54.676 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3046 | 0 | 608.312 | 4.49 | 8.422 | 160.133 | 60.688 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.488 | 17.836 | 1000 | 0 | 60.651 | 45.961 | 51.072 | 54.73 | 68.824 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.003 | 28.744 | 363 | 0 | 12.516 | 241.706 | 243.132 | 19605.647 | 69.047 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.167 | 243 | 0 | 12.512 | 241.736 | 243.033 | 12804.876 | 69.074 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.637 | 14.375 | 183 | 0 | 12.503 | 241.938 | 243.217 | 10029.757 | 69.074 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.585 | 123 | 0 | 12.514 | 241.66 | 242.444 | 5231.552 | 69.09 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.579 | 103 | 0 | 10.486 | 241.429 | 242.657 | 5129.605 | 69.09 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.789 | 63 | 0 | 12.506 | 241.718 | 243.037 | 243.349 | 69.094 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.794 | 42 | 0 | 8.345 | 241.44 | 242.265 | 242.355 | 69.102 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.019 | 122 | 0 | 24.328 | 41.968 | 42.953 | 43.135 | 69.105 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.015 | 110 | 0 | 21.843 | 46.957 | 47.944 | 47.98 | 69.109 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.035 | 99 | 0 | 19.657 | 50.982 | 51.992 | 52.097 | 69.191 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.073 | 55 | 0 | 10.966 | 91.953 | 92.138 | 92.511 | 69.191 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.087 | 36 | 0 | 7.104 | 141.943 | 142.12 | 142.234 | 69.203 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.382 | 21 | 0 | 4.17 | 241.921 | 242.109 | 242.125 | 69.203 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18238 | 0 | 3646.987 | 1.298 | 1.863 | 2.258 | 63.781 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18140 | 0 | 3627.251 | 1.302 | 1.887 | 2.311 | 63.773 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18388 | 0 | 3676.826 | 1.282 | 1.875 | 2.293 | 63.676 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 17641 | 0 | 3527.533 | 1.343 | 2.092 | 2.52 | 64.27 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17876 | 0 | 3574.313 | 1.316 | 1.994 | 2.359 | 66.012 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15442 | 0 | 3087.633 | 1.532 | 2.313 | 2.782 | 65.73 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17620 | 0 | 3523.282 | 1.329 | 2.078 | 2.484 | 65.852 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16993 | 0 | 3397.752 | 1.385 | 2.235 | 2.707 | 68.156 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13747 | 0 | 2748.554 | 1.706 | 2.573 | 3.19 | 77.41 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7563 | 0 | 1511.631 | 3.184 | 4.592 | 6.118 | 71.422 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13671 | 0 | 2733.541 | 1.708 | 2.715 | 3.286 | 76.82 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.036 | 14060 | 0 | 2811.258 | 1.523 | 2.363 | 3.146 | 65.57 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10411 | 0 | 2081.419 | 2.14 | 3.611 | 5.684 | 99.543 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4296 | 0 | 858.372 | 5.66 | 9.548 | 10.933 | 76.066 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10668 | 0 | 2132.828 | 2.054 | 3.728 | 5.675 | 70.832 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10462 | 0 | 2091.761 | 2.087 | 3.791 | 6.037 | 70.957 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7967 | 0 | 1592.705 | 2.773 | 4.769 | 13.501 | 125.82 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.033 | 2414 | 0 | 482.025 | 10.102 | 17.057 | 19.115 | 79.539 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7967 | 0 | 1592.649 | 2.662 | 5.178 | 13.727 | 71.941 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7793 | 0 | 1557.817 | 2.713 | 5.197 | 14.273 | 71.941 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5080 | 0 | 1015.158 | 4.562 | 7.675 | 17.434 | 159.02 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.903 | 1285 | 0 | 256.156 | 19.282 | 21.138 | 35.082 | 84.051 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 5126 | 0 | 1024.2 | 4.185 | 8.031 | 18.227 | 78.91 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5037 | 0 | 1006.67 | 4.278 | 8.197 | 17.875 | 79.223 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.01 | 2848 | 0 | 568.821 | 8.731 | 13.537 | 15.354 | 143.289 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.361 | 7.296 | 1000 | 0 | 135.842 | 36.578 | 38.297 | 66.621 | 84.781 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3215 | 0 | 642.286 | 7.197 | 13.196 | 14.58 | 85.324 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3240 | 0 | 647.072 | 7.273 | 13.059 | 14.663 | 85.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.786 | 50.915 | 360 | 0 | 7.089 | 2538.738 | 2558.347 | 2569.361 | 103.156 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.847 | 34.01 | 240 | 0 | 7.091 | 1691.641 | 1706.411 | 1714.705 | 106.781 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.39 | 25.465 | 180 | 0 | 7.089 | 1268.794 | 1290.563 | 1305.17 | 102.793 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.921 | 16.961 | 120 | 0 | 7.092 | 845.309 | 861.61 | 869.775 | 107.297 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.156 | 14.145 | 100 | 0 | 7.064 | 814.556 | 847.523 | 855.71 | 107.613 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.457 | 8.485 | 60 | 0 | 7.095 | 422.591 | 424.744 | 425.835 | 107.613 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.639 | 5.641 | 40 | 0 | 7.094 | 281.766 | 282.462 | 282.599 | 107.617 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3612 | 0 | 722.209 | 1.347 | 1.471 | 1.746 | 112.566 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 941 | 0 | 188.158 | 5.263 | 5.46 | 5.837 | 116.93 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.007 | 482 | 0 | 96.218 | 10.352 | 10.507 | 10.815 | 116.93 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.026 | 99 | 0 | 19.785 | 50.474 | 50.667 | 50.695 | 116.93 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.016 | 50 | 0 | 9.941 | 100.548 | 100.688 | 100.734 | 116.93 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.604 | 200.681 | 200.701 | 116.93 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18599 | 0 | 3719.103 | 1.275 | 1.788 | 2.211 | 63.703 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 18077 | 0 | 3614.689 | 1.311 | 1.85 | 2.217 | 63.652 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18351 | 0 | 3669.469 | 1.286 | 1.853 | 2.269 | 63.57 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18468 | 0 | 3692.896 | 1.281 | 1.934 | 2.344 | 63.859 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18438 | 0 | 3686.911 | 1.279 | 1.846 | 2.241 | 65.82 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16174 | 0 | 3234.084 | 1.47 | 2.095 | 2.646 | 65.434 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 18238 | 0 | 3646.971 | 1.289 | 1.892 | 2.3 | 65.703 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17629 | 0 | 3524.956 | 1.336 | 2.098 | 2.574 | 68.203 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14016 | 0 | 2802.441 | 1.682 | 2.465 | 3.087 | 77.379 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7751 | 0 | 1549.325 | 3.119 | 4.203 | 5.908 | 71.344 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14143 | 0 | 2827.852 | 1.661 | 2.506 | 3.161 | 77.113 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.001 | 14160 | 0 | 2819.972 | 1.599 | 2.43 | 3.091 | 67.613 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10155 | 0 | 2030.259 | 2.181 | 3.706 | 6.068 | 101.121 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4213 | 0 | 841.829 | 5.684 | 9.707 | 11.014 | 74.758 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 10435 | 0 | 2086.389 | 2.072 | 3.841 | 5.796 | 69.813 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 10174 | 0 | 2034.061 | 2.123 | 3.873 | 6.244 | 69.5 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 7867 | 0 | 1572.137 | 2.765 | 4.82 | 15.319 | 122.441 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.066 | 2422 | 0 | 483.54 | 10.104 | 17.251 | 19.37 | 77.762 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 7726 | 0 | 1544.586 | 2.699 | 5.228 | 14.981 | 74.531 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7713 | 0 | 1541.65 | 2.718 | 5.328 | 15.038 | 74.531 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5128 | 0 | 1024.908 | 4.561 | 7.501 | 17.869 | 138.16 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.802 | 1305 | 0 | 260.058 | 18.826 | 31.39 | 34.982 | 78.336 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5404 | 0 | 1080.044 | 3.988 | 7.601 | 18.383 | 78.457 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.187 | 2.003 | 5304 | 0 | 1022.521 | 4.088 | 7.723 | 18.577 | 78.52 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2931 | 0 | 585.283 | 8.407 | 13.421 | 15.142 | 132.266 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.253 | 7.163 | 1000 | 0 | 137.873 | 35.858 | 58.425 | 65.726 | 85.211 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3446 | 0 | 688.281 | 6.722 | 12.219 | 13.64 | 82.5 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3459 | 0 | 690.893 | 6.894 | 12.045 | 13.383 | 82.5 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.81 | 50.921 | 360 | 0 | 7.085 | 2540.092 | 2561.359 | 2572.645 | 101.82 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.867 | 33.926 | 240 | 0 | 7.087 | 1692.785 | 1707.027 | 1717.996 | 101.828 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.384 | 25.416 | 180 | 0 | 7.091 | 1268.553 | 1277.22 | 1284.188 | 105.402 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.929 | 16.964 | 120 | 0 | 7.088 | 846.11 | 853.864 | 861.234 | 107.297 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.226 | 14.18 | 100 | 0 | 7.029 | 825.285 | 849.209 | 852.047 | 109.648 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.462 | 8.48 | 60 | 0 | 7.091 | 422.871 | 426.789 | 432.821 | 109.652 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.644 | 5.644 | 40 | 0 | 7.088 | 281.938 | 284.086 | 284.471 | 109.652 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3598 | 0 | 719.567 | 1.35 | 1.49 | 1.746 | 118.613 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 941 | 0 | 188.124 | 5.275 | 5.407 | 5.581 | 120.047 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.005 | 481 | 0 | 96.184 | 10.342 | 10.52 | 10.741 | 121.426 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.027 | 99 | 0 | 19.77 | 50.537 | 50.671 | 50.741 | 121.426 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.036 | 2.015 | 50 | 0 | 9.929 | 100.671 | 100.806 | 100.84 | 121.43 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.009 | 25 | 0 | 4.982 | 200.613 | 200.756 | 201.134 | 121.43 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17117 | 0 | 3422.637 | 1.38 | 1.975 | 2.437 | 63.871 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16619 | 0 | 3323.08 | 1.422 | 2.062 | 2.549 | 64.07 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16872 | 0 | 3373.625 | 1.395 | 2.042 | 2.506 | 64.02 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16623 | 0 | 3323.687 | 1.431 | 2.243 | 2.73 | 64.352 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17149 | 0 | 3429.08 | 1.373 | 2.025 | 2.449 | 65.91 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14965 | 0 | 2992.214 | 1.581 | 2.372 | 2.868 | 66.148 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17073 | 0 | 3413.885 | 1.375 | 2.03 | 2.531 | 66.199 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16262 | 0 | 3251.12 | 1.447 | 2.296 | 2.874 | 68.348 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13520 | 0 | 2703.2 | 1.74 | 2.625 | 3.207 | 77.414 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7476 | 0 | 1494.223 | 3.228 | 4.697 | 6.106 | 72.09 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13488 | 0 | 2696.827 | 1.731 | 2.701 | 3.331 | 77.242 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.03 | 2.002 | 13389 | 0 | 2661.86 | 1.718 | 2.644 | 3.262 | 67.563 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9741 | 0 | 1946.976 | 2.255 | 3.892 | 6.622 | 98.043 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4159 | 0 | 830.987 | 5.839 | 9.468 | 11.014 | 76.043 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10115 | 0 | 2022.36 | 2.119 | 3.944 | 6.494 | 70.121 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9832 | 0 | 1965.5 | 2.179 | 4.073 | 6.497 | 70.371 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7473 | 0 | 1493.844 | 2.904 | 5.12 | 17.032 | 124.07 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.073 | 2384 | 0 | 475.924 | 10.276 | 17.473 | 19.583 | 79.258 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.003 | 7729 | 0 | 1540.67 | 2.722 | 5.295 | 16.964 | 75.391 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7584 | 0 | 1516.026 | 2.745 | 5.326 | 16.834 | 75.391 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.007 | 4938 | 0 | 986.95 | 4.642 | 7.794 | 20.603 | 146.59 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.864 | 1286 | 0 | 256.311 | 19.091 | 31.6 | 35.266 | 81.953 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5122 | 0 | 1023.599 | 4.094 | 8.116 | 20.66 | 79.488 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5061 | 0 | 1011.232 | 4.221 | 8.174 | 20.31 | 79.551 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 2838 | 0 | 566.868 | 8.61 | 13.657 | 16.649 | 133.383 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.365 | 7.272 | 1000 | 0 | 135.786 | 36.421 | 38.576 | 67.433 | 84.59 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3265 | 0 | 652.083 | 6.905 | 13.09 | 15.035 | 83.32 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3277 | 0 | 654.44 | 7.013 | 13.094 | 14.846 | 83.32 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.035 | 51.206 | 360 | 0 | 7.054 | 2550.988 | 2574.462 | 2584.123 | 101.375 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.052 | 34.105 | 240 | 0 | 7.048 | 1702.65 | 1720.675 | 1729.622 | 101.758 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.534 | 25.6 | 180 | 0 | 7.049 | 1277.479 | 1292.981 | 1306.732 | 106.578 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.996 | 17.053 | 120 | 0 | 7.06 | 849.711 | 862.32 | 870.951 | 106.582 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.237 | 14.227 | 100 | 0 | 7.024 | 816.627 | 849.993 | 853.84 | 106.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.507 | 8.529 | 60 | 0 | 7.053 | 424.991 | 429.37 | 435.381 | 106.961 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.663 | 5.665 | 40 | 0 | 7.063 | 282.7 | 284.151 | 285.552 | 106.961 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3589 | 0 | 717.699 | 1.354 | 1.501 | 1.729 | 116.203 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.004 | 938 | 0 | 187.563 | 5.287 | 5.42 | 5.576 | 117.582 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.006 | 481 | 0 | 96.061 | 10.354 | 10.505 | 10.753 | 118.957 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.03 | 99 | 0 | 19.78 | 50.492 | 50.652 | 50.719 | 118.957 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.014 | 50 | 0 | 9.937 | 100.566 | 100.697 | 100.784 | 120.266 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.552 | 200.797 | 200.957 | 121.145 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.172 | 1000 | 0 | 62.078 | 40.973 | 41.967 | 42.228 | 28.949 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.155 | 1000 | 0 | 62.035 | 40.976 | 41.961 | 42.475 | 29.285 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.139 | 1000 | 0 | 62.073 | 40.973 | 41.952 | 42.273 | 29.434 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.159 | 1000 | 0 | 62.068 | 40.975 | 41.954 | 42.233 | 29.527 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.156 | 1000 | 0 | 62.074 | 40.973 | 41.937 | 42.148 | 29.578 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.141 | 1000 | 0 | 62.051 | 40.975 | 41.959 | 42.268 | 29.578 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.134 | 1000 | 0 | 62.056 | 40.974 | 41.958 | 42.126 | 29.594 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.161 | 1000 | 0 | 61.97 | 40.975 | 41.99 | 42.745 | 30.145 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.778 | 14.374 | 1000 | 0 | 67.669 | 40.958 | 41.963 | 42.962 | 30.176 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.335 | 13.953 | 1000 | 0 | 69.759 | 40.96 | 41.965 | 43.043 | 30.199 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11573 | 0 | 2313.779 | 1.127 | 2.337 | 7.686 | 30.582 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.563 | 14.335 | 1000 | 0 | 68.668 | 40.975 | 41.999 | 42.965 | 34.789 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.101 | 7.085 | 1002 | 0 | 141.115 | 1.389 | 42.258 | 44.203 | 34.789 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.866 | 6.874 | 1001 | 0 | 127.256 | 2.39 | 42.393 | 45.999 | 34.797 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8559 | 0 | 1711.163 | 1.463 | 3.171 | 19.039 | 34.797 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.747 | 11.067 | 1000 | 0 | 85.132 | 41.893 | 42.957 | 43.931 | 42.41 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.007 | 12.504 | 1000 | 0 | 83.286 | 41.913 | 42.986 | 43.988 | 40.582 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.294 | 13.138 | 1000 | 0 | 75.222 | 41.926 | 43.012 | 46.795 | 40.582 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 6758 | 0 | 1350.783 | 1.84 | 3.764 | 52.478 | 40.824 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.668 | 14.409 | 1000 | 0 | 73.166 | 41.964 | 43.7 | 45.024 | 48.68 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.166 | 14.787 | 1000 | 0 | 70.591 | 41.966 | 43.988 | 46.819 | 48.68 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.453 | 14.991 | 1000 | 0 | 69.19 | 41.994 | 44.119 | 57.88 | 48.68 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4732 | 0 | 945.705 | 2.658 | 5.637 | 25.768 | 48.68 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.476 | 15.962 | 1000 | 0 | 64.616 | 42.986 | 46.075 | 47.623 | 51.773 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.902 | 15.351 | 1000 | 0 | 67.105 | 43.913 | 46.96 | 57.247 | 48.641 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.432 | 15.546 | 1000 | 0 | 64.801 | 43.935 | 48.314 | 51.591 | 48.641 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3160 | 0 | 631.124 | 4.408 | 8.222 | 21.306 | 54.652 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.928 | 17.048 | 1000 | 0 | 62.783 | 45.588 | 50.697 | 55.98 | 63.68 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.009 | 28.763 | 363 | 0 | 12.513 | 241.727 | 242.966 | 19607.942 | 64.121 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.419 | 19.172 | 243 | 0 | 12.513 | 241.751 | 242.924 | 12803.779 | 64.125 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.38 | 183 | 0 | 12.513 | 241.759 | 242.698 | 10026.603 | 64.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.588 | 123 | 0 | 12.507 | 241.86 | 242.672 | 5238.141 | 64.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.584 | 103 | 0 | 10.478 | 241.719 | 242.456 | 5132.638 | 64.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.795 | 63 | 0 | 12.508 | 241.7 | 242.506 | 242.915 | 64.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.792 | 42 | 0 | 8.347 | 241.268 | 242.134 | 242.287 | 64.129 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.019 | 122 | 0 | 24.344 | 41.963 | 42.835 | 43.038 | 64.152 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.031 | 114 | 0 | 22.732 | 44.971 | 45.213 | 45.984 | 64.152 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.038 | 97 | 0 | 19.373 | 51.96 | 52.174 | 52.977 | 64.172 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.07 | 2.061 | 56 | 0 | 11.046 | 90.977 | 91.958 | 92.068 | 64.195 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.053 | 2.087 | 36 | 0 | 7.125 | 141.049 | 142.046 | 142.084 | 64.223 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.38 | 21 | 0 | 4.172 | 241.703 | 242.081 | 242.805 | 64.223 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.15 | 1000 | 0 | 62.047 | 40.975 | 41.941 | 42.314 | 28.773 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.155 | 1000 | 0 | 62.023 | 40.977 | 41.971 | 42.341 | 28.973 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.147 | 1000 | 0 | 62.067 | 40.974 | 41.906 | 42.494 | 29.293 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.174 | 1000 | 0 | 62.059 | 40.974 | 41.957 | 42.299 | 29.57 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.132 | 1000 | 0 | 62.062 | 40.972 | 41.945 | 42.274 | 29.613 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.148 | 1000 | 0 | 62.066 | 40.973 | 41.952 | 42.272 | 29.625 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.143 | 1000 | 0 | 62.019 | 40.974 | 41.95 | 42.398 | 29.668 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.162 | 1000 | 0 | 62.021 | 40.973 | 41.959 | 42.453 | 30.191 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.439 | 14.204 | 1000 | 0 | 69.255 | 40.963 | 41.969 | 42.913 | 30.191 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.857 | 14.19 | 1000 | 0 | 67.309 | 40.962 | 41.954 | 42.601 | 30.211 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12015 | 0 | 2401.922 | 1.091 | 2.243 | 7.552 | 30.578 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.694 | 14.031 | 1000 | 0 | 68.055 | 40.968 | 41.997 | 43.006 | 33.527 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.468 | 7.31 | 1000 | 0 | 118.09 | 40.947 | 42.231 | 43.155 | 33.527 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.113 | 6.404 | 1002 | 0 | 140.872 | 1.687 | 42.239 | 43.891 | 33.527 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9061 | 0 | 1811.505 | 1.393 | 2.961 | 21.313 | 34.211 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.66 | 9.12 | 1000 | 0 | 103.52 | 41.558 | 42.358 | 43.166 | 41.551 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.126 | 12.157 | 1000 | 0 | 89.88 | 41.899 | 42.944 | 44.563 | 40.316 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.785 | 12.046 | 1000 | 0 | 78.216 | 41.921 | 42.864 | 44.767 | 40.316 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.099 | 2.004 | 6563 | 0 | 1287.196 | 1.824 | 3.963 | 61.525 | 41.23 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.585 | 14.248 | 1000 | 0 | 73.611 | 41.963 | 43.796 | 48.395 | 45.426 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.735 | 14.847 | 1000 | 0 | 72.809 | 41.968 | 43.923 | 46.011 | 45.426 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.835 | 14.868 | 1000 | 0 | 72.282 | 42.004 | 44.493 | 47.58 | 45.426 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.022 | 4662 | 0 | 931.651 | 2.76 | 5.881 | 27.335 | 47.281 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.65 | 15.974 | 1000 | 0 | 63.897 | 43.021 | 45.692 | 47.808 | 52.785 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.858 | 15.466 | 1000 | 0 | 67.305 | 43.889 | 47.727 | 50.329 | 52.777 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.75 | 15.31 | 1000 | 0 | 67.799 | 43.961 | 47.422 | 50.09 | 52.777 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.01 | 3216 | 0 | 642.261 | 4.359 | 7.984 | 12.024 | 58.789 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.44 | 16.914 | 1000 | 0 | 60.828 | 45.737 | 50.94 | 62.142 | 65.773 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.011 | 28.756 | 363 | 0 | 12.513 | 241.803 | 243.342 | 19616.562 | 66.063 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.417 | 19.163 | 243 | 0 | 12.515 | 241.75 | 242.815 | 12801.902 | 66.078 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.366 | 183 | 0 | 12.513 | 241.796 | 242.713 | 10028.806 | 66.082 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.582 | 123 | 0 | 12.516 | 241.739 | 242.438 | 5233.113 | 66.082 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.579 | 103 | 0 | 10.485 | 241.575 | 242.325 | 5133.546 | 66.086 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.791 | 63 | 0 | 12.511 | 241.697 | 242.43 | 242.714 | 66.086 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.79 | 42 | 0 | 8.347 | 241.256 | 242.203 | 242.23 | 66.09 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.019 | 122 | 0 | 24.376 | 41.961 | 42.087 | 42.676 | 66.121 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.032 | 114 | 0 | 22.705 | 44.97 | 45.958 | 45.971 | 66.258 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.039 | 97 | 0 | 19.361 | 51.965 | 52.835 | 52.987 | 66.324 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.076 | 2.069 | 56 | 0 | 11.033 | 90.991 | 92.02 | 92.167 | 66.371 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.05 | 2.084 | 36 | 0 | 7.129 | 140.983 | 142.009 | 142.102 | 66.375 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.378 | 21 | 0 | 4.17 | 241.847 | 242.873 | 242.924 | 66.379 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.159 | 1000 | 0 | 62.061 | 40.973 | 41.965 | 42.261 | 28.93 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.157 | 1000 | 0 | 62.078 | 40.971 | 41.97 | 42.213 | 29.285 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.146 | 1000 | 0 | 62.068 | 40.974 | 41.945 | 42.431 | 29.391 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.169 | 1000 | 0 | 62.027 | 40.977 | 41.957 | 42.256 | 29.52 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.149 | 1000 | 0 | 62.032 | 40.975 | 41.974 | 42.332 | 29.566 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.148 | 1000 | 0 | 62.074 | 40.974 | 41.943 | 42.182 | 29.594 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.14 | 1000 | 0 | 62.049 | 40.976 | 41.964 | 42.278 | 29.613 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.175 | 1000 | 0 | 62.042 | 40.974 | 41.953 | 42.234 | 29.891 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.284 | 15.062 | 1000 | 0 | 70.009 | 40.957 | 41.962 | 42.184 | 29.965 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.695 | 14.623 | 1000 | 0 | 68.052 | 40.958 | 41.965 | 42.574 | 30.059 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12356 | 0 | 2470.341 | 1.087 | 2.063 | 6.355 | 30.496 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.833 | 13.66 | 1000 | 0 | 67.417 | 40.976 | 42.004 | 42.94 | 34.824 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.818 | 7.128 | 1001 | 0 | 128.043 | 1.737 | 42.079 | 43.188 | 34.824 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.586 | 8.049 | 1030 | 0 | 184.376 | 1.064 | 42.207 | 225.678 | 34.824 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.019 | 2.002 | 8358 | 0 | 1665.235 | 1.476 | 3.216 | 40.928 | 35.152 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.009 | 10.248 | 1000 | 0 | 99.912 | 41.748 | 42.747 | 44.034 | 43.328 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.739 | 12.137 | 1000 | 0 | 85.186 | 41.894 | 42.946 | 43.993 | 43.328 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.255 | 12.154 | 1000 | 0 | 81.6 | 41.914 | 43.021 | 44.091 | 43.328 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.002 | 6366 | 0 | 1271.766 | 1.89 | 4.097 | 37.668 | 43.328 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.398 | 14.395 | 1000 | 0 | 74.639 | 41.966 | 43.832 | 44.554 | 47.008 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.1 | 15.232 | 1000 | 0 | 76.337 | 41.96 | 44.314 | 49.621 | 47.008 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.278 | 14.83 | 1000 | 0 | 70.039 | 41.978 | 44.385 | 46.949 | 47.008 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4617 | 0 | 922.693 | 2.718 | 5.829 | 28.457 | 49.086 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.192 | 16.077 | 1000 | 0 | 65.822 | 43.209 | 46.347 | 48.077 | 53.578 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.188 | 15.111 | 1000 | 0 | 65.839 | 43.91 | 47.508 | 50.176 | 53.578 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.812 | 15.213 | 1000 | 0 | 67.515 | 43.944 | 47.213 | 50.253 | 53.578 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3117 | 0 | 622.643 | 4.395 | 8.098 | 57.651 | 59.59 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.547 | 16.654 | 1000 | 0 | 60.433 | 45.798 | 51.535 | 71.425 | 63.641 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.01 | 28.763 | 363 | 0 | 12.513 | 241.879 | 243.002 | 19609.722 | 64.078 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.426 | 19.18 | 243 | 0 | 12.509 | 241.829 | 243.082 | 12810.766 | 64.09 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.622 | 14.388 | 183 | 0 | 12.516 | 241.723 | 242.964 | 10024.674 | 64.09 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.593 | 123 | 0 | 12.513 | 241.782 | 242.577 | 5234.443 | 64.09 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.592 | 103 | 0 | 10.485 | 241.538 | 242.323 | 5133.18 | 64.094 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.797 | 63 | 0 | 12.508 | 241.582 | 242.268 | 242.477 | 64.094 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.791 | 42 | 0 | 8.347 | 241.259 | 242.209 | 242.26 | 64.102 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.018 | 122 | 0 | 24.341 | 41.964 | 42.941 | 42.973 | 64.129 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.031 | 114 | 0 | 22.705 | 44.969 | 45.925 | 46.354 | 64.172 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.039 | 97 | 0 | 19.358 | 51.967 | 52.948 | 52.969 | 64.207 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.074 | 2.06 | 56 | 0 | 11.037 | 90.984 | 91.968 | 92.035 | 64.207 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.062 | 2.085 | 36 | 0 | 7.112 | 141.943 | 142.235 | 142.75 | 64.211 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.381 | 21 | 0 | 4.166 | 241.961 | 242.387 | 242.844 | 64.211 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17638 | 0 | 3526.726 | 1.334 | 1.967 | 2.468 | 67.895 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17162 | 0 | 3431.43 | 1.37 | 2.054 | 2.545 | 68.047 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17106 | 0 | 3420.395 | 1.365 | 2.063 | 2.599 | 68.004 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17441 | 0 | 3487.304 | 1.351 | 2.009 | 2.487 | 68.008 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17149 | 0 | 3429.184 | 1.369 | 2.092 | 2.57 | 69.832 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14818 | 0 | 2962.756 | 1.578 | 2.445 | 3.049 | 69.699 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17008 | 0 | 3400.609 | 1.374 | 2.131 | 2.635 | 69.941 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16714 | 0 | 3341.302 | 1.397 | 2.193 | 2.708 | 72.898 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13411 | 0 | 2681.492 | 1.755 | 2.512 | 3.349 | 81.82 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7381 | 0 | 1475.247 | 3.296 | 4.327 | 6.2 | 76.238 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13311 | 0 | 2661.38 | 1.768 | 2.507 | 3.363 | 81.652 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.036 | 2.019 | 13704 | 0 | 2721.379 | 1.405 | 2.282 | 3.479 | 71.641 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 9605 | 0 | 1919.59 | 2.206 | 4.079 | 6.543 | 102.52 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4188 | 0 | 836.655 | 5.827 | 9.561 | 11.27 | 80.938 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9320 | 0 | 1863.282 | 2.236 | 4.366 | 6.901 | 74.887 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 9653 | 0 | 1929.578 | 2.194 | 4.091 | 6.852 | 74.512 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7339 | 0 | 1467.136 | 2.818 | 5.403 | 21.523 | 117.023 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.142 | 2358 | 0 | 470.656 | 10.372 | 17.484 | 19.708 | 85.996 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7424 | 0 | 1484.019 | 2.77 | 5.489 | 21.57 | 82.543 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7223 | 0 | 1443.772 | 2.81 | 5.833 | 21.519 | 82.621 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4945 | 0 | 988.243 | 4.272 | 8.009 | 25.351 | 126.078 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 3.915 | 1264 | 0 | 251.815 | 19.352 | 32.423 | 36.11 | 86.52 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 4941 | 0 | 987.156 | 4.244 | 8.199 | 24.922 | 84.016 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 4806 | 0 | 960.568 | 4.368 | 8.553 | 24.849 | 84.078 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.009 | 3164 | 0 | 631.993 | 7.329 | 12.721 | 14.449 | 102.762 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.419 | 7.424 | 1000 | 0 | 134.798 | 36.646 | 54.447 | 66.982 | 89.414 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3128 | 0 | 624.811 | 7.339 | 13.488 | 15.643 | 89.117 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 3320 | 0 | 663.201 | 7.025 | 12.581 | 14.353 | 89.117 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.886 | 50.881 | 360 | 0 | 7.075 | 2543.841 | 2546.861 | 2547.235 | 108.926 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.92 | 33.928 | 240 | 0 | 7.075 | 1695.654 | 1698.539 | 1699.014 | 108.988 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.439 | 25.44 | 180 | 0 | 7.076 | 1271.647 | 1274.567 | 1275.159 | 107.215 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.964 | 16.96 | 120 | 0 | 7.074 | 847.97 | 851.504 | 852.053 | 107.215 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.197 | 14.135 | 100 | 0 | 7.044 | 840.83 | 848.316 | 849.334 | 108.781 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.483 | 8.482 | 60 | 0 | 7.073 | 424.081 | 426.017 | 426.162 | 108.781 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.651 | 40 | 0 | 7.076 | 282.571 | 282.728 | 282.989 | 108.781 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1947 | 0 | 389.213 | 2.522 | 2.681 | 2.965 | 115.777 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.0 | 570 | 0 | 113.876 | 8.771 | 8.974 | 9.285 | 118.152 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.012 | 410 | 0 | 81.911 | 12.165 | 12.318 | 12.39 | 118.152 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.019 | 99 | 0 | 19.797 | 50.448 | 50.592 | 51.078 | 118.586 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.011 | 50 | 0 | 9.945 | 100.496 | 100.618 | 100.648 | 118.586 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.985 | 200.529 | 200.727 | 200.832 | 118.586 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18060 | 0 | 3611.176 | 1.304 | 1.879 | 2.374 | 67.84 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17452 | 0 | 3489.676 | 1.35 | 1.99 | 2.459 | 68.285 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17716 | 0 | 3542.628 | 1.329 | 1.954 | 2.456 | 67.922 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17927 | 0 | 3584.639 | 1.315 | 1.938 | 2.382 | 68.324 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17987 | 0 | 3596.708 | 1.309 | 1.932 | 2.456 | 70.105 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15720 | 0 | 3143.251 | 1.504 | 2.23 | 2.784 | 70.27 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17915 | 0 | 3582.297 | 1.311 | 1.943 | 2.463 | 70.305 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17563 | 0 | 3511.387 | 1.335 | 2.008 | 2.513 | 72.648 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13918 | 0 | 2782.757 | 1.687 | 2.534 | 3.23 | 82.461 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7407 | 0 | 1480.5 | 3.237 | 4.84 | 6.284 | 76.352 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13685 | 0 | 2736.291 | 1.712 | 2.588 | 3.307 | 81.652 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.022 | 2.03 | 13666 | 0 | 2721.051 | 1.306 | 2.2 | 40.972 | 72.152 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9860 | 0 | 1971.362 | 2.131 | 3.993 | 6.069 | 99.637 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4175 | 0 | 834.255 | 5.778 | 9.89 | 11.096 | 80.008 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10116 | 0 | 2022.393 | 2.097 | 3.914 | 6.073 | 72.996 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10090 | 0 | 2017.268 | 2.096 | 3.942 | 6.151 | 72.871 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 7505 | 0 | 1500.165 | 2.727 | 5.272 | 22.407 | 118.816 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.105 | 2339 | 0 | 466.9 | 10.523 | 17.478 | 19.911 | 82.703 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7389 | 0 | 1476.917 | 2.746 | 5.495 | 22.799 | 73.828 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.013 | 7484 | 0 | 1496.172 | 2.666 | 5.174 | 21.81 | 73.906 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5077 | 0 | 1014.611 | 4.161 | 7.809 | 25.498 | 126.203 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.922 | 1248 | 0 | 248.792 | 19.429 | 32.552 | 36.511 | 84.082 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 4999 | 0 | 999.17 | 4.191 | 8.047 | 25.636 | 79.871 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4905 | 0 | 980.102 | 4.279 | 8.247 | 25.529 | 79.871 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3135 | 0 | 626.262 | 7.528 | 12.7 | 14.434 | 103.203 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.464 | 7.517 | 1000 | 0 | 133.971 | 36.782 | 59.982 | 67.559 | 90.875 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 3117 | 0 | 622.278 | 7.402 | 13.621 | 14.949 | 87.23 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 2918 | 0 | 582.738 | 8.23 | 14.551 | 16.452 | 87.23 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.89 | 50.901 | 360 | 0 | 7.074 | 2543.77 | 2547.915 | 2549.736 | 102.059 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.93 | 33.918 | 240 | 0 | 7.073 | 1696.245 | 1698.009 | 1698.431 | 108.375 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.441 | 25.439 | 180 | 0 | 7.075 | 1271.849 | 1274.858 | 1275.067 | 110.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.968 | 16.958 | 120 | 0 | 7.072 | 848.079 | 852.054 | 852.211 | 114.039 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.138 | 14.136 | 100 | 0 | 7.073 | 840.885 | 848.27 | 848.574 | 114.039 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.481 | 8.48 | 60 | 0 | 7.074 | 424.036 | 425.294 | 425.979 | 114.039 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.653 | 40 | 0 | 7.076 | 282.577 | 282.714 | 282.954 | 114.039 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1934 | 0 | 386.621 | 2.533 | 2.72 | 3.021 | 116.539 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.005 | 565 | 0 | 112.812 | 8.825 | 9.059 | 9.312 | 117.664 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.01 | 408 | 0 | 81.528 | 12.211 | 12.395 | 12.518 | 120.957 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.02 | 99 | 0 | 19.791 | 50.476 | 50.605 | 50.614 | 120.961 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.016 | 50 | 0 | 9.942 | 100.519 | 100.651 | 100.678 | 120.961 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.55 | 200.669 | 200.786 | 120.965 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17227 | 0 | 3444.744 | 1.365 | 2.019 | 2.532 | 67.699 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16750 | 0 | 3349.375 | 1.395 | 2.11 | 2.658 | 67.898 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17273 | 0 | 3453.858 | 1.359 | 2.023 | 2.532 | 67.914 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16948 | 0 | 3388.656 | 1.389 | 2.065 | 2.569 | 68.027 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16965 | 0 | 3391.975 | 1.381 | 2.118 | 2.591 | 69.988 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15461 | 0 | 3091.308 | 1.528 | 2.248 | 2.855 | 69.973 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17412 | 0 | 3481.643 | 1.348 | 2.041 | 2.528 | 70.016 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 17170 | 0 | 3433.191 | 1.369 | 2.05 | 2.547 | 72.691 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13475 | 0 | 2694.271 | 1.734 | 2.77 | 3.365 | 82.066 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7303 | 0 | 1459.832 | 3.312 | 4.485 | 6.372 | 76.574 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13498 | 0 | 2698.862 | 1.725 | 2.782 | 3.387 | 81.637 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.037 | 2.002 | 13716 | 0 | 2723.023 | 1.338 | 2.244 | 35.17 | 72.621 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.011 | 9167 | 0 | 1832.652 | 2.291 | 4.286 | 7.488 | 101.148 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4055 | 0 | 810.088 | 5.937 | 10.101 | 11.712 | 80.023 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9628 | 0 | 1924.907 | 2.192 | 4.107 | 6.45 | 74.992 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9599 | 0 | 1918.899 | 2.185 | 4.14 | 6.793 | 75.242 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7408 | 0 | 1480.755 | 2.78 | 5.287 | 23.578 | 121.43 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.137 | 2295 | 0 | 458.159 | 10.608 | 18.1 | 20.369 | 83.039 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 7313 | 0 | 1461.461 | 2.768 | 5.633 | 24.561 | 80.609 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7270 | 0 | 1453.135 | 2.799 | 5.577 | 23.835 | 80.672 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4964 | 0 | 991.917 | 4.253 | 7.993 | 27.315 | 125.426 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.022 | 3.932 | 1275 | 0 | 253.873 | 19.307 | 32.849 | 36.406 | 85.859 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4946 | 0 | 988.397 | 4.203 | 8.266 | 27.577 | 86.555 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.026 | 4717 | 0 | 942.588 | 4.374 | 8.647 | 27.395 | 86.617 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3343 | 0 | 667.637 | 7.137 | 11.723 | 13.822 | 133.391 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.443 | 7.356 | 1000 | 0 | 134.357 | 36.473 | 59.488 | 67.238 | 91.77 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3088 | 0 | 616.783 | 7.599 | 13.521 | 15.412 | 91.77 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2789 | 0 | 556.923 | 8.666 | 15.105 | 17.159 | 91.77 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.92 | 50.918 | 360 | 0 | 7.07 | 2545.149 | 2554.304 | 2557.122 | 106.418 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.94 | 33.935 | 240 | 0 | 7.071 | 1695.805 | 1704.528 | 1707.196 | 110.984 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.455 | 25.446 | 180 | 0 | 7.071 | 1272.16 | 1279.689 | 1282.472 | 111.797 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.967 | 16.965 | 120 | 0 | 7.073 | 848.153 | 854.636 | 857.427 | 111.797 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.169 | 14.169 | 100 | 0 | 7.058 | 822.586 | 848.609 | 850.98 | 111.797 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.483 | 8.483 | 60 | 0 | 7.073 | 423.892 | 428.377 | 429.702 | 111.797 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.654 | 5.653 | 40 | 0 | 7.074 | 282.606 | 284.419 | 284.757 | 111.797 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 1918 | 0 | 383.512 | 2.549 | 2.773 | 2.975 | 111.734 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.002 | 565 | 0 | 112.808 | 8.813 | 8.982 | 9.315 | 111.734 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.01 | 406 | 0 | 81.096 | 12.314 | 12.449 | 12.608 | 111.672 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.022 | 99 | 0 | 19.795 | 50.451 | 50.61 | 50.984 | 109.734 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.013 | 50 | 0 | 9.942 | 100.509 | 100.663 | 100.736 | 107.797 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.579 | 200.69 | 200.712 | 107.797 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

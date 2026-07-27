# Puma vs Raptor Simulation

Run ID: `20260727-042751`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.146 | 1000 | 0 | 62.095 | 40.973 | 41.966 | 42.516 | 28.156 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.146 | 1000 | 0 | 62.059 | 40.978 | 41.967 | 42.174 | 28.164 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.162 | 1000 | 0 | 62.091 | 40.975 | 41.939 | 42.314 | 28.164 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.165 | 1000 | 0 | 62.057 | 40.981 | 41.929 | 42.51 | 28.227 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.158 | 1000 | 0 | 62.065 | 40.976 | 41.948 | 42.178 | 28.234 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.175 | 1000 | 0 | 62.048 | 40.981 | 41.948 | 42.492 | 28.234 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.129 | 1000 | 0 | 62.083 | 40.975 | 41.937 | 42.39 | 28.234 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.155 | 1000 | 0 | 62.031 | 40.975 | 41.851 | 42.505 | 28.613 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.029 | 13.99 | 1000 | 0 | 66.538 | 40.964 | 41.947 | 42.022 | 28.676 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.433 | 13.67 | 1000 | 0 | 69.286 | 40.965 | 41.964 | 42.148 | 28.734 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13743 | 0 | 2747.386 | 0.99 | 1.776 | 6.007 | 29.039 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.277 | 13.867 | 1000 | 0 | 65.458 | 40.972 | 41.981 | 42.815 | 33.391 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.727 | 9.604 | 1000 | 0 | 102.81 | 40.96 | 42.166 | 43.064 | 33.391 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.455 | 11.137 | 1000 | 0 | 95.649 | 40.972 | 42.424 | 43.197 | 33.391 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.138 | 2.002 | 10297 | 0 | 2004.055 | 1.264 | 2.515 | 42.946 | 33.391 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.27 | 13.199 | 1000 | 0 | 81.501 | 41.849 | 42.846 | 43.401 | 42.902 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.469 | 13.886 | 1000 | 0 | 74.245 | 41.939 | 42.926 | 44.159 | 42.902 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.429 | 13.957 | 1000 | 0 | 74.467 | 41.944 | 42.966 | 44.041 | 42.902 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.18 | 2.003 | 7706 | 0 | 1487.585 | 1.545 | 3.077 | 61.978 | 43.402 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.173 | 14.946 | 1000 | 0 | 65.909 | 41.962 | 42.977 | 43.961 | 48.18 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.352 | 15.698 | 1000 | 0 | 69.675 | 41.995 | 43.958 | 46.966 | 46.531 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.739 | 15.248 | 1000 | 0 | 67.849 | 42.287 | 43.988 | 46.151 | 46.531 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 5800 | 0 | 1159.207 | 2.284 | 4.5 | 15.931 | 47.996 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.5 | 16.169 | 1000 | 0 | 64.514 | 42.979 | 44.982 | 47.165 | 58.531 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.071 | 15.979 | 1000 | 0 | 62.222 | 43.966 | 46.137 | 48.586 | 58.531 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.387 | 1000 | 0 | 62.011 | 43.972 | 46.66 | 48.724 | 58.531 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3657 | 0 | 730.464 | 3.815 | 7.056 | 15.655 | 61.504 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.174 | 17.128 | 1000 | 0 | 58.229 | 45.877 | 49.927 | 51.619 | 87.469 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.01 | 28.762 | 363 | 0 | 12.513 | 241.786 | 243.158 | 19613.545 | 87.898 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.422 | 19.169 | 243 | 0 | 12.512 | 241.848 | 242.857 | 12810.421 | 87.938 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.373 | 183 | 0 | 12.513 | 241.775 | 242.842 | 10024.74 | 87.945 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.592 | 123 | 0 | 12.512 | 241.754 | 242.778 | 5233.399 | 87.953 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.588 | 103 | 0 | 10.486 | 241.553 | 242.328 | 5130.371 | 87.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.789 | 63 | 0 | 12.512 | 241.734 | 242.249 | 242.55 | 87.969 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.795 | 42 | 0 | 8.343 | 241.705 | 242.238 | 242.764 | 87.969 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.017 | 122 | 0 | 24.362 | 41.968 | 42.372 | 42.99 | 87.98 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.016 | 110 | 0 | 21.936 | 46.95 | 47.125 | 47.837 | 87.98 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.051 | 2.009 | 99 | 0 | 19.6 | 51.002 | 52.094 | 52.925 | 87.98 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.072 | 55 | 0 | 10.981 | 91.95 | 92.856 | 92.972 | 87.98 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.092 | 36 | 0 | 7.106 | 141.949 | 142.027 | 142.613 | 87.988 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.379 | 21 | 0 | 4.165 | 241.995 | 242.815 | 242.915 | 87.988 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.135 | 1000 | 0 | 62.07 | 40.975 | 41.945 | 42.194 | 27.41 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.151 | 1000 | 0 | 62.036 | 40.979 | 41.973 | 42.681 | 27.625 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.13 | 1000 | 0 | 62.051 | 40.977 | 41.921 | 42.315 | 27.629 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.147 | 1000 | 0 | 62.081 | 40.975 | 41.912 | 42.324 | 27.73 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.14 | 1000 | 0 | 62.066 | 40.975 | 41.978 | 42.193 | 27.73 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.144 | 1000 | 0 | 62.081 | 40.974 | 41.939 | 42.263 | 27.73 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.145 | 1000 | 0 | 62.089 | 40.976 | 41.939 | 42.387 | 27.73 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.152 | 1000 | 0 | 62.087 | 40.977 | 41.938 | 42.251 | 28.406 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.088 | 12.807 | 1000 | 0 | 66.278 | 40.962 | 41.971 | 42.973 | 28.469 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.116 | 14.608 | 1000 | 0 | 66.157 | 40.968 | 41.963 | 42.468 | 28.504 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13993 | 0 | 2797.222 | 0.977 | 1.707 | 7.633 | 28.855 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.114 | 13.248 | 1000 | 0 | 76.256 | 40.967 | 41.981 | 42.837 | 34.266 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.661 | 10.681 | 1000 | 0 | 85.754 | 41.026 | 42.247 | 43.048 | 34.266 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.59 | 9.149 | 1000 | 0 | 86.282 | 41.093 | 42.341 | 43.153 | 34.266 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10242 | 0 | 2047.583 | 1.262 | 2.539 | 39.264 | 34.793 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.869 | 13.03 | 1000 | 0 | 77.704 | 41.904 | 42.938 | 43.704 | 40.883 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.721 | 13.498 | 1000 | 0 | 72.881 | 41.943 | 42.919 | 43.778 | 40.883 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.555 | 13.156 | 1000 | 0 | 73.773 | 41.941 | 42.923 | 43.595 | 40.883 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 7734 | 0 | 1545.66 | 1.605 | 3.22 | 56.604 | 40.883 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.039 | 15.089 | 1000 | 0 | 66.495 | 41.961 | 43.047 | 44.857 | 44.383 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.567 | 15.211 | 1000 | 0 | 68.648 | 41.986 | 43.874 | 45.406 | 43.539 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.398 | 15.448 | 1000 | 0 | 69.454 | 42.007 | 44.031 | 45.618 | 43.539 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5757 | 0 | 1150.553 | 2.275 | 4.593 | 15.461 | 44.492 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.767 | 16.164 | 1000 | 0 | 63.425 | 42.992 | 45.258 | 47.114 | 54.816 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.319 | 16.426 | 1000 | 0 | 65.28 | 43.978 | 47.119 | 49.156 | 54.816 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.948 | 16.324 | 1000 | 0 | 62.705 | 43.998 | 47.081 | 49.333 | 52.41 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3711 | 0 | 741.364 | 3.736 | 6.9 | 17.562 | 56.418 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.174 | 17.206 | 1000 | 0 | 58.229 | 46.378 | 50.113 | 51.602 | 62.332 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.004 | 28.766 | 363 | 0 | 12.516 | 241.765 | 243.106 | 19610.918 | 62.516 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.415 | 19.179 | 243 | 0 | 12.516 | 241.722 | 242.992 | 12799.667 | 62.539 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.627 | 14.379 | 183 | 0 | 12.511 | 241.794 | 243.137 | 10029.009 | 62.551 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.583 | 123 | 0 | 12.51 | 241.767 | 242.609 | 5236.234 | 62.551 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.596 | 103 | 0 | 10.48 | 241.717 | 242.611 | 5128.532 | 62.559 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.797 | 63 | 0 | 12.52 | 241.279 | 242.286 | 242.492 | 62.563 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.795 | 42 | 0 | 8.339 | 241.813 | 242.199 | 242.652 | 62.566 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.019 | 122 | 0 | 24.377 | 41.963 | 42.088 | 43.011 | 62.578 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.024 | 110 | 0 | 21.813 | 46.958 | 47.795 | 47.935 | 62.586 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.035 | 99 | 0 | 19.651 | 50.985 | 51.981 | 52.042 | 62.594 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.072 | 55 | 0 | 10.957 | 91.962 | 92.467 | 93.023 | 62.598 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.07 | 2.091 | 36 | 0 | 7.1 | 141.949 | 142.498 | 142.969 | 62.598 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.379 | 21 | 0 | 4.168 | 241.925 | 242.909 | 242.996 | 62.598 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.139 | 1000 | 0 | 62.066 | 40.978 | 41.968 | 42.458 | 27.336 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.134 | 1000 | 0 | 62.077 | 40.975 | 41.959 | 42.297 | 27.516 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.13 | 1000 | 0 | 62.036 | 40.981 | 41.969 | 42.391 | 27.516 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.136 | 1000 | 0 | 62.075 | 40.977 | 41.849 | 42.209 | 27.551 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.146 | 1000 | 0 | 62.064 | 40.975 | 41.979 | 42.336 | 27.563 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.138 | 1000 | 0 | 62.019 | 40.978 | 41.976 | 42.312 | 27.563 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.138 | 1000 | 0 | 62.067 | 40.975 | 41.941 | 42.343 | 27.563 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.143 | 1000 | 0 | 62.043 | 40.978 | 41.942 | 42.446 | 28.074 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.995 | 14.417 | 1000 | 0 | 66.69 | 40.965 | 41.968 | 42.318 | 28.074 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.207 | 13.578 | 1000 | 0 | 65.76 | 40.963 | 41.969 | 42.429 | 28.074 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 13847 | 0 | 2768.6 | 0.984 | 1.739 | 7.318 | 28.488 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.546 | 13.961 | 1000 | 0 | 68.746 | 40.973 | 41.988 | 42.636 | 33.191 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.599 | 8.413 | 1000 | 0 | 86.214 | 40.986 | 42.181 | 43.014 | 33.191 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.022 | 9.178 | 1000 | 0 | 90.725 | 41.041 | 42.293 | 43.193 | 33.191 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9376 | 0 | 1874.236 | 1.35 | 2.865 | 33.476 | 33.223 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.573 | 12.107 | 1000 | 0 | 73.675 | 41.921 | 42.877 | 43.186 | 37.117 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.914 | 13.404 | 1000 | 0 | 77.436 | 41.927 | 42.98 | 44.431 | 37.117 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.784 | 13.43 | 1000 | 0 | 72.547 | 41.937 | 42.931 | 43.593 | 37.117 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7245 | 0 | 1448.25 | 1.651 | 3.434 | 27.176 | 38.117 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.618 | 15.035 | 1000 | 0 | 68.41 | 41.975 | 43.502 | 45.462 | 42.492 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.523 | 15.293 | 1000 | 0 | 68.856 | 42.05 | 44.148 | 46.061 | 42.492 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.18 | 15.131 | 1000 | 0 | 70.522 | 42.846 | 44.166 | 46.03 | 42.492 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5381 | 0 | 1075.341 | 2.445 | 4.932 | 21.996 | 44.355 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.604 | 16.081 | 1000 | 0 | 64.088 | 43.216 | 45.919 | 47.628 | 49.426 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.516 | 16.276 | 1000 | 0 | 64.449 | 43.954 | 46.403 | 49.124 | 49.023 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.657 | 15.698 | 1000 | 0 | 63.868 | 43.984 | 47.252 | 51.03 | 49.023 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.005 | 3533 | 0 | 705.675 | 3.963 | 7.297 | 10.405 | 55.035 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.855 | 17.353 | 1000 | 0 | 59.328 | 45.915 | 50.001 | 51.924 | 81.527 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.007 | 28.769 | 363 | 0 | 12.514 | 241.918 | 242.996 | 19610.48 | 81.816 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.414 | 19.177 | 243 | 0 | 12.517 | 241.756 | 242.987 | 12803.866 | 81.84 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.381 | 183 | 0 | 12.516 | 241.705 | 242.984 | 10022.924 | 81.863 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.585 | 123 | 0 | 12.519 | 241.569 | 242.804 | 5230.957 | 81.875 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.588 | 103 | 0 | 10.476 | 241.842 | 242.617 | 5129.833 | 81.879 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.795 | 63 | 0 | 12.513 | 241.623 | 242.558 | 243.076 | 81.879 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.793 | 42 | 0 | 8.337 | 241.942 | 242.432 | 242.712 | 81.883 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.363 | 41.957 | 42.335 | 42.982 | 81.883 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.011 | 110 | 0 | 21.8 | 46.965 | 47.069 | 47.265 | 81.883 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.038 | 99 | 0 | 19.621 | 50.986 | 52.032 | 52.97 | 81.883 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.069 | 55 | 0 | 10.997 | 91.928 | 92.05 | 92.483 | 81.883 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.074 | 2.094 | 36 | 0 | 7.095 | 141.975 | 142.842 | 142.939 | 81.883 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.381 | 21 | 0 | 4.168 | 241.927 | 242.934 | 242.979 | 81.883 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18233 | 0 | 3645.893 | 1.297 | 1.865 | 2.234 | 63.953 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18159 | 0 | 3631.045 | 1.305 | 1.85 | 2.232 | 64.211 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18594 | 0 | 3718.042 | 1.272 | 1.83 | 2.218 | 64.34 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17602 | 0 | 3519.79 | 1.347 | 2.141 | 2.548 | 64.805 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18098 | 0 | 3618.67 | 1.307 | 1.902 | 2.326 | 66.215 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15820 | 0 | 3163.279 | 1.494 | 2.24 | 2.722 | 66.316 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18227 | 0 | 3644.566 | 1.293 | 1.915 | 2.334 | 66.387 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17628 | 0 | 3524.935 | 1.34 | 2.155 | 2.622 | 68.395 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14551 | 0 | 2909.504 | 1.631 | 2.288 | 2.821 | 76.645 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7944 | 0 | 1587.935 | 3.072 | 3.813 | 5.583 | 71.766 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14817 | 0 | 2962.644 | 1.602 | 2.229 | 2.869 | 76.809 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.041 | 2.041 | 14607 | 0 | 2897.664 | 1.253 | 2.015 | 3.515 | 66.957 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10904 | 0 | 2179.858 | 2.052 | 3.355 | 5.159 | 101.059 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4422 | 0 | 883.365 | 5.577 | 6.843 | 10.442 | 76.539 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10818 | 0 | 2162.984 | 2.05 | 3.628 | 5.356 | 71.766 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10727 | 0 | 2144.434 | 2.071 | 3.657 | 5.201 | 71.328 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 8044 | 0 | 1607.921 | 2.786 | 4.627 | 13.864 | 132.188 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.041 | 2415 | 0 | 482.058 | 10.246 | 12.462 | 18.928 | 79.129 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8267 | 0 | 1652.655 | 2.622 | 4.794 | 14.122 | 73.117 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8069 | 0 | 1613.172 | 2.627 | 4.893 | 14.076 | 73.117 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5271 | 0 | 1053.341 | 4.37 | 7.255 | 17.167 | 160.531 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.756 | 1314 | 0 | 261.942 | 18.829 | 21.202 | 34.323 | 103.602 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5550 | 0 | 1109.369 | 3.949 | 7.32 | 17.017 | 102.59 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5387 | 0 | 1076.677 | 4.101 | 7.52 | 16.918 | 102.656 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3138 | 0 | 626.752 | 7.86 | 12.617 | 14.966 | 171.461 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.059 | 7.06 | 1000 | 0 | 141.668 | 35.095 | 36.364 | 63.658 | 125.168 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3562 | 0 | 711.349 | 6.686 | 11.522 | 13.194 | 121.52 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3493 | 0 | 697.717 | 6.857 | 11.474 | 13.537 | 121.523 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.93 | 51.155 | 360 | 0 | 7.068 | 2546.965 | 2567.991 | 2573.792 | 137.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.95 | 34.075 | 240 | 0 | 7.069 | 1697.041 | 1715.616 | 1722.508 | 138.387 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.496 | 25.578 | 180 | 0 | 7.06 | 1274.939 | 1282.958 | 1288.444 | 99.68 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.991 | 17.064 | 120 | 0 | 7.063 | 849.266 | 862.969 | 866.77 | 101.43 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.169 | 14.199 | 100 | 0 | 7.058 | 788.771 | 850.51 | 857.152 | 101.434 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.486 | 8.506 | 60 | 0 | 7.07 | 424.364 | 428.499 | 433.393 | 101.434 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.661 | 5.668 | 40 | 0 | 7.065 | 283.071 | 287.481 | 290.948 | 101.434 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3631 | 0 | 726.042 | 1.341 | 1.478 | 1.738 | 108.16 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 938 | 0 | 187.558 | 5.276 | 5.46 | 5.827 | 110.855 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.001 | 482 | 0 | 96.31 | 10.34 | 10.463 | 10.605 | 111.676 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.026 | 99 | 0 | 19.792 | 50.463 | 50.63 | 50.835 | 113.363 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.015 | 50 | 0 | 9.935 | 100.591 | 100.715 | 100.767 | 113.363 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.984 | 200.574 | 200.702 | 200.836 | 113.363 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18622 | 0 | 3723.561 | 1.273 | 1.774 | 2.15 | 63.906 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17950 | 0 | 3589.027 | 1.307 | 1.873 | 2.347 | 63.801 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18818 | 0 | 3762.891 | 1.253 | 1.788 | 2.197 | 63.84 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18144 | 0 | 3628.17 | 1.306 | 2.003 | 2.467 | 64.238 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18414 | 0 | 3681.545 | 1.279 | 1.844 | 2.249 | 65.992 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16207 | 0 | 3240.706 | 1.487 | 2.034 | 2.49 | 66.039 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18352 | 0 | 3669.662 | 1.282 | 1.868 | 2.282 | 66.125 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17739 | 0 | 3547.075 | 1.336 | 2.078 | 2.508 | 68.004 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14408 | 0 | 2880.807 | 1.646 | 2.306 | 2.926 | 77.168 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7697 | 0 | 1538.645 | 3.17 | 3.981 | 5.788 | 71.59 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14413 | 0 | 2881.541 | 1.634 | 2.323 | 2.988 | 76.742 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.031 | 2.001 | 14578 | 0 | 2897.543 | 1.388 | 2.121 | 3.019 | 66.77 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10580 | 0 | 2115.328 | 2.108 | 3.455 | 5.423 | 95.246 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4379 | 0 | 874.917 | 5.604 | 8.565 | 10.611 | 75.766 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10859 | 0 | 2171.079 | 2.032 | 3.595 | 5.868 | 68.832 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10692 | 0 | 2137.741 | 2.065 | 3.634 | 5.636 | 69.02 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8291 | 0 | 1657.455 | 2.668 | 4.478 | 8.074 | 144.941 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.034 | 2493 | 0 | 497.686 | 9.963 | 11.544 | 18.402 | 109.129 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8416 | 0 | 1682.619 | 2.554 | 4.758 | 14.314 | 75.555 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8433 | 0 | 1685.92 | 2.551 | 4.764 | 14.48 | 75.555 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5343 | 0 | 1067.842 | 4.34 | 7.305 | 17.327 | 171.941 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.61 | 1361 | 0 | 271.204 | 18.167 | 28.978 | 33.223 | 113.344 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5658 | 0 | 1130.605 | 3.882 | 7.071 | 17.534 | 113.176 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5445 | 0 | 1088.139 | 4.064 | 7.384 | 17.805 | 113.238 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3327 | 0 | 664.605 | 7.459 | 11.707 | 13.438 | 172.734 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.1 | 7.005 | 1000 | 0 | 140.853 | 35.186 | 55.155 | 63.318 | 144.051 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3490 | 0 | 697.231 | 6.685 | 12.152 | 13.587 | 143.465 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3591 | 0 | 717.404 | 6.666 | 11.523 | 13.058 | 143.469 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.918 | 51.051 | 360 | 0 | 7.07 | 2545.28 | 2559.06 | 2567.319 | 161.027 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.967 | 34.065 | 240 | 0 | 7.066 | 1697.945 | 1712.519 | 1720.922 | 166.441 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.453 | 25.555 | 180 | 0 | 7.072 | 1272.139 | 1282.096 | 1290.359 | 102.254 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.988 | 17.0 | 120 | 0 | 7.064 | 849.085 | 862.544 | 863.828 | 103.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.151 | 14.171 | 100 | 0 | 7.067 | 815.906 | 849.379 | 850.434 | 103.332 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.487 | 8.53 | 60 | 0 | 7.07 | 424.301 | 428.374 | 436.278 | 103.332 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.658 | 5.662 | 40 | 0 | 7.069 | 282.73 | 284.944 | 288.239 | 103.332 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.0 | 3586 | 0 | 717.146 | 1.354 | 1.467 | 1.72 | 108.352 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.005 | 938 | 0 | 187.422 | 5.282 | 5.472 | 5.804 | 110.289 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.004 | 483 | 0 | 96.47 | 10.321 | 10.428 | 10.556 | 112.43 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.026 | 99 | 0 | 19.772 | 50.498 | 50.776 | 50.904 | 112.742 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.015 | 50 | 0 | 9.944 | 100.485 | 100.621 | 100.702 | 112.742 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.556 | 200.692 | 201.147 | 112.742 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18597 | 0 | 3718.744 | 1.274 | 1.799 | 2.193 | 63.66 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18061 | 0 | 3611.637 | 1.309 | 1.857 | 2.283 | 64.199 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17937 | 0 | 3586.493 | 1.308 | 1.892 | 2.384 | 63.621 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17585 | 0 | 3516.013 | 1.341 | 2.133 | 2.62 | 63.82 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17832 | 0 | 3565.714 | 1.319 | 1.896 | 2.38 | 65.828 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16011 | 0 | 3201.537 | 1.485 | 2.143 | 2.638 | 65.152 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18402 | 0 | 3679.164 | 1.278 | 1.839 | 2.338 | 65.816 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17972 | 0 | 3593.397 | 1.314 | 2.033 | 2.499 | 68.23 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13716 | 0 | 2742.492 | 1.728 | 2.443 | 3.077 | 78.109 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7645 | 0 | 1528.081 | 3.183 | 4.072 | 5.831 | 70.473 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14256 | 0 | 2850.431 | 1.662 | 2.327 | 3.048 | 76.98 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.001 | 14398 | 0 | 2867.653 | 1.313 | 2.116 | 3.182 | 68.914 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10498 | 0 | 2098.804 | 2.108 | 3.532 | 5.862 | 99.277 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4322 | 0 | 863.62 | 5.663 | 7.599 | 10.447 | 74.434 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10398 | 0 | 2078.909 | 2.111 | 3.72 | 6.364 | 74.457 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 10461 | 0 | 2091.035 | 2.095 | 3.718 | 5.886 | 74.27 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 8025 | 0 | 1604.121 | 2.737 | 4.638 | 16.318 | 125.648 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.05 | 2428 | 0 | 484.692 | 10.214 | 14.416 | 18.887 | 79.32 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8017 | 0 | 1602.675 | 2.66 | 4.982 | 15.683 | 73.734 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.008 | 8200 | 0 | 1638.924 | 2.595 | 4.805 | 15.717 | 73.609 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5127 | 0 | 1024.417 | 4.494 | 7.651 | 19.302 | 132.828 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.715 | 1337 | 0 | 266.469 | 18.524 | 27.401 | 33.962 | 81.66 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5504 | 0 | 1099.997 | 3.902 | 7.333 | 19.296 | 77.727 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.004 | 5370 | 0 | 1072.032 | 4.016 | 7.51 | 19.108 | 77.855 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 3078 | 0 | 614.635 | 8.052 | 12.9 | 15.08 | 171.645 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.161 | 7.108 | 1000 | 0 | 139.636 | 35.557 | 37.01 | 65.089 | 79.379 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3483 | 0 | 695.746 | 6.74 | 12.023 | 13.669 | 78.809 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3519 | 0 | 702.868 | 6.725 | 11.767 | 13.461 | 78.809 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.794 | 50.85 | 360 | 0 | 7.087 | 2539.276 | 2560.903 | 2563.089 | 95.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.851 | 33.878 | 240 | 0 | 7.09 | 1691.691 | 1706.365 | 1713.558 | 96.332 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.393 | 25.415 | 180 | 0 | 7.089 | 1268.938 | 1290.76 | 1296.735 | 96.402 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.928 | 16.984 | 120 | 0 | 7.089 | 846.123 | 852.715 | 862.458 | 96.652 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.211 | 14.119 | 100 | 0 | 7.037 | 794.909 | 848.406 | 855.03 | 96.656 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.473 | 8.503 | 60 | 0 | 7.081 | 423.21 | 433.756 | 440.627 | 96.656 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.646 | 5.643 | 40 | 0 | 7.085 | 281.981 | 285.003 | 293.37 | 96.656 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3609 | 0 | 721.652 | 1.345 | 1.479 | 1.659 | 96.656 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 945 | 0 | 188.952 | 5.259 | 5.337 | 5.485 | 96.656 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.001 | 483 | 0 | 96.479 | 10.312 | 10.453 | 10.648 | 96.66 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.019 | 99 | 0 | 19.794 | 50.457 | 50.592 | 50.755 | 96.66 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.014 | 50 | 0 | 9.937 | 100.576 | 100.738 | 100.783 | 96.66 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.601 | 200.715 | 200.84 | 96.66 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.163 | 1000 | 0 | 62.015 | 40.977 | 41.98 | 42.45 | 28.953 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.14 | 1000 | 0 | 62.06 | 40.975 | 41.96 | 42.153 | 29.301 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.13 | 1000 | 0 | 62.077 | 40.978 | 41.897 | 42.389 | 29.379 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.141 | 1000 | 0 | 62.092 | 40.976 | 41.927 | 42.278 | 29.563 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.127 | 1000 | 0 | 62.052 | 40.977 | 41.934 | 42.303 | 29.602 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.121 | 1000 | 0 | 62.058 | 40.977 | 41.961 | 42.278 | 29.617 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.136 | 1000 | 0 | 62.085 | 40.974 | 41.957 | 42.464 | 29.656 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.15 | 1000 | 0 | 62.08 | 40.973 | 41.96 | 42.47 | 30.227 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.441 | 11.563 | 1000 | 0 | 69.249 | 40.961 | 41.949 | 42.224 | 30.27 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.752 | 14.843 | 1000 | 0 | 72.715 | 40.965 | 41.969 | 42.565 | 30.27 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13311 | 0 | 2661.375 | 1.03 | 1.82 | 5.591 | 30.664 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.162 | 14.459 | 1000 | 0 | 65.955 | 40.968 | 41.982 | 42.663 | 34.82 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.07 | 9.676 | 1001 | 0 | 141.591 | 1.476 | 42.143 | 43.484 | 34.82 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.897 | 7.116 | 1001 | 0 | 126.756 | 40.847 | 42.558 | 44.986 | 34.82 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9539 | 0 | 1906.979 | 1.305 | 2.677 | 21.04 | 34.957 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.452 | 11.128 | 1000 | 0 | 95.678 | 41.71 | 42.773 | 43.757 | 42.215 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.789 | 11.555 | 1000 | 0 | 78.192 | 41.924 | 42.883 | 43.898 | 42.215 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.819 | 12.738 | 1000 | 0 | 84.608 | 41.915 | 42.921 | 44.236 | 42.215 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7183 | 0 | 1435.599 | 1.729 | 3.524 | 23.734 | 42.758 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.651 | 14.674 | 1000 | 0 | 73.254 | 41.95 | 43.118 | 44.279 | 46.211 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.387 | 14.943 | 1000 | 0 | 74.699 | 41.956 | 43.761 | 46.642 | 46.211 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.461 | 15.378 | 1000 | 0 | 74.288 | 41.976 | 44.074 | 46.521 | 46.211 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4966 | 0 | 992.32 | 2.547 | 5.337 | 21.781 | 47.695 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.94 | 15.87 | 1000 | 0 | 66.933 | 43.018 | 45.314 | 58.665 | 53.742 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.736 | 14.753 | 1000 | 0 | 67.861 | 43.084 | 45.946 | 47.858 | 53.742 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.039 | 14.841 | 1000 | 0 | 66.494 | 43.937 | 46.554 | 58.958 | 53.742 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3378 | 0 | 674.643 | 4.151 | 7.622 | 15.249 | 59.754 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.013 | 16.785 | 1000 | 0 | 62.449 | 45.54 | 49.293 | 57.751 | 65.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.004 | 28.749 | 363 | 0 | 12.516 | 241.785 | 242.761 | 19611.581 | 66.227 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.414 | 19.169 | 243 | 0 | 12.517 | 241.732 | 242.5 | 12803.842 | 66.258 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.378 | 183 | 0 | 12.514 | 241.775 | 242.623 | 10022.236 | 66.27 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.59 | 123 | 0 | 12.51 | 241.848 | 242.472 | 5236.403 | 66.27 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.591 | 103 | 0 | 10.482 | 241.692 | 242.418 | 5135.613 | 66.27 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.792 | 63 | 0 | 12.52 | 241.422 | 242.079 | 242.508 | 66.273 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.794 | 42 | 0 | 8.338 | 241.746 | 242.754 | 243.501 | 66.273 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.366 | 41.966 | 42.059 | 42.994 | 66.285 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.023 | 2.03 | 114 | 0 | 22.696 | 44.963 | 45.966 | 45.997 | 66.313 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.041 | 97 | 0 | 19.377 | 51.967 | 52.033 | 52.911 | 66.359 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.057 | 56 | 0 | 11.043 | 90.978 | 91.973 | 92.015 | 66.363 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.054 | 2.084 | 36 | 0 | 7.123 | 141.051 | 142.016 | 142.658 | 66.363 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.379 | 21 | 0 | 4.169 | 241.945 | 242.12 | 242.302 | 66.363 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.15 | 1000 | 0 | 62.073 | 40.976 | 41.94 | 42.183 | 28.938 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.14 | 1000 | 0 | 62.062 | 40.976 | 41.973 | 42.691 | 29.227 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.129 | 1000 | 0 | 62.057 | 40.978 | 41.971 | 42.319 | 29.344 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.146 | 1000 | 0 | 62.062 | 40.972 | 41.942 | 42.17 | 29.516 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.136 | 1000 | 0 | 62.035 | 40.975 | 41.968 | 42.432 | 29.578 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.133 | 1000 | 0 | 62.044 | 40.978 | 41.954 | 42.106 | 29.59 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.13 | 1000 | 0 | 62.063 | 40.975 | 41.951 | 42.27 | 29.609 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.147 | 1000 | 0 | 62.065 | 40.976 | 41.902 | 42.353 | 30.184 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.042 | 13.389 | 1000 | 0 | 66.48 | 40.963 | 41.957 | 42.124 | 30.184 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.721 | 14.55 | 1000 | 0 | 67.932 | 40.962 | 41.966 | 42.147 | 30.219 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 13052 | 0 | 2609.716 | 1.034 | 1.903 | 6.604 | 30.598 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.781 | 13.885 | 1000 | 0 | 67.654 | 40.969 | 41.993 | 42.935 | 34.555 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.965 | 10.413 | 1000 | 0 | 125.545 | 40.847 | 42.208 | 43.188 | 34.555 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.583 | 8.905 | 1000 | 0 | 116.514 | 40.932 | 42.208 | 43.157 | 34.555 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9368 | 0 | 1872.862 | 1.361 | 2.844 | 42.25 | 34.973 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.154 | 9.792 | 1000 | 0 | 89.653 | 41.818 | 42.924 | 43.737 | 43.469 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.421 | 12.34 | 1000 | 0 | 80.508 | 41.902 | 42.932 | 43.929 | 41.512 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.221 | 13.434 | 1000 | 0 | 89.122 | 41.901 | 42.955 | 44.596 | 41.512 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 7064 | 0 | 1412.144 | 1.719 | 3.587 | 35.699 | 41.512 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.715 | 14.566 | 1000 | 0 | 72.912 | 41.954 | 43.425 | 44.958 | 45.363 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.896 | 15.142 | 1000 | 0 | 71.966 | 41.963 | 43.97 | 46.28 | 45.234 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.814 | 15.317 | 1000 | 0 | 72.39 | 41.974 | 44.046 | 45.69 | 45.234 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5043 | 0 | 1007.694 | 2.509 | 5.248 | 37.073 | 48.664 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.852 | 14.701 | 1000 | 0 | 67.332 | 43.135 | 46.031 | 48.257 | 53.402 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.159 | 15.491 | 1000 | 0 | 70.629 | 43.025 | 46.342 | 48.664 | 52.98 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.909 | 15.084 | 1000 | 0 | 67.074 | 43.943 | 47.667 | 50.168 | 52.98 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.006 | 3376 | 0 | 674.135 | 4.138 | 7.827 | 15.93 | 58.992 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.184 | 17.533 | 1000 | 0 | 61.788 | 45.374 | 50.099 | 58.694 | 65.758 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.998 | 28.759 | 363 | 0 | 12.518 | 241.741 | 242.796 | 19601.597 | 66.211 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.41 | 19.167 | 243 | 0 | 12.519 | 241.658 | 242.984 | 12796.348 | 66.211 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.38 | 183 | 0 | 12.513 | 241.779 | 242.646 | 10030.002 | 66.223 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.588 | 123 | 0 | 12.514 | 241.691 | 242.851 | 5233.25 | 66.234 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.583 | 103 | 0 | 10.484 | 241.674 | 242.42 | 5135.93 | 66.234 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.785 | 63 | 0 | 12.518 | 241.416 | 242.313 | 242.465 | 66.234 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.79 | 42 | 0 | 8.346 | 241.26 | 242.193 | 242.217 | 66.234 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.362 | 41.967 | 42.23 | 42.984 | 66.27 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.031 | 114 | 0 | 22.723 | 44.961 | 45.937 | 45.961 | 66.273 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.04 | 97 | 0 | 19.384 | 51.963 | 52.015 | 52.082 | 66.281 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.064 | 2.062 | 56 | 0 | 11.059 | 90.974 | 91.939 | 91.975 | 66.297 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.048 | 2.086 | 36 | 0 | 7.131 | 140.98 | 142.542 | 142.943 | 66.301 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.376 | 21 | 0 | 4.168 | 241.941 | 242.131 | 242.145 | 66.301 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.151 | 1000 | 0 | 62.038 | 40.982 | 41.973 | 42.654 | 29.047 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.125 | 1000 | 0 | 62.073 | 40.976 | 41.939 | 42.268 | 29.32 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.118 | 1000 | 0 | 62.116 | 40.977 | 41.823 | 42.194 | 29.398 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.125 | 1000 | 0 | 62.07 | 40.98 | 41.948 | 42.424 | 29.707 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.123 | 1000 | 0 | 62.079 | 40.976 | 41.913 | 42.504 | 29.781 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.128 | 1000 | 0 | 62.052 | 40.975 | 41.951 | 42.283 | 29.789 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.111 | 1000 | 0 | 62.05 | 40.978 | 41.963 | 42.414 | 29.801 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.124 | 1000 | 0 | 62.021 | 40.98 | 42.004 | 42.549 | 30.418 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.201 | 14.288 | 1000 | 0 | 70.417 | 40.958 | 41.959 | 42.556 | 30.488 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.36 | 14.009 | 1000 | 0 | 65.104 | 40.962 | 41.958 | 42.912 | 30.508 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13289 | 0 | 2656.76 | 1.018 | 1.843 | 8.975 | 30.832 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.051 | 14.022 | 1000 | 0 | 66.442 | 40.968 | 42.001 | 42.933 | 35.316 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.797 | 8.089 | 1000 | 0 | 92.62 | 40.955 | 42.214 | 43.31 | 35.316 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.516 | 7.965 | 1000 | 0 | 117.429 | 40.926 | 42.256 | 43.16 | 35.316 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9209 | 0 | 1840.791 | 1.328 | 2.847 | 29.789 | 35.332 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.566 | 10.567 | 1000 | 0 | 94.642 | 41.723 | 42.792 | 43.329 | 44.012 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.895 | 12.742 | 1000 | 0 | 91.784 | 41.863 | 42.953 | 44.639 | 44.012 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.457 | 12.02 | 1000 | 0 | 80.278 | 41.915 | 42.938 | 43.992 | 44.012 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 6886 | 0 | 1376.616 | 1.752 | 3.681 | 51.76 | 44.012 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.689 | 13.656 | 1000 | 0 | 73.054 | 41.958 | 43.318 | 45.035 | 46.695 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.517 | 14.748 | 1000 | 0 | 68.885 | 41.967 | 43.756 | 46.452 | 46.688 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.257 | 14.815 | 1000 | 0 | 70.141 | 41.98 | 43.976 | 45.795 | 46.691 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 5098 | 0 | 1018.898 | 2.444 | 5.302 | 24.401 | 48.555 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.989 | 16.077 | 1000 | 0 | 66.714 | 42.986 | 45.716 | 46.471 | 56.375 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.893 | 14.93 | 1000 | 0 | 67.144 | 43.118 | 46.808 | 49.15 | 56.375 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.683 | 14.805 | 1000 | 0 | 68.107 | 43.935 | 47.018 | 49.128 | 56.375 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3493 | 0 | 697.81 | 3.997 | 7.427 | 11.263 | 62.387 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.142 | 16.96 | 1000 | 0 | 61.948 | 45.394 | 49.865 | 63.586 | 68.176 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.998 | 28.791 | 363 | 0 | 12.518 | 241.742 | 243.065 | 19601.013 | 67.891 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.409 | 19.17 | 243 | 0 | 12.52 | 241.607 | 242.871 | 12801.032 | 67.902 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.622 | 14.374 | 183 | 0 | 12.516 | 241.769 | 243.072 | 10023.535 | 67.91 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.584 | 123 | 0 | 12.512 | 241.674 | 242.838 | 5232.376 | 67.914 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.584 | 103 | 0 | 10.478 | 241.762 | 242.623 | 5131.328 | 67.914 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.79 | 63 | 0 | 12.505 | 241.842 | 242.899 | 243.189 | 67.914 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.787 | 42 | 0 | 8.343 | 241.72 | 242.229 | 242.237 | 67.914 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.019 | 122 | 0 | 24.327 | 41.961 | 42.98 | 42.999 | 67.961 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.031 | 114 | 0 | 22.729 | 44.966 | 45.59 | 45.988 | 67.973 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.039 | 97 | 0 | 19.369 | 51.966 | 52.404 | 52.979 | 67.984 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.054 | 56 | 0 | 11.054 | 90.976 | 91.951 | 92.397 | 68.004 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.089 | 36 | 0 | 7.137 | 140.982 | 141.966 | 142.031 | 68.004 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.38 | 21 | 0 | 4.166 | 241.952 | 242.114 | 242.127 | 68.012 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18560 | 0 | 3711.3 | 1.269 | 1.815 | 2.286 | 68.063 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18199 | 0 | 3639.085 | 1.3 | 1.847 | 2.316 | 68.27 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 18637 | 0 | 3726.56 | 1.267 | 1.84 | 2.297 | 68.504 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18290 | 0 | 3657.4 | 1.291 | 1.888 | 2.38 | 68.766 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18436 | 0 | 3686.507 | 1.278 | 1.88 | 2.324 | 69.895 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16061 | 0 | 3211.355 | 1.475 | 2.152 | 2.72 | 70.316 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18376 | 0 | 3674.576 | 1.281 | 1.838 | 2.347 | 70.324 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18024 | 0 | 3604.081 | 1.312 | 1.906 | 2.358 | 71.105 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14369 | 0 | 2873.155 | 1.644 | 2.285 | 3.103 | 78.98 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7750 | 0 | 1549.336 | 3.158 | 3.881 | 5.735 | 75.098 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14339 | 0 | 2867.108 | 1.657 | 2.252 | 3.059 | 78.469 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.001 | 14370 | 0 | 2864.468 | 1.402 | 2.12 | 3.17 | 70.707 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10342 | 0 | 2067.732 | 2.085 | 3.724 | 6.061 | 95.941 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4360 | 0 | 871.255 | 5.655 | 6.876 | 10.59 | 78.746 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10316 | 0 | 2062.481 | 2.087 | 3.789 | 6.357 | 75.086 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10203 | 0 | 2039.711 | 2.108 | 3.832 | 6.364 | 75.086 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7617 | 0 | 1522.676 | 2.716 | 5.242 | 20.819 | 117.004 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.086 | 2423 | 0 | 483.615 | 10.193 | 16.529 | 19.343 | 83.5 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.002 | 7907 | 0 | 1575.932 | 2.621 | 4.972 | 21.183 | 77.266 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.134 | 2.003 | 7349 | 0 | 1431.436 | 2.741 | 5.423 | 21.101 | 77.344 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5255 | 0 | 1050.331 | 3.995 | 7.591 | 24.154 | 145.809 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.798 | 1299 | 0 | 258.951 | 19.128 | 21.895 | 35.299 | 83.535 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5065 | 0 | 1012.282 | 4.145 | 8.139 | 24.563 | 82.078 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5081 | 0 | 1015.344 | 4.222 | 7.672 | 24.336 | 82.141 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3135 | 0 | 626.137 | 7.593 | 12.646 | 15.015 | 102.344 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.263 | 7.168 | 1000 | 0 | 137.679 | 36.016 | 38.13 | 66.122 | 87.172 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3336 | 0 | 666.321 | 7.134 | 12.393 | 14.018 | 88.063 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3289 | 0 | 656.931 | 7.237 | 12.287 | 14.323 | 88.063 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.866 | 50.873 | 360 | 0 | 7.077 | 2542.788 | 2546.617 | 2547.068 | 103.395 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.908 | 33.915 | 240 | 0 | 7.078 | 1694.999 | 1698.593 | 1698.947 | 103.395 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.429 | 25.423 | 180 | 0 | 7.079 | 1271.142 | 1274.723 | 1275.245 | 106.77 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.95 | 16.945 | 120 | 0 | 7.079 | 847.372 | 850.848 | 851.238 | 106.895 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.128 | 14.188 | 100 | 0 | 7.078 | 840.305 | 847.891 | 848.349 | 106.895 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.477 | 8.481 | 60 | 0 | 7.078 | 423.745 | 425.045 | 425.802 | 107.082 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.649 | 5.65 | 40 | 0 | 7.081 | 282.392 | 282.68 | 282.703 | 107.082 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 1971 | 0 | 394.16 | 2.5 | 2.627 | 2.887 | 107.082 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 578 | 0 | 115.585 | 8.612 | 8.732 | 8.926 | 107.082 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.009 | 411 | 0 | 82.079 | 12.139 | 12.27 | 12.509 | 107.082 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.022 | 99 | 0 | 19.795 | 50.432 | 50.62 | 51.456 | 107.082 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.014 | 50 | 0 | 9.947 | 100.463 | 100.578 | 100.695 | 107.082 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.515 | 200.59 | 200.617 | 107.082 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18964 | 0 | 3792.04 | 1.246 | 1.756 | 2.193 | 67.816 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 18512 | 0 | 3701.543 | 1.276 | 1.809 | 2.261 | 68.262 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18648 | 0 | 3728.594 | 1.259 | 1.838 | 2.308 | 68.445 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18128 | 0 | 3624.996 | 1.291 | 1.93 | 2.41 | 68.711 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18667 | 0 | 3732.749 | 1.264 | 1.828 | 2.259 | 70.387 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16314 | 0 | 3261.974 | 1.46 | 2.061 | 2.63 | 70.617 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18606 | 0 | 3720.439 | 1.268 | 1.834 | 2.305 | 70.723 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18371 | 0 | 3673.38 | 1.278 | 1.898 | 2.378 | 72.551 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14463 | 0 | 2891.881 | 1.642 | 2.2 | 2.982 | 82.738 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7717 | 0 | 1542.645 | 3.171 | 3.937 | 5.756 | 76.707 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14606 | 0 | 2920.526 | 1.634 | 2.119 | 2.829 | 81.637 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.023 | 2.021 | 14425 | 0 | 2872.034 | 1.248 | 1.96 | 40.989 | 74.016 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10713 | 0 | 2141.939 | 2.036 | 3.528 | 5.204 | 110.473 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4345 | 0 | 868.099 | 5.663 | 7.15 | 10.664 | 81.348 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10700 | 0 | 2139.299 | 2.044 | 3.52 | 5.065 | 72.988 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10550 | 0 | 2109.269 | 2.05 | 3.677 | 5.41 | 73.176 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8237 | 0 | 1646.679 | 2.591 | 4.571 | 21.294 | 115.063 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.021 | 2456 | 0 | 490.483 | 10.109 | 11.807 | 18.761 | 84.805 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8037 | 0 | 1606.655 | 2.638 | 4.775 | 21.505 | 76.371 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8015 | 0 | 1602.408 | 2.608 | 4.8 | 21.588 | 76.453 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5393 | 0 | 1077.79 | 3.907 | 7.418 | 23.776 | 140.238 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.695 | 1335 | 0 | 266.08 | 18.548 | 29.39 | 34.944 | 96.449 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.003 | 5438 | 0 | 1085.144 | 3.951 | 7.262 | 24.053 | 92.449 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5353 | 0 | 1069.868 | 4.051 | 7.272 | 24.328 | 92.512 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3494 | 0 | 697.881 | 6.817 | 11.496 | 13.045 | 108.098 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.143 | 7.064 | 1000 | 0 | 140.005 | 35.262 | 50.525 | 64.39 | 102.641 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3597 | 0 | 718.597 | 6.579 | 11.698 | 13.075 | 95.852 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3611 | 0 | 721.331 | 6.643 | 11.217 | 12.859 | 95.852 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.853 | 50.863 | 360 | 0 | 7.079 | 2542.273 | 2544.603 | 2548.382 | 115.551 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.899 | 33.893 | 240 | 0 | 7.08 | 1694.535 | 1698.125 | 1699.007 | 116.121 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.434 | 25.42 | 180 | 0 | 7.077 | 1271.249 | 1274.766 | 1275.842 | 116.184 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.947 | 16.946 | 120 | 0 | 7.081 | 847.176 | 849.961 | 850.129 | 116.184 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.129 | 14.125 | 100 | 0 | 7.078 | 840.281 | 848.027 | 848.72 | 119.121 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.476 | 8.475 | 60 | 0 | 7.078 | 423.677 | 424.877 | 425.638 | 117.75 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.65 | 40 | 0 | 7.079 | 282.393 | 283.175 | 283.223 | 117.75 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1962 | 0 | 392.343 | 2.504 | 2.664 | 2.974 | 124.566 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.004 | 576 | 0 | 115.188 | 8.618 | 8.919 | 9.164 | 124.441 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.011 | 410 | 0 | 81.964 | 12.16 | 12.295 | 12.444 | 126.461 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.045 | 2.021 | 100 | 0 | 19.821 | 50.406 | 50.488 | 50.565 | 126.461 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.027 | 2.012 | 50 | 0 | 9.947 | 100.445 | 100.568 | 101.294 | 126.461 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.544 | 200.651 | 200.697 | 126.461 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18689 | 0 | 3736.662 | 1.263 | 1.768 | 2.209 | 67.773 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18322 | 0 | 3663.658 | 1.289 | 1.808 | 2.275 | 67.941 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 18652 | 0 | 3729.579 | 1.268 | 1.801 | 2.274 | 68.145 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18624 | 0 | 3723.896 | 1.269 | 1.822 | 2.291 | 68.551 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18561 | 0 | 3711.506 | 1.271 | 1.818 | 2.307 | 70.094 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16342 | 0 | 3267.679 | 1.459 | 2.017 | 2.632 | 70.223 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18375 | 0 | 3674.232 | 1.281 | 1.87 | 2.331 | 70.332 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18375 | 0 | 3673.843 | 1.28 | 1.875 | 2.384 | 72.547 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14574 | 0 | 2913.988 | 1.633 | 2.178 | 2.926 | 82.281 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7781 | 0 | 1555.435 | 3.148 | 3.89 | 5.736 | 76.195 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14364 | 0 | 2871.937 | 1.653 | 2.202 | 3.082 | 81.297 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.006 | 14615 | 0 | 2915.586 | 1.292 | 1.97 | 3.208 | 75.223 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10833 | 0 | 2165.797 | 2.004 | 3.515 | 4.939 | 110.152 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4373 | 0 | 873.698 | 5.646 | 6.71 | 10.454 | 80.895 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10793 | 0 | 2158.008 | 2.027 | 3.518 | 4.939 | 77.855 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10471 | 0 | 2093.51 | 2.065 | 3.652 | 5.463 | 77.418 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 8099 | 0 | 1619.058 | 2.63 | 4.642 | 22.65 | 117.352 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.051 | 2475 | 0 | 493.926 | 10.044 | 11.661 | 18.493 | 84.906 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8088 | 0 | 1616.843 | 2.544 | 4.787 | 22.456 | 81.492 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8095 | 0 | 1618.319 | 2.636 | 4.708 | 22.434 | 81.555 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5442 | 0 | 1087.762 | 3.937 | 7.156 | 24.994 | 122.441 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.628 | 1365 | 0 | 272.179 | 18.168 | 27.846 | 33.939 | 87.934 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5589 | 0 | 1117.07 | 3.836 | 6.918 | 24.678 | 90.207 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.037 | 2.003 | 5562 | 0 | 1104.163 | 3.869 | 6.912 | 24.475 | 90.27 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3607 | 0 | 720.556 | 6.528 | 11.174 | 12.683 | 96.652 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.06 | 6.975 | 1000 | 0 | 141.644 | 34.928 | 37.643 | 63.926 | 89.484 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3631 | 0 | 725.407 | 6.543 | 11.335 | 12.804 | 92.758 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3671 | 0 | 733.354 | 6.509 | 11.053 | 12.66 | 92.758 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.873 | 50.864 | 360 | 0 | 7.076 | 2543.165 | 2551.435 | 2553.309 | 112.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.909 | 33.908 | 240 | 0 | 7.078 | 1694.878 | 1700.715 | 1703.867 | 112.938 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.437 | 25.425 | 180 | 0 | 7.076 | 1271.79 | 1275.722 | 1277.775 | 120.004 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.953 | 16.957 | 120 | 0 | 7.078 | 847.467 | 852.025 | 853.268 | 120.004 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.132 | 14.189 | 100 | 0 | 7.076 | 828.597 | 849.989 | 850.938 | 120.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.478 | 8.477 | 60 | 0 | 7.077 | 423.376 | 427.29 | 427.489 | 120.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.649 | 5.65 | 40 | 0 | 7.081 | 282.41 | 282.689 | 282.77 | 120.191 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1952 | 0 | 390.267 | 2.508 | 2.696 | 2.844 | 126.0 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.002 | 569 | 0 | 113.616 | 8.75 | 8.973 | 9.349 | 126.125 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.006 | 408 | 0 | 81.418 | 12.271 | 12.398 | 12.592 | 128.66 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.04 | 2.016 | 100 | 0 | 19.842 | 50.346 | 50.486 | 50.602 | 128.66 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.025 | 2.013 | 50 | 0 | 9.95 | 100.439 | 100.57 | 100.617 | 128.66 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.454 | 200.581 | 200.677 | 128.66 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

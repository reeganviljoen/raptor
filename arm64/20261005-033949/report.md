# Puma vs Raptor Simulation

Run ID: `20261005-033949`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.102 | 1000 | 0 | 62.037 | 40.986 | 41.973 | 42.393 | 27.5 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.1 | 1000 | 0 | 62.07 | 40.982 | 41.974 | 42.48 | 27.73 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.099 | 1000 | 0 | 62.082 | 40.981 | 41.802 | 42.416 | 27.73 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.1 | 1000 | 0 | 62.058 | 40.982 | 41.936 | 42.298 | 27.734 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.095 | 1000 | 0 | 62.077 | 40.982 | 41.974 | 42.297 | 27.762 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.093 | 1000 | 0 | 62.097 | 40.981 | 41.953 | 42.287 | 27.762 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.092 | 1000 | 0 | 62.085 | 40.982 | 41.968 | 42.364 | 27.77 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.095 | 1000 | 0 | 62.063 | 40.983 | 41.966 | 42.453 | 27.77 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.391 | 15.072 | 1000 | 0 | 64.975 | 40.97 | 41.974 | 42.482 | 27.801 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.951 | 15.382 | 1000 | 0 | 66.885 | 40.97 | 41.966 | 42.168 | 27.801 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 14094 | 0 | 2817.817 | 0.954 | 1.848 | 6.823 | 28.227 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.481 | 14.823 | 1000 | 0 | 64.594 | 40.973 | 41.968 | 42.964 | 34.371 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.615 | 9.486 | 1000 | 0 | 104.006 | 40.956 | 41.993 | 42.993 | 34.371 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.524 | 9.793 | 1000 | 0 | 95.02 | 40.965 | 41.985 | 42.596 | 34.371 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10778 | 0 | 2154.589 | 1.179 | 2.357 | 41.108 | 34.488 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.286 | 12.204 | 1000 | 0 | 75.269 | 41.725 | 42.521 | 43.138 | 39.102 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.884 | 13.944 | 1000 | 0 | 77.616 | 41.943 | 42.971 | 47.268 | 39.102 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.267 | 13.708 | 1000 | 0 | 75.376 | 41.94 | 42.942 | 43.989 | 39.102 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.123 | 7614 | 0 | 1522.049 | 1.586 | 3.353 | 54.378 | 39.102 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.865 | 14.98 | 1000 | 0 | 72.125 | 41.975 | 43.575 | 44.946 | 45.406 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.379 | 15.762 | 1000 | 0 | 69.545 | 41.976 | 43.887 | 46.34 | 45.406 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.894 | 15.705 | 1000 | 0 | 67.142 | 41.998 | 43.964 | 45.25 | 45.406 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.015 | 2.004 | 5678 | 0 | 1132.213 | 2.286 | 4.785 | 13.984 | 46.434 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.676 | 15.979 | 1000 | 0 | 63.791 | 42.98 | 44.733 | 46.139 | 52.988 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.905 | 16.055 | 1000 | 0 | 62.873 | 43.964 | 46.442 | 48.777 | 52.988 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.539 | 16.429 | 1000 | 0 | 64.353 | 43.975 | 46.986 | 48.862 | 52.988 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3737 | 0 | 746.536 | 3.705 | 6.972 | 16.387 | 60.711 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.856 | 16.753 | 1000 | 0 | 59.326 | 44.99 | 48.072 | 50.892 | 83.387 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.988 | 28.748 | 363 | 0 | 12.523 | 241.416 | 243.268 | 19599.434 | 83.633 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.418 | 19.155 | 243 | 0 | 12.514 | 241.79 | 243.244 | 12799.669 | 83.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.371 | 183 | 0 | 12.516 | 241.689 | 243.115 | 10018.589 | 83.824 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.584 | 123 | 0 | 12.518 | 241.501 | 243.068 | 5229.917 | 83.824 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.582 | 103 | 0 | 10.481 | 241.741 | 242.931 | 5138.375 | 83.902 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.788 | 63 | 0 | 12.507 | 241.808 | 242.641 | 243.172 | 83.906 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.791 | 42 | 0 | 8.347 | 241.255 | 242.207 | 242.66 | 83.914 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.366 | 41.973 | 42.227 | 42.998 | 83.926 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.013 | 110 | 0 | 21.826 | 46.969 | 47.976 | 48.015 | 84.016 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.012 | 99 | 0 | 19.679 | 50.979 | 51.997 | 52.521 | 84.086 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.067 | 55 | 0 | 10.983 | 91.947 | 92.87 | 93.066 | 84.109 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.087 | 36 | 0 | 7.104 | 141.95 | 142.057 | 142.071 | 84.109 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.378 | 21 | 0 | 4.168 | 241.958 | 242.101 | 242.134 | 84.109 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.093 | 1000 | 0 | 62.089 | 40.983 | 41.887 | 42.528 | 27.465 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.094 | 1000 | 0 | 62.067 | 40.981 | 41.903 | 42.232 | 27.48 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.092 | 16.094 | 1000 | 0 | 62.143 | 40.98 | 41.942 | 42.119 | 27.484 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.091 | 1000 | 0 | 62.099 | 40.982 | 41.955 | 42.159 | 27.563 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.128 | 1000 | 0 | 62.111 | 40.981 | 41.887 | 42.176 | 27.574 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.088 | 1000 | 0 | 62.127 | 40.978 | 41.808 | 42.09 | 27.574 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.092 | 1000 | 0 | 62.099 | 40.98 | 41.899 | 42.23 | 27.574 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.099 | 1000 | 0 | 62.102 | 40.982 | 41.764 | 42.252 | 28.293 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.348 | 14.58 | 1000 | 0 | 65.155 | 40.969 | 41.964 | 42.222 | 28.383 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.182 | 14.906 | 1000 | 0 | 65.868 | 40.969 | 41.956 | 42.617 | 28.387 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13950 | 0 | 2788.951 | 0.95 | 1.911 | 6.392 | 28.797 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.654 | 14.572 | 1000 | 0 | 63.88 | 40.972 | 41.974 | 42.502 | 34.777 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.277 | 10.607 | 1000 | 0 | 75.319 | 40.976 | 41.985 | 42.891 | 34.777 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.861 | 9.528 | 1000 | 0 | 84.309 | 40.97 | 42.001 | 42.996 | 34.777 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9973 | 0 | 1993.935 | 1.221 | 2.625 | 40.844 | 34.777 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.942 | 12.296 | 1000 | 0 | 91.391 | 41.451 | 42.365 | 43.262 | 41.801 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.43 | 13.437 | 1000 | 0 | 74.462 | 41.947 | 42.953 | 44.734 | 37.191 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.973 | 14.06 | 1000 | 0 | 71.569 | 41.957 | 42.953 | 43.975 | 37.191 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 7809 | 0 | 1561.026 | 1.568 | 3.21 | 36.201 | 37.555 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.921 | 14.509 | 1000 | 0 | 67.021 | 41.973 | 43.146 | 44.881 | 46.355 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.368 | 15.375 | 1000 | 0 | 65.07 | 41.987 | 43.618 | 44.766 | 46.355 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.129 | 15.098 | 1000 | 0 | 66.098 | 41.996 | 43.87 | 46.535 | 46.355 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.188 | 2.004 | 5644 | 0 | 1087.913 | 2.262 | 4.616 | 15.783 | 47.34 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.752 | 15.983 | 1000 | 0 | 63.485 | 43.001 | 45.343 | 46.982 | 53.121 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.31 | 15.91 | 1000 | 0 | 65.316 | 43.976 | 47.207 | 49.427 | 52.625 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.314 | 15.84 | 1000 | 0 | 65.298 | 43.984 | 46.147 | 47.24 | 52.625 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3800 | 0 | 759.146 | 3.579 | 6.769 | 30.84 | 58.637 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.778 | 17.282 | 1000 | 0 | 59.601 | 45.341 | 49.692 | 56.954 | 65.457 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.004 | 28.753 | 363 | 0 | 12.515 | 241.789 | 243.267 | 19606.621 | 65.195 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.416 | 19.181 | 243 | 0 | 12.516 | 241.819 | 242.694 | 12800.226 | 65.211 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.63 | 14.386 | 183 | 0 | 12.508 | 241.799 | 242.993 | 10025.473 | 65.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.594 | 123 | 0 | 12.502 | 241.915 | 242.999 | 5232.455 | 65.242 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.84 | 9.596 | 103 | 0 | 10.468 | 241.927 | 242.93 | 5136.248 | 65.246 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.793 | 63 | 0 | 12.513 | 241.66 | 242.237 | 242.767 | 65.246 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.793 | 42 | 0 | 8.342 | 241.765 | 242.273 | 242.984 | 65.246 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.019 | 122 | 0 | 24.338 | 41.963 | 42.96 | 43.059 | 65.258 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.024 | 109 | 0 | 21.776 | 46.968 | 47.705 | 47.979 | 65.262 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.036 | 98 | 0 | 19.522 | 51.9 | 52.063 | 52.965 | 65.313 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.023 | 2.074 | 55 | 0 | 10.95 | 91.965 | 92.955 | 92.973 | 65.32 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.07 | 2.087 | 36 | 0 | 7.101 | 141.958 | 142.101 | 142.673 | 65.32 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.379 | 21 | 0 | 4.168 | 241.936 | 242.082 | 242.108 | 65.32 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.131 | 1000 | 0 | 62.086 | 40.982 | 41.922 | 42.243 | 27.645 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.129 | 1000 | 0 | 62.056 | 40.979 | 41.974 | 42.292 | 27.664 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.111 | 1000 | 0 | 62.048 | 40.982 | 41.963 | 42.477 | 27.68 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.145 | 1000 | 0 | 62.051 | 40.979 | 41.951 | 42.199 | 27.781 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.143 | 1000 | 0 | 62.096 | 40.977 | 41.946 | 42.191 | 27.781 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.123 | 1000 | 0 | 62.065 | 40.978 | 41.962 | 42.37 | 27.781 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.138 | 1000 | 0 | 62.046 | 40.978 | 41.972 | 42.277 | 27.801 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.16 | 1000 | 0 | 62.07 | 40.975 | 41.947 | 42.299 | 28.176 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.365 | 13.273 | 1000 | 0 | 65.082 | 40.962 | 41.959 | 42.23 | 28.281 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.079 | 13.805 | 1000 | 0 | 66.319 | 40.961 | 41.963 | 42.612 | 28.285 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13229 | 0 | 2644.869 | 0.994 | 2.034 | 6.43 | 28.805 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.571 | 13.582 | 1000 | 0 | 68.631 | 40.976 | 41.979 | 42.955 | 33.059 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.494 | 9.746 | 1000 | 0 | 105.333 | 40.962 | 42.331 | 43.28 | 33.059 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.975 | 10.382 | 1000 | 0 | 111.422 | 40.972 | 42.245 | 43.096 | 33.059 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.039 | 2.002 | 9153 | 0 | 1816.368 | 1.36 | 2.935 | 41.988 | 33.27 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.618 | 12.926 | 1000 | 0 | 79.251 | 41.914 | 42.804 | 43.212 | 42.383 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.646 | 13.292 | 1000 | 0 | 79.078 | 41.939 | 42.994 | 43.825 | 39.832 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.883 | 13.954 | 1000 | 0 | 77.623 | 41.941 | 43.001 | 48.011 | 39.832 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.111 | 7303 | 0 | 1459.785 | 1.669 | 3.352 | 31.617 | 39.832 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.1 | 15.147 | 1000 | 0 | 70.923 | 41.966 | 43.107 | 43.976 | 45.836 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.568 | 15.518 | 1000 | 0 | 68.644 | 42.016 | 43.976 | 45.583 | 45.836 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.458 | 15.11 | 1000 | 0 | 69.165 | 42.9 | 44.891 | 47.364 | 45.836 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 5422 | 0 | 1083.708 | 2.397 | 4.886 | 17.699 | 47.695 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.266 | 15.917 | 1000 | 0 | 65.507 | 43.46 | 46.689 | 49.036 | 53.148 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.582 | 16.008 | 1000 | 0 | 64.176 | 43.982 | 47.439 | 50.204 | 53.148 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.953 | 16.145 | 1000 | 0 | 62.683 | 44.032 | 47.93 | 51.324 | 53.148 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3587 | 0 | 716.52 | 3.852 | 7.183 | 19.124 | 59.16 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.016 | 17.149 | 1000 | 0 | 58.767 | 45.542 | 49.919 | 58.023 | 82.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.008 | 28.736 | 363 | 0 | 12.514 | 241.733 | 243.951 | 19612.858 | 82.898 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.412 | 19.166 | 243 | 0 | 12.518 | 241.703 | 243.019 | 12798.22 | 82.91 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.623 | 14.364 | 183 | 0 | 12.515 | 241.738 | 243.148 | 10022.601 | 82.926 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.579 | 123 | 0 | 12.517 | 241.507 | 243.056 | 5232.214 | 82.941 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.587 | 103 | 0 | 10.478 | 241.772 | 242.568 | 5132.558 | 82.949 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.793 | 63 | 0 | 12.507 | 241.806 | 242.918 | 243.36 | 82.949 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.788 | 42 | 0 | 8.342 | 241.732 | 242.169 | 242.31 | 82.949 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.017 | 122 | 0 | 24.361 | 41.97 | 42.141 | 42.982 | 82.977 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.022 | 110 | 0 | 21.913 | 46.961 | 47.134 | 47.985 | 83.039 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.023 | 99 | 0 | 19.655 | 50.985 | 51.987 | 52.16 | 83.102 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.07 | 55 | 0 | 10.998 | 91.927 | 92.028 | 92.582 | 83.102 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.086 | 36 | 0 | 7.097 | 141.97 | 142.818 | 142.962 | 83.102 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.376 | 21 | 0 | 4.169 | 241.952 | 242.051 | 242.775 | 83.102 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18893 | 0 | 3777.533 | 1.254 | 1.777 | 2.165 | 63.313 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18518 | 0 | 3702.993 | 1.28 | 1.823 | 2.216 | 63.707 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18809 | 0 | 3760.526 | 1.261 | 1.783 | 2.172 | 63.816 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18407 | 0 | 3680.63 | 1.291 | 1.956 | 2.369 | 63.988 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18742 | 0 | 3747.625 | 1.264 | 1.819 | 2.21 | 65.594 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16348 | 0 | 3268.965 | 1.453 | 2.104 | 2.641 | 65.871 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18582 | 0 | 3715.643 | 1.272 | 1.867 | 2.248 | 65.867 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17860 | 0 | 3571.127 | 1.32 | 2.077 | 2.55 | 68.0 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14503 | 0 | 2899.958 | 1.623 | 2.478 | 3.008 | 76.777 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7850 | 0 | 1569.258 | 3.019 | 5.145 | 5.938 | 71.93 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14469 | 0 | 2893.053 | 1.612 | 2.641 | 3.165 | 76.348 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.031 | 2.017 | 14533 | 0 | 2888.512 | 1.531 | 2.431 | 3.111 | 67.73 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.011 | 10523 | 0 | 2103.872 | 2.109 | 3.629 | 5.463 | 97.355 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4377 | 0 | 874.602 | 5.451 | 9.54 | 10.618 | 75.801 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10719 | 0 | 2143.026 | 2.014 | 3.766 | 5.75 | 68.422 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10639 | 0 | 2126.983 | 2.04 | 3.793 | 5.488 | 68.297 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8267 | 0 | 1652.67 | 2.693 | 4.57 | 13.443 | 125.254 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.016 | 2500 | 0 | 499.242 | 9.657 | 16.981 | 18.659 | 79.695 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8545 | 0 | 1707.951 | 2.492 | 4.767 | 13.451 | 71.508 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.003 | 8200 | 0 | 1636.16 | 2.525 | 4.88 | 13.705 | 71.508 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 5418 | 0 | 1082.726 | 4.322 | 6.962 | 16.775 | 127.73 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.665 | 1343 | 0 | 267.675 | 18.14 | 31.688 | 33.979 | 84.504 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5680 | 0 | 1135.163 | 3.795 | 7.328 | 16.479 | 79.504 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5383 | 0 | 1075.836 | 4.048 | 7.642 | 16.413 | 79.508 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2935 | 0 | 585.979 | 8.507 | 13.054 | 14.602 | 102.277 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.23 | 7.341 | 1000 | 0 | 138.319 | 35.93 | 50.343 | 65.704 | 80.551 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3544 | 0 | 707.96 | 6.501 | 11.983 | 13.372 | 82.371 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3603 | 0 | 719.894 | 6.494 | 11.709 | 13.007 | 82.434 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.779 | 50.821 | 360 | 0 | 7.09 | 2538.705 | 2560.769 | 2566.349 | 102.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.864 | 33.899 | 240 | 0 | 7.087 | 1692.627 | 1714.385 | 1725.657 | 102.824 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.398 | 25.401 | 180 | 0 | 7.087 | 1269.584 | 1289.47 | 1311.319 | 102.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.928 | 16.973 | 120 | 0 | 7.089 | 846.099 | 865.192 | 868.706 | 103.023 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.167 | 14.132 | 100 | 0 | 7.059 | 815.357 | 847.656 | 849.678 | 103.023 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.466 | 8.481 | 60 | 0 | 7.087 | 422.969 | 433.762 | 434.158 | 103.027 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.65 | 5.64 | 40 | 0 | 7.08 | 282.17 | 285.27 | 286.025 | 103.027 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3688 | 0 | 737.397 | 1.325 | 1.436 | 1.599 | 103.027 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.004 | 946 | 0 | 189.059 | 5.25 | 5.362 | 5.495 | 103.027 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.008 | 485 | 0 | 96.917 | 10.28 | 10.412 | 10.578 | 103.027 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.05 | 2.024 | 100 | 0 | 19.803 | 50.433 | 50.582 | 50.651 | 103.027 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.016 | 50 | 0 | 9.941 | 100.495 | 100.714 | 101.231 | 103.031 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.984 | 200.571 | 200.724 | 200.785 | 103.031 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19116 | 0 | 3822.519 | 1.242 | 1.757 | 2.12 | 63.652 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18495 | 0 | 3698.284 | 1.281 | 1.81 | 2.22 | 63.922 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18785 | 0 | 3756.348 | 1.257 | 1.834 | 2.225 | 64.277 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18462 | 0 | 3691.242 | 1.286 | 1.999 | 2.381 | 64.551 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18605 | 0 | 3719.758 | 1.271 | 1.845 | 2.293 | 66.031 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16792 | 0 | 3357.531 | 1.415 | 1.968 | 2.569 | 66.352 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18824 | 0 | 3763.785 | 1.257 | 1.797 | 2.214 | 66.645 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18019 | 0 | 3602.871 | 1.317 | 2.025 | 2.452 | 68.012 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14462 | 0 | 2891.543 | 1.63 | 2.427 | 3.039 | 76.836 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7887 | 0 | 1576.583 | 3.024 | 5.03 | 5.881 | 71.629 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14544 | 0 | 2907.935 | 1.603 | 2.629 | 3.129 | 76.465 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.029 | 2.002 | 14758 | 0 | 2934.602 | 1.471 | 2.318 | 3.091 | 68.695 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.013 | 10405 | 0 | 2080.001 | 2.106 | 3.663 | 6.308 | 99.078 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4421 | 0 | 883.496 | 5.43 | 9.24 | 10.409 | 76.203 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10656 | 0 | 2130.364 | 1.995 | 3.749 | 6.261 | 69.344 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10414 | 0 | 2082.175 | 2.05 | 3.822 | 6.437 | 69.281 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8134 | 0 | 1625.698 | 2.678 | 4.699 | 14.694 | 120.281 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.021 | 2479 | 0 | 494.937 | 9.831 | 16.528 | 18.812 | 80.742 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8091 | 0 | 1617.397 | 2.562 | 5.071 | 14.514 | 74.527 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8135 | 0 | 1626.311 | 2.585 | 5.037 | 14.391 | 74.652 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.013 | 5359 | 0 | 1071.174 | 4.305 | 7.335 | 18.117 | 135.922 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.666 | 1347 | 0 | 268.5 | 17.825 | 31.021 | 33.955 | 83.211 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5632 | 0 | 1125.522 | 3.747 | 7.381 | 18.056 | 83.68 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5431 | 0 | 1085.135 | 3.894 | 7.68 | 18.223 | 83.684 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3036 | 0 | 606.417 | 8.127 | 13.052 | 14.967 | 104.328 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.16 | 7.049 | 1000 | 0 | 139.671 | 35.264 | 58.879 | 65.817 | 85.75 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3615 | 0 | 722.052 | 6.351 | 11.822 | 13.079 | 83.07 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3614 | 0 | 721.987 | 6.414 | 11.84 | 13.235 | 83.074 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.824 | 50.936 | 360 | 0 | 7.083 | 2539.459 | 2571.521 | 2584.855 | 102.578 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.878 | 33.935 | 240 | 0 | 7.084 | 1693.553 | 1711.032 | 1722.161 | 102.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.42 | 25.445 | 180 | 0 | 7.081 | 1270.721 | 1290.952 | 1294.352 | 102.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.931 | 16.959 | 120 | 0 | 7.088 | 846.034 | 867.528 | 869.565 | 102.902 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.175 | 14.138 | 100 | 0 | 7.055 | 787.693 | 846.503 | 848.531 | 109.344 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.468 | 8.486 | 60 | 0 | 7.086 | 423.186 | 432.937 | 437.45 | 109.344 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.643 | 40 | 0 | 7.078 | 282.499 | 289.807 | 297.653 | 109.348 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.0 | 3638 | 0 | 727.533 | 1.335 | 1.47 | 1.757 | 118.199 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.001 | 948 | 0 | 189.497 | 5.245 | 5.355 | 5.483 | 118.262 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.005 | 486 | 0 | 97.101 | 10.265 | 10.364 | 10.503 | 120.266 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.024 | 99 | 0 | 19.78 | 50.468 | 50.732 | 51.024 | 120.266 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.015 | 50 | 0 | 9.937 | 100.55 | 100.782 | 101.065 | 120.266 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.545 | 200.676 | 200.686 | 120.266 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19518 | 0 | 3902.844 | 1.22 | 1.682 | 2.066 | 63.703 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18902 | 0 | 3779.551 | 1.251 | 1.762 | 2.185 | 67.863 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19266 | 0 | 3852.483 | 1.232 | 1.719 | 2.142 | 67.586 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18852 | 0 | 3769.648 | 1.259 | 1.909 | 2.345 | 67.961 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18854 | 0 | 3770.136 | 1.256 | 1.779 | 2.197 | 69.633 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16777 | 0 | 3354.6 | 1.415 | 2.025 | 2.542 | 69.703 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19112 | 0 | 3821.594 | 1.242 | 1.756 | 2.152 | 69.984 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18465 | 0 | 3692.365 | 1.278 | 1.987 | 2.463 | 71.543 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14577 | 0 | 2914.633 | 1.622 | 2.355 | 3.016 | 93.82 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8009 | 0 | 1601.078 | 2.988 | 4.963 | 5.802 | 82.125 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14733 | 0 | 2945.671 | 1.597 | 2.455 | 3.046 | 97.43 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 2.027 | 14915 | 0 | 2972.484 | 1.35 | 2.131 | 3.037 | 77.066 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10436 | 0 | 2086.619 | 2.086 | 3.637 | 6.159 | 106.512 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4421 | 0 | 883.322 | 5.46 | 9.303 | 10.507 | 90.453 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10698 | 0 | 2138.753 | 1.996 | 3.723 | 5.871 | 81.117 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10529 | 0 | 2105.017 | 2.036 | 3.739 | 6.26 | 80.992 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.006 | 8237 | 0 | 1646.439 | 2.665 | 4.48 | 15.82 | 147.949 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.023 | 2477 | 0 | 494.48 | 9.927 | 16.365 | 18.707 | 94.438 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8228 | 0 | 1644.967 | 2.521 | 4.972 | 15.648 | 89.469 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 8230 | 0 | 1644.834 | 2.535 | 4.967 | 15.247 | 89.969 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5215 | 0 | 1042.057 | 4.473 | 7.47 | 18.842 | 137.102 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.638 | 1354 | 0 | 269.975 | 17.999 | 30.354 | 33.843 | 98.324 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5558 | 0 | 1111.024 | 3.801 | 7.393 | 18.994 | 93.648 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5520 | 0 | 1103.145 | 3.871 | 7.417 | 19.077 | 93.652 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3159 | 0 | 630.949 | 7.831 | 12.239 | 13.922 | 122.613 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.148 | 7.204 | 1000 | 0 | 139.902 | 35.442 | 56.197 | 65.373 | 101.625 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3697 | 0 | 738.523 | 6.217 | 11.406 | 12.644 | 95.043 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3615 | 0 | 722.057 | 6.472 | 11.65 | 13.06 | 95.102 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.904 | 50.997 | 360 | 0 | 7.072 | 2571.361 | 2620.407 | 2630.892 | 111.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.933 | 34.009 | 240 | 0 | 7.073 | 1715.111 | 1744.675 | 1751.58 | 114.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.453 | 25.497 | 180 | 0 | 7.072 | 1287.959 | 1313.119 | 1314.693 | 116.566 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.969 | 16.989 | 120 | 0 | 7.072 | 865.29 | 876.708 | 886.996 | 117.824 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.14 | 14.303 | 100 | 0 | 7.072 | 747.541 | 857.325 | 866.835 | 125.426 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.484 | 8.515 | 60 | 0 | 7.072 | 424.368 | 435.243 | 438.139 | 125.426 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.659 | 5.656 | 40 | 0 | 7.068 | 283.233 | 292.218 | 294.299 | 125.426 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3658 | 0 | 731.504 | 1.336 | 1.454 | 1.627 | 134.578 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.005 | 946 | 0 | 189.063 | 5.254 | 5.365 | 5.523 | 134.582 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.002 | 485 | 0 | 96.938 | 10.278 | 10.392 | 10.603 | 134.582 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.023 | 99 | 0 | 19.769 | 50.516 | 50.808 | 50.888 | 134.582 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.016 | 50 | 0 | 9.939 | 100.554 | 100.721 | 100.786 | 134.582 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.562 | 200.769 | 200.789 | 134.582 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.132 | 1000 | 0 | 62.094 | 40.974 | 41.96 | 42.215 | 28.949 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.105 | 1000 | 0 | 62.111 | 40.98 | 41.711 | 42.307 | 29.211 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.094 | 1000 | 0 | 62.119 | 40.977 | 41.502 | 42.047 | 29.324 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.105 | 1000 | 0 | 62.109 | 40.978 | 41.942 | 42.499 | 29.652 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.096 | 1000 | 0 | 62.096 | 40.979 | 41.811 | 42.113 | 29.695 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.097 | 16.101 | 1000 | 0 | 62.123 | 40.977 | 41.841 | 42.225 | 29.695 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.09 | 1000 | 0 | 62.073 | 40.98 | 41.963 | 42.706 | 29.703 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.097 | 1000 | 0 | 62.08 | 40.98 | 41.961 | 42.425 | 30.359 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.28 | 14.587 | 1000 | 0 | 65.444 | 40.968 | 41.975 | 42.209 | 30.359 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.671 | 14.995 | 1000 | 0 | 68.162 | 40.969 | 41.958 | 42.158 | 30.359 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 13798 | 0 | 2758.805 | 0.975 | 1.886 | 7.036 | 30.676 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.163 | 14.467 | 1000 | 0 | 70.609 | 40.966 | 41.973 | 42.934 | 35.266 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.1 | 10.849 | 1000 | 0 | 109.89 | 40.951 | 42.04 | 43.057 | 35.266 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.049 | 9.285 | 1001 | 0 | 110.623 | 40.931 | 41.975 | 43.193 | 35.266 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.001 | 10080 | 0 | 2014.96 | 1.243 | 2.645 | 22.612 | 35.363 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.018 | 12.889 | 1000 | 0 | 83.212 | 41.117 | 42.647 | 43.336 | 42.418 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.459 | 14.09 | 1000 | 0 | 80.261 | 41.92 | 42.961 | 45.136 | 41.063 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.668 | 12.742 | 1000 | 0 | 78.942 | 41.93 | 42.942 | 43.663 | 41.063 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.016 | 2.002 | 7626 | 0 | 1520.237 | 1.599 | 3.371 | 52.452 | 41.57 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.113 | 14.298 | 1000 | 0 | 70.856 | 41.964 | 43.021 | 44.078 | 47.344 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.635 | 15.278 | 1000 | 0 | 68.329 | 41.971 | 43.093 | 44.365 | 46.043 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.701 | 15.35 | 1000 | 0 | 68.024 | 41.971 | 43.194 | 45.572 | 46.043 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5393 | 0 | 1077.761 | 2.334 | 4.907 | 28.524 | 47.313 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.419 | 15.852 | 1000 | 0 | 64.856 | 42.995 | 45.595 | 51.828 | 57.18 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.572 | 15.574 | 1000 | 0 | 68.625 | 42.999 | 45.729 | 47.372 | 57.18 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.689 | 15.6 | 1000 | 0 | 63.738 | 43.791 | 46.185 | 51.084 | 57.18 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3696 | 0 | 738.188 | 3.771 | 6.981 | 34.315 | 63.191 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.491 | 17.151 | 1000 | 0 | 60.64 | 44.987 | 49.829 | 54.601 | 68.555 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.008 | 28.76 | 363 | 0 | 12.514 | 241.815 | 243.425 | 19610.519 | 67.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.408 | 19.167 | 243 | 0 | 12.52 | 241.589 | 242.929 | 12799.764 | 67.992 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.615 | 14.38 | 183 | 0 | 12.522 | 241.62 | 242.658 | 10023.401 | 67.996 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.582 | 123 | 0 | 12.522 | 241.404 | 242.674 | 5231.959 | 68.0 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.582 | 103 | 0 | 10.482 | 241.528 | 242.605 | 5131.32 | 68.004 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.791 | 63 | 0 | 12.508 | 241.758 | 242.918 | 243.294 | 68.016 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.792 | 42 | 0 | 8.335 | 241.929 | 242.273 | 242.688 | 68.027 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.019 | 122 | 0 | 24.352 | 41.977 | 42.901 | 42.99 | 68.063 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.031 | 114 | 0 | 22.701 | 44.976 | 45.977 | 46.012 | 68.063 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.051 | 2.037 | 98 | 0 | 19.402 | 51.964 | 52.074 | 52.961 | 68.07 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.054 | 56 | 0 | 11.054 | 90.973 | 91.979 | 91.994 | 68.07 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.08 | 36 | 0 | 7.106 | 141.949 | 142.949 | 142.985 | 68.082 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.379 | 21 | 0 | 4.165 | 241.965 | 242.217 | 242.734 | 68.082 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.125 | 1000 | 0 | 62.097 | 40.98 | 41.918 | 42.427 | 28.852 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.098 | 1000 | 0 | 62.074 | 40.982 | 41.963 | 42.384 | 29.246 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.095 | 1000 | 0 | 62.11 | 40.979 | 41.903 | 42.268 | 29.551 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.092 | 1000 | 0 | 62.103 | 40.982 | 41.953 | 42.135 | 29.715 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.099 | 1000 | 0 | 62.101 | 40.981 | 41.842 | 42.139 | 29.758 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.086 | 1000 | 0 | 62.07 | 40.981 | 41.969 | 42.334 | 29.758 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.09 | 1000 | 0 | 62.093 | 40.979 | 41.95 | 42.387 | 29.766 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.098 | 1000 | 0 | 62.107 | 40.98 | 41.963 | 42.311 | 30.516 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.309 | 15.101 | 1000 | 0 | 65.321 | 40.971 | 41.96 | 42.159 | 30.516 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.479 | 15.461 | 1000 | 0 | 64.604 | 40.969 | 41.966 | 42.75 | 30.516 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13944 | 0 | 2787.915 | 0.964 | 1.841 | 6.671 | 30.82 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.841 | 15.141 | 1000 | 0 | 67.379 | 40.969 | 41.967 | 42.235 | 36.426 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.097 | 9.015 | 1001 | 0 | 110.039 | 40.953 | 42.046 | 43.821 | 36.426 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.463 | 11.583 | 1000 | 0 | 87.237 | 40.97 | 42.041 | 42.975 | 36.426 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.018 | 2.002 | 9974 | 0 | 1987.72 | 1.268 | 2.627 | 40.73 | 36.43 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.505 | 12.039 | 1000 | 0 | 79.968 | 41.648 | 42.954 | 43.555 | 41.578 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.611 | 13.449 | 1000 | 0 | 73.469 | 41.931 | 42.961 | 44.07 | 41.59 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.022 | 13.691 | 1000 | 0 | 76.793 | 41.943 | 42.981 | 44.123 | 41.59 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.028 | 2.003 | 7397 | 0 | 1471.163 | 1.661 | 3.419 | 27.01 | 41.598 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.923 | 15.235 | 1000 | 0 | 67.012 | 41.964 | 42.989 | 44.419 | 49.121 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.542 | 15.268 | 1000 | 0 | 68.768 | 41.975 | 43.729 | 44.98 | 49.121 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.205 | 15.172 | 1000 | 0 | 65.768 | 41.979 | 43.798 | 52.547 | 49.121 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 5320 | 0 | 1063.316 | 2.247 | 4.639 | 57.326 | 50.727 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.133 | 16.02 | 1000 | 0 | 66.08 | 42.976 | 45.084 | 47.167 | 58.227 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.191 | 15.804 | 1000 | 0 | 65.828 | 43.488 | 46.651 | 49.481 | 58.078 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.352 | 15.722 | 1000 | 0 | 65.138 | 43.948 | 46.599 | 50.04 | 58.078 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.019 | 2.006 | 3709 | 0 | 738.928 | 3.642 | 6.995 | 41.063 | 64.09 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.724 | 17.4 | 1000 | 0 | 59.795 | 45.544 | 49.569 | 57.996 | 69.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.999 | 28.76 | 363 | 0 | 12.518 | 241.796 | 243.012 | 19611.667 | 69.758 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.415 | 19.17 | 243 | 0 | 12.516 | 241.737 | 242.891 | 12805.042 | 69.773 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.617 | 14.373 | 183 | 0 | 12.52 | 241.564 | 242.612 | 10019.775 | 69.773 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.581 | 123 | 0 | 12.518 | 241.663 | 242.571 | 5230.249 | 69.816 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.573 | 103 | 0 | 10.48 | 241.617 | 242.869 | 5137.444 | 69.816 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.795 | 63 | 0 | 12.504 | 241.694 | 242.606 | 242.979 | 69.816 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.792 | 42 | 0 | 8.349 | 241.009 | 242.202 | 242.242 | 69.848 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.019 | 122 | 0 | 24.332 | 41.974 | 42.959 | 43.022 | 69.895 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.03 | 114 | 0 | 22.723 | 44.976 | 45.957 | 45.972 | 69.926 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.038 | 97 | 0 | 19.365 | 51.973 | 52.977 | 52.989 | 69.941 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.064 | 2.059 | 56 | 0 | 11.058 | 90.976 | 91.854 | 91.947 | 69.961 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.049 | 2.082 | 36 | 0 | 7.13 | 140.994 | 141.993 | 142.662 | 69.961 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.377 | 21 | 0 | 4.168 | 241.947 | 242.073 | 242.768 | 69.961 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.122 | 1000 | 0 | 62.089 | 40.981 | 41.945 | 42.262 | 29.074 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.098 | 1000 | 0 | 62.113 | 40.98 | 41.622 | 42.242 | 29.352 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.091 | 1000 | 0 | 62.113 | 40.978 | 41.915 | 42.233 | 29.504 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.096 | 1000 | 0 | 62.117 | 40.979 | 41.841 | 42.113 | 29.664 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.097 | 1000 | 0 | 62.095 | 40.979 | 41.857 | 42.155 | 29.711 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.089 | 1000 | 0 | 62.105 | 40.98 | 41.975 | 42.395 | 29.727 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.089 | 1000 | 0 | 62.096 | 40.982 | 41.975 | 42.282 | 29.73 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.147 | 16.092 | 1000 | 0 | 61.931 | 40.98 | 41.974 | 42.295 | 30.426 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.022 | 13.486 | 1000 | 0 | 66.569 | 40.97 | 41.963 | 42.172 | 30.426 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.266 | 14.698 | 1000 | 0 | 65.506 | 40.97 | 41.965 | 42.426 | 30.426 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 14071 | 0 | 2813.193 | 0.953 | 1.848 | 6.849 | 30.75 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.391 | 15.285 | 1000 | 0 | 69.486 | 40.97 | 41.981 | 43.004 | 34.098 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.878 | 10.827 | 1001 | 0 | 127.06 | 40.894 | 42.046 | 43.027 | 34.098 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.677 | 11.201 | 1000 | 0 | 103.341 | 40.956 | 42.103 | 43.697 | 34.098 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10060 | 0 | 2011.221 | 1.221 | 2.567 | 42.696 | 34.121 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.079 | 11.451 | 1000 | 0 | 76.458 | 41.173 | 42.905 | 44.003 | 40.563 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.79 | 13.28 | 1000 | 0 | 72.516 | 41.936 | 42.966 | 44.065 | 40.563 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.599 | 14.275 | 1000 | 0 | 73.535 | 41.945 | 42.973 | 44.308 | 40.563 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.015 | 2.201 | 7539 | 0 | 1503.433 | 1.616 | 3.438 | 22.508 | 40.566 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.423 | 14.753 | 1000 | 0 | 69.333 | 41.967 | 43.12 | 44.473 | 51.332 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.42 | 15.311 | 1000 | 0 | 69.348 | 41.985 | 43.91 | 53.562 | 43.566 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.756 | 15.524 | 1000 | 0 | 67.769 | 41.98 | 43.925 | 46.024 | 43.566 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.009 | 5437 | 0 | 1086.462 | 2.304 | 4.905 | 23.688 | 47.844 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.608 | 16.132 | 1000 | 0 | 64.07 | 42.998 | 45.368 | 58.539 | 56.891 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.22 | 15.776 | 1000 | 0 | 65.702 | 43.347 | 46.591 | 61.683 | 56.891 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.104 | 16.0 | 1000 | 0 | 66.207 | 43.944 | 47.279 | 51.143 | 56.891 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3770 | 0 | 753.096 | 3.678 | 6.838 | 23.61 | 62.906 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.44 | 17.538 | 1000 | 0 | 60.826 | 44.994 | 49.117 | 60.887 | 86.934 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.994 | 28.76 | 363 | 0 | 12.52 | 241.703 | 242.864 | 19602.423 | 87.387 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.417 | 19.167 | 243 | 0 | 12.515 | 241.768 | 242.857 | 12805.976 | 87.414 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.619 | 14.379 | 183 | 0 | 12.518 | 241.718 | 242.5 | 10018.01 | 87.434 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.581 | 123 | 0 | 12.515 | 241.602 | 242.626 | 5234.25 | 87.441 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.576 | 103 | 0 | 10.481 | 241.739 | 242.309 | 5137.783 | 87.449 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.792 | 63 | 0 | 12.505 | 241.774 | 242.46 | 242.725 | 87.465 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.026 | 4.789 | 42 | 0 | 8.357 | 241.011 | 241.929 | 242.022 | 87.465 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.018 | 122 | 0 | 24.357 | 41.976 | 42.272 | 42.992 | 87.539 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.031 | 114 | 0 | 22.727 | 44.974 | 45.636 | 46.002 | 87.594 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.04 | 97 | 0 | 19.381 | 51.973 | 52.421 | 52.997 | 87.609 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.07 | 2.057 | 56 | 0 | 11.046 | 90.977 | 91.974 | 92.442 | 87.621 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.081 | 36 | 0 | 7.135 | 140.985 | 141.979 | 141.99 | 87.621 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.379 | 21 | 0 | 4.167 | 241.959 | 242.107 | 242.787 | 87.641 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19752 | 0 | 3949.767 | 1.195 | 1.724 | 2.22 | 67.672 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19128 | 0 | 3824.835 | 1.225 | 1.863 | 2.358 | 67.898 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19731 | 0 | 3945.453 | 1.193 | 1.755 | 2.265 | 67.793 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19578 | 0 | 3914.749 | 1.208 | 1.771 | 2.207 | 68.109 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19318 | 0 | 3862.812 | 1.22 | 1.804 | 2.272 | 69.805 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16942 | 0 | 3387.281 | 1.399 | 2.027 | 2.611 | 69.672 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19401 | 0 | 3879.394 | 1.215 | 1.794 | 2.249 | 69.91 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19157 | 0 | 3830.677 | 1.231 | 1.824 | 2.299 | 72.391 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14886 | 0 | 2976.456 | 1.577 | 2.466 | 3.069 | 81.926 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 8019 | 0 | 1602.96 | 3.003 | 4.635 | 5.842 | 76.258 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14928 | 0 | 2984.939 | 1.568 | 2.582 | 3.076 | 81.504 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15012 | 0 | 3001.592 | 1.156 | 1.888 | 40.957 | 72.59 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10675 | 0 | 2134.234 | 1.995 | 3.684 | 5.688 | 104.473 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4433 | 0 | 885.668 | 5.357 | 9.509 | 10.617 | 80.359 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10756 | 0 | 2150.356 | 1.973 | 3.7 | 5.556 | 73.105 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10779 | 0 | 2155.119 | 1.979 | 3.682 | 5.684 | 72.742 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8225 | 0 | 1644.319 | 2.545 | 4.706 | 19.873 | 121.52 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.043 | 2451 | 0 | 489.359 | 9.89 | 17.241 | 18.984 | 85.348 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8476 | 0 | 1694.384 | 2.444 | 4.737 | 19.672 | 79.012 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8204 | 0 | 1640.085 | 2.532 | 4.921 | 19.94 | 79.105 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5537 | 0 | 1106.702 | 3.814 | 7.092 | 23.079 | 124.625 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.642 | 1356 | 0 | 270.147 | 17.987 | 31.435 | 33.921 | 89.352 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5777 | 0 | 1154.664 | 3.578 | 7.052 | 22.951 | 81.645 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5460 | 0 | 1091.14 | 3.855 | 7.533 | 22.691 | 81.645 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3732 | 0 | 745.654 | 6.458 | 10.272 | 11.667 | 136.977 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.133 | 7.021 | 1000 | 0 | 140.195 | 35.035 | 59.685 | 65.379 | 92.16 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3713 | 0 | 741.659 | 6.166 | 11.477 | 12.64 | 95.098 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3572 | 0 | 713.616 | 6.476 | 11.959 | 13.372 | 95.098 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.86 | 50.866 | 360 | 0 | 7.078 | 2542.523 | 2545.019 | 2545.377 | 113.855 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.903 | 33.899 | 240 | 0 | 7.079 | 1694.75 | 1699.236 | 1700.748 | 114.293 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.429 | 25.424 | 180 | 0 | 7.078 | 1271.244 | 1275.594 | 1276.68 | 114.293 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.949 | 16.949 | 120 | 0 | 7.08 | 847.28 | 851.897 | 852.006 | 114.355 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.127 | 14.128 | 100 | 0 | 7.078 | 839.413 | 847.722 | 847.875 | 114.355 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.475 | 8.478 | 60 | 0 | 7.079 | 423.647 | 425.622 | 425.916 | 114.355 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.65 | 5.65 | 40 | 0 | 7.08 | 282.414 | 282.781 | 282.811 | 114.359 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1968 | 0 | 393.493 | 2.499 | 2.667 | 2.852 | 114.359 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.0 | 569 | 0 | 113.611 | 8.767 | 8.881 | 9.055 | 114.359 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 409 | 0 | 81.764 | 12.175 | 12.368 | 12.625 | 114.359 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.041 | 2.019 | 100 | 0 | 19.837 | 50.37 | 50.477 | 50.653 | 114.359 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.012 | 50 | 0 | 9.948 | 100.46 | 100.567 | 100.675 | 114.359 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.008 | 25 | 0 | 4.986 | 200.462 | 200.584 | 200.644 | 114.359 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19732 | 0 | 3945.517 | 1.196 | 1.723 | 2.214 | 67.582 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19317 | 0 | 3862.689 | 1.221 | 1.776 | 2.301 | 68.137 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19735 | 0 | 3946.231 | 1.196 | 1.733 | 2.23 | 67.805 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19495 | 0 | 3898.351 | 1.211 | 1.785 | 2.208 | 67.746 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19275 | 0 | 3854.165 | 1.222 | 1.834 | 2.28 | 69.141 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16889 | 0 | 3376.924 | 1.395 | 2.099 | 2.685 | 70.34 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19420 | 0 | 3883.112 | 1.214 | 1.774 | 2.252 | 71.117 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19099 | 0 | 3819.136 | 1.236 | 1.826 | 2.265 | 74.785 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14945 | 0 | 2988.22 | 1.573 | 2.481 | 3.044 | 85.922 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7972 | 0 | 1593.714 | 2.958 | 5.136 | 5.926 | 78.969 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14929 | 0 | 2985.109 | 1.566 | 2.629 | 3.094 | 85.406 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.028 | 2.03 | 14693 | 0 | 2922.332 | 1.091 | 1.99 | 41.101 | 75.031 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10510 | 0 | 2101.063 | 2.008 | 3.748 | 5.754 | 110.145 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4412 | 0 | 881.512 | 5.285 | 9.568 | 10.654 | 82.59 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10587 | 0 | 2116.558 | 1.967 | 3.762 | 5.989 | 76.602 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10541 | 0 | 2107.497 | 1.982 | 3.768 | 5.961 | 76.039 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7939 | 0 | 1587.2 | 2.578 | 4.999 | 20.897 | 120.492 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.019 | 2476 | 0 | 494.267 | 9.706 | 16.961 | 19.167 | 87.148 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.002 | 8052 | 0 | 1606.82 | 2.517 | 5.123 | 20.813 | 78.914 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7990 | 0 | 1597.061 | 2.515 | 5.044 | 20.831 | 79.02 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5376 | 0 | 1074.111 | 3.917 | 7.499 | 24.112 | 125.059 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.655 | 1361 | 0 | 271.176 | 17.897 | 30.72 | 33.916 | 87.941 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5372 | 0 | 1073.654 | 3.869 | 7.642 | 24.508 | 84.449 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5417 | 0 | 1082.703 | 3.873 | 7.48 | 24.031 | 84.449 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3624 | 0 | 723.782 | 6.711 | 10.746 | 12.423 | 118.449 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.099 | 6.997 | 1000 | 0 | 140.872 | 34.746 | 57.444 | 64.257 | 97.434 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.005 | 3526 | 0 | 704.077 | 6.511 | 12.118 | 13.646 | 94.301 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3632 | 0 | 725.534 | 6.523 | 11.644 | 12.796 | 94.301 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.845 | 50.863 | 360 | 0 | 7.08 | 2541.888 | 2546.091 | 2546.522 | 110.852 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.901 | 33.902 | 240 | 0 | 7.079 | 1694.695 | 1699.004 | 1699.681 | 115.316 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.422 | 25.431 | 180 | 0 | 7.08 | 1270.895 | 1274.802 | 1275.033 | 115.316 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.951 | 16.951 | 120 | 0 | 7.079 | 847.383 | 851.367 | 851.866 | 119.621 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.243 | 14.126 | 100 | 0 | 7.021 | 839.744 | 847.672 | 847.825 | 119.941 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.477 | 8.477 | 60 | 0 | 7.078 | 423.728 | 425.437 | 425.574 | 119.941 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.649 | 40 | 0 | 7.078 | 282.508 | 282.844 | 283.079 | 119.941 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.0 | 1965 | 0 | 392.797 | 2.505 | 2.638 | 2.922 | 128.34 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.004 | 579 | 0 | 115.76 | 8.606 | 8.736 | 8.825 | 130.477 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.011 | 410 | 0 | 81.996 | 12.138 | 12.465 | 12.769 | 130.664 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.044 | 2.015 | 100 | 0 | 19.824 | 50.393 | 50.559 | 50.656 | 130.664 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.012 | 50 | 0 | 9.948 | 100.461 | 100.624 | 100.669 | 130.664 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.007 | 25 | 0 | 4.987 | 200.437 | 200.54 | 200.604 | 130.664 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19709 | 0 | 3941.111 | 1.196 | 1.719 | 2.238 | 68.09 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19324 | 0 | 3864.069 | 1.225 | 1.75 | 2.22 | 68.199 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19631 | 0 | 3925.035 | 1.203 | 1.737 | 2.223 | 68.531 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19555 | 0 | 3910.215 | 1.208 | 1.791 | 2.248 | 68.676 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19433 | 0 | 3885.738 | 1.214 | 1.777 | 2.262 | 70.215 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16969 | 0 | 3393.008 | 1.399 | 1.98 | 2.602 | 70.203 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19363 | 0 | 3871.731 | 1.219 | 1.754 | 2.267 | 70.293 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19055 | 0 | 3810.024 | 1.237 | 1.866 | 2.307 | 72.359 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14850 | 0 | 2969.035 | 1.586 | 2.399 | 3.055 | 82.109 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7955 | 0 | 1590.166 | 2.995 | 5.078 | 5.877 | 76.324 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14777 | 0 | 2954.734 | 1.586 | 2.593 | 3.102 | 81.785 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14877 | 0 | 2974.597 | 1.173 | 1.972 | 41.007 | 71.59 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10800 | 0 | 2158.913 | 1.966 | 3.635 | 5.337 | 100.668 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4400 | 0 | 879.195 | 5.376 | 9.497 | 10.679 | 79.703 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10722 | 0 | 2143.851 | 1.957 | 3.709 | 5.529 | 71.316 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10796 | 0 | 2158.471 | 1.959 | 3.685 | 5.349 | 71.566 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8185 | 0 | 1636.192 | 2.522 | 4.699 | 22.203 | 115.691 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.026 | 2460 | 0 | 491.26 | 9.827 | 17.292 | 19.137 | 84.32 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8263 | 0 | 1651.668 | 2.48 | 4.85 | 21.433 | 76.746 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.005 | 8092 | 0 | 1617.81 | 2.503 | 4.945 | 22.327 | 76.852 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5502 | 0 | 1099.667 | 3.836 | 7.25 | 24.707 | 118.93 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.658 | 1339 | 0 | 266.803 | 18.27 | 31.279 | 34.859 | 88.168 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5542 | 0 | 1107.7 | 3.755 | 7.419 | 25.024 | 83.012 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5401 | 0 | 1079.378 | 3.895 | 7.484 | 24.426 | 83.012 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3653 | 0 | 729.536 | 6.614 | 10.533 | 12.178 | 125.617 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.096 | 7.018 | 1000 | 0 | 140.916 | 34.588 | 57.468 | 64.405 | 87.863 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3637 | 0 | 726.445 | 6.236 | 11.53 | 12.752 | 87.813 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3627 | 0 | 724.495 | 6.372 | 11.677 | 12.745 | 87.813 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.872 | 50.865 | 360 | 0 | 7.077 | 2543.026 | 2547.686 | 2549.71 | 103.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.903 | 33.903 | 240 | 0 | 7.079 | 1694.828 | 1698.268 | 1698.523 | 111.762 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.433 | 25.425 | 180 | 0 | 7.077 | 1271.363 | 1275.279 | 1276.206 | 115.641 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.95 | 16.952 | 120 | 0 | 7.08 | 847.275 | 850.197 | 850.576 | 115.703 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.129 | 14.249 | 100 | 0 | 7.078 | 840.363 | 848.07 | 848.564 | 115.328 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.478 | 8.478 | 60 | 0 | 7.077 | 423.706 | 425.981 | 426.138 | 115.328 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.65 | 40 | 0 | 7.079 | 282.446 | 282.749 | 282.752 | 115.328 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1968 | 0 | 393.503 | 2.496 | 2.662 | 2.939 | 118.082 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.0 | 575 | 0 | 114.906 | 8.632 | 8.917 | 9.134 | 118.832 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.003 | 412 | 0 | 82.252 | 12.12 | 12.257 | 12.451 | 120.02 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.044 | 2.019 | 100 | 0 | 19.827 | 50.394 | 50.509 | 50.585 | 120.02 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.024 | 2.014 | 50 | 0 | 9.951 | 100.429 | 100.529 | 100.616 | 120.02 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.499 | 200.607 | 200.682 | 120.02 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

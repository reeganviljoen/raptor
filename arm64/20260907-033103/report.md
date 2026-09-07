# Puma vs Raptor Simulation

Run ID: `20260907-033103`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.1 | 1000 | 0 | 62.034 | 40.982 | 41.921 | 42.83 | 29.305 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.09 | 1000 | 0 | 62.113 | 40.983 | 41.822 | 42.279 | 29.496 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.091 | 1000 | 0 | 62.069 | 40.982 | 41.965 | 42.22 | 29.523 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.095 | 16.095 | 1000 | 0 | 62.131 | 40.982 | 41.64 | 42.152 | 29.645 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.107 | 1000 | 0 | 62.101 | 40.978 | 41.889 | 42.503 | 29.645 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.088 | 1000 | 0 | 62.081 | 40.981 | 41.873 | 42.397 | 29.672 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.099 | 1000 | 0 | 62.112 | 40.98 | 41.915 | 42.198 | 29.672 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.099 | 1000 | 0 | 62.107 | 40.978 | 41.954 | 42.184 | 30.301 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.5 | 13.558 | 1000 | 0 | 68.963 | 40.968 | 41.957 | 42.128 | 30.301 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.229 | 14.612 | 1000 | 0 | 65.664 | 40.971 | 41.964 | 42.106 | 30.336 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 14606 | 0 | 2920.542 | 0.944 | 1.609 | 6.487 | 30.66 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.513 | 14.55 | 1000 | 0 | 64.462 | 40.972 | 41.965 | 42.507 | 41.84 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.177 | 9.966 | 1000 | 0 | 89.467 | 40.967 | 41.977 | 42.722 | 41.84 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.084 | 10.821 | 1000 | 0 | 82.755 | 40.97 | 41.996 | 42.791 | 41.84 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10983 | 0 | 2195.843 | 1.178 | 2.245 | 41.364 | 41.84 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.803 | 11.962 | 1000 | 0 | 72.446 | 41.124 | 42.324 | 43.016 | 50.289 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.066 | 13.717 | 1000 | 0 | 71.094 | 41.953 | 42.883 | 43.11 | 50.289 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.78 | 14.201 | 1000 | 0 | 78.246 | 41.945 | 42.937 | 43.622 | 50.289 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.124 | 8154 | 0 | 1629.987 | 1.534 | 2.931 | 75.683 | 50.289 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.765 | 14.442 | 1000 | 0 | 67.728 | 41.969 | 42.961 | 43.248 | 66.184 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.152 | 15.733 | 1000 | 0 | 65.996 | 41.978 | 43.146 | 44.645 | 66.184 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.407 | 15.245 | 1000 | 0 | 69.412 | 41.983 | 43.844 | 45.982 | 66.184 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5799 | 0 | 1158.977 | 2.277 | 4.617 | 13.767 | 61.738 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.884 | 16.016 | 1000 | 0 | 62.955 | 43.003 | 45.215 | 47.25 | 72.008 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.474 | 16.489 | 1000 | 0 | 64.625 | 43.969 | 46.4 | 48.911 | 72.008 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.651 | 16.423 | 1000 | 0 | 63.893 | 43.958 | 46.917 | 48.452 | 72.008 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3928 | 0 | 784.545 | 3.622 | 6.463 | 11.558 | 74.309 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.763 | 16.925 | 1000 | 0 | 59.654 | 45.003 | 49.554 | 52.003 | 81.129 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.007 | 28.744 | 363 | 0 | 12.514 | 241.798 | 243.159 | 19604.004 | 81.375 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.416 | 19.158 | 243 | 0 | 12.516 | 241.761 | 243.215 | 12804.216 | 81.395 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.376 | 183 | 0 | 12.516 | 241.8 | 242.404 | 10023.025 | 81.41 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.821 | 9.578 | 123 | 0 | 12.524 | 241.366 | 242.776 | 5231.192 | 81.414 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.588 | 103 | 0 | 10.48 | 241.739 | 242.674 | 5136.737 | 81.418 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.79 | 63 | 0 | 12.506 | 241.796 | 242.183 | 242.959 | 81.438 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.795 | 42 | 0 | 8.34 | 241.7 | 242.77 | 243.206 | 81.438 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.018 | 122 | 0 | 24.358 | 41.963 | 42.292 | 42.975 | 81.438 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.015 | 109 | 0 | 21.788 | 46.965 | 47.622 | 48.119 | 81.465 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.036 | 98 | 0 | 19.589 | 51.019 | 52.101 | 52.954 | 81.465 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.065 | 55 | 0 | 10.99 | 91.941 | 92.034 | 92.504 | 81.465 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.087 | 36 | 0 | 7.1 | 141.956 | 142.889 | 142.973 | 81.465 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.378 | 21 | 0 | 4.168 | 241.948 | 242.177 | 242.233 | 81.465 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.103 | 1000 | 0 | 62.051 | 40.983 | 41.965 | 42.27 | 27.434 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.101 | 1000 | 0 | 62.077 | 40.982 | 41.947 | 42.344 | 27.438 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.098 | 1000 | 0 | 62.089 | 40.982 | 41.919 | 42.408 | 27.664 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.091 | 1000 | 0 | 62.108 | 40.98 | 41.952 | 42.201 | 27.727 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.103 | 1000 | 0 | 62.061 | 40.983 | 41.963 | 42.273 | 27.727 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.096 | 1000 | 0 | 62.065 | 40.98 | 41.96 | 42.368 | 27.727 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.091 | 1000 | 0 | 62.096 | 40.98 | 41.944 | 42.286 | 27.758 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.098 | 1000 | 0 | 62.113 | 40.978 | 41.581 | 42.098 | 28.359 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.359 | 15.066 | 1000 | 0 | 65.107 | 40.969 | 41.961 | 42.416 | 28.469 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.506 | 15.104 | 1000 | 0 | 68.939 | 40.966 | 41.952 | 42.157 | 28.469 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 14632 | 0 | 2925.464 | 0.934 | 1.608 | 8.683 | 28.832 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.443 | 15.248 | 1000 | 0 | 64.754 | 40.972 | 41.971 | 42.563 | 32.648 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.231 | 10.058 | 1000 | 0 | 75.581 | 40.973 | 41.98 | 42.957 | 32.648 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.255 | 12.222 | 1000 | 0 | 75.446 | 40.975 | 42.051 | 42.984 | 32.648 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.032 | 2.003 | 10892 | 0 | 2164.467 | 1.235 | 2.392 | 39.646 | 32.887 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.03 | 12.886 | 1000 | 0 | 83.126 | 41.678 | 42.465 | 43.077 | 38.516 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.895 | 14.164 | 1000 | 0 | 77.548 | 41.95 | 42.919 | 43.809 | 38.516 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.366 | 13.793 | 1000 | 0 | 69.61 | 41.953 | 42.955 | 43.889 | 38.516 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.176 | 2.003 | 7655 | 0 | 1478.841 | 1.615 | 3.155 | 48.233 | 39.359 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.813 | 15.079 | 1000 | 0 | 67.508 | 41.963 | 43.073 | 44.247 | 44.273 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.989 | 15.109 | 1000 | 0 | 66.716 | 41.993 | 43.888 | 45.958 | 44.273 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.698 | 15.007 | 1000 | 0 | 68.039 | 42.003 | 43.834 | 45.492 | 44.273 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.205 | 2.005 | 5726 | 0 | 1100.182 | 2.284 | 4.652 | 17.998 | 46.734 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.49 | 15.907 | 1000 | 0 | 64.558 | 42.977 | 44.982 | 46.512 | 54.535 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.59 | 15.787 | 1000 | 0 | 64.145 | 43.961 | 46.124 | 48.206 | 54.535 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.697 | 15.288 | 1000 | 0 | 63.706 | 43.979 | 46.496 | 48.353 | 54.535 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 3714 | 0 | 741.983 | 3.81 | 6.974 | 12.421 | 60.547 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.608 | 17.178 | 1000 | 0 | 60.213 | 45.009 | 49.094 | 51.816 | 66.871 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.01 | 28.744 | 363 | 0 | 12.513 | 241.754 | 243.178 | 19606.335 | 67.098 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.418 | 19.166 | 243 | 0 | 12.514 | 241.864 | 242.985 | 12807.372 | 67.102 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.383 | 183 | 0 | 12.514 | 241.776 | 242.965 | 10026.703 | 67.109 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.587 | 123 | 0 | 12.52 | 241.442 | 242.421 | 5231.522 | 67.117 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.586 | 103 | 0 | 10.481 | 241.757 | 242.973 | 5133.642 | 67.117 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.791 | 63 | 0 | 12.51 | 241.596 | 242.775 | 243.338 | 67.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.795 | 42 | 0 | 8.348 | 241.209 | 242.222 | 242.668 | 67.133 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.018 | 122 | 0 | 24.347 | 41.969 | 42.872 | 42.994 | 67.152 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.009 | 110 | 0 | 21.896 | 46.954 | 47.118 | 47.943 | 67.168 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.049 | 2.022 | 99 | 0 | 19.608 | 51.008 | 51.995 | 52.035 | 67.168 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.09 | 2.069 | 56 | 0 | 11.002 | 91.9 | 92.122 | 92.44 | 67.168 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.052 | 2.09 | 36 | 0 | 7.126 | 140.983 | 142.294 | 142.977 | 67.168 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.379 | 21 | 0 | 4.164 | 241.97 | 242.858 | 242.976 | 67.168 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.133 | 1000 | 0 | 62.074 | 40.98 | 41.94 | 42.272 | 27.422 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.112 | 1000 | 0 | 62.077 | 40.979 | 41.929 | 42.304 | 27.637 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.123 | 1000 | 0 | 62.087 | 40.981 | 41.957 | 42.207 | 27.637 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.136 | 1000 | 0 | 62.071 | 40.979 | 41.968 | 42.083 | 27.684 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.122 | 1000 | 0 | 62.086 | 40.978 | 41.952 | 42.263 | 27.684 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.109 | 1000 | 0 | 62.05 | 40.976 | 41.964 | 42.413 | 27.719 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.132 | 1000 | 0 | 62.104 | 40.975 | 41.932 | 42.256 | 27.723 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.157 | 1000 | 0 | 62.037 | 40.979 | 41.943 | 42.355 | 28.348 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.197 | 13.294 | 1000 | 0 | 65.805 | 40.965 | 41.966 | 42.308 | 28.445 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.004 | 12.804 | 1000 | 0 | 66.65 | 40.966 | 41.961 | 42.268 | 28.461 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13561 | 0 | 2711.378 | 1.013 | 1.8 | 6.713 | 28.785 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.748 | 14.219 | 1000 | 0 | 67.806 | 40.972 | 41.985 | 42.77 | 34.371 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.762 | 11.802 | 1000 | 0 | 78.356 | 40.994 | 42.178 | 42.953 | 34.371 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.752 | 10.481 | 1000 | 0 | 85.092 | 41.09 | 42.418 | 43.663 | 34.371 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9854 | 0 | 1969.869 | 1.317 | 2.676 | 40.957 | 34.414 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.038 | 12.047 | 1000 | 0 | 83.068 | 41.846 | 42.928 | 43.763 | 41.063 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.95 | 13.195 | 1000 | 0 | 71.682 | 41.945 | 42.949 | 43.463 | 41.063 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.197 | 12.842 | 1000 | 0 | 75.777 | 41.936 | 42.916 | 44.9 | 41.063 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7643 | 0 | 1527.835 | 1.622 | 3.298 | 31.629 | 41.063 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.723 | 15.451 | 1000 | 0 | 67.923 | 41.974 | 43.334 | 45.086 | 44.965 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.291 | 15.43 | 1000 | 0 | 69.976 | 42.309 | 44.024 | 45.68 | 42.91 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.87 | 14.743 | 1000 | 0 | 67.251 | 42.405 | 43.933 | 45.556 | 42.91 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 5412 | 0 | 1081.321 | 2.433 | 4.876 | 18.276 | 44.758 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.742 | 15.924 | 1000 | 0 | 63.526 | 43.284 | 45.945 | 47.207 | 50.75 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.77 | 15.012 | 1000 | 0 | 67.703 | 43.961 | 47.554 | 51.658 | 50.75 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.755 | 15.495 | 1000 | 0 | 63.473 | 43.987 | 46.408 | 48.943 | 50.75 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3507 | 0 | 700.532 | 3.989 | 7.434 | 12.141 | 56.762 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.048 | 17.441 | 1000 | 0 | 58.659 | 45.94 | 50.099 | 58.289 | 64.129 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.009 | 28.746 | 363 | 0 | 12.513 | 241.752 | 243.085 | 19608.761 | 64.363 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.162 | 243 | 0 | 12.513 | 241.79 | 242.991 | 12805.374 | 64.387 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.623 | 14.381 | 183 | 0 | 12.515 | 241.73 | 242.959 | 10023.816 | 64.391 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.587 | 123 | 0 | 12.509 | 241.762 | 242.938 | 5237.438 | 64.395 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.581 | 103 | 0 | 10.483 | 241.787 | 242.936 | 5129.346 | 64.395 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.793 | 63 | 0 | 12.505 | 241.79 | 242.86 | 243.136 | 64.402 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 4.791 | 42 | 0 | 8.352 | 241.01 | 242.179 | 242.218 | 64.402 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.018 | 122 | 0 | 24.319 | 41.974 | 42.974 | 43.003 | 64.414 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 2.006 | 110 | 0 | 21.804 | 46.96 | 47.231 | 47.977 | 64.445 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.033 | 98 | 0 | 19.596 | 51.01 | 52.008 | 52.939 | 64.449 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.075 | 55 | 0 | 10.954 | 91.962 | 92.98 | 92.994 | 64.453 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.069 | 2.089 | 36 | 0 | 7.101 | 141.952 | 142.268 | 142.871 | 64.453 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.379 | 21 | 0 | 4.166 | 241.808 | 242.073 | 246.864 | 64.453 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17706 | 0 | 3540.424 | 1.334 | 1.929 | 2.348 | 63.719 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16799 | 0 | 3358.941 | 1.404 | 2.033 | 2.478 | 63.934 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17412 | 0 | 3481.742 | 1.353 | 1.946 | 2.472 | 63.918 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16761 | 0 | 3351.024 | 1.424 | 2.227 | 2.715 | 64.473 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17046 | 0 | 3408.505 | 1.379 | 2.002 | 2.443 | 66.035 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14624 | 0 | 2924.18 | 1.622 | 2.33 | 2.843 | 66.207 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17088 | 0 | 3416.756 | 1.37 | 2.017 | 2.514 | 66.184 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16083 | 0 | 3215.55 | 1.46 | 2.384 | 2.914 | 68.484 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13152 | 0 | 2629.419 | 1.808 | 2.554 | 3.131 | 76.898 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7366 | 0 | 1472.273 | 3.306 | 4.222 | 5.962 | 71.609 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13793 | 0 | 2757.973 | 1.714 | 2.49 | 3.13 | 77.363 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 2.001 | 14387 | 0 | 2865.737 | 1.397 | 2.16 | 3.007 | 67.586 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9935 | 0 | 1986.257 | 2.246 | 3.705 | 6.09 | 97.73 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4162 | 0 | 831.508 | 5.935 | 7.064 | 11.095 | 74.926 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10500 | 0 | 2099.085 | 2.114 | 3.775 | 5.674 | 69.523 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10340 | 0 | 2067.053 | 2.139 | 3.737 | 5.901 | 69.648 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7972 | 0 | 1593.666 | 2.787 | 4.641 | 13.584 | 122.473 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.065 | 2458 | 0 | 490.653 | 10.095 | 14.721 | 18.704 | 81.109 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8364 | 0 | 1672.091 | 2.604 | 4.828 | 13.323 | 75.242 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8333 | 0 | 1665.766 | 2.592 | 4.732 | 13.242 | 75.242 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.004 | 5325 | 0 | 1061.314 | 4.39 | 7.326 | 16.168 | 132.613 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.713 | 1351 | 0 | 269.252 | 18.339 | 20.685 | 33.424 | 83.789 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5690 | 0 | 1137.239 | 3.911 | 7.172 | 15.855 | 80.223 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5694 | 0 | 1138.08 | 3.922 | 7.043 | 15.964 | 80.289 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3129 | 0 | 625.184 | 7.926 | 12.556 | 14.135 | 120.094 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.958 | 6.987 | 1000 | 0 | 143.729 | 34.65 | 35.847 | 62.607 | 84.051 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3869 | 0 | 772.956 | 6.139 | 10.658 | 12.011 | 87.387 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3802 | 0 | 759.519 | 6.335 | 8.63 | 12.319 | 87.391 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.918 | 51.095 | 360 | 0 | 7.07 | 2545.478 | 2561.107 | 2564.705 | 108.508 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.975 | 34.022 | 240 | 0 | 7.064 | 1698.39 | 1710.641 | 1714.85 | 110.344 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.469 | 25.511 | 180 | 0 | 7.067 | 1273.496 | 1282.456 | 1292.034 | 105.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.98 | 17.048 | 120 | 0 | 7.067 | 848.998 | 863.052 | 871.179 | 109.457 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.152 | 14.198 | 100 | 0 | 7.066 | 816.433 | 849.95 | 850.346 | 109.457 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.489 | 8.522 | 60 | 0 | 7.068 | 424.54 | 428.735 | 431.366 | 109.457 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.669 | 5.671 | 40 | 0 | 7.056 | 283.623 | 284.782 | 291.913 | 111.086 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3629 | 0 | 725.679 | 1.346 | 1.457 | 1.678 | 120.363 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.001 | 943 | 0 | 188.453 | 5.268 | 5.39 | 5.626 | 123.125 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.01 | 485 | 0 | 96.823 | 10.288 | 10.421 | 10.583 | 123.125 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.023 | 99 | 0 | 19.796 | 50.453 | 50.578 | 50.713 | 123.125 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.018 | 50 | 0 | 9.941 | 100.517 | 100.63 | 100.87 | 123.82 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.545 | 200.79 | 200.884 | 123.82 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19543 | 0 | 3907.946 | 1.209 | 1.694 | 2.032 | 64.031 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19144 | 0 | 3828.094 | 1.243 | 1.705 | 2.013 | 63.773 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19294 | 0 | 3858.172 | 1.224 | 1.759 | 2.096 | 63.688 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18450 | 0 | 3689.325 | 1.286 | 2.018 | 2.406 | 63.859 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18939 | 0 | 3786.84 | 1.246 | 1.799 | 2.15 | 66.129 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16684 | 0 | 3335.934 | 1.431 | 2.015 | 2.462 | 65.223 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18930 | 0 | 3785.364 | 1.25 | 1.789 | 2.159 | 65.586 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18187 | 0 | 3636.634 | 1.299 | 2.039 | 2.508 | 68.129 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14858 | 0 | 2970.727 | 1.602 | 2.214 | 2.755 | 77.344 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7960 | 0 | 1591.254 | 3.067 | 3.822 | 5.47 | 70.742 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14974 | 0 | 2994.3 | 1.585 | 2.206 | 2.844 | 76.578 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.001 | 14625 | 0 | 2922.09 | 1.366 | 2.122 | 2.979 | 67.91 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 10707 | 0 | 2140.011 | 2.085 | 3.46 | 5.45 | 97.344 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4458 | 0 | 890.579 | 5.529 | 6.471 | 10.156 | 76.914 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10671 | 0 | 2133.551 | 2.079 | 3.647 | 5.858 | 73.77 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10672 | 0 | 2133.693 | 2.07 | 3.691 | 5.875 | 74.02 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 8064 | 0 | 1611.458 | 2.72 | 4.689 | 14.563 | 138.434 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.071 | 2435 | 0 | 486.111 | 10.246 | 11.493 | 18.635 | 79.754 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8132 | 0 | 1625.527 | 2.669 | 4.859 | 14.993 | 77.941 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7556 | 0 | 1510.526 | 2.755 | 5.136 | 15.981 | 77.941 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.014 | 5049 | 0 | 1009.067 | 4.618 | 7.729 | 18.23 | 139.695 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.802 | 1307 | 0 | 260.56 | 19.085 | 20.463 | 33.83 | 82.254 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.022 | 5236 | 0 | 1046.244 | 4.211 | 7.579 | 18.908 | 79.793 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5214 | 0 | 1041.927 | 4.245 | 7.544 | 18.494 | 80.176 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.007 | 2968 | 0 | 592.386 | 8.332 | 13.371 | 15.43 | 136.637 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.219 | 7.043 | 1000 | 0 | 138.519 | 35.954 | 36.744 | 37.65 | 84.223 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 3465 | 0 | 692.126 | 6.877 | 11.839 | 13.279 | 84.059 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3549 | 0 | 708.74 | 6.701 | 10.58 | 13.466 | 84.063 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.869 | 50.901 | 360 | 0 | 7.077 | 2542.941 | 2564.038 | 2574.321 | 102.672 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.916 | 34.0 | 240 | 0 | 7.076 | 1695.249 | 1711.108 | 1717.453 | 107.07 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.423 | 25.454 | 180 | 0 | 7.08 | 1270.916 | 1283.882 | 1287.924 | 107.137 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.956 | 16.952 | 120 | 0 | 7.077 | 847.587 | 865.435 | 869.985 | 112.461 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.152 | 14.146 | 100 | 0 | 7.066 | 816.296 | 847.453 | 855.323 | 112.465 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.474 | 8.496 | 60 | 0 | 7.08 | 423.598 | 427.05 | 432.631 | 112.465 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.646 | 5.646 | 40 | 0 | 7.085 | 282.164 | 282.526 | 283.149 | 112.465 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3540 | 0 | 707.826 | 1.377 | 1.508 | 1.778 | 121.699 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.004 | 940 | 0 | 187.995 | 5.281 | 5.408 | 5.569 | 121.699 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.004 | 481 | 0 | 96.16 | 10.353 | 10.487 | 10.724 | 121.703 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.029 | 99 | 0 | 19.782 | 50.491 | 50.656 | 50.755 | 121.703 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.016 | 50 | 0 | 9.937 | 100.57 | 100.667 | 100.734 | 121.703 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.596 | 200.72 | 200.736 | 121.703 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18338 | 0 | 3666.895 | 1.294 | 1.814 | 2.181 | 63.867 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18126 | 0 | 3624.477 | 1.308 | 1.822 | 2.187 | 64.367 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18560 | 0 | 3711.177 | 1.276 | 1.812 | 2.213 | 64.418 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17664 | 0 | 3531.646 | 1.344 | 2.144 | 2.583 | 64.793 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18100 | 0 | 3619.15 | 1.302 | 1.874 | 2.355 | 66.523 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16083 | 0 | 3215.683 | 1.487 | 2.098 | 2.581 | 66.648 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18178 | 0 | 3634.879 | 1.292 | 1.87 | 2.369 | 66.711 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17466 | 0 | 3492.482 | 1.36 | 2.135 | 2.566 | 68.027 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14002 | 0 | 2799.732 | 1.698 | 2.364 | 2.925 | 76.68 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7716 | 0 | 1542.553 | 3.158 | 3.965 | 5.556 | 72.43 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14190 | 0 | 2837.244 | 1.668 | 2.366 | 3.068 | 76.156 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.001 | 14148 | 0 | 2822.717 | 1.454 | 2.228 | 3.089 | 66.137 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10165 | 0 | 2031.604 | 2.205 | 3.61 | 5.321 | 97.188 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4301 | 0 | 859.244 | 5.74 | 6.821 | 10.735 | 75.887 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10767 | 0 | 2152.77 | 2.053 | 3.62 | 5.741 | 66.641 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10612 | 0 | 2121.69 | 2.086 | 3.664 | 5.503 | 66.641 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7916 | 0 | 1582.464 | 2.805 | 4.67 | 15.914 | 123.184 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.052 | 2435 | 0 | 486.217 | 10.18 | 12.108 | 18.885 | 83.523 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.019 | 8004 | 0 | 1600.226 | 2.695 | 4.945 | 16.164 | 76.531 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7940 | 0 | 1587.237 | 2.679 | 4.943 | 15.853 | 76.531 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.018 | 5072 | 0 | 1013.545 | 4.504 | 7.6 | 20.057 | 163.883 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.721 | 1347 | 0 | 268.458 | 18.524 | 19.881 | 33.26 | 106.527 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5469 | 0 | 1093.051 | 3.982 | 7.146 | 19.496 | 104.348 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.046 | 2.004 | 5263 | 0 | 1043.065 | 4.099 | 7.346 | 20.03 | 104.41 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 3156 | 0 | 630.072 | 7.775 | 12.571 | 14.45 | 161.0 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.23 | 7.097 | 1000 | 0 | 138.314 | 36.027 | 36.78 | 37.534 | 122.113 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3210 | 0 | 641.13 | 7.567 | 12.38 | 14.456 | 120.59 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3412 | 0 | 681.553 | 7.075 | 9.364 | 13.521 | 120.598 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.788 | 50.879 | 360 | 0 | 7.088 | 2538.656 | 2557.022 | 2574.885 | 136.34 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.865 | 33.915 | 240 | 0 | 7.087 | 1692.402 | 1714.163 | 1724.052 | 137.359 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.38 | 25.43 | 180 | 0 | 7.092 | 1268.563 | 1276.813 | 1279.121 | 138.055 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.929 | 16.946 | 120 | 0 | 7.088 | 846.083 | 860.487 | 867.922 | 93.355 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.106 | 14.127 | 100 | 0 | 7.089 | 760.522 | 846.056 | 847.461 | 97.609 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.465 | 8.475 | 60 | 0 | 7.088 | 422.894 | 426.431 | 431.969 | 97.609 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.639 | 5.639 | 40 | 0 | 7.094 | 281.735 | 282.521 | 282.715 | 97.613 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3628 | 0 | 725.439 | 1.346 | 1.458 | 1.639 | 99.633 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.004 | 942 | 0 | 188.387 | 5.267 | 5.394 | 5.544 | 99.633 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.006 | 484 | 0 | 96.668 | 10.304 | 10.436 | 10.61 | 99.633 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.025 | 99 | 0 | 19.767 | 50.476 | 50.854 | 51.041 | 99.695 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.034 | 2.017 | 50 | 0 | 9.933 | 100.569 | 100.939 | 101.33 | 99.695 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.009 | 25 | 0 | 4.984 | 200.529 | 200.789 | 200.816 | 99.695 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.15 | 1000 | 0 | 62.058 | 40.979 | 41.93 | 42.416 | 28.906 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.116 | 1000 | 0 | 62.08 | 40.977 | 41.955 | 42.269 | 29.168 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.115 | 1000 | 0 | 62.127 | 40.976 | 41.672 | 42.102 | 29.258 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.123 | 1000 | 0 | 62.066 | 40.979 | 41.955 | 42.112 | 29.57 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.111 | 1000 | 0 | 62.098 | 40.979 | 41.89 | 42.232 | 29.613 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.106 | 1000 | 0 | 62.106 | 40.979 | 41.936 | 42.155 | 29.648 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.103 | 1000 | 0 | 62.093 | 40.98 | 41.953 | 42.376 | 29.66 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.098 | 1000 | 0 | 62.117 | 40.977 | 41.591 | 42.317 | 29.941 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.437 | 14.134 | 1000 | 0 | 64.78 | 40.97 | 41.977 | 42.214 | 29.988 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.27 | 14.174 | 1000 | 0 | 65.488 | 40.97 | 41.967 | 42.307 | 30.039 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 14250 | 0 | 2849.102 | 0.972 | 1.656 | 5.474 | 30.574 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.453 | 15.297 | 1000 | 0 | 64.713 | 40.969 | 41.975 | 42.954 | 33.492 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.561 | 10.446 | 1000 | 0 | 94.689 | 40.959 | 42.012 | 42.896 | 33.492 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.826 | 9.01 | 1000 | 0 | 113.308 | 40.947 | 42.018 | 42.94 | 33.492 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10220 | 0 | 2043.14 | 1.253 | 2.39 | 41.89 | 33.766 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.747 | 12.038 | 1000 | 0 | 114.319 | 40.979 | 42.366 | 43.371 | 43.125 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.293 | 12.63 | 1000 | 0 | 81.347 | 41.871 | 42.937 | 44.722 | 41.578 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.912 | 13.106 | 1000 | 0 | 83.951 | 41.914 | 42.906 | 44.105 | 41.578 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7502 | 0 | 1499.647 | 1.599 | 3.173 | 64.735 | 41.578 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.451 | 13.485 | 1000 | 0 | 69.198 | 41.968 | 43.005 | 45.98 | 44.914 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.0 | 14.899 | 1000 | 0 | 71.427 | 41.974 | 43.922 | 46.9 | 44.914 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.224 | 14.748 | 1000 | 0 | 70.302 | 41.978 | 43.124 | 44.887 | 44.914 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.019 | 5593 | 0 | 1117.478 | 2.304 | 4.7 | 19.992 | 46.41 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.352 | 15.828 | 1000 | 0 | 65.137 | 42.973 | 44.743 | 52.944 | 53.117 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.199 | 14.927 | 1000 | 0 | 65.795 | 43.042 | 46.155 | 48.473 | 53.117 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.221 | 15.217 | 1000 | 0 | 65.701 | 43.793 | 46.414 | 48.503 | 53.117 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.004 | 3665 | 0 | 732.161 | 3.697 | 7.027 | 97.06 | 59.129 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.197 | 16.819 | 1000 | 0 | 61.74 | 45.05 | 48.957 | 51.179 | 63.816 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.009 | 28.755 | 363 | 0 | 12.514 | 241.772 | 242.834 | 19611.661 | 64.215 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.413 | 19.179 | 243 | 0 | 12.517 | 241.729 | 242.925 | 12798.13 | 64.227 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.377 | 183 | 0 | 12.516 | 241.696 | 242.503 | 10021.415 | 64.23 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.58 | 123 | 0 | 12.517 | 241.739 | 242.483 | 5233.66 | 64.23 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.588 | 103 | 0 | 10.484 | 241.594 | 242.76 | 5134.782 | 64.234 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.791 | 63 | 0 | 12.517 | 241.537 | 242.229 | 242.487 | 64.238 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 4.794 | 42 | 0 | 8.355 | 241.016 | 241.929 | 242.547 | 64.238 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.018 | 122 | 0 | 24.347 | 41.97 | 42.913 | 42.979 | 64.328 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.03 | 114 | 0 | 22.722 | 44.966 | 45.972 | 46.102 | 64.438 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.039 | 97 | 0 | 19.37 | 51.968 | 52.134 | 52.975 | 64.512 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.06 | 56 | 0 | 11.053 | 90.969 | 91.992 | 92.958 | 64.551 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.048 | 2.083 | 36 | 0 | 7.132 | 140.981 | 141.981 | 142.085 | 64.551 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.376 | 21 | 0 | 4.17 | 241.804 | 242.168 | 242.279 | 64.563 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.148 | 1000 | 0 | 62.077 | 40.977 | 41.957 | 42.293 | 28.879 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.127 | 1000 | 0 | 62.096 | 40.978 | 41.955 | 42.211 | 29.219 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.139 | 1000 | 0 | 62.059 | 40.98 | 41.942 | 42.311 | 29.375 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.145 | 1000 | 0 | 62.046 | 40.977 | 41.949 | 42.412 | 29.457 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.134 | 1000 | 0 | 62.071 | 40.977 | 41.916 | 42.287 | 29.512 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.13 | 1000 | 0 | 62.057 | 40.978 | 41.935 | 42.247 | 29.547 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.13 | 1000 | 0 | 62.062 | 40.977 | 41.94 | 42.342 | 29.563 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.139 | 1000 | 0 | 62.047 | 40.976 | 41.956 | 42.48 | 30.18 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.353 | 14.689 | 1000 | 0 | 65.134 | 40.963 | 41.956 | 42.135 | 30.266 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.319 | 14.036 | 1000 | 0 | 65.279 | 40.963 | 41.967 | 42.318 | 30.309 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13841 | 0 | 2767.2 | 0.987 | 1.731 | 10.743 | 30.754 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.266 | 14.79 | 1000 | 0 | 65.506 | 40.97 | 41.979 | 42.946 | 34.754 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.146 | 9.62 | 1000 | 0 | 122.758 | 40.936 | 42.59 | 43.477 | 34.754 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.97 | 8.675 | 1000 | 0 | 111.48 | 40.955 | 42.507 | 43.756 | 34.754 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.016 | 9400 | 0 | 1879.278 | 1.358 | 2.879 | 19.118 | 35.281 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.675 | 11.103 | 1000 | 0 | 78.895 | 41.852 | 42.934 | 43.918 | 40.016 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.958 | 13.251 | 1000 | 0 | 83.628 | 41.909 | 42.89 | 58.656 | 40.016 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.531 | 11.958 | 1000 | 0 | 94.956 | 41.909 | 42.961 | 44.097 | 40.016 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 6552 | 0 | 1309.345 | 1.806 | 3.884 | 32.726 | 40.02 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.652 | 15.092 | 1000 | 0 | 73.25 | 41.952 | 43.405 | 44.714 | 45.039 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.28 | 14.211 | 1000 | 0 | 70.029 | 41.962 | 43.862 | 47.344 | 44.098 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.927 | 14.559 | 1000 | 0 | 71.805 | 41.984 | 43.995 | 53.352 | 42.184 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4794 | 0 | 957.772 | 2.641 | 5.809 | 23.956 | 46.977 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.556 | 16.121 | 1000 | 0 | 64.284 | 42.975 | 45.236 | 51.14 | 53.035 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.085 | 15.35 | 1000 | 0 | 66.289 | 43.838 | 46.593 | 49.484 | 53.035 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.896 | 15.101 | 1000 | 0 | 67.133 | 43.958 | 46.416 | 50.064 | 53.035 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.005 | 3289 | 0 | 656.698 | 4.233 | 7.89 | 11.79 | 59.047 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.268 | 16.672 | 1000 | 0 | 61.469 | 45.363 | 49.932 | 59.344 | 66.176 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.99 | 28.759 | 363 | 0 | 12.522 | 241.597 | 242.905 | 19596.818 | 66.602 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.401 | 19.166 | 243 | 0 | 12.525 | 241.356 | 242.946 | 12796.064 | 66.613 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.372 | 183 | 0 | 12.514 | 241.78 | 242.87 | 10021.202 | 66.621 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.586 | 123 | 0 | 12.522 | 241.525 | 242.586 | 5231.123 | 66.625 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.585 | 103 | 0 | 10.479 | 241.767 | 242.77 | 5134.124 | 66.629 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.79 | 63 | 0 | 12.515 | 241.528 | 242.323 | 242.382 | 66.629 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.793 | 42 | 0 | 8.348 | 241.145 | 242.203 | 243.052 | 66.629 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.019 | 122 | 0 | 24.338 | 41.965 | 42.951 | 42.986 | 66.66 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.032 | 114 | 0 | 22.723 | 44.966 | 45.964 | 45.992 | 66.66 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.04 | 97 | 0 | 19.368 | 51.969 | 52.303 | 52.982 | 66.707 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.074 | 2.066 | 56 | 0 | 11.037 | 91.002 | 91.974 | 92.018 | 66.719 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.048 | 2.08 | 36 | 0 | 7.132 | 141.012 | 142.011 | 142.037 | 66.719 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.376 | 21 | 0 | 4.169 | 241.885 | 242.087 | 242.776 | 66.719 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.141 | 1000 | 0 | 62.076 | 40.978 | 41.951 | 42.289 | 28.965 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.126 | 1000 | 0 | 62.031 | 40.983 | 41.967 | 42.369 | 29.391 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.111 | 1000 | 0 | 62.062 | 40.979 | 41.946 | 42.264 | 29.469 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.12 | 1000 | 0 | 62.094 | 40.978 | 41.959 | 42.254 | 29.695 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.11 | 1000 | 0 | 62.113 | 40.977 | 41.733 | 42.25 | 29.75 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.114 | 1000 | 0 | 62.054 | 40.983 | 41.95 | 42.312 | 29.762 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.102 | 1000 | 0 | 62.089 | 40.98 | 41.876 | 42.207 | 29.781 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.107 | 1000 | 0 | 62.078 | 40.981 | 41.964 | 42.362 | 30.082 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.303 | 14.732 | 1000 | 0 | 65.346 | 40.97 | 41.96 | 42.132 | 30.082 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.192 | 14.578 | 1000 | 0 | 65.825 | 40.971 | 41.963 | 42.028 | 30.133 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 14357 | 0 | 2870.393 | 0.954 | 1.69 | 5.519 | 30.605 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.488 | 14.92 | 1000 | 0 | 64.567 | 40.973 | 41.968 | 42.313 | 35.285 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.666 | 8.332 | 1000 | 0 | 93.755 | 40.961 | 42.006 | 42.954 | 35.285 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.792 | 9.083 | 1000 | 0 | 102.125 | 40.952 | 41.983 | 42.936 | 35.285 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 10218 | 0 | 2042.224 | 1.267 | 2.536 | 24.704 | 35.336 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.767 | 10.403 | 1000 | 0 | 84.985 | 41.498 | 42.621 | 43.768 | 41.891 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.632 | 12.434 | 1000 | 0 | 79.166 | 41.89 | 42.709 | 43.913 | 41.891 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.992 | 13.174 | 1000 | 0 | 76.969 | 41.933 | 42.901 | 44.471 | 41.891 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.013 | 7592 | 0 | 1517.569 | 1.599 | 3.264 | 28.029 | 41.891 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.91 | 14.908 | 1000 | 0 | 71.893 | 41.969 | 43.179 | 44.3 | 47.41 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.486 | 15.173 | 1000 | 0 | 69.032 | 41.975 | 43.402 | 45.0 | 45.781 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.207 | 14.658 | 1000 | 0 | 70.389 | 41.97 | 43.498 | 44.994 | 45.781 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.019 | 2.004 | 5257 | 0 | 1047.518 | 2.391 | 5.061 | 27.252 | 47.402 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.058 | 15.82 | 1000 | 0 | 66.41 | 43.019 | 45.649 | 47.201 | 52.633 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.415 | 15.398 | 1000 | 0 | 64.872 | 43.071 | 46.866 | 57.473 | 52.445 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.875 | 15.754 | 1000 | 0 | 67.225 | 43.878 | 46.075 | 48.489 | 52.445 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3608 | 0 | 720.805 | 3.886 | 7.142 | 21.365 | 58.457 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.292 | 17.061 | 1000 | 0 | 61.381 | 45.004 | 49.961 | 55.05 | 65.422 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.002 | 28.769 | 363 | 0 | 12.516 | 241.791 | 243.119 | 19610.265 | 65.824 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.412 | 19.178 | 243 | 0 | 12.518 | 241.732 | 242.897 | 12800.449 | 65.832 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.376 | 183 | 0 | 12.514 | 241.76 | 242.484 | 10023.251 | 65.852 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.821 | 9.583 | 123 | 0 | 12.524 | 241.395 | 242.447 | 5230.049 | 65.859 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.582 | 103 | 0 | 10.485 | 241.447 | 242.565 | 5131.978 | 65.863 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.795 | 63 | 0 | 12.52 | 241.215 | 242.442 | 242.793 | 65.863 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.791 | 42 | 0 | 8.34 | 241.743 | 242.258 | 242.722 | 65.883 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.02 | 122 | 0 | 24.351 | 41.965 | 42.886 | 42.989 | 65.926 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.032 | 114 | 0 | 22.724 | 44.967 | 45.894 | 45.971 | 66.047 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.04 | 97 | 0 | 19.366 | 51.964 | 52.246 | 52.973 | 66.121 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.063 | 56 | 0 | 11.05 | 90.975 | 91.958 | 92.135 | 66.152 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.049 | 2.082 | 36 | 0 | 7.13 | 140.992 | 142.066 | 142.618 | 66.152 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.378 | 21 | 0 | 4.165 | 241.974 | 242.77 | 242.912 | 66.152 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18099 | 0 | 3619.077 | 1.301 | 1.914 | 2.361 | 67.996 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18285 | 0 | 3656.221 | 1.291 | 1.871 | 2.259 | 68.238 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18784 | 0 | 3756.191 | 1.256 | 1.851 | 2.261 | 68.027 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18460 | 0 | 3691.043 | 1.283 | 1.869 | 2.278 | 68.547 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18609 | 0 | 3720.956 | 1.265 | 1.894 | 2.333 | 70.281 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16159 | 0 | 3230.736 | 1.468 | 2.167 | 2.708 | 69.766 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18457 | 0 | 3690.542 | 1.267 | 1.984 | 2.43 | 70.121 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 18395 | 0 | 3678.179 | 1.285 | 1.902 | 2.367 | 72.777 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13895 | 0 | 2778.229 | 1.697 | 2.398 | 3.143 | 82.824 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7483 | 0 | 1495.825 | 3.261 | 4.065 | 5.887 | 76.086 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13935 | 0 | 2786.15 | 1.706 | 2.29 | 3.099 | 81.773 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 2.001 | 14001 | 0 | 2788.897 | 1.288 | 2.024 | 40.999 | 72.168 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9960 | 0 | 1991.311 | 2.205 | 3.832 | 6.247 | 99.746 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 4204 | 0 | 839.95 | 5.851 | 7.029 | 10.99 | 80.832 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10052 | 0 | 2009.508 | 2.152 | 3.855 | 6.427 | 76.738 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10071 | 0 | 2013.548 | 2.162 | 3.858 | 6.182 | 76.613 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7791 | 0 | 1557.524 | 2.697 | 5.012 | 20.891 | 117.988 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.082 | 2388 | 0 | 476.783 | 10.442 | 11.846 | 19.299 | 83.359 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.022 | 8035 | 0 | 1606.192 | 2.587 | 4.932 | 20.191 | 82.875 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 7967 | 0 | 1592.72 | 2.64 | 4.846 | 20.312 | 82.969 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5302 | 0 | 1059.598 | 3.978 | 7.385 | 23.72 | 126.367 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.698 | 1329 | 0 | 264.904 | 18.734 | 20.478 | 33.946 | 85.863 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5296 | 0 | 1058.487 | 3.973 | 7.557 | 23.892 | 86.871 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.022 | 5254 | 0 | 1049.913 | 4.062 | 7.38 | 23.299 | 86.934 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3644 | 0 | 727.796 | 6.555 | 10.407 | 12.385 | 100.156 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.183 | 7.083 | 1000 | 0 | 139.208 | 35.746 | 37.237 | 64.685 | 92.488 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3679 | 0 | 734.934 | 6.518 | 9.821 | 12.741 | 94.492 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3487 | 0 | 696.579 | 6.943 | 8.685 | 13.194 | 94.492 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.895 | 50.877 | 360 | 0 | 7.073 | 2543.947 | 2549.269 | 2554.383 | 111.199 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.92 | 33.915 | 240 | 0 | 7.075 | 1695.487 | 1700.957 | 1704.036 | 111.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.446 | 25.437 | 180 | 0 | 7.074 | 1271.79 | 1277.973 | 1280.56 | 112.012 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.955 | 16.957 | 120 | 0 | 7.077 | 847.556 | 852.48 | 855.474 | 112.012 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.191 | 14.168 | 100 | 0 | 7.047 | 837.435 | 848.248 | 851.915 | 112.074 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.48 | 8.478 | 60 | 0 | 7.076 | 423.836 | 427.537 | 428.995 | 112.074 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.652 | 40 | 0 | 7.079 | 282.399 | 283.131 | 284.378 | 112.074 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1935 | 0 | 386.856 | 2.534 | 2.72 | 2.869 | 112.074 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.008 | 566 | 0 | 113.163 | 8.795 | 8.926 | 9.093 | 112.074 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.007 | 406 | 0 | 81.066 | 12.314 | 12.459 | 12.634 | 112.074 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.018 | 99 | 0 | 19.793 | 50.443 | 50.679 | 51.158 | 112.074 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.011 | 50 | 0 | 9.944 | 100.484 | 100.649 | 100.854 | 112.074 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.552 | 200.688 | 200.814 | 112.074 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19243 | 0 | 3847.895 | 1.225 | 1.776 | 2.179 | 67.727 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18886 | 0 | 3776.568 | 1.251 | 1.783 | 2.233 | 67.984 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19175 | 0 | 3834.185 | 1.232 | 1.778 | 2.225 | 67.719 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19213 | 0 | 3841.757 | 1.233 | 1.784 | 2.179 | 68.438 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19020 | 0 | 3803.328 | 1.238 | 1.827 | 2.264 | 69.91 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16575 | 0 | 3314.169 | 1.435 | 2.048 | 2.568 | 69.277 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19009 | 0 | 3801.146 | 1.239 | 1.84 | 2.288 | 69.852 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18782 | 0 | 3755.74 | 1.257 | 1.847 | 2.28 | 72.797 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14888 | 0 | 2976.826 | 1.598 | 2.149 | 2.859 | 82.477 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7829 | 0 | 1564.998 | 3.121 | 3.872 | 5.645 | 75.707 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14849 | 0 | 2968.98 | 1.602 | 2.143 | 2.878 | 81.598 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 2.035 | 14975 | 0 | 2984.327 | 1.079 | 1.8 | 41.237 | 72.203 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10705 | 0 | 2139.903 | 2.041 | 3.544 | 5.668 | 99.926 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4392 | 0 | 877.5 | 5.62 | 6.614 | 10.501 | 78.938 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10616 | 0 | 2122.394 | 2.057 | 3.653 | 5.505 | 72.316 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 10785 | 0 | 2155.891 | 2.051 | 3.496 | 4.922 | 72.254 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.022 | 2.003 | 7587 | 0 | 1510.843 | 2.745 | 5.119 | 20.74 | 119.18 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.02 | 2415 | 0 | 482.131 | 10.327 | 11.528 | 18.764 | 81.883 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7974 | 0 | 1594.13 | 2.648 | 4.857 | 20.987 | 79.066 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7951 | 0 | 1589.401 | 2.643 | 4.86 | 21.288 | 79.133 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.003 | 5375 | 0 | 1073.757 | 3.986 | 7.251 | 23.834 | 117.742 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.813 | 1293 | 0 | 257.702 | 19.333 | 21.124 | 34.182 | 82.832 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.004 | 5247 | 0 | 1045.066 | 4.042 | 7.698 | 24.792 | 79.707 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.009 | 5146 | 0 | 1028.004 | 4.167 | 7.512 | 24.966 | 79.707 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3477 | 0 | 694.685 | 6.924 | 11.379 | 13.044 | 144.566 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.294 | 7.266 | 1000 | 0 | 137.097 | 36.353 | 37.516 | 37.93 | 85.59 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3384 | 0 | 675.806 | 7.061 | 11.546 | 13.671 | 80.68 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3414 | 0 | 681.977 | 7.037 | 9.037 | 13.618 | 80.93 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.88 | 50.883 | 360 | 0 | 7.075 | 2543.578 | 2546.762 | 2547.893 | 97.813 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.923 | 33.905 | 240 | 0 | 7.075 | 1695.74 | 1699.13 | 1700.239 | 98.313 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.44 | 25.433 | 180 | 0 | 7.076 | 1271.719 | 1273.311 | 1275.892 | 100.395 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.957 | 16.958 | 120 | 0 | 7.077 | 847.571 | 850.461 | 851.076 | 100.398 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.132 | 14.25 | 100 | 0 | 7.076 | 840.894 | 848.105 | 848.186 | 100.586 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.48 | 8.478 | 60 | 0 | 7.076 | 423.906 | 424.719 | 425.429 | 102.711 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.652 | 5.652 | 40 | 0 | 7.078 | 282.438 | 282.838 | 283.473 | 105.836 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.002 | 1915 | 0 | 382.798 | 2.57 | 2.75 | 3.004 | 111.246 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.007 | 567 | 0 | 113.278 | 8.789 | 8.914 | 9.132 | 111.746 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.007 | 405 | 0 | 80.942 | 12.311 | 12.479 | 12.652 | 111.746 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.045 | 2.023 | 100 | 0 | 19.821 | 50.396 | 50.477 | 50.786 | 111.75 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.012 | 50 | 0 | 9.94 | 100.515 | 100.671 | 101.137 | 113.125 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.488 | 200.603 | 200.701 | 113.125 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19523 | 0 | 3903.864 | 1.209 | 1.724 | 2.165 | 68.113 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19088 | 0 | 3816.763 | 1.239 | 1.757 | 2.203 | 68.234 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 19308 | 0 | 3860.841 | 1.223 | 1.744 | 2.17 | 68.348 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19173 | 0 | 3833.651 | 1.236 | 1.774 | 2.159 | 68.609 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18987 | 0 | 3796.509 | 1.242 | 1.804 | 2.244 | 70.277 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16914 | 0 | 3382.078 | 1.418 | 1.921 | 2.42 | 70.516 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19051 | 0 | 3809.53 | 1.233 | 1.822 | 2.306 | 70.598 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18920 | 0 | 3783.361 | 1.252 | 1.789 | 2.21 | 72.652 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14719 | 0 | 2942.901 | 1.623 | 2.127 | 2.866 | 81.832 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7901 | 0 | 1579.343 | 3.104 | 3.787 | 5.397 | 77.141 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14917 | 0 | 2982.565 | 1.598 | 2.105 | 2.784 | 81.734 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.039 | 2.017 | 14813 | 0 | 2939.946 | 0.963 | 1.79 | 41.15 | 71.859 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10830 | 0 | 2165.029 | 2.013 | 3.512 | 5.345 | 98.785 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4387 | 0 | 876.556 | 5.633 | 6.649 | 10.273 | 80.656 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10879 | 0 | 2174.912 | 2.01 | 3.515 | 4.695 | 73.766 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 10698 | 0 | 2139.037 | 2.057 | 3.472 | 5.255 | 73.953 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.02 | 8143 | 0 | 1627.882 | 2.588 | 4.704 | 22.001 | 118.684 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.025 | 2464 | 0 | 491.911 | 10.097 | 11.426 | 18.539 | 82.059 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.002 | 7833 | 0 | 1564.09 | 2.673 | 4.854 | 22.43 | 76.289 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.016 | 7881 | 0 | 1575.274 | 2.684 | 4.631 | 22.607 | 76.379 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.019 | 5234 | 0 | 1046.157 | 4.064 | 7.477 | 25.669 | 134.758 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.699 | 1345 | 0 | 268.19 | 18.545 | 20.374 | 33.318 | 82.496 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5356 | 0 | 1070.283 | 3.938 | 7.072 | 25.647 | 81.82 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.004 | 5336 | 0 | 1062.797 | 4.008 | 6.991 | 25.436 | 81.883 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3705 | 0 | 740.234 | 6.539 | 10.896 | 12.368 | 139.23 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.016 | 7.013 | 1000 | 0 | 142.529 | 34.895 | 36.642 | 62.669 | 90.18 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3572 | 0 | 713.626 | 6.775 | 11.614 | 13.081 | 92.184 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3626 | 0 | 724.187 | 6.794 | 7.888 | 12.65 | 92.184 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.886 | 50.891 | 360 | 0 | 7.075 | 2543.445 | 2553.105 | 2555.393 | 108.773 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.931 | 33.921 | 240 | 0 | 7.073 | 1695.708 | 1704.016 | 1706.915 | 108.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.449 | 25.442 | 180 | 0 | 7.073 | 1272.085 | 1279.443 | 1281.847 | 109.402 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.961 | 16.96 | 120 | 0 | 7.075 | 847.812 | 853.648 | 855.572 | 109.402 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.165 | 14.134 | 100 | 0 | 7.06 | 830.065 | 847.777 | 849.315 | 109.469 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.48 | 8.479 | 60 | 0 | 7.076 | 423.791 | 427.666 | 428.083 | 109.469 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.65 | 40 | 0 | 7.078 | 282.43 | 283.873 | 284.104 | 109.469 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 1935 | 0 | 386.951 | 2.529 | 2.731 | 2.895 | 109.469 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.004 | 566 | 0 | 113.041 | 8.808 | 8.917 | 9.062 | 109.469 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.01 | 407 | 0 | 81.394 | 12.279 | 12.403 | 12.545 | 109.469 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.022 | 99 | 0 | 19.796 | 50.457 | 50.568 | 50.66 | 109.469 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.013 | 50 | 0 | 9.945 | 100.486 | 100.624 | 100.728 | 109.469 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.492 | 200.673 | 200.87 | 109.469 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

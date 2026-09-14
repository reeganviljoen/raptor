# Puma vs Raptor Simulation

Run ID: `20260914-033224`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.138 | 1000 | 0 | 61.971 | 40.982 | 41.981 | 42.789 | 28.105 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.122 | 1000 | 0 | 62.091 | 40.979 | 41.939 | 42.444 | 28.141 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.118 | 1000 | 0 | 62.112 | 40.978 | 41.944 | 42.448 | 28.145 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.118 | 1000 | 0 | 62.085 | 40.98 | 41.949 | 42.411 | 28.148 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.135 | 1000 | 0 | 62.074 | 40.982 | 41.949 | 42.249 | 28.148 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.107 | 1000 | 0 | 62.1 | 40.98 | 41.881 | 42.145 | 28.184 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.119 | 1000 | 0 | 62.093 | 40.981 | 41.939 | 42.1 | 28.203 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.119 | 1000 | 0 | 62.074 | 40.979 | 41.93 | 42.287 | 28.594 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.433 | 14.523 | 1000 | 0 | 64.796 | 40.969 | 41.969 | 42.228 | 28.602 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.156 | 15.314 | 1000 | 0 | 65.979 | 40.971 | 41.966 | 42.246 | 28.609 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 14491 | 0 | 2897.352 | 0.948 | 1.639 | 5.406 | 28.934 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.287 | 14.782 | 1000 | 0 | 65.415 | 40.971 | 41.972 | 42.819 | 33.305 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.722 | 9.715 | 1000 | 0 | 78.605 | 40.977 | 42.041 | 42.949 | 33.305 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.107 | 10.954 | 1000 | 0 | 82.594 | 40.976 | 42.037 | 42.965 | 33.305 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10612 | 0 | 2121.659 | 1.202 | 2.313 | 47.486 | 33.59 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.056 | 13.148 | 1000 | 0 | 76.595 | 41.775 | 42.779 | 43.269 | 40.801 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.244 | 13.532 | 1000 | 0 | 75.507 | 41.945 | 42.892 | 44.115 | 38.984 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.858 | 14.534 | 1000 | 0 | 67.303 | 41.955 | 42.91 | 43.021 | 38.984 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 8150 | 0 | 1628.821 | 1.551 | 3.032 | 44.909 | 39.375 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.206 | 15.577 | 1000 | 0 | 70.392 | 41.968 | 43.01 | 43.987 | 46.613 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.146 | 15.516 | 1000 | 0 | 66.023 | 41.977 | 43.213 | 45.285 | 44.691 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.773 | 15.34 | 1000 | 0 | 67.693 | 41.999 | 43.991 | 45.298 | 44.691 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 5887 | 0 | 1176.616 | 2.278 | 4.437 | 12.976 | 47.215 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.596 | 16.136 | 1000 | 0 | 64.117 | 42.989 | 44.959 | 47.282 | 52.754 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.306 | 16.304 | 1000 | 0 | 65.336 | 43.982 | 47.452 | 50.622 | 52.754 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.862 | 16.498 | 1000 | 0 | 63.044 | 43.98 | 47.26 | 49.273 | 52.754 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3947 | 0 | 788.502 | 3.603 | 6.459 | 15.547 | 59.176 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.043 | 17.352 | 1000 | 0 | 58.674 | 44.996 | 48.266 | 51.122 | 86.125 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.016 | 28.759 | 363 | 0 | 12.511 | 241.887 | 243.402 | 19613.628 | 86.441 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.416 | 19.175 | 243 | 0 | 12.516 | 241.759 | 243.13 | 12802.833 | 86.465 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.622 | 14.375 | 183 | 0 | 12.515 | 241.72 | 242.739 | 10022.563 | 86.473 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.59 | 123 | 0 | 12.515 | 241.749 | 242.478 | 5231.774 | 86.617 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.822 | 9.588 | 103 | 0 | 10.487 | 241.323 | 242.484 | 5130.239 | 86.621 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.794 | 63 | 0 | 12.496 | 241.795 | 242.967 | 243.244 | 86.625 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.79 | 42 | 0 | 8.348 | 241.169 | 242.237 | 242.489 | 86.625 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.017 | 122 | 0 | 24.357 | 41.97 | 42.382 | 42.965 | 86.645 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.023 | 110 | 0 | 21.844 | 46.96 | 47.52 | 47.961 | 86.73 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.027 | 99 | 0 | 19.718 | 50.973 | 51.938 | 51.972 | 86.75 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.089 | 2.068 | 56 | 0 | 11.005 | 91.868 | 92.04 | 92.492 | 86.766 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.07 | 2.085 | 36 | 0 | 7.101 | 141.959 | 142.085 | 142.348 | 86.785 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.384 | 21 | 0 | 4.172 | 241.283 | 242.075 | 242.749 | 86.797 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.134 | 1000 | 0 | 62.042 | 40.978 | 41.964 | 42.312 | 27.629 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.136 | 1000 | 0 | 62.05 | 40.979 | 41.973 | 42.413 | 27.637 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.128 | 1000 | 0 | 62.05 | 40.975 | 41.973 | 42.279 | 27.637 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.129 | 1000 | 0 | 62.097 | 40.977 | 41.907 | 42.162 | 27.742 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.114 | 1000 | 0 | 62.061 | 40.979 | 41.94 | 42.295 | 27.742 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.12 | 1000 | 0 | 62.098 | 40.98 | 41.887 | 42.456 | 27.742 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.116 | 1000 | 0 | 62.104 | 40.978 | 41.956 | 42.27 | 27.754 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.122 | 1000 | 0 | 62.087 | 40.981 | 41.882 | 42.16 | 28.379 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.518 | 14.807 | 1000 | 0 | 68.882 | 40.967 | 41.962 | 42.931 | 28.379 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.086 | 14.013 | 1000 | 0 | 66.288 | 40.965 | 41.971 | 42.382 | 28.484 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13334 | 0 | 2665.971 | 1.03 | 1.823 | 5.873 | 28.859 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.217 | 13.81 | 1000 | 0 | 70.336 | 40.971 | 41.992 | 42.906 | 34.383 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.96 | 8.802 | 1000 | 0 | 83.611 | 40.999 | 42.33 | 43.23 | 34.383 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.359 | 9.686 | 1000 | 0 | 106.848 | 40.998 | 42.241 | 43.186 | 34.383 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10348 | 0 | 2068.767 | 1.254 | 2.434 | 41.512 | 34.566 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.098 | 12.596 | 1000 | 0 | 76.348 | 41.897 | 42.903 | 43.635 | 38.188 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.439 | 14.16 | 1000 | 0 | 80.392 | 41.929 | 42.899 | 43.415 | 38.188 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.964 | 13.777 | 1000 | 0 | 71.613 | 41.938 | 42.921 | 43.103 | 38.188 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 7412 | 0 | 1481.464 | 1.727 | 3.458 | 19.495 | 38.758 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.814 | 14.706 | 1000 | 0 | 67.505 | 41.951 | 43.01 | 44.336 | 45.055 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.409 | 15.364 | 1000 | 0 | 69.4 | 42.025 | 43.992 | 46.093 | 45.055 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.421 | 15.414 | 1000 | 0 | 69.344 | 42.416 | 43.965 | 45.295 | 45.055 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 5404 | 0 | 1080.082 | 2.431 | 4.767 | 15.55 | 46.48 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.538 | 16.043 | 1000 | 0 | 64.358 | 43.836 | 45.991 | 52.893 | 52.23 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.459 | 15.948 | 1000 | 0 | 64.688 | 43.962 | 46.231 | 48.446 | 52.23 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.588 | 16.266 | 1000 | 0 | 64.153 | 44.001 | 47.36 | 50.632 | 52.23 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 3664 | 0 | 731.887 | 3.856 | 7.012 | 43.001 | 58.242 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.752 | 17.269 | 1000 | 0 | 59.694 | 45.916 | 49.899 | 51.65 | 80.77 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.004 | 28.759 | 363 | 0 | 12.515 | 241.755 | 243.579 | 19596.357 | 80.008 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.416 | 19.169 | 243 | 0 | 12.516 | 241.721 | 242.983 | 12799.636 | 80.035 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.616 | 14.371 | 183 | 0 | 12.521 | 241.644 | 242.898 | 10017.4 | 80.051 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.586 | 123 | 0 | 12.51 | 241.837 | 242.77 | 5234.507 | 80.059 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.588 | 103 | 0 | 10.485 | 241.404 | 242.607 | 5127.839 | 80.07 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.797 | 63 | 0 | 12.505 | 241.808 | 242.35 | 242.863 | 80.074 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.795 | 42 | 0 | 8.333 | 241.97 | 242.261 | 242.486 | 80.082 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.018 | 122 | 0 | 24.362 | 41.967 | 42.45 | 42.996 | 80.09 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.008 | 109 | 0 | 21.792 | 46.96 | 47.596 | 47.978 | 80.148 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.03 | 98 | 0 | 19.53 | 51.922 | 52.02 | 52.105 | 80.316 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.069 | 55 | 0 | 10.961 | 91.962 | 92.853 | 92.958 | 80.332 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.088 | 36 | 0 | 7.098 | 141.954 | 142.484 | 142.968 | 80.336 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.38 | 21 | 0 | 4.166 | 241.925 | 242.655 | 242.88 | 80.336 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.135 | 1000 | 0 | 62.059 | 40.98 | 41.967 | 42.257 | 27.418 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.123 | 1000 | 0 | 62.08 | 40.978 | 41.949 | 42.232 | 27.641 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.122 | 1000 | 0 | 62.091 | 40.976 | 41.793 | 42.173 | 27.641 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.11 | 1000 | 0 | 62.078 | 40.981 | 41.863 | 42.371 | 27.684 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.11 | 1000 | 0 | 62.081 | 40.98 | 41.969 | 42.556 | 27.719 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.106 | 1000 | 0 | 62.114 | 40.979 | 41.825 | 42.159 | 27.723 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.095 | 16.106 | 1000 | 0 | 62.133 | 40.978 | 41.839 | 42.07 | 27.734 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.113 | 1000 | 0 | 62.127 | 40.98 | 41.963 | 42.096 | 28.375 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.389 | 14.546 | 1000 | 0 | 64.983 | 40.97 | 41.968 | 42.192 | 28.375 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.03 | 15.02 | 1000 | 0 | 71.276 | 40.972 | 41.962 | 42.152 | 28.48 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 14698 | 0 | 2938.864 | 0.934 | 1.662 | 6.242 | 28.82 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.331 | 15.648 | 1000 | 0 | 65.228 | 40.973 | 41.968 | 42.362 | 34.395 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.969 | 11.068 | 1000 | 0 | 77.105 | 40.972 | 41.983 | 42.785 | 34.395 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.856 | 12.638 | 1001 | 0 | 101.562 | 40.965 | 41.977 | 42.898 | 34.395 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 11027 | 0 | 2204.528 | 1.176 | 2.382 | 16.758 | 34.414 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.474 | 13.074 | 1000 | 0 | 80.17 | 41.129 | 42.179 | 42.973 | 39.34 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.402 | 14.078 | 1000 | 0 | 74.616 | 41.944 | 42.921 | 43.507 | 39.34 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.061 | 13.699 | 1000 | 0 | 71.118 | 41.934 | 42.87 | 43.925 | 39.34 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7363 | 0 | 1471.634 | 1.736 | 3.535 | 16.613 | 39.34 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.735 | 15.257 | 1000 | 0 | 67.865 | 41.965 | 43.299 | 44.627 | 43.613 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.943 | 15.315 | 1000 | 0 | 66.921 | 41.986 | 43.958 | 47.085 | 43.613 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.849 | 15.79 | 1000 | 0 | 67.344 | 41.986 | 43.782 | 45.278 | 43.613 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 5864 | 0 | 1171.782 | 2.234 | 4.436 | 15.309 | 45.742 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.702 | 16.148 | 1000 | 0 | 63.685 | 43.049 | 45.742 | 47.458 | 49.82 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.508 | 16.07 | 1000 | 0 | 64.483 | 43.957 | 46.673 | 48.47 | 49.82 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.561 | 15.686 | 1000 | 0 | 64.264 | 43.972 | 46.147 | 48.057 | 49.82 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 3806 | 0 | 760.234 | 3.717 | 6.742 | 16.149 | 55.832 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.847 | 16.942 | 1000 | 0 | 59.358 | 45.02 | 49.617 | 51.698 | 64.238 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.003 | 28.752 | 363 | 0 | 12.516 | 241.82 | 243.228 | 19613.571 | 62.898 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.42 | 19.165 | 243 | 0 | 12.513 | 241.808 | 243.019 | 12805.892 | 62.902 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.383 | 183 | 0 | 12.514 | 241.81 | 242.705 | 10026.277 | 62.922 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.819 | 9.582 | 123 | 0 | 12.527 | 241.194 | 242.502 | 5229.341 | 62.93 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.822 | 9.578 | 103 | 0 | 10.487 | 241.7 | 242.255 | 5133.26 | 62.934 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.79 | 63 | 0 | 12.515 | 241.578 | 242.4 | 242.781 | 62.934 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.796 | 42 | 0 | 8.347 | 240.997 | 242.985 | 244.007 | 62.938 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.018 | 122 | 0 | 24.343 | 41.973 | 42.957 | 42.977 | 62.941 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.007 | 109 | 0 | 21.762 | 46.968 | 47.921 | 47.985 | 62.957 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.005 | 99 | 0 | 19.706 | 50.978 | 51.934 | 51.981 | 62.969 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.074 | 55 | 0 | 10.959 | 91.965 | 92.416 | 92.97 | 62.988 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.069 | 2.091 | 36 | 0 | 7.102 | 141.956 | 141.999 | 142.022 | 62.992 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.38 | 21 | 0 | 4.168 | 241.947 | 242.119 | 242.801 | 62.992 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19045 | 0 | 3808.249 | 1.234 | 1.802 | 2.301 | 63.777 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19604 | 0 | 3920.197 | 1.209 | 1.73 | 2.096 | 63.945 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20042 | 0 | 4007.41 | 1.182 | 1.693 | 2.031 | 64.109 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19300 | 0 | 3859.323 | 1.233 | 1.9 | 2.313 | 64.539 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19768 | 0 | 3952.957 | 1.198 | 1.7 | 2.06 | 65.855 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17413 | 0 | 3481.818 | 1.372 | 1.885 | 2.394 | 66.594 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19865 | 0 | 3972.358 | 1.193 | 1.682 | 1.993 | 67.594 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19248 | 0 | 3848.668 | 1.232 | 1.895 | 2.309 | 67.504 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15419 | 0 | 3082.952 | 1.545 | 2.177 | 2.664 | 75.672 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8209 | 0 | 1641.013 | 2.968 | 3.704 | 5.397 | 70.93 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15495 | 0 | 3098.242 | 1.524 | 2.195 | 2.793 | 76.305 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15400 | 0 | 3079.18 | 1.229 | 1.963 | 2.897 | 66.16 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11245 | 0 | 2248.163 | 1.994 | 3.226 | 5.305 | 105.059 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4565 | 0 | 912.032 | 5.398 | 6.455 | 10.08 | 75.828 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11627 | 0 | 2324.564 | 1.93 | 3.352 | 4.831 | 68.82 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 11413 | 0 | 2281.929 | 1.972 | 3.343 | 4.554 | 69.008 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8602 | 0 | 1719.638 | 2.625 | 4.212 | 13.118 | 125.762 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.009 | 2542 | 0 | 507.42 | 9.69 | 15.599 | 18.2 | 77.902 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8667 | 0 | 1732.675 | 2.498 | 4.625 | 13.135 | 70.133 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.002 | 8601 | 0 | 1716.163 | 2.487 | 4.409 | 12.863 | 70.133 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5325 | 0 | 1064.206 | 4.435 | 7.25 | 15.761 | 139.25 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.637 | 1371 | 0 | 273.285 | 18.027 | 29.272 | 33.184 | 78.762 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5994 | 0 | 1197.92 | 3.664 | 6.744 | 15.769 | 75.199 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5642 | 0 | 1127.743 | 3.89 | 7.117 | 16.054 | 75.262 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3136 | 0 | 626.153 | 7.931 | 12.271 | 14.072 | 122.852 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.006 | 6.935 | 1000 | 0 | 142.735 | 34.81 | 54.778 | 63.226 | 86.328 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3800 | 0 | 759.177 | 6.267 | 10.747 | 12.405 | 87.664 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3784 | 0 | 756.044 | 6.378 | 10.71 | 12.311 | 87.668 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.826 | 50.916 | 360 | 0 | 7.083 | 2541.385 | 2561.063 | 2563.939 | 100.789 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.887 | 33.95 | 240 | 0 | 7.082 | 1694.222 | 1716.6 | 1732.497 | 104.512 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.413 | 25.439 | 180 | 0 | 7.083 | 1270.141 | 1283.798 | 1295.84 | 106.895 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.943 | 16.951 | 120 | 0 | 7.083 | 846.942 | 859.398 | 862.188 | 106.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.118 | 14.119 | 100 | 0 | 7.083 | 793.826 | 847.798 | 849.07 | 110.09 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.466 | 8.481 | 60 | 0 | 7.087 | 423.033 | 425.342 | 428.399 | 110.09 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.645 | 5.645 | 40 | 0 | 7.086 | 282.079 | 283.858 | 284.058 | 110.09 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3628 | 0 | 725.408 | 1.342 | 1.458 | 1.725 | 116.859 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 942 | 0 | 188.378 | 5.263 | 5.417 | 5.745 | 119.328 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.009 | 485 | 0 | 96.952 | 10.274 | 10.393 | 10.568 | 119.457 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.025 | 99 | 0 | 19.781 | 50.488 | 50.681 | 51.187 | 119.457 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.016 | 50 | 0 | 9.936 | 100.568 | 100.721 | 101.118 | 121.863 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.541 | 200.601 | 200.602 | 121.863 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19165 | 0 | 3832.214 | 1.236 | 1.751 | 2.137 | 63.797 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18874 | 0 | 3773.296 | 1.255 | 1.79 | 2.182 | 63.945 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19223 | 0 | 3843.784 | 1.231 | 1.797 | 2.156 | 64.035 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18802 | 0 | 3759.558 | 1.256 | 1.963 | 2.359 | 64.328 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18993 | 0 | 3797.876 | 1.243 | 1.807 | 2.22 | 65.746 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16805 | 0 | 3360.229 | 1.407 | 2.083 | 2.568 | 69.555 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19357 | 0 | 3870.749 | 1.213 | 1.742 | 2.185 | 70.344 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18850 | 0 | 3768.865 | 1.252 | 1.922 | 2.447 | 71.98 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15026 | 0 | 3004.444 | 1.572 | 2.262 | 2.836 | 85.434 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 8030 | 0 | 1605.01 | 3.019 | 3.907 | 5.606 | 78.621 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14929 | 0 | 2985.123 | 1.572 | 2.362 | 2.976 | 85.609 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14689 | 0 | 2937.014 | 1.275 | 2.137 | 3.41 | 72.691 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 10684 | 0 | 2136.149 | 2.076 | 3.522 | 5.668 | 115.414 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4365 | 0 | 871.912 | 5.609 | 9.193 | 10.617 | 86.137 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10780 | 0 | 2155.146 | 2.023 | 3.672 | 5.891 | 74.211 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10489 | 0 | 2097.082 | 2.078 | 3.772 | 6.21 | 74.023 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8383 | 0 | 1675.711 | 2.626 | 4.46 | 14.37 | 129.914 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.031 | 2508 | 0 | 500.634 | 9.814 | 16.312 | 18.313 | 92.754 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8336 | 0 | 1666.469 | 2.555 | 4.841 | 14.494 | 82.758 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.002 | 8326 | 0 | 1661.628 | 2.578 | 4.848 | 14.696 | 83.758 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5327 | 0 | 1064.591 | 4.3 | 7.318 | 17.803 | 153.133 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.68 | 1358 | 0 | 270.651 | 18.17 | 29.203 | 33.418 | 93.969 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5571 | 0 | 1113.464 | 3.86 | 7.402 | 18.166 | 85.566 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5523 | 0 | 1103.51 | 3.914 | 7.325 | 17.93 | 85.629 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 3050 | 0 | 608.906 | 8.13 | 12.893 | 14.578 | 132.492 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.131 | 7.074 | 1000 | 0 | 140.228 | 35.435 | 49.905 | 64.555 | 98.438 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3555 | 0 | 710.102 | 6.618 | 11.854 | 13.304 | 90.891 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3550 | 0 | 709.12 | 6.647 | 11.811 | 13.341 | 90.891 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.93 | 51.064 | 360 | 0 | 7.069 | 2546.544 | 2564.121 | 2569.843 | 105.992 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.971 | 34.039 | 240 | 0 | 7.065 | 1698.373 | 1719.404 | 1737.212 | 110.723 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.474 | 25.538 | 180 | 0 | 7.066 | 1273.523 | 1284.358 | 1291.635 | 112.539 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.976 | 17.012 | 120 | 0 | 7.069 | 848.334 | 863.892 | 872.441 | 114.105 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.158 | 14.222 | 100 | 0 | 7.063 | 789.598 | 827.482 | 838.543 | 119.621 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.493 | 8.509 | 60 | 0 | 7.065 | 424.369 | 429.161 | 431.222 | 122.902 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.657 | 5.657 | 40 | 0 | 7.07 | 282.562 | 284.058 | 284.321 | 123.281 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3650 | 0 | 729.793 | 1.333 | 1.446 | 1.668 | 126.168 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.0 | 948 | 0 | 189.584 | 5.243 | 5.344 | 5.477 | 126.168 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.0 | 485 | 0 | 96.881 | 10.279 | 10.428 | 10.63 | 126.168 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.025 | 99 | 0 | 19.751 | 50.491 | 50.846 | 52.274 | 126.168 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.013 | 50 | 0 | 9.944 | 100.478 | 100.654 | 100.777 | 126.168 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.508 | 200.615 | 200.655 | 126.168 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18413 | 0 | 3681.953 | 1.287 | 1.831 | 2.187 | 63.895 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18141 | 0 | 3627.426 | 1.303 | 1.894 | 2.284 | 64.359 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18593 | 0 | 3717.523 | 1.273 | 1.829 | 2.244 | 64.469 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17628 | 0 | 3524.472 | 1.344 | 2.145 | 2.589 | 64.945 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18040 | 0 | 3607.316 | 1.307 | 1.899 | 2.389 | 66.227 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16116 | 0 | 3222.351 | 1.479 | 2.162 | 2.613 | 66.512 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18412 | 0 | 3681.652 | 1.276 | 1.85 | 2.333 | 66.594 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17928 | 0 | 3584.961 | 1.323 | 2.051 | 2.509 | 68.172 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14877 | 0 | 2974.581 | 1.597 | 2.26 | 2.768 | 77.395 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7915 | 0 | 1582.32 | 3.071 | 3.931 | 5.658 | 72.23 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15010 | 0 | 3001.205 | 1.569 | 2.275 | 2.954 | 76.559 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14935 | 0 | 2986.248 | 1.48 | 2.15 | 2.887 | 67.387 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11019 | 0 | 2203.102 | 2.023 | 3.291 | 5.144 | 97.199 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4491 | 0 | 897.302 | 5.477 | 7.293 | 10.3 | 75.84 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 11050 | 0 | 2209.262 | 1.98 | 3.53 | 5.581 | 71.746 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 11037 | 0 | 2206.094 | 1.996 | 3.472 | 5.603 | 71.621 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8433 | 0 | 1685.633 | 2.62 | 4.343 | 15.221 | 140.41 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.008 | 2451 | 0 | 489.134 | 9.992 | 12.97 | 18.647 | 78.129 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8515 | 0 | 1702.426 | 2.554 | 4.632 | 15.262 | 74.895 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8857 | 0 | 1770.661 | 2.451 | 4.367 | 14.877 | 74.957 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5422 | 0 | 1083.772 | 4.291 | 7.152 | 18.135 | 130.574 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.558 | 1400 | 0 | 279.117 | 17.722 | 19.694 | 32.337 | 78.191 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.003 | 5812 | 0 | 1160.3 | 3.71 | 6.826 | 18.503 | 76.273 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.003 | 5725 | 0 | 1143.287 | 3.8 | 6.799 | 18.221 | 76.344 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 3176 | 0 | 634.043 | 7.796 | 12.859 | 14.195 | 102.949 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.794 | 6.716 | 1000 | 0 | 147.192 | 33.778 | 35.148 | 61.444 | 85.758 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3861 | 0 | 771.226 | 6.168 | 10.737 | 12.173 | 83.566 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4040 | 0 | 807.161 | 6.025 | 9.356 | 11.436 | 83.629 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.725 | 50.885 | 360 | 0 | 7.097 | 2535.808 | 2550.019 | 2552.893 | 102.824 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.844 | 33.887 | 240 | 0 | 7.091 | 1691.888 | 1706.094 | 1714.681 | 103.523 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.372 | 25.434 | 180 | 0 | 7.094 | 1268.084 | 1281.811 | 1291.19 | 106.152 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.915 | 16.957 | 120 | 0 | 7.094 | 845.458 | 859.12 | 861.546 | 106.219 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.099 | 14.18 | 100 | 0 | 7.093 | 810.563 | 847.091 | 848.986 | 106.223 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.456 | 8.47 | 60 | 0 | 7.096 | 422.381 | 425.294 | 430.003 | 102.258 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.635 | 5.636 | 40 | 0 | 7.099 | 281.589 | 282.697 | 282.95 | 102.258 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3664 | 0 | 732.748 | 1.333 | 1.447 | 1.678 | 110.43 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.003 | 947 | 0 | 189.23 | 5.25 | 5.353 | 5.467 | 111.184 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.005 | 485 | 0 | 96.945 | 10.277 | 10.382 | 10.639 | 115.602 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.019 | 99 | 0 | 19.786 | 50.482 | 50.631 | 50.867 | 115.602 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.014 | 50 | 0 | 9.938 | 100.561 | 100.721 | 100.792 | 116.359 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.591 | 200.74 | 201.508 | 117.754 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.159 | 1000 | 0 | 62.047 | 40.978 | 41.961 | 42.292 | 28.992 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.119 | 1000 | 0 | 62.116 | 40.977 | 41.858 | 42.225 | 29.258 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.124 | 1000 | 0 | 62.089 | 40.979 | 41.951 | 42.177 | 29.352 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.117 | 1000 | 0 | 62.097 | 40.98 | 41.965 | 42.27 | 29.512 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.108 | 1000 | 0 | 62.12 | 40.979 | 41.761 | 42.183 | 29.566 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.164 | 1000 | 0 | 62.114 | 40.973 | 41.897 | 42.137 | 29.57 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.132 | 1000 | 0 | 62.095 | 40.978 | 41.922 | 42.303 | 29.578 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.11 | 1000 | 0 | 62.085 | 40.979 | 41.954 | 42.147 | 29.852 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.158 | 13.888 | 1000 | 0 | 65.971 | 40.963 | 41.956 | 42.023 | 29.871 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.126 | 14.723 | 1000 | 0 | 66.112 | 40.966 | 41.969 | 42.764 | 29.938 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 13736 | 0 | 2746.564 | 0.995 | 1.772 | 6.523 | 30.5 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.381 | 14.304 | 1000 | 0 | 65.015 | 40.966 | 41.982 | 42.575 | 33.461 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.947 | 8.015 | 1000 | 0 | 111.768 | 40.949 | 42.231 | 43.386 | 33.461 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.786 | 9.169 | 1000 | 0 | 102.184 | 40.953 | 42.227 | 43.427 | 33.461 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10013 | 0 | 2001.809 | 1.276 | 2.515 | 26.061 | 33.816 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.407 | 10.193 | 1000 | 0 | 80.599 | 41.819 | 42.974 | 44.515 | 40.5 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.644 | 13.663 | 1000 | 0 | 85.88 | 41.882 | 42.974 | 44.676 | 40.508 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.095 | 13.329 | 1000 | 0 | 82.677 | 41.932 | 42.938 | 43.809 | 40.508 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 7376 | 0 | 1474.507 | 1.605 | 3.267 | 87.063 | 40.516 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.414 | 14.613 | 1000 | 0 | 69.377 | 41.975 | 43.36 | 44.549 | 43.465 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.801 | 14.582 | 1000 | 0 | 67.564 | 41.975 | 43.8 | 45.699 | 43.465 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.609 | 14.891 | 1000 | 0 | 68.452 | 41.972 | 44.221 | 49.087 | 43.465 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.003 | 5513 | 0 | 1101.535 | 2.317 | 4.756 | 21.38 | 45.977 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.903 | 15.925 | 1000 | 0 | 62.88 | 42.98 | 45.179 | 48.727 | 51.672 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.146 | 15.172 | 1000 | 0 | 66.026 | 43.082 | 46.359 | 49.111 | 51.664 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.956 | 15.603 | 1000 | 0 | 66.865 | 43.051 | 47.028 | 49.46 | 51.664 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 3695 | 0 | 738.049 | 3.855 | 6.853 | 24.177 | 57.676 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.749 | 17.3 | 1000 | 0 | 59.704 | 44.992 | 50.114 | 57.772 | 68.223 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.987 | 28.76 | 363 | 0 | 12.523 | 241.598 | 242.496 | 19599.433 | 68.664 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.405 | 19.164 | 243 | 0 | 12.523 | 241.571 | 242.831 | 12800.326 | 68.684 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.619 | 14.379 | 183 | 0 | 12.518 | 241.67 | 242.619 | 10021.906 | 68.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.588 | 123 | 0 | 12.517 | 241.627 | 242.41 | 5231.649 | 68.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.591 | 103 | 0 | 10.477 | 241.755 | 242.727 | 5137.573 | 68.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.793 | 63 | 0 | 12.505 | 241.8 | 242.439 | 242.625 | 68.703 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.793 | 42 | 0 | 8.341 | 241.693 | 242.229 | 243.045 | 68.703 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.018 | 122 | 0 | 24.342 | 41.975 | 42.972 | 43.013 | 68.727 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.03 | 114 | 0 | 22.731 | 44.969 | 45.434 | 46.034 | 68.801 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.039 | 97 | 0 | 19.373 | 51.971 | 52.957 | 52.984 | 68.824 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.063 | 2.057 | 56 | 0 | 11.061 | 90.966 | 91.969 | 92.636 | 68.836 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.083 | 36 | 0 | 7.135 | 140.969 | 141.982 | 142.64 | 68.84 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.377 | 21 | 0 | 4.164 | 241.962 | 242.092 | 242.791 | 68.84 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.147 | 1000 | 0 | 62.094 | 40.981 | 41.953 | 42.296 | 29.008 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.116 | 1000 | 0 | 62.11 | 40.978 | 41.94 | 42.329 | 29.246 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.094 | 16.108 | 1000 | 0 | 62.134 | 40.98 | 41.948 | 42.137 | 29.313 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.108 | 1000 | 0 | 62.078 | 40.98 | 41.957 | 42.27 | 29.414 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.122 | 1000 | 0 | 62.085 | 40.979 | 41.974 | 42.308 | 29.594 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.123 | 1000 | 0 | 62.105 | 40.979 | 41.776 | 42.389 | 29.602 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.118 | 1000 | 0 | 62.118 | 40.977 | 41.944 | 42.22 | 29.605 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.108 | 1000 | 0 | 62.088 | 40.979 | 41.942 | 42.278 | 30.156 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.151 | 14.63 | 1000 | 0 | 66.001 | 40.97 | 41.978 | 42.56 | 30.156 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.227 | 15.11 | 1000 | 0 | 65.673 | 40.97 | 41.972 | 42.371 | 30.281 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 14457 | 0 | 2890.651 | 0.95 | 1.61 | 6.466 | 30.602 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.858 | 14.89 | 1000 | 0 | 67.305 | 40.971 | 41.978 | 42.25 | 34.859 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.564 | 9.589 | 1000 | 0 | 86.473 | 40.969 | 41.995 | 42.882 | 34.859 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.352 | 11.58 | 1001 | 0 | 119.85 | 40.931 | 42.179 | 43.126 | 34.859 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.005 | 9819 | 0 | 1962.85 | 1.274 | 2.747 | 18.144 | 34.922 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.166 | 12.22 | 1000 | 0 | 82.195 | 41.042 | 42.23 | 43.053 | 42.082 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.229 | 12.398 | 1000 | 0 | 81.77 | 41.884 | 42.969 | 44.301 | 42.082 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.683 | 12.866 | 1000 | 0 | 85.592 | 41.927 | 42.739 | 43.754 | 42.082 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.126 | 7488 | 0 | 1496.767 | 1.585 | 3.278 | 54.362 | 42.09 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.38 | 14.013 | 1000 | 0 | 69.539 | 41.964 | 43.01 | 44.187 | 44.488 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.787 | 15.082 | 1000 | 0 | 72.531 | 41.971 | 43.218 | 47.592 | 44.125 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.119 | 15.295 | 1000 | 0 | 70.827 | 41.988 | 43.964 | 46.183 | 44.125 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5520 | 0 | 1103.208 | 2.285 | 4.785 | 22.567 | 45.352 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.816 | 15.516 | 1000 | 0 | 63.229 | 42.981 | 44.995 | 48.453 | 53.035 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.012 | 15.05 | 1000 | 0 | 66.616 | 43.002 | 46.184 | 48.942 | 52.566 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.323 | 15.016 | 1000 | 0 | 65.263 | 43.403 | 45.999 | 49.015 | 52.566 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 3509 | 0 | 701.14 | 3.99 | 7.31 | 28.877 | 56.574 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.349 | 16.687 | 1000 | 0 | 61.167 | 44.976 | 48.514 | 50.946 | 97.391 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.997 | 28.761 | 363 | 0 | 12.519 | 241.727 | 242.907 | 19601.778 | 97.848 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.413 | 19.167 | 243 | 0 | 12.518 | 241.735 | 242.958 | 12801.029 | 97.867 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.622 | 14.375 | 183 | 0 | 12.516 | 241.746 | 242.929 | 10025.514 | 97.887 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.585 | 123 | 0 | 12.513 | 241.759 | 242.839 | 5235.398 | 97.902 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.587 | 103 | 0 | 10.482 | 241.654 | 242.865 | 5132.561 | 97.914 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.793 | 63 | 0 | 12.507 | 241.754 | 242.376 | 242.931 | 97.922 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.793 | 42 | 0 | 8.338 | 241.929 | 242.238 | 242.358 | 97.926 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.019 | 122 | 0 | 24.367 | 41.973 | 42.243 | 43.0 | 97.957 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.03 | 114 | 0 | 22.718 | 44.971 | 45.962 | 45.979 | 98.012 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.036 | 97 | 0 | 19.393 | 51.966 | 52.93 | 52.979 | 98.039 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.058 | 56 | 0 | 11.057 | 90.967 | 91.964 | 92.434 | 98.051 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.083 | 36 | 0 | 7.14 | 140.976 | 141.967 | 141.981 | 98.051 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.374 | 21 | 0 | 4.168 | 241.952 | 242.088 | 242.79 | 98.051 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.138 | 1000 | 0 | 62.085 | 40.98 | 41.865 | 42.24 | 29.031 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.109 | 1000 | 0 | 62.079 | 40.978 | 41.969 | 42.44 | 29.453 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.107 | 1000 | 0 | 62.111 | 40.979 | 41.723 | 42.122 | 29.563 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.1 | 1000 | 0 | 62.1 | 40.979 | 41.933 | 42.247 | 29.656 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.103 | 1000 | 0 | 62.101 | 40.978 | 41.925 | 42.256 | 29.695 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.146 | 1000 | 0 | 62.05 | 40.982 | 41.945 | 42.44 | 29.699 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.111 | 1000 | 0 | 62.102 | 40.979 | 41.953 | 42.263 | 29.703 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.123 | 1000 | 0 | 62.088 | 40.979 | 41.946 | 42.24 | 30.027 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.668 | 14.439 | 1000 | 0 | 68.175 | 40.969 | 41.955 | 42.172 | 30.18 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.786 | 14.909 | 1000 | 0 | 67.631 | 40.97 | 41.963 | 42.346 | 30.215 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 14314 | 0 | 2861.886 | 0.963 | 1.658 | 6.367 | 30.719 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.284 | 14.424 | 1000 | 0 | 65.428 | 40.972 | 41.978 | 42.971 | 35.754 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.591 | 9.914 | 1000 | 0 | 86.273 | 40.966 | 42.001 | 43.501 | 35.754 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.127 | 8.17 | 1000 | 0 | 89.871 | 40.961 | 41.98 | 42.708 | 35.754 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 10251 | 0 | 2049.584 | 1.207 | 2.434 | 40.708 | 36.059 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.9 | 13.135 | 1000 | 0 | 77.518 | 40.996 | 42.215 | 43.032 | 44.074 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.369 | 12.267 | 1000 | 0 | 74.8 | 41.913 | 42.919 | 43.759 | 44.074 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.413 | 12.854 | 1000 | 0 | 74.553 | 41.934 | 42.844 | 44.074 | 44.074 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.064 | 2.003 | 7693 | 0 | 1519.296 | 1.558 | 2.993 | 37.293 | 44.074 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.151 | 15.14 | 1000 | 0 | 66.002 | 41.969 | 43.001 | 44.081 | 45.332 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.166 | 14.755 | 1000 | 0 | 70.593 | 41.978 | 43.976 | 45.694 | 45.332 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.642 | 15.048 | 1000 | 0 | 68.297 | 41.974 | 43.933 | 46.239 | 45.332 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.021 | 2.006 | 5596 | 0 | 1114.468 | 2.253 | 4.667 | 21.929 | 46.887 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.485 | 15.944 | 1000 | 0 | 64.58 | 42.982 | 45.303 | 50.371 | 54.879 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.258 | 15.236 | 1000 | 0 | 65.539 | 42.988 | 45.78 | 47.548 | 54.051 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.74 | 15.262 | 1000 | 0 | 67.843 | 43.016 | 46.266 | 49.025 | 54.051 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.007 | 3722 | 0 | 743.604 | 3.778 | 6.94 | 24.487 | 60.063 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.807 | 17.18 | 1000 | 0 | 59.5 | 44.989 | 49.969 | 58.868 | 67.391 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.0 | 28.761 | 363 | 0 | 12.517 | 241.748 | 242.73 | 19607.208 | 64.758 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.412 | 19.164 | 243 | 0 | 12.518 | 241.739 | 242.865 | 12804.228 | 64.773 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.623 | 14.379 | 183 | 0 | 12.514 | 241.733 | 242.995 | 10030.119 | 64.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.822 | 9.59 | 123 | 0 | 12.523 | 241.46 | 242.478 | 5229.88 | 64.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.584 | 103 | 0 | 10.486 | 241.507 | 242.355 | 5132.825 | 64.801 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.792 | 63 | 0 | 12.52 | 241.403 | 242.219 | 242.41 | 64.813 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.792 | 42 | 0 | 8.347 | 241.194 | 242.198 | 242.969 | 64.813 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.019 | 122 | 0 | 24.342 | 41.972 | 42.968 | 43.015 | 64.816 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.031 | 114 | 0 | 22.733 | 44.97 | 45.504 | 46.002 | 64.82 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.038 | 97 | 0 | 19.396 | 51.97 | 52.029 | 53.02 | 64.953 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.06 | 2.06 | 56 | 0 | 11.067 | 90.968 | 91.483 | 92.008 | 65.004 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.051 | 2.082 | 36 | 0 | 7.127 | 140.977 | 142.05 | 142.666 | 65.004 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.379 | 21 | 0 | 4.166 | 241.931 | 242.963 | 243.024 | 65.004 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20036 | 0 | 4006.404 | 1.177 | 1.703 | 2.112 | 67.848 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19475 | 0 | 3893.972 | 1.212 | 1.758 | 2.237 | 68.102 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20044 | 0 | 4007.991 | 1.177 | 1.7 | 2.11 | 68.188 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19976 | 0 | 3994.469 | 1.185 | 1.705 | 2.105 | 68.746 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20348 | 0 | 4068.737 | 1.16 | 1.685 | 2.101 | 70.254 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18394 | 0 | 3678.035 | 1.302 | 1.743 | 2.207 | 70.578 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20521 | 0 | 4103.384 | 1.15 | 1.651 | 2.13 | 71.004 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20293 | 0 | 4057.815 | 1.165 | 1.663 | 2.005 | 72.742 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15293 | 0 | 3057.77 | 1.555 | 2.072 | 2.86 | 80.898 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8282 | 0 | 1655.627 | 2.966 | 3.559 | 4.974 | 76.684 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15813 | 0 | 3161.579 | 1.512 | 1.947 | 2.531 | 80.379 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.03 | 15608 | 0 | 3120.856 | 1.311 | 1.834 | 3.03 | 70.879 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11460 | 0 | 2291.219 | 1.915 | 3.322 | 4.703 | 98.004 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4612 | 0 | 921.412 | 5.358 | 6.26 | 9.926 | 80.906 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11421 | 0 | 2283.358 | 1.915 | 3.332 | 5.096 | 74.809 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11356 | 0 | 2270.514 | 1.948 | 3.289 | 4.701 | 75.008 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.002 | 8580 | 0 | 1711.396 | 2.499 | 4.471 | 19.245 | 116.617 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2554 | 0 | 509.837 | 9.747 | 10.898 | 17.933 | 95.887 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 8448 | 0 | 1688.232 | 2.535 | 4.558 | 18.923 | 93.984 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8650 | 0 | 1729.303 | 2.466 | 4.354 | 18.982 | 94.066 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5677 | 0 | 1134.695 | 3.729 | 6.985 | 22.342 | 139.715 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.599 | 1393 | 0 | 277.681 | 17.668 | 29.4 | 32.983 | 85.066 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5843 | 0 | 1167.974 | 3.683 | 6.685 | 21.719 | 83.582 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5694 | 0 | 1137.891 | 3.861 | 6.793 | 21.828 | 83.582 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3746 | 0 | 747.938 | 6.437 | 10.482 | 12.267 | 115.699 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.793 | 6.978 | 1000 | 0 | 147.213 | 33.66 | 36.41 | 61.457 | 87.25 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3957 | 0 | 790.598 | 6.06 | 10.43 | 11.797 | 87.199 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3837 | 0 | 766.633 | 6.204 | 9.931 | 12.089 | 87.199 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.836 | 50.848 | 360 | 0 | 7.082 | 2541.257 | 2545.756 | 2548.527 | 103.441 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.89 | 33.886 | 240 | 0 | 7.082 | 1694.141 | 1698.493 | 1700.201 | 103.691 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.415 | 25.418 | 180 | 0 | 7.083 | 1270.462 | 1274.925 | 1275.269 | 103.754 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.944 | 16.943 | 120 | 0 | 7.082 | 846.971 | 851.392 | 851.943 | 104.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.181 | 14.123 | 100 | 0 | 7.052 | 839.225 | 847.557 | 847.896 | 104.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.474 | 8.474 | 60 | 0 | 7.081 | 423.526 | 425.459 | 425.76 | 104.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.648 | 5.647 | 40 | 0 | 7.082 | 282.198 | 282.781 | 284.603 | 104.129 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1999 | 0 | 399.628 | 2.47 | 2.562 | 2.764 | 104.129 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.007 | 582 | 0 | 116.271 | 8.558 | 8.723 | 8.819 | 104.129 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.008 | 413 | 0 | 82.552 | 12.074 | 12.197 | 12.353 | 104.129 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.018 | 100 | 0 | 19.87 | 50.284 | 50.393 | 50.502 | 104.129 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.009 | 50 | 0 | 9.964 | 100.311 | 100.391 | 100.427 | 104.129 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.005 | 25 | 0 | 4.99 | 200.347 | 200.409 | 200.413 | 104.129 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21688 | 0 | 4336.646 | 1.095 | 1.455 | 1.882 | 67.668 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21214 | 0 | 4242.108 | 1.119 | 1.503 | 1.905 | 68.031 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21723 | 0 | 4343.816 | 1.093 | 1.474 | 1.87 | 68.398 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21412 | 0 | 4281.683 | 1.107 | 1.543 | 1.956 | 68.387 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21148 | 0 | 4228.936 | 1.122 | 1.55 | 1.96 | 69.82 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18510 | 0 | 3701.366 | 1.298 | 1.706 | 2.199 | 69.055 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21298 | 0 | 4258.954 | 1.112 | 1.535 | 1.933 | 71.578 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21140 | 0 | 4227.31 | 1.12 | 1.575 | 1.975 | 72.324 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16183 | 0 | 3235.935 | 1.475 | 1.931 | 2.489 | 81.227 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 8469 | 0 | 1692.914 | 2.906 | 3.423 | 3.753 | 73.828 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16099 | 0 | 3219.119 | 1.486 | 1.905 | 2.385 | 81.016 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.029 | 2.015 | 15844 | 0 | 3150.275 | 0.997 | 1.644 | 41.023 | 71.313 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11292 | 0 | 2257.563 | 1.946 | 3.276 | 5.004 | 106.359 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4450 | 0 | 888.966 | 5.52 | 6.616 | 10.367 | 77.711 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10410 | 0 | 2081.358 | 2.1 | 3.563 | 5.75 | 75.102 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 10530 | 0 | 2104.784 | 2.09 | 3.504 | 5.345 | 74.852 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 8003 | 0 | 1599.34 | 2.669 | 4.746 | 21.237 | 117.457 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.031 | 2432 | 0 | 485.545 | 10.182 | 11.829 | 19.068 | 82.762 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8034 | 0 | 1606.166 | 2.636 | 4.814 | 21.314 | 80.563 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8075 | 0 | 1614.262 | 2.608 | 4.66 | 21.397 | 80.637 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5515 | 0 | 1102.23 | 3.877 | 7.086 | 23.981 | 119.047 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.707 | 1336 | 0 | 266.381 | 18.546 | 21.095 | 34.282 | 81.445 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5687 | 0 | 1136.628 | 3.781 | 6.629 | 23.377 | 84.063 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5713 | 0 | 1141.811 | 3.79 | 6.433 | 23.37 | 84.063 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3776 | 0 | 754.309 | 6.344 | 10.527 | 12.018 | 100.934 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.881 | 6.815 | 1000 | 0 | 145.321 | 34.243 | 35.999 | 61.553 | 84.297 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3850 | 0 | 769.145 | 6.261 | 9.491 | 12.0 | 87.047 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3906 | 0 | 780.306 | 6.217 | 7.532 | 11.671 | 87.047 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.833 | 50.841 | 360 | 0 | 7.082 | 2541.211 | 2545.132 | 2546.392 | 104.941 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.892 | 33.885 | 240 | 0 | 7.081 | 1694.322 | 1697.936 | 1698.477 | 105.012 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.416 | 25.418 | 180 | 0 | 7.082 | 1270.54 | 1274.36 | 1274.522 | 105.074 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.946 | 16.942 | 120 | 0 | 7.081 | 847.1 | 850.778 | 851.189 | 105.324 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.122 | 14.179 | 100 | 0 | 7.081 | 839.601 | 847.448 | 847.726 | 105.324 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.475 | 8.474 | 60 | 0 | 7.08 | 423.701 | 425.307 | 426.042 | 105.324 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.649 | 5.648 | 40 | 0 | 7.081 | 282.317 | 282.729 | 282.801 | 105.324 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.002 | 1984 | 0 | 396.779 | 2.484 | 2.615 | 2.857 | 105.324 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 580 | 0 | 115.981 | 8.581 | 8.734 | 9.008 | 105.324 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 412 | 0 | 82.372 | 12.104 | 12.226 | 12.369 | 105.324 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.039 | 2.014 | 100 | 0 | 19.844 | 50.346 | 50.452 | 50.491 | 105.324 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.024 | 2.01 | 50 | 0 | 9.953 | 100.413 | 100.513 | 100.581 | 105.324 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.473 | 200.572 | 200.601 | 105.324 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20600 | 0 | 4119.309 | 1.148 | 1.616 | 2.076 | 67.906 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20151 | 0 | 4029.363 | 1.173 | 1.636 | 2.119 | 68.332 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 20769 | 0 | 4153.085 | 1.141 | 1.584 | 2.046 | 68.555 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20619 | 0 | 4122.955 | 1.149 | 1.635 | 2.053 | 68.879 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 20315 | 0 | 4061.765 | 1.163 | 1.678 | 2.102 | 70.328 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17616 | 0 | 3522.369 | 1.356 | 1.836 | 2.409 | 70.605 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20527 | 0 | 4104.826 | 1.153 | 1.615 | 2.072 | 71.43 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20275 | 0 | 4053.788 | 1.165 | 1.67 | 2.083 | 72.301 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15594 | 0 | 3117.987 | 1.528 | 2.033 | 2.7 | 81.246 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8246 | 0 | 1648.306 | 2.981 | 3.567 | 4.226 | 75.957 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15383 | 0 | 3075.873 | 1.554 | 2.032 | 2.71 | 80.59 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.034 | 2.001 | 15098 | 0 | 2999.319 | 1.298 | 1.901 | 40.676 | 71.363 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.002 | 10935 | 0 | 2179.435 | 1.98 | 3.504 | 5.655 | 101.207 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4452 | 0 | 889.484 | 5.502 | 6.694 | 10.102 | 80.637 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 11121 | 0 | 2222.834 | 1.961 | 3.428 | 5.263 | 72.215 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11024 | 0 | 2203.958 | 1.989 | 3.41 | 4.952 | 72.215 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 2.002 | 8393 | 0 | 1673.221 | 2.525 | 4.562 | 21.552 | 114.754 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2587 | 0 | 516.463 | 9.588 | 10.84 | 17.639 | 83.793 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8373 | 0 | 1673.869 | 2.5 | 4.634 | 21.173 | 77.012 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8517 | 0 | 1702.647 | 2.486 | 4.199 | 20.775 | 77.102 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5711 | 0 | 1141.523 | 3.732 | 6.784 | 23.845 | 123.461 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.014 | 3.537 | 1391 | 0 | 277.435 | 17.778 | 27.768 | 32.875 | 83.406 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5755 | 0 | 1150.327 | 3.721 | 6.637 | 23.865 | 81.117 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5681 | 0 | 1135.332 | 3.776 | 6.72 | 23.965 | 81.18 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3679 | 0 | 734.982 | 6.355 | 10.591 | 12.32 | 94.523 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.894 | 6.798 | 1000 | 0 | 145.059 | 34.001 | 55.286 | 62.77 | 92.469 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3733 | 0 | 745.714 | 6.248 | 11.09 | 12.792 | 94.473 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3775 | 0 | 754.174 | 6.238 | 10.541 | 12.881 | 94.473 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.846 | 50.866 | 360 | 0 | 7.08 | 2541.946 | 2546.163 | 2546.807 | 109.27 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.903 | 33.9 | 240 | 0 | 7.079 | 1694.906 | 1698.875 | 1700.384 | 109.273 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.426 | 25.422 | 180 | 0 | 7.079 | 1271.037 | 1275.21 | 1275.428 | 109.527 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.948 | 16.949 | 120 | 0 | 7.08 | 847.223 | 851.377 | 851.512 | 109.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.127 | 14.128 | 100 | 0 | 7.079 | 839.711 | 847.729 | 847.967 | 109.656 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.476 | 8.473 | 60 | 0 | 7.079 | 423.783 | 425.476 | 425.617 | 109.656 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.649 | 5.649 | 40 | 0 | 7.081 | 282.337 | 282.576 | 282.742 | 109.656 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1980 | 0 | 395.84 | 2.483 | 2.652 | 2.748 | 111.934 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.008 | 569 | 0 | 113.756 | 8.755 | 8.865 | 9.083 | 111.934 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.011 | 411 | 0 | 82.108 | 12.12 | 12.303 | 12.427 | 111.941 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.038 | 2.02 | 100 | 0 | 19.849 | 50.325 | 50.488 | 50.586 | 111.941 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.025 | 2.009 | 50 | 0 | 9.951 | 100.397 | 100.551 | 101.036 | 111.941 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.473 | 200.678 | 201.331 | 111.941 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

# Puma vs Raptor Simulation

Run ID: `20261019-033211`

## Environment

- Ruby: `ruby 4.0.7 (2026-09-15 revision 229531a6cf) +PRISM [x86_64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.098 | 1000 | 0 | 61.99 | 41.001 | 41.99 | 42.301 | 29.785 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.091 | 1000 | 0 | 62.04 | 40.989 | 41.963 | 42.227 | 29.895 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.084 | 1000 | 0 | 62.047 | 40.991 | 41.978 | 42.444 | 30.344 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.089 | 1000 | 0 | 62.008 | 40.995 | 41.976 | 42.274 | 30.344 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.087 | 1000 | 0 | 62.046 | 40.992 | 41.967 | 42.22 | 30.344 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.092 | 1000 | 0 | 62.019 | 40.997 | 41.968 | 42.381 | 30.344 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.087 | 1000 | 0 | 62.044 | 40.99 | 41.943 | 42.235 | 30.344 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.097 | 1000 | 0 | 62.04 | 40.996 | 41.964 | 42.128 | 31.129 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.048 | 13.538 | 1000 | 0 | 66.453 | 40.979 | 41.974 | 42.206 | 31.129 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.131 | 12.833 | 1000 | 0 | 66.09 | 40.981 | 41.971 | 42.272 | 31.129 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12481 | 0 | 2495.368 | 1.105 | 1.879 | 6.763 | 31.203 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.665 | 14.948 | 1000 | 0 | 63.838 | 40.989 | 41.974 | 42.185 | 44.086 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.922 | 15.15 | 1000 | 0 | 67.017 | 41.923 | 42.317 | 43.014 | 44.086 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.217 | 14.756 | 1000 | 0 | 65.715 | 41.942 | 42.172 | 43.003 | 44.086 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 10009 | 0 | 2001.112 | 1.419 | 2.243 | 41.323 | 44.086 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.597 | 15.503 | 1000 | 0 | 64.116 | 41.971 | 42.903 | 43.157 | 51.313 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.77 | 15.921 | 1000 | 0 | 63.412 | 41.987 | 42.998 | 43.966 | 49.793 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.982 | 15.608 | 1000 | 0 | 62.57 | 41.992 | 43.011 | 43.979 | 49.793 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 7554 | 0 | 1509.8 | 1.903 | 2.825 | 10.519 | 49.793 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.3 | 16.357 | 1000 | 0 | 61.348 | 42.95 | 43.297 | 43.999 | 63.242 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.708 | 16.222 | 1000 | 0 | 63.664 | 43.623 | 44.983 | 46.14 | 63.242 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.172 | 16.064 | 1000 | 0 | 65.913 | 43.909 | 44.966 | 45.852 | 63.242 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.011 | 5114 | 0 | 1022.202 | 2.76 | 4.321 | 10.718 | 63.242 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.604 | 16.815 | 1000 | 0 | 60.226 | 44.006 | 45.948 | 48.994 | 86.117 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.403 | 16.665 | 1000 | 0 | 60.966 | 46.857 | 48.959 | 51.186 | 86.117 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.226 | 17.872 | 1000 | 0 | 58.051 | 46.903 | 48.239 | 49.434 | 86.117 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3151 | 0 | 629.328 | 4.636 | 6.23 | 11.963 | 86.715 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.96 | 18.244 | 1000 | 0 | 55.679 | 47.958 | 50.974 | 53.265 | 90.477 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.013 | 28.772 | 363 | 0 | 12.512 | 241.799 | 244.43 | 19616.303 | 87.109 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.411 | 19.177 | 243 | 0 | 12.519 | 241.693 | 243.004 | 12795.869 | 87.141 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.612 | 14.375 | 183 | 0 | 12.524 | 241.494 | 242.561 | 10018.648 | 87.289 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.585 | 123 | 0 | 12.517 | 241.645 | 242.363 | 5232.248 | 87.297 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.588 | 103 | 0 | 10.474 | 241.911 | 242.619 | 5138.397 | 87.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.798 | 63 | 0 | 12.518 | 241.182 | 242.441 | 242.859 | 87.395 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.795 | 42 | 0 | 8.342 | 241.797 | 242.266 | 242.298 | 87.395 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.363 | 41.96 | 42.227 | 42.938 | 87.395 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.012 | 110 | 0 | 21.834 | 46.975 | 47.084 | 47.906 | 87.395 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.011 | 99 | 0 | 19.726 | 50.99 | 51.868 | 52.008 | 87.395 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.091 | 2.069 | 56 | 0 | 10.999 | 91.874 | 92.176 | 92.948 | 87.41 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.057 | 2.086 | 36 | 0 | 7.119 | 141.92 | 142.022 | 142.329 | 87.422 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.026 | 2.377 | 21 | 0 | 4.178 | 241.001 | 241.97 | 241.999 | 87.43 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.089 | 1000 | 0 | 62.024 | 40.991 | 41.961 | 42.24 | 29.16 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.084 | 1000 | 0 | 62.021 | 40.995 | 41.98 | 42.274 | 29.574 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.088 | 1000 | 0 | 62.032 | 40.992 | 41.969 | 42.252 | 29.574 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.091 | 1000 | 0 | 62.004 | 40.997 | 41.983 | 42.391 | 29.852 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.087 | 1000 | 0 | 62.028 | 40.992 | 41.975 | 42.304 | 29.887 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.169 | 16.121 | 1000 | 0 | 61.846 | 40.994 | 41.966 | 42.301 | 29.887 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.088 | 1000 | 0 | 62.055 | 40.989 | 41.956 | 42.105 | 29.887 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.091 | 1000 | 0 | 62.047 | 40.993 | 41.973 | 42.367 | 30.477 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.169 | 13.814 | 1000 | 0 | 65.924 | 40.98 | 41.976 | 42.096 | 30.477 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.068 | 13.497 | 1000 | 0 | 66.367 | 40.984 | 41.984 | 42.297 | 30.48 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12250 | 0 | 2449.19 | 1.127 | 1.902 | 5.435 | 30.809 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.296 | 15.214 | 1000 | 0 | 65.377 | 40.988 | 41.982 | 42.943 | 41.543 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.413 | 14.851 | 1000 | 0 | 69.38 | 41.94 | 42.84 | 43.219 | 39.293 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.197 | 14.321 | 1000 | 0 | 70.438 | 41.941 | 42.323 | 43.016 | 39.293 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 10058 | 0 | 2010.588 | 1.422 | 2.218 | 7.151 | 39.293 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.963 | 15.523 | 1000 | 0 | 66.83 | 41.973 | 42.934 | 43.435 | 46.121 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.141 | 15.656 | 1000 | 0 | 66.045 | 41.99 | 43.098 | 44.085 | 46.063 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.695 | 15.623 | 1000 | 0 | 63.716 | 41.992 | 43.047 | 44.009 | 46.063 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 7340 | 0 | 1467.163 | 1.899 | 2.982 | 11.183 | 46.102 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.092 | 15.916 | 1000 | 0 | 66.259 | 42.917 | 43.886 | 46.035 | 57.824 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.939 | 15.648 | 1000 | 0 | 66.941 | 43.88 | 44.971 | 46.28 | 57.824 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.449 | 15.507 | 1000 | 0 | 64.73 | 43.507 | 44.958 | 47.427 | 57.824 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.007 | 5032 | 0 | 1005.486 | 2.729 | 4.779 | 12.787 | 57.824 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.524 | 16.566 | 1000 | 0 | 60.519 | 43.994 | 45.394 | 46.874 | 67.883 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.671 | 17.286 | 1000 | 0 | 59.984 | 46.379 | 48.606 | 51.462 | 63.039 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.08 | 17.308 | 1000 | 0 | 58.549 | 46.901 | 48.484 | 51.455 | 63.039 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.014 | 2.007 | 3044 | 0 | 607.156 | 4.7 | 6.976 | 22.731 | 67.047 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.758 | 18.256 | 1000 | 0 | 56.313 | 47.955 | 50.943 | 53.412 | 79.914 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.018 | 28.765 | 363 | 0 | 12.509 | 241.91 | 242.981 | 19621.955 | 80.199 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.42 | 19.183 | 243 | 0 | 12.513 | 241.816 | 242.76 | 12806.261 | 80.242 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.63 | 14.39 | 183 | 0 | 12.509 | 241.884 | 242.862 | 10030.072 | 80.246 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.589 | 123 | 0 | 12.516 | 241.712 | 242.492 | 5231.897 | 80.258 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.587 | 103 | 0 | 10.476 | 241.753 | 242.469 | 5133.948 | 80.262 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.799 | 63 | 0 | 12.503 | 241.884 | 242.443 | 243.048 | 80.262 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.798 | 42 | 0 | 8.34 | 241.71 | 242.235 | 242.6 | 80.262 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.017 | 122 | 0 | 24.371 | 41.974 | 42.099 | 43.002 | 80.266 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.023 | 110 | 0 | 21.814 | 46.958 | 47.061 | 47.952 | 80.293 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.051 | 2.038 | 99 | 0 | 19.601 | 51.021 | 52.008 | 52.069 | 80.293 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.072 | 55 | 0 | 10.983 | 91.941 | 92.042 | 92.072 | 80.301 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.056 | 2.084 | 36 | 0 | 7.12 | 141.032 | 142.321 | 142.961 | 80.309 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 2.376 | 21 | 0 | 4.175 | 240.984 | 242.033 | 242.039 | 80.324 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.096 | 1000 | 0 | 62.013 | 40.995 | 41.967 | 42.328 | 28.98 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.098 | 1000 | 0 | 62.01 | 40.994 | 41.943 | 42.42 | 29.359 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.104 | 1000 | 0 | 61.98 | 40.995 | 41.989 | 42.348 | 29.734 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.105 | 1000 | 0 | 62.029 | 40.993 | 41.979 | 42.307 | 29.781 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.138 | 16.099 | 1000 | 0 | 61.966 | 40.992 | 41.997 | 42.346 | 29.801 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.098 | 1000 | 0 | 61.969 | 40.998 | 41.992 | 42.394 | 29.805 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.101 | 1000 | 0 | 61.982 | 40.997 | 41.975 | 42.483 | 29.805 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.114 | 1000 | 0 | 62.005 | 40.993 | 41.978 | 42.228 | 31.047 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.444 | 10.608 | 1000 | 0 | 69.231 | 40.98 | 41.981 | 42.484 | 31.047 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.131 | 14.591 | 1000 | 0 | 66.089 | 40.984 | 41.986 | 42.966 | 31.273 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12011 | 0 | 2401.45 | 1.156 | 1.982 | 5.444 | 31.469 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.294 | 12.002 | 1000 | 0 | 69.962 | 41.009 | 42.02 | 42.769 | 40.902 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.632 | 12.904 | 1000 | 0 | 68.342 | 41.948 | 42.765 | 43.34 | 40.902 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.504 | 14.236 | 1000 | 0 | 68.946 | 41.935 | 42.628 | 43.125 | 40.902 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 10025 | 0 | 2003.289 | 1.408 | 2.265 | 15.143 | 40.902 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.878 | 15.357 | 1000 | 0 | 67.212 | 41.972 | 42.916 | 43.171 | 50.094 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.649 | 15.633 | 1000 | 0 | 63.901 | 41.99 | 43.037 | 43.955 | 50.094 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.566 | 15.772 | 1000 | 0 | 64.242 | 42.003 | 43.157 | 44.007 | 50.094 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 7019 | 0 | 1402.723 | 1.988 | 3.182 | 11.96 | 50.094 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.719 | 15.847 | 1000 | 0 | 63.617 | 42.928 | 43.935 | 44.724 | 58.121 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.035 | 16.488 | 1000 | 0 | 62.363 | 43.685 | 44.973 | 52.307 | 55.121 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.404 | 16.463 | 1000 | 0 | 64.918 | 43.939 | 45.061 | 46.461 | 55.121 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.004 | 4856 | 0 | 969.883 | 2.828 | 4.873 | 14.051 | 56.996 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.266 | 16.55 | 1000 | 0 | 61.48 | 44.835 | 46.055 | 48.606 | 64.117 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.279 | 17.074 | 1000 | 0 | 61.427 | 46.228 | 48.292 | 50.285 | 55.051 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.725 | 17.385 | 1000 | 0 | 59.79 | 46.932 | 48.903 | 50.393 | 55.051 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.006 | 3042 | 0 | 607.373 | 4.808 | 6.587 | 13.376 | 61.063 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.669 | 18.127 | 1000 | 0 | 56.597 | 47.967 | 50.906 | 52.941 | 75.664 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.993 | 28.765 | 363 | 0 | 12.52 | 241.7 | 243.013 | 19599.129 | 75.961 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.414 | 19.169 | 243 | 0 | 12.517 | 241.672 | 242.916 | 12800.648 | 75.992 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.376 | 183 | 0 | 12.514 | 241.747 | 242.978 | 10019.83 | 75.992 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.588 | 123 | 0 | 12.516 | 241.738 | 242.656 | 5231.985 | 76.008 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.592 | 103 | 0 | 10.483 | 241.619 | 242.353 | 5132.615 | 76.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.794 | 63 | 0 | 12.514 | 241.23 | 242.349 | 243.416 | 76.016 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.793 | 42 | 0 | 8.342 | 241.717 | 242.165 | 242.246 | 76.02 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.017 | 122 | 0 | 24.357 | 41.978 | 42.919 | 42.999 | 76.055 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.023 | 109 | 0 | 21.779 | 46.982 | 47.95 | 48.002 | 76.063 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.005 | 99 | 0 | 19.718 | 50.99 | 51.936 | 52.055 | 76.082 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.087 | 2.061 | 56 | 0 | 11.008 | 91.928 | 92.017 | 92.031 | 76.082 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.053 | 2.08 | 36 | 0 | 7.125 | 140.993 | 141.985 | 142.65 | 76.082 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.378 | 21 | 0 | 4.174 | 241.0 | 242.075 | 242.091 | 76.094 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15570 | 0 | 3113.385 | 1.545 | 2.032 | 2.429 | 64.75 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15101 | 0 | 3019.157 | 1.588 | 2.114 | 2.619 | 65.148 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15544 | 0 | 3108.15 | 1.545 | 2.058 | 2.548 | 65.219 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15249 | 0 | 3049.165 | 1.57 | 2.146 | 2.62 | 65.477 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15439 | 0 | 3087.002 | 1.558 | 2.083 | 2.5 | 66.934 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13511 | 0 | 2701.458 | 1.784 | 2.345 | 2.92 | 66.926 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15406 | 0 | 3080.438 | 1.559 | 2.083 | 2.512 | 70.223 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15171 | 0 | 3033.428 | 1.581 | 2.139 | 2.643 | 71.523 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12632 | 0 | 2525.782 | 1.922 | 2.45 | 2.821 | 83.863 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6390 | 0 | 1277.394 | 3.879 | 4.667 | 5.18 | 74.754 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12566 | 0 | 2512.517 | 1.931 | 2.441 | 2.837 | 83.535 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.033 | 2.011 | 12415 | 0 | 2466.825 | 1.576 | 2.292 | 40.694 | 72.852 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9383 | 0 | 1876.02 | 2.422 | 3.851 | 6.364 | 108.863 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3511 | 0 | 701.249 | 7.115 | 8.453 | 9.157 | 79.246 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 9561 | 0 | 1911.659 | 2.395 | 3.765 | 6.199 | 73.98 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9138 | 0 | 1827.024 | 2.474 | 4.019 | 6.791 | 73.668 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 7171 | 0 | 1433.128 | 3.098 | 5.425 | 13.156 | 168.641 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.462 | 2020 | 0 | 403.176 | 12.341 | 14.837 | 15.902 | 83.078 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6996 | 0 | 1398.586 | 3.208 | 5.464 | 13.746 | 81.273 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6957 | 0 | 1390.827 | 3.162 | 5.389 | 14.006 | 81.273 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 2.005 | 4374 | 0 | 871.738 | 5.263 | 8.683 | 17.915 | 118.984 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.584 | 1095 | 0 | 218.219 | 22.9 | 27.498 | 29.577 | 85.418 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4575 | 0 | 914.109 | 5.058 | 7.641 | 17.604 | 83.039 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.019 | 4625 | 0 | 924.294 | 4.903 | 8.353 | 17.499 | 83.039 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.008 | 2829 | 0 | 564.307 | 8.418 | 15.151 | 18.419 | 127.477 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.689 | 8.346 | 1000 | 0 | 115.082 | 42.582 | 51.403 | 54.142 | 88.375 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2926 | 0 | 584.294 | 8.392 | 9.998 | 10.882 | 88.598 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 2964 | 0 | 592.09 | 8.279 | 9.919 | 10.794 | 88.719 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.998 | 50.993 | 360 | 0 | 7.059 | 2547.184 | 2597.795 | 2608.796 | 107.273 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.983 | 33.974 | 240 | 0 | 7.062 | 1695.868 | 1749.364 | 1761.167 | 112.734 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.493 | 25.517 | 180 | 0 | 7.061 | 1271.275 | 1314.92 | 1325.275 | 114.074 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.995 | 17.013 | 120 | 0 | 7.061 | 847.313 | 876.537 | 890.362 | 114.207 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.21 | 14.18 | 100 | 0 | 7.037 | 780.353 | 841.01 | 859.333 | 114.836 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.495 | 8.5 | 60 | 0 | 7.063 | 424.531 | 438.993 | 450.418 | 114.836 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.667 | 5.661 | 40 | 0 | 7.058 | 283.158 | 285.687 | 289.585 | 114.84 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3591 | 0 | 718.113 | 1.361 | 1.471 | 1.765 | 126.188 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.001 | 931 | 0 | 186.071 | 5.327 | 5.5 | 5.882 | 128.875 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.009 | 476 | 0 | 95.085 | 10.469 | 10.584 | 10.813 | 128.875 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.031 | 99 | 0 | 19.741 | 50.598 | 50.678 | 50.967 | 128.875 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.015 | 50 | 0 | 9.931 | 100.634 | 100.705 | 100.757 | 128.875 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.007 | 25 | 0 | 4.982 | 200.637 | 200.89 | 201.109 | 128.875 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15251 | 0 | 3049.085 | 1.572 | 2.087 | 2.615 | 64.555 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14918 | 0 | 2982.623 | 1.609 | 2.139 | 2.63 | 64.754 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15182 | 0 | 3035.765 | 1.579 | 2.121 | 2.615 | 64.695 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14959 | 0 | 2991.027 | 1.601 | 2.182 | 2.669 | 65.129 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15118 | 0 | 3022.635 | 1.584 | 2.14 | 2.615 | 66.66 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13157 | 0 | 2630.68 | 1.834 | 2.426 | 3.0 | 66.895 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14937 | 0 | 2986.663 | 1.599 | 2.186 | 2.724 | 69.352 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14801 | 0 | 2959.385 | 1.614 | 2.239 | 2.7 | 72.793 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12389 | 0 | 2477.102 | 1.959 | 2.513 | 3.01 | 94.723 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6291 | 0 | 1257.38 | 3.934 | 4.77 | 5.23 | 79.117 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12322 | 0 | 2463.741 | 1.974 | 2.46 | 2.796 | 94.074 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.031 | 2.028 | 12271 | 0 | 2439.234 | 1.519 | 2.266 | 41.179 | 74.211 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8683 | 0 | 1735.937 | 2.562 | 4.37 | 8.88 | 104.566 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3433 | 0 | 685.762 | 7.283 | 8.721 | 9.269 | 87.836 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 9015 | 0 | 1802.446 | 2.476 | 4.234 | 7.649 | 77.91 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8947 | 0 | 1788.571 | 2.544 | 4.053 | 7.421 | 77.855 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6813 | 0 | 1361.745 | 3.27 | 5.612 | 9.307 | 127.477 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.522 | 1905 | 0 | 380.34 | 13.231 | 15.526 | 16.57 | 89.789 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 6913 | 0 | 1381.901 | 3.21 | 5.583 | 15.649 | 86.914 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6604 | 0 | 1319.881 | 3.318 | 6.072 | 15.445 | 86.922 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4306 | 0 | 860.538 | 5.378 | 7.971 | 19.16 | 137.496 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.607 | 1026 | 0 | 204.402 | 24.588 | 28.268 | 29.797 | 91.832 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4488 | 0 | 896.944 | 5.122 | 7.66 | 19.929 | 89.656 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4454 | 0 | 890.091 | 5.079 | 7.711 | 19.949 | 89.656 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.01 | 2694 | 0 | 538.21 | 9.021 | 14.848 | 17.954 | 134.398 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.095 | 8.627 | 1000 | 0 | 109.955 | 45.818 | 52.938 | 56.273 | 91.633 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 2922 | 0 | 583.653 | 8.421 | 9.888 | 10.819 | 92.055 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 2921 | 0 | 583.326 | 8.357 | 10.159 | 11.489 | 92.18 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.029 | 51.044 | 360 | 0 | 7.055 | 2548.272 | 2610.786 | 2649.323 | 109.094 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.031 | 34.056 | 240 | 0 | 7.052 | 1697.117 | 1752.808 | 1770.293 | 121.344 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.511 | 25.52 | 180 | 0 | 7.056 | 1275.261 | 1313.092 | 1325.026 | 121.348 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.003 | 17.002 | 120 | 0 | 7.057 | 846.234 | 887.296 | 897.754 | 121.414 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.172 | 14.171 | 100 | 0 | 7.056 | 721.024 | 834.731 | 850.865 | 121.418 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.491 | 8.488 | 60 | 0 | 7.067 | 423.103 | 457.234 | 464.875 | 121.418 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.668 | 5.669 | 40 | 0 | 7.057 | 283.066 | 293.446 | 294.685 | 123.297 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3611 | 0 | 722.093 | 1.355 | 1.442 | 1.74 | 128.145 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.003 | 944 | 0 | 188.624 | 5.271 | 5.331 | 5.57 | 128.145 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.009 | 484 | 0 | 96.669 | 10.309 | 10.391 | 10.646 | 128.207 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.045 | 2.02 | 100 | 0 | 19.823 | 50.396 | 50.596 | 50.679 | 128.207 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.023 | 2.012 | 50 | 0 | 9.955 | 100.374 | 100.547 | 100.577 | 128.207 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.575 | 200.661 | 200.672 | 128.207 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15414 | 0 | 3082.152 | 1.559 | 2.052 | 2.52 | 64.574 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15228 | 0 | 3044.617 | 1.581 | 2.072 | 2.539 | 65.008 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15566 | 0 | 3112.569 | 1.544 | 2.037 | 2.483 | 64.531 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15363 | 0 | 3071.892 | 1.566 | 2.096 | 2.56 | 64.477 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15308 | 0 | 3060.843 | 1.569 | 2.09 | 2.514 | 66.836 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13345 | 0 | 2668.408 | 1.805 | 2.354 | 2.955 | 66.332 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15422 | 0 | 3083.81 | 1.555 | 2.092 | 2.565 | 66.84 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15208 | 0 | 3040.712 | 1.582 | 2.151 | 2.586 | 67.055 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12795 | 0 | 2558.153 | 1.893 | 2.424 | 2.925 | 90.773 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6542 | 0 | 1307.764 | 3.777 | 4.612 | 5.122 | 77.125 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12581 | 0 | 2515.495 | 1.931 | 2.412 | 2.765 | 91.59 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.04 | 2.038 | 12570 | 0 | 2494.133 | 1.479 | 2.148 | 41.243 | 81.164 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9792 | 0 | 1957.57 | 2.343 | 3.524 | 5.432 | 117.289 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3521 | 0 | 703.464 | 7.083 | 8.492 | 9.26 | 81.852 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9932 | 0 | 1985.647 | 2.345 | 3.24 | 4.628 | 80.043 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9466 | 0 | 1892.275 | 2.463 | 3.44 | 5.124 | 80.293 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7275 | 0 | 1454.018 | 3.091 | 5.092 | 14.681 | 178.09 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.393 | 2016 | 0 | 402.513 | 12.484 | 14.914 | 15.872 | 87.539 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7563 | 0 | 1511.872 | 2.989 | 4.604 | 15.14 | 84.027 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 7294 | 0 | 1457.351 | 3.114 | 4.585 | 14.7 | 84.027 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.003 | 4449 | 0 | 887.983 | 5.132 | 9.38 | 18.592 | 156.582 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.234 | 1076 | 0 | 214.411 | 23.455 | 27.387 | 28.765 | 108.195 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4744 | 0 | 948.152 | 4.821 | 6.995 | 19.017 | 106.281 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4774 | 0 | 954.044 | 4.705 | 7.314 | 18.908 | 106.281 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 2726 | 0 | 544.501 | 9.05 | 10.803 | 11.892 | 124.652 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.879 | 8.164 | 1000 | 0 | 112.631 | 44.503 | 52.136 | 55.299 | 113.727 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2860 | 0 | 570.958 | 8.612 | 10.13 | 10.901 | 112.934 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2933 | 0 | 585.693 | 8.38 | 9.821 | 11.0 | 112.934 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.019 | 51.033 | 360 | 0 | 7.056 | 2560.498 | 2681.371 | 2709.272 | 139.406 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.996 | 33.969 | 240 | 0 | 7.06 | 1714.559 | 1802.384 | 1829.029 | 139.414 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.498 | 25.497 | 180 | 0 | 7.059 | 1291.028 | 1364.211 | 1392.487 | 135.605 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.994 | 16.977 | 120 | 0 | 7.061 | 862.814 | 919.433 | 937.358 | 135.551 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.183 | 14.157 | 100 | 0 | 7.051 | 708.656 | 866.55 | 876.244 | 135.555 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.541 | 8.499 | 60 | 0 | 7.025 | 426.731 | 450.744 | 457.143 | 134.992 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.66 | 5.669 | 40 | 0 | 7.068 | 281.505 | 297.797 | 303.265 | 135.367 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3583 | 0 | 716.569 | 1.367 | 1.467 | 1.736 | 136.555 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 937 | 0 | 187.373 | 5.304 | 5.38 | 5.664 | 136.555 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.005 | 480 | 0 | 95.986 | 10.369 | 10.517 | 10.792 | 136.621 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.027 | 99 | 0 | 19.753 | 50.572 | 50.686 | 50.762 | 136.621 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.013 | 50 | 0 | 9.938 | 100.557 | 100.668 | 101.037 | 136.621 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.597 | 200.651 | 201.06 | 136.621 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.113 | 1000 | 0 | 62.001 | 40.994 | 41.959 | 42.353 | 30.867 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.105 | 1000 | 0 | 62.002 | 40.99 | 41.972 | 42.356 | 31.379 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.112 | 1000 | 0 | 61.996 | 41.003 | 41.98 | 42.452 | 31.438 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.135 | 1000 | 0 | 62.0 | 40.994 | 41.965 | 42.306 | 31.539 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.126 | 1000 | 0 | 62.035 | 40.989 | 41.975 | 42.431 | 31.609 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.109 | 1000 | 0 | 61.984 | 40.992 | 41.987 | 42.565 | 31.66 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.094 | 1000 | 0 | 62.016 | 40.994 | 41.969 | 42.483 | 31.684 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.098 | 1000 | 0 | 62.028 | 40.992 | 41.935 | 42.329 | 32.238 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.167 | 12.425 | 1000 | 0 | 65.933 | 40.979 | 41.978 | 42.173 | 32.238 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.173 | 14.313 | 1000 | 0 | 65.906 | 40.983 | 41.981 | 42.23 | 32.34 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12219 | 0 | 2442.758 | 1.174 | 1.86 | 7.491 | 32.734 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.945 | 14.871 | 1000 | 0 | 66.911 | 40.986 | 41.979 | 42.511 | 39.617 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.733 | 14.263 | 1000 | 0 | 72.816 | 41.866 | 42.16 | 44.157 | 39.617 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.6 | 14.505 | 1000 | 0 | 68.493 | 41.89 | 42.416 | 43.821 | 39.617 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9090 | 0 | 1817.209 | 1.491 | 2.495 | 42.229 | 39.617 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.891 | 13.072 | 1000 | 0 | 67.155 | 41.965 | 42.857 | 43.43 | 50.945 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.239 | 15.733 | 1000 | 0 | 65.622 | 41.982 | 42.981 | 44.017 | 45.945 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.662 | 15.878 | 1000 | 0 | 63.848 | 41.985 | 43.016 | 43.853 | 45.945 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 7143 | 0 | 1427.409 | 1.913 | 3.127 | 16.848 | 45.945 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.009 | 16.12 | 1000 | 0 | 66.626 | 42.024 | 43.405 | 44.224 | 56.699 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.95 | 15.693 | 1000 | 0 | 66.892 | 43.048 | 44.867 | 46.106 | 56.699 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.998 | 14.952 | 1000 | 0 | 66.674 | 43.008 | 44.746 | 46.067 | 56.699 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 4621 | 0 | 923.297 | 2.795 | 5.577 | 18.282 | 57.836 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.194 | 16.33 | 1000 | 0 | 61.75 | 43.992 | 45.822 | 49.357 | 61.648 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.066 | 16.123 | 1000 | 0 | 66.376 | 45.887 | 47.986 | 50.961 | 59.641 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.253 | 16.637 | 1000 | 0 | 61.526 | 45.948 | 47.658 | 52.257 | 59.641 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3035 | 0 | 606.151 | 4.79 | 6.711 | 20.677 | 65.652 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.421 | 17.265 | 1000 | 0 | 57.402 | 47.112 | 49.974 | 54.408 | 77.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.978 | 28.752 | 363 | 0 | 12.527 | 241.14 | 243.14 | 19593.164 | 77.902 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.406 | 19.157 | 243 | 0 | 12.522 | 241.325 | 242.931 | 12794.973 | 77.922 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.38 | 183 | 0 | 12.512 | 241.784 | 242.572 | 10022.608 | 77.934 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.584 | 123 | 0 | 12.513 | 241.695 | 242.579 | 5231.203 | 77.934 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.582 | 103 | 0 | 10.481 | 241.665 | 242.431 | 5135.764 | 77.934 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.796 | 63 | 0 | 12.509 | 241.739 | 242.489 | 242.745 | 77.934 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.791 | 42 | 0 | 8.339 | 241.751 | 242.268 | 242.598 | 77.934 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.02 | 122 | 0 | 24.332 | 41.975 | 42.924 | 42.986 | 77.973 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.025 | 2.028 | 112 | 0 | 22.289 | 45.947 | 46.897 | 46.967 | 78.023 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.031 | 99 | 0 | 19.664 | 50.989 | 51.955 | 52.001 | 78.027 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.075 | 55 | 0 | 10.983 | 91.942 | 92.072 | 92.907 | 78.047 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.091 | 36 | 0 | 7.105 | 141.95 | 142.118 | 142.687 | 78.051 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.378 | 21 | 0 | 4.172 | 241.907 | 242.003 | 242.003 | 78.051 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.155 | 1000 | 0 | 61.99 | 40.991 | 41.98 | 42.368 | 30.848 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.13 | 1000 | 0 | 61.989 | 40.991 | 41.963 | 42.325 | 31.348 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.136 | 1000 | 0 | 61.973 | 40.992 | 41.979 | 42.399 | 31.418 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.135 | 1000 | 0 | 62.017 | 40.989 | 41.958 | 42.279 | 31.551 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.126 | 1000 | 0 | 62.0 | 40.99 | 41.963 | 42.348 | 31.703 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.14 | 16.113 | 1000 | 0 | 61.959 | 40.993 | 41.999 | 42.636 | 31.727 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.126 | 1000 | 0 | 61.975 | 40.991 | 41.977 | 42.388 | 31.734 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.116 | 1000 | 0 | 61.991 | 40.992 | 41.982 | 42.361 | 32.281 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.717 | 12.777 | 1000 | 0 | 67.949 | 40.977 | 41.972 | 42.385 | 32.371 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.186 | 12.451 | 1000 | 0 | 65.851 | 40.978 | 41.972 | 42.744 | 32.492 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12265 | 0 | 2452.205 | 1.139 | 1.9 | 9.141 | 32.762 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.221 | 13.593 | 1000 | 0 | 65.699 | 40.985 | 41.989 | 42.946 | 41.734 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.12 | 13.858 | 1000 | 0 | 76.221 | 41.899 | 42.462 | 43.667 | 41.734 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.031 | 12.33 | 1000 | 0 | 76.742 | 41.911 | 42.667 | 43.312 | 41.734 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.02 | 2.002 | 9458 | 0 | 1883.984 | 1.441 | 2.387 | 22.854 | 41.746 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.273 | 14.809 | 1000 | 0 | 75.34 | 41.955 | 42.953 | 43.381 | 49.641 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.203 | 14.767 | 1000 | 0 | 70.409 | 41.978 | 43.028 | 44.408 | 49.641 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.848 | 15.053 | 1000 | 0 | 72.214 | 41.987 | 43.19 | 47.37 | 49.641 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.071 | 6712 | 0 | 1341.649 | 1.999 | 3.51 | 19.063 | 49.641 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.041 | 15.248 | 1000 | 0 | 66.483 | 42.911 | 43.989 | 45.989 | 54.023 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.95 | 15.672 | 1000 | 0 | 71.684 | 43.436 | 44.942 | 52.619 | 54.023 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.835 | 15.794 | 1000 | 0 | 67.407 | 43.047 | 44.865 | 47.807 | 54.023 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.004 | 4595 | 0 | 917.403 | 2.853 | 5.336 | 23.015 | 54.27 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.852 | 16.299 | 1000 | 0 | 63.085 | 44.051 | 46.241 | 49.045 | 59.684 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.902 | 16.918 | 1000 | 0 | 62.885 | 45.941 | 47.988 | 49.549 | 52.266 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.872 | 17.205 | 1000 | 0 | 63.003 | 45.959 | 48.016 | 50.783 | 52.266 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.008 | 3015 | 0 | 602.138 | 4.874 | 6.706 | 12.225 | 58.277 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.562 | 17.658 | 1000 | 0 | 56.942 | 47.913 | 50.426 | 52.12 | 77.203 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.0 | 28.765 | 363 | 0 | 12.517 | 241.813 | 244.014 | 19610.378 | 77.629 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.42 | 19.169 | 243 | 0 | 12.513 | 241.788 | 242.907 | 12807.119 | 77.676 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.623 | 14.378 | 183 | 0 | 12.515 | 241.741 | 242.892 | 10022.512 | 77.684 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.591 | 123 | 0 | 12.516 | 241.573 | 242.69 | 5231.255 | 77.691 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.572 | 103 | 0 | 10.482 | 241.893 | 242.453 | 5134.109 | 77.695 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 4.793 | 63 | 0 | 12.494 | 241.89 | 242.233 | 243.905 | 77.695 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.785 | 42 | 0 | 8.342 | 241.737 | 242.254 | 242.592 | 77.695 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.023 | 122 | 0 | 24.371 | 41.98 | 42.073 | 42.932 | 77.727 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.029 | 113 | 0 | 22.51 | 45.044 | 46.007 | 46.262 | 77.734 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.003 | 99 | 0 | 19.741 | 50.984 | 51.924 | 52.001 | 77.746 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.078 | 2.065 | 56 | 0 | 11.028 | 90.992 | 92.024 | 92.048 | 77.766 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.061 | 2.084 | 36 | 0 | 7.113 | 141.953 | 141.998 | 142.126 | 77.77 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.026 | 2.372 | 21 | 0 | 4.178 | 240.981 | 242.296 | 242.329 | 77.77 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.136 | 1000 | 0 | 62.068 | 40.99 | 41.953 | 42.346 | 29.348 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.101 | 1000 | 0 | 62.027 | 40.996 | 41.977 | 42.388 | 29.656 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.094 | 1000 | 0 | 61.99 | 40.996 | 41.986 | 42.336 | 29.77 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.127 | 1000 | 0 | 61.976 | 40.996 | 41.967 | 42.338 | 29.898 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.179 | 16.129 | 1000 | 0 | 61.81 | 40.99 | 41.991 | 42.383 | 29.984 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.132 | 1000 | 0 | 61.961 | 40.995 | 41.968 | 42.366 | 29.984 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.115 | 1000 | 0 | 61.982 | 40.991 | 41.976 | 42.396 | 30.0 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.155 | 1000 | 0 | 61.956 | 40.995 | 41.97 | 42.509 | 30.313 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.404 | 11.669 | 1000 | 0 | 80.619 | 40.982 | 42.007 | 42.944 | 30.41 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.218 | 12.42 | 1000 | 0 | 70.335 | 40.98 | 41.975 | 42.649 | 30.453 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11810 | 0 | 2360.946 | 1.214 | 1.958 | 10.514 | 30.973 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.984 | 11.561 | 1000 | 0 | 71.512 | 41.01 | 42.142 | 43.108 | 35.352 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.01 | 13.187 | 1000 | 0 | 83.261 | 41.898 | 42.801 | 43.897 | 35.352 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.853 | 13.136 | 1000 | 0 | 84.369 | 41.918 | 42.845 | 43.953 | 35.352 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 8935 | 0 | 1785.624 | 1.511 | 2.58 | 20.25 | 35.844 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.138 | 13.805 | 1000 | 0 | 76.114 | 41.949 | 42.924 | 43.907 | 41.023 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.111 | 13.922 | 1000 | 0 | 70.868 | 41.988 | 43.151 | 45.086 | 41.023 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.158 | 14.286 | 1000 | 0 | 65.971 | 42.028 | 43.257 | 44.455 | 41.023 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 6500 | 0 | 1299.089 | 2.017 | 3.432 | 23.382 | 41.637 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.207 | 15.54 | 1000 | 0 | 70.389 | 42.925 | 43.987 | 45.041 | 45.387 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.684 | 15.374 | 1000 | 0 | 68.099 | 43.286 | 44.933 | 50.758 | 45.387 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.841 | 15.901 | 1000 | 0 | 67.379 | 43.72 | 44.973 | 51.317 | 45.387 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 4458 | 0 | 890.925 | 2.972 | 5.257 | 21.87 | 47.852 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.519 | 15.499 | 1000 | 0 | 68.877 | 44.36 | 46.195 | 63.172 | 53.215 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.159 | 16.164 | 1000 | 0 | 65.967 | 45.941 | 48.092 | 50.836 | 52.668 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.622 | 15.98 | 1000 | 0 | 64.012 | 46.485 | 48.176 | 49.927 | 52.668 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 2913 | 0 | 581.74 | 5.026 | 7.1 | 14.198 | 58.68 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.431 | 17.372 | 1000 | 0 | 57.369 | 47.458 | 49.932 | 51.485 | 66.305 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.0 | 28.775 | 363 | 0 | 12.517 | 241.7 | 243.009 | 19610.654 | 66.707 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.417 | 19.173 | 243 | 0 | 12.515 | 241.771 | 242.848 | 12794.835 | 66.746 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.618 | 14.379 | 183 | 0 | 12.519 | 241.583 | 242.619 | 10021.981 | 66.746 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.578 | 123 | 0 | 12.517 | 241.621 | 242.572 | 5235.647 | 66.746 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.82 | 9.58 | 103 | 0 | 10.489 | 241.135 | 242.341 | 5127.041 | 66.746 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 4.787 | 63 | 0 | 12.527 | 241.161 | 242.568 | 243.35 | 66.746 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 4.781 | 42 | 0 | 8.355 | 241.075 | 242.083 | 242.143 | 66.75 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.019 | 122 | 0 | 24.37 | 41.985 | 42.137 | 42.966 | 66.762 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.026 | 2.029 | 113 | 0 | 22.484 | 45.723 | 46.026 | 46.864 | 66.773 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.002 | 99 | 0 | 19.737 | 50.979 | 51.989 | 52.079 | 66.773 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.0 | 2.068 | 55 | 0 | 11.0 | 91.94 | 92.036 | 92.487 | 66.828 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.064 | 2.086 | 36 | 0 | 7.109 | 141.957 | 142.386 | 142.765 | 66.836 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 2.374 | 21 | 0 | 4.176 | 240.984 | 242.083 | 242.769 | 66.84 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15611 | 0 | 3121.501 | 1.546 | 1.987 | 2.317 | 68.594 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15402 | 0 | 3079.808 | 1.573 | 1.976 | 2.32 | 69.215 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15860 | 0 | 3171.429 | 1.522 | 1.935 | 2.381 | 68.832 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15500 | 0 | 3099.379 | 1.561 | 1.979 | 2.413 | 69.25 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15563 | 0 | 3111.946 | 1.547 | 2.014 | 2.502 | 70.609 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13516 | 0 | 2702.575 | 1.785 | 2.272 | 2.787 | 70.766 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15563 | 0 | 3111.72 | 1.555 | 1.998 | 2.46 | 72.004 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15459 | 0 | 3090.694 | 1.563 | 2.01 | 2.483 | 75.293 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12709 | 0 | 2541.124 | 1.917 | 2.34 | 2.652 | 87.828 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6605 | 0 | 1320.288 | 3.756 | 4.485 | 4.94 | 78.781 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12649 | 0 | 2529.154 | 1.92 | 2.388 | 2.778 | 87.137 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.006 | 12568 | 0 | 2512.942 | 1.657 | 2.2 | 3.257 | 76.031 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9304 | 0 | 1860.202 | 2.382 | 4.013 | 7.271 | 114.293 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3607 | 0 | 720.719 | 6.917 | 8.287 | 9.11 | 82.875 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9339 | 0 | 1867.059 | 2.354 | 4.012 | 7.087 | 81.035 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8844 | 0 | 1768.255 | 2.479 | 4.158 | 7.987 | 80.973 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 6999 | 0 | 1398.351 | 3.119 | 5.648 | 19.019 | 127.953 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.302 | 2071 | 0 | 413.516 | 11.954 | 14.604 | 15.721 | 85.434 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7166 | 0 | 1432.573 | 2.989 | 5.555 | 18.954 | 83.09 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7032 | 0 | 1405.751 | 3.031 | 5.631 | 18.957 | 83.156 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4489 | 0 | 897.111 | 4.998 | 8.826 | 23.0 | 121.449 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.217 | 1116 | 0 | 222.382 | 22.425 | 26.903 | 28.731 | 87.738 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 4612 | 0 | 921.776 | 4.766 | 8.787 | 22.972 | 84.711 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 4666 | 0 | 932.28 | 4.675 | 8.179 | 22.76 | 84.711 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2671 | 0 | 533.42 | 9.216 | 11.286 | 12.398 | 99.613 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.414 | 8.085 | 1000 | 0 | 118.843 | 41.791 | 48.748 | 52.196 | 90.727 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 3011 | 0 | 601.126 | 8.241 | 9.533 | 10.289 | 86.512 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 2966 | 0 | 592.504 | 8.344 | 9.707 | 10.559 | 86.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.082 | 51.088 | 360 | 0 | 7.047 | 2552.927 | 2587.071 | 2596.971 | 108.848 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.053 | 34.056 | 240 | 0 | 7.048 | 1699.569 | 1731.345 | 1741.855 | 111.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.537 | 25.545 | 180 | 0 | 7.049 | 1276.105 | 1302.166 | 1311.102 | 113.02 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.033 | 17.028 | 120 | 0 | 7.045 | 851.299 | 870.659 | 878.92 | 113.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.241 | 14.189 | 100 | 0 | 7.022 | 833.083 | 856.236 | 865.585 | 113.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.52 | 8.513 | 60 | 0 | 7.043 | 426.501 | 440.319 | 442.598 | 113.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.677 | 5.672 | 40 | 0 | 7.046 | 283.801 | 286.876 | 287.598 | 113.18 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.003 | 1596 | 0 | 319.185 | 3.124 | 3.341 | 3.421 | 116.68 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.008 | 476 | 0 | 95.053 | 10.554 | 10.716 | 10.889 | 116.68 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.006 | 360 | 0 | 71.863 | 13.931 | 14.145 | 14.374 | 116.68 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.036 | 2.016 | 100 | 0 | 19.857 | 50.32 | 50.42 | 50.526 | 116.68 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.009 | 50 | 0 | 9.963 | 100.332 | 100.385 | 100.426 | 116.68 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.005 | 25 | 0 | 4.99 | 200.338 | 200.405 | 200.407 | 116.68 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15992 | 0 | 3197.768 | 1.505 | 1.905 | 2.345 | 68.969 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15716 | 0 | 3142.484 | 1.54 | 1.935 | 2.29 | 69.18 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16048 | 0 | 3208.975 | 1.508 | 1.902 | 2.234 | 69.371 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15925 | 0 | 3184.329 | 1.518 | 1.933 | 2.378 | 69.59 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15897 | 0 | 3178.831 | 1.52 | 1.926 | 2.264 | 70.852 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13893 | 0 | 2777.843 | 1.751 | 2.154 | 2.519 | 71.047 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16023 | 0 | 3203.905 | 1.507 | 1.925 | 2.46 | 73.332 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15667 | 0 | 3132.221 | 1.539 | 1.972 | 2.442 | 74.711 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12802 | 0 | 2559.705 | 1.901 | 2.33 | 2.64 | 85.688 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6559 | 0 | 1310.983 | 3.764 | 4.539 | 5.11 | 78.457 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12816 | 0 | 2562.465 | 1.894 | 2.346 | 2.692 | 85.781 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.021 | 12435 | 0 | 2480.563 | 1.573 | 2.316 | 40.833 | 75.352 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9317 | 0 | 1862.829 | 2.374 | 3.902 | 6.647 | 112.203 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 3495 | 0 | 698.328 | 7.131 | 8.559 | 9.405 | 82.598 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9055 | 0 | 1809.892 | 2.429 | 3.927 | 7.998 | 82.25 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8824 | 0 | 1764.258 | 2.504 | 3.953 | 6.897 | 82.5 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6594 | 0 | 1318.227 | 3.306 | 5.508 | 21.78 | 123.469 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.334 | 1991 | 0 | 397.502 | 12.515 | 14.88 | 16.148 | 89.594 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 6669 | 0 | 1332.473 | 3.286 | 5.583 | 21.795 | 85.957 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.133 | 6601 | 0 | 1319.349 | 3.226 | 5.86 | 22.775 | 86.02 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.004 | 4239 | 0 | 846.605 | 5.242 | 8.931 | 25.862 | 123.984 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.461 | 1076 | 0 | 214.34 | 23.241 | 27.205 | 29.29 | 90.059 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4256 | 0 | 850.522 | 5.177 | 9.45 | 26.186 | 86.723 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4353 | 0 | 869.794 | 4.997 | 8.791 | 26.258 | 86.723 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2535 | 0 | 506.146 | 9.653 | 12.062 | 13.903 | 107.785 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.868 | 8.614 | 1000 | 0 | 112.77 | 44.194 | 50.865 | 54.201 | 91.926 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.006 | 2748 | 0 | 548.485 | 9.021 | 10.493 | 11.627 | 92.531 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2723 | 0 | 543.692 | 9.109 | 10.916 | 11.723 | 92.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.148 | 51.169 | 360 | 0 | 7.038 | 2556.924 | 2602.064 | 2626.995 | 113.199 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.107 | 34.088 | 240 | 0 | 7.037 | 1703.741 | 1747.77 | 1762.274 | 115.918 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.564 | 25.568 | 180 | 0 | 7.041 | 1278.15 | 1309.572 | 1320.219 | 115.918 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.048 | 17.041 | 120 | 0 | 7.039 | 849.865 | 884.054 | 891.324 | 115.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.254 | 14.207 | 100 | 0 | 7.016 | 789.603 | 852.093 | 855.173 | 115.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.525 | 8.519 | 60 | 0 | 7.038 | 426.491 | 443.762 | 447.604 | 115.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.682 | 5.676 | 40 | 0 | 7.04 | 284.27 | 287.671 | 291.459 | 116.039 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.003 | 1544 | 0 | 308.724 | 3.273 | 3.352 | 3.494 | 116.039 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.003 | 464 | 0 | 92.685 | 10.821 | 11.036 | 11.116 | 116.039 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.013 | 352 | 0 | 70.254 | 14.26 | 14.473 | 14.581 | 116.039 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.023 | 99 | 0 | 19.782 | 50.501 | 50.553 | 50.952 | 116.039 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.013 | 50 | 0 | 9.938 | 100.521 | 100.828 | 101.391 | 116.039 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.544 | 200.589 | 200.601 | 116.039 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15659 | 0 | 3131.12 | 1.543 | 1.983 | 2.406 | 68.738 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15220 | 0 | 3043.201 | 1.587 | 2.034 | 2.47 | 68.973 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15622 | 0 | 3123.783 | 1.545 | 1.99 | 2.408 | 68.813 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15421 | 0 | 3083.624 | 1.568 | 2.015 | 2.465 | 68.914 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15520 | 0 | 3103.292 | 1.553 | 2.019 | 2.482 | 70.324 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13506 | 0 | 2700.373 | 1.791 | 2.288 | 2.646 | 70.469 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15561 | 0 | 3111.602 | 1.546 | 2.024 | 2.494 | 71.285 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15322 | 0 | 3063.596 | 1.574 | 2.057 | 2.52 | 72.059 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12601 | 0 | 2519.084 | 1.935 | 2.367 | 2.694 | 79.973 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6505 | 0 | 1300.401 | 3.815 | 4.559 | 5.007 | 75.832 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12792 | 0 | 2557.561 | 1.897 | 2.367 | 2.663 | 79.777 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.017 | 12377 | 0 | 2474.274 | 1.778 | 2.413 | 3.43 | 71.602 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.002 | 9064 | 0 | 1806.646 | 2.442 | 3.931 | 7.734 | 104.258 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3552 | 0 | 709.731 | 7.02 | 8.298 | 9.058 | 82.141 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 9166 | 0 | 1831.849 | 2.401 | 3.884 | 7.319 | 76.379 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8918 | 0 | 1782.983 | 2.5 | 3.859 | 8.162 | 76.254 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 6732 | 0 | 1345.06 | 3.216 | 5.42 | 21.476 | 117.25 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.25 | 2045 | 0 | 408.075 | 12.203 | 14.583 | 15.671 | 91.418 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6779 | 0 | 1355.083 | 3.203 | 5.368 | 21.628 | 89.926 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 6525 | 0 | 1303.761 | 3.291 | 5.601 | 23.457 | 90.023 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4292 | 0 | 857.717 | 5.228 | 8.423 | 26.661 | 137.211 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.646 | 1059 | 0 | 211.038 | 23.63 | 27.919 | 29.958 | 88.836 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4308 | 0 | 860.724 | 5.149 | 8.661 | 27.225 | 84.953 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4444 | 0 | 888.173 | 4.946 | 7.776 | 26.168 | 84.953 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2520 | 0 | 503.111 | 9.829 | 11.708 | 12.871 | 97.699 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.897 | 8.657 | 1000 | 0 | 112.398 | 44.38 | 51.656 | 54.837 | 91.777 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2629 | 0 | 524.945 | 9.399 | 11.341 | 12.546 | 87.895 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2644 | 0 | 527.819 | 9.314 | 11.261 | 12.308 | 87.895 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.16 | 51.154 | 360 | 0 | 7.037 | 2561.209 | 2607.005 | 2621.135 | 108.672 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.088 | 34.096 | 240 | 0 | 7.041 | 1700.04 | 1746.848 | 1755.992 | 112.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.568 | 25.591 | 180 | 0 | 7.04 | 1275.376 | 1308.853 | 1315.909 | 112.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.053 | 17.041 | 120 | 0 | 7.037 | 851.773 | 882.388 | 886.987 | 112.242 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.252 | 14.207 | 100 | 0 | 7.017 | 741.434 | 859.329 | 864.881 | 112.492 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.516 | 8.514 | 60 | 0 | 7.046 | 424.917 | 440.436 | 443.104 | 112.492 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.678 | 5.673 | 40 | 0 | 7.044 | 283.747 | 289.776 | 297.852 | 112.492 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.003 | 1555 | 0 | 310.882 | 3.24 | 3.439 | 3.547 | 115.703 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.008 | 459 | 0 | 91.626 | 10.914 | 11.322 | 11.456 | 117.469 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.011 | 357 | 0 | 71.366 | 13.969 | 14.476 | 14.69 | 117.469 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.038 | 2.014 | 100 | 0 | 19.85 | 50.319 | 50.448 | 51.312 | 117.469 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.02 | 2.009 | 50 | 0 | 9.96 | 100.323 | 100.41 | 100.754 | 117.469 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.005 | 25 | 0 | 4.99 | 200.327 | 200.41 | 200.419 | 117.469 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

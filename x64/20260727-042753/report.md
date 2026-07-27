# Puma vs Raptor Simulation

Run ID: `20260727-042753`

## Environment

- Ruby: `ruby 4.0.6 (2026-07-14 revision 03b6d3f889) +PRISM [x86_64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.11 | 1000 | 0 | 62.035 | 40.987 | 41.975 | 42.281 | 30.168 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.098 | 1000 | 0 | 61.987 | 40.993 | 41.992 | 42.393 | 30.59 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.093 | 1000 | 0 | 62.071 | 40.983 | 41.968 | 42.094 | 30.59 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.087 | 1000 | 0 | 62.049 | 40.988 | 41.983 | 42.217 | 30.695 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.094 | 1000 | 0 | 62.009 | 40.994 | 41.979 | 42.261 | 30.695 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.083 | 1000 | 0 | 62.038 | 40.992 | 41.963 | 42.577 | 30.699 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.09 | 1000 | 0 | 62.073 | 40.99 | 41.874 | 42.247 | 30.699 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.125 | 1000 | 0 | 62.081 | 40.986 | 41.974 | 42.263 | 31.379 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.15 | 14.97 | 1000 | 0 | 66.005 | 40.978 | 41.972 | 42.228 | 31.484 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.271 | 14.894 | 1000 | 0 | 65.482 | 40.975 | 41.969 | 42.104 | 31.484 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 17000 | 0 | 3399.123 | 0.828 | 1.387 | 4.579 | 31.832 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.492 | 15.669 | 1000 | 0 | 64.55 | 40.979 | 41.979 | 42.128 | 42.535 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.424 | 9.446 | 1001 | 0 | 118.828 | 40.93 | 41.988 | 42.953 | 42.535 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.407 | 8.335 | 1001 | 0 | 119.071 | 40.913 | 41.989 | 42.99 | 42.535 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11967 | 0 | 2392.308 | 1.17 | 1.816 | 41.773 | 42.535 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.09 | 9.214 | 1000 | 0 | 99.107 | 40.991 | 42.042 | 43.11 | 50.102 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.539 | 11.471 | 1000 | 0 | 104.831 | 41.231 | 42.457 | 44.237 | 50.102 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.852 | 10.57 | 1001 | 0 | 101.602 | 41.595 | 42.738 | 43.6 | 50.102 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 7846 | 0 | 1568.625 | 1.706 | 3.005 | 13.286 | 50.102 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.745 | 14.325 | 1000 | 0 | 72.754 | 41.972 | 43.035 | 43.939 | 64.707 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.654 | 14.635 | 1000 | 0 | 79.029 | 42.017 | 43.799 | 46.21 | 56.586 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.744 | 13.3 | 1000 | 0 | 85.149 | 42.002 | 43.797 | 45.899 | 56.586 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 5531 | 0 | 1105.229 | 2.471 | 4.529 | 12.323 | 58.402 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.987 | 15.496 | 1000 | 0 | 66.724 | 42.989 | 44.778 | 45.818 | 77.133 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.058 | 14.479 | 1000 | 0 | 71.136 | 43.427 | 45.973 | 48.637 | 77.133 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.155 | 14.515 | 1000 | 0 | 70.648 | 43.895 | 45.999 | 49.163 | 77.133 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3529 | 0 | 704.895 | 4.15 | 5.61 | 12.326 | 79.27 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.793 | 16.486 | 1000 | 0 | 63.32 | 45.27 | 49.384 | 51.277 | 84.59 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.01 | 28.782 | 363 | 0 | 12.513 | 241.847 | 242.95 | 19618.008 | 85.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.428 | 19.193 | 243 | 0 | 12.508 | 241.895 | 243.224 | 12811.634 | 85.063 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.63 | 14.395 | 183 | 0 | 12.509 | 241.827 | 243.067 | 10027.02 | 85.066 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.597 | 123 | 0 | 12.509 | 241.797 | 242.756 | 5234.117 | 85.074 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.594 | 103 | 0 | 10.472 | 241.852 | 242.672 | 5137.144 | 85.078 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.798 | 63 | 0 | 12.502 | 241.637 | 242.334 | 242.961 | 85.09 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.798 | 42 | 0 | 8.334 | 241.954 | 242.342 | 242.623 | 85.09 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.018 | 122 | 0 | 24.342 | 41.976 | 42.973 | 43.025 | 85.156 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.028 | 110 | 0 | 21.795 | 46.971 | 47.355 | 47.955 | 85.164 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.027 | 98 | 0 | 19.542 | 51.749 | 52.129 | 52.832 | 85.191 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.072 | 55 | 0 | 10.976 | 91.956 | 92.163 | 92.92 | 85.191 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.063 | 2.089 | 36 | 0 | 7.111 | 141.874 | 142.426 | 142.893 | 85.195 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.379 | 21 | 0 | 4.168 | 241.893 | 242.055 | 242.108 | 85.195 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.085 | 1000 | 0 | 62.045 | 40.985 | 41.991 | 42.115 | 28.547 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.089 | 1000 | 0 | 62.038 | 40.991 | 41.991 | 42.284 | 28.551 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.089 | 1000 | 0 | 62.043 | 40.986 | 41.977 | 42.212 | 28.566 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.09 | 1000 | 0 | 62.048 | 40.989 | 41.98 | 42.218 | 28.609 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.093 | 1000 | 0 | 62.058 | 40.99 | 41.967 | 42.172 | 28.625 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.083 | 1000 | 0 | 61.996 | 40.992 | 41.98 | 42.361 | 28.625 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.095 | 1000 | 0 | 62.057 | 40.986 | 41.981 | 42.21 | 28.637 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.093 | 1000 | 0 | 62.022 | 40.992 | 41.961 | 42.431 | 29.121 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.429 | 15.18 | 1000 | 0 | 64.813 | 40.978 | 41.967 | 42.331 | 29.211 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.159 | 14.457 | 1000 | 0 | 65.969 | 40.978 | 41.967 | 42.166 | 29.234 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16127 | 0 | 3224.523 | 0.872 | 1.473 | 3.099 | 29.762 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.01 | 15.562 | 1000 | 0 | 66.624 | 40.981 | 41.972 | 42.127 | 34.434 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.978 | 8.673 | 1001 | 0 | 111.499 | 40.947 | 41.983 | 42.83 | 34.434 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.795 | 9.308 | 1000 | 0 | 113.695 | 40.861 | 41.957 | 42.292 | 34.434 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11874 | 0 | 2373.846 | 1.187 | 1.827 | 12.329 | 34.516 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.527 | 11.241 | 1000 | 0 | 94.995 | 41.036 | 42.39 | 43.372 | 40.949 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.477 | 11.087 | 1000 | 0 | 87.129 | 41.754 | 42.468 | 43.247 | 40.949 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.139 | 12.009 | 1000 | 0 | 76.109 | 41.876 | 42.567 | 43.619 | 40.949 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.133 | 2.01 | 7861 | 0 | 1531.369 | 1.655 | 2.694 | 24.695 | 40.949 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.016 | 14.015 | 1000 | 0 | 76.83 | 41.966 | 43.083 | 44.056 | 43.836 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.092 | 13.974 | 1000 | 0 | 76.384 | 41.998 | 43.438 | 48.322 | 43.836 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.442 | 14.049 | 1000 | 0 | 74.391 | 41.997 | 43.276 | 45.312 | 43.836 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5377 | 0 | 1074.508 | 2.541 | 4.496 | 13.187 | 45.598 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.702 | 15.149 | 1000 | 0 | 68.017 | 42.986 | 45.198 | 48.23 | 52.543 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.845 | 15.141 | 1000 | 0 | 72.229 | 43.918 | 46.316 | 48.818 | 52.543 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.01 | 14.802 | 1000 | 0 | 71.376 | 43.805 | 46.106 | 48.912 | 52.543 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3409 | 0 | 680.841 | 4.304 | 5.952 | 12.141 | 58.555 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.715 | 16.265 | 1000 | 0 | 63.634 | 45.169 | 48.227 | 57.88 | 82.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.017 | 28.779 | 363 | 0 | 12.51 | 241.867 | 242.882 | 19618.061 | 83.262 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.425 | 19.186 | 243 | 0 | 12.509 | 241.906 | 242.692 | 12810.759 | 83.313 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.388 | 183 | 0 | 12.514 | 241.771 | 242.498 | 10026.531 | 83.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.591 | 123 | 0 | 12.516 | 241.742 | 242.653 | 5230.13 | 83.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.593 | 103 | 0 | 10.472 | 241.949 | 242.605 | 5135.873 | 83.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.798 | 63 | 0 | 12.508 | 241.746 | 242.372 | 242.616 | 83.344 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.798 | 42 | 0 | 8.342 | 241.694 | 242.282 | 242.386 | 83.344 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.018 | 122 | 0 | 24.36 | 41.975 | 42.295 | 43.024 | 83.379 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.022 | 110 | 0 | 21.836 | 46.959 | 47.183 | 47.964 | 83.387 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.05 | 2.023 | 99 | 0 | 19.605 | 51.033 | 52.021 | 52.072 | 83.418 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.068 | 55 | 0 | 10.984 | 91.92 | 92.463 | 92.895 | 83.418 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.062 | 2.091 | 36 | 0 | 7.112 | 141.863 | 142.124 | 142.17 | 83.418 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.379 | 21 | 0 | 4.169 | 241.93 | 242.097 | 242.773 | 83.418 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.086 | 1000 | 0 | 62.065 | 40.987 | 41.963 | 42.175 | 28.598 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.084 | 1000 | 0 | 62.093 | 40.987 | 41.956 | 42.232 | 28.809 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.084 | 1000 | 0 | 62.061 | 40.987 | 41.98 | 42.13 | 28.82 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.083 | 1000 | 0 | 62.069 | 40.988 | 41.965 | 42.279 | 28.867 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.085 | 1000 | 0 | 62.072 | 40.987 | 41.968 | 42.189 | 28.887 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.085 | 1000 | 0 | 62.093 | 40.985 | 41.957 | 42.134 | 28.891 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.081 | 1000 | 0 | 62.086 | 40.988 | 41.957 | 42.145 | 28.91 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.085 | 1000 | 0 | 62.069 | 40.988 | 41.969 | 42.261 | 29.496 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.315 | 15.451 | 1000 | 0 | 65.297 | 40.981 | 41.974 | 42.065 | 29.586 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.039 | 14.707 | 1000 | 0 | 66.492 | 40.979 | 41.987 | 42.165 | 29.586 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16135 | 0 | 3226.193 | 0.873 | 1.489 | 4.723 | 29.941 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.332 | 15.042 | 1000 | 0 | 65.225 | 40.981 | 41.975 | 42.938 | 35.422 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.206 | 8.521 | 1018 | 0 | 141.263 | 1.461 | 41.968 | 42.987 | 35.422 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.036 | 9.058 | 1000 | 0 | 90.613 | 40.972 | 41.984 | 42.938 | 35.422 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11225 | 0 | 2244.034 | 1.186 | 2.008 | 41.28 | 35.531 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.095 | 7.895 | 1000 | 0 | 109.956 | 40.956 | 42.14 | 43.082 | 43.633 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.025 | 9.439 | 1000 | 0 | 99.752 | 41.193 | 42.252 | 43.165 | 41.727 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.563 | 9.563 | 1000 | 0 | 94.669 | 41.68 | 42.83 | 43.988 | 41.727 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.205 | 2.034 | 8100 | 0 | 1556.054 | 1.583 | 2.574 | 25.149 | 41.727 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.423 | 13.563 | 1000 | 0 | 74.498 | 41.968 | 43.014 | 43.979 | 45.664 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.479 | 12.904 | 1000 | 0 | 80.133 | 42.001 | 43.817 | 45.262 | 43.41 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.134 | 13.465 | 1000 | 0 | 89.818 | 41.976 | 43.658 | 45.23 | 43.41 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 5276 | 0 | 1054.187 | 2.547 | 4.915 | 15.296 | 46.379 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.133 | 15.137 | 1000 | 0 | 70.758 | 43.01 | 45.127 | 46.806 | 56.043 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.438 | 13.711 | 1000 | 0 | 74.414 | 43.873 | 45.985 | 48.382 | 53.465 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.687 | 14.505 | 1000 | 0 | 73.061 | 43.54 | 45.406 | 48.344 | 53.465 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3319 | 0 | 662.891 | 4.368 | 6.233 | 12.891 | 59.477 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.639 | 16.129 | 1000 | 0 | 63.942 | 45.226 | 49.231 | 57.896 | 63.582 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.023 | 28.777 | 363 | 0 | 12.507 | 241.901 | 242.982 | 19615.253 | 63.734 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.429 | 19.185 | 243 | 0 | 12.507 | 241.885 | 243.16 | 12811.912 | 63.746 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.627 | 14.39 | 183 | 0 | 12.511 | 241.774 | 242.801 | 10023.312 | 63.762 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.595 | 123 | 0 | 12.514 | 241.694 | 242.614 | 5234.345 | 63.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.596 | 103 | 0 | 10.478 | 241.809 | 242.522 | 5134.746 | 63.785 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.794 | 63 | 0 | 12.518 | 241.214 | 242.389 | 242.975 | 63.785 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.796 | 42 | 0 | 8.34 | 241.697 | 242.226 | 242.313 | 63.789 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.018 | 122 | 0 | 24.372 | 41.974 | 42.137 | 43.017 | 63.816 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.021 | 110 | 0 | 21.796 | 46.972 | 47.178 | 47.994 | 63.824 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.032 | 98 | 0 | 19.566 | 51.419 | 52.137 | 52.948 | 63.84 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.072 | 55 | 0 | 10.996 | 91.882 | 92.103 | 92.241 | 63.852 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.063 | 2.088 | 36 | 0 | 7.111 | 141.935 | 142.005 | 142.089 | 63.855 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.377 | 21 | 0 | 4.171 | 241.865 | 241.974 | 241.986 | 63.855 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23330 | 0 | 4665.099 | 1.014 | 1.479 | 1.833 | 69.246 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22763 | 0 | 4551.871 | 1.043 | 1.499 | 1.764 | 69.766 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23446 | 0 | 4688.15 | 1.012 | 1.47 | 1.751 | 69.191 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22860 | 0 | 4571.179 | 1.034 | 1.536 | 1.842 | 69.035 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22893 | 0 | 4577.497 | 1.034 | 1.493 | 1.822 | 71.031 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19658 | 0 | 3930.742 | 1.216 | 1.717 | 2.002 | 70.285 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22633 | 0 | 4525.853 | 1.044 | 1.539 | 1.84 | 70.922 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22235 | 0 | 4446.086 | 1.06 | 1.587 | 1.972 | 71.605 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16667 | 0 | 3332.081 | 1.434 | 2.02 | 2.455 | 83.113 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8677 | 0 | 1734.615 | 2.817 | 3.588 | 4.005 | 75.957 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17452 | 0 | 3489.722 | 1.376 | 1.851 | 2.324 | 82.988 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.034 | 16433 | 0 | 3274.124 | 0.918 | 1.666 | 40.974 | 72.758 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 11350 | 0 | 2269.383 | 2.0 | 3.265 | 4.34 | 110.855 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4657 | 0 | 930.494 | 5.317 | 6.397 | 7.002 | 87.965 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 11182 | 0 | 2235.738 | 2.023 | 3.348 | 4.999 | 87.895 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 11469 | 0 | 2293.144 | 1.957 | 3.338 | 4.704 | 87.707 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8032 | 0 | 1605.719 | 2.743 | 4.889 | 13.838 | 126.648 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2694 | 0 | 537.975 | 9.231 | 10.865 | 11.5 | 86.063 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 8157 | 0 | 1630.048 | 2.686 | 4.863 | 13.654 | 84.52 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8167 | 0 | 1632.571 | 2.651 | 4.837 | 13.89 | 84.52 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5071 | 0 | 1013.494 | 4.492 | 6.928 | 17.803 | 133.266 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.164 | 1491 | 0 | 297.312 | 16.735 | 19.133 | 20.429 | 84.516 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5189 | 0 | 1037.09 | 4.336 | 7.022 | 17.761 | 87.344 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5576 | 0 | 1114.035 | 3.998 | 6.531 | 17.337 | 83.84 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.01 | 3285 | 0 | 656.42 | 7.402 | 11.675 | 14.139 | 123.191 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.474 | 6.361 | 1000 | 0 | 154.463 | 31.947 | 37.315 | 39.66 | 91.816 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.005 | 3447 | 0 | 688.264 | 7.16 | 8.479 | 9.136 | 84.738 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3826 | 0 | 764.404 | 6.373 | 7.813 | 8.856 | 84.926 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.987 | 51.051 | 360 | 0 | 7.061 | 2548.207 | 2582.187 | 2597.699 | 106.512 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.98 | 34.031 | 240 | 0 | 7.063 | 1697.915 | 1723.777 | 1739.45 | 107.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.487 | 25.528 | 180 | 0 | 7.063 | 1274.058 | 1294.433 | 1299.983 | 107.086 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.992 | 17.024 | 120 | 0 | 7.062 | 850.176 | 865.501 | 875.359 | 107.152 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.272 | 14.29 | 100 | 0 | 7.007 | 814.392 | 852.127 | 853.571 | 107.156 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.491 | 8.507 | 60 | 0 | 7.066 | 424.578 | 429.643 | 436.302 | 107.156 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.654 | 5.657 | 40 | 0 | 7.074 | 282.497 | 286.335 | 289.813 | 107.156 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3540 | 0 | 707.864 | 1.389 | 1.516 | 1.781 | 121.617 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.003 | 958 | 0 | 191.531 | 5.174 | 5.372 | 5.665 | 123.895 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.0 | 487 | 0 | 97.35 | 10.227 | 10.42 | 10.558 | 126.5 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.05 | 2.022 | 100 | 0 | 19.803 | 50.444 | 50.639 | 50.954 | 126.563 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.014 | 50 | 0 | 9.935 | 100.581 | 100.774 | 100.902 | 126.563 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.009 | 25 | 0 | 4.981 | 200.645 | 200.869 | 201.1 | 126.563 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24202 | 0 | 4839.649 | 0.98 | 1.395 | 1.672 | 65.738 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23492 | 0 | 4697.605 | 1.01 | 1.443 | 1.73 | 71.98 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23816 | 0 | 4762.579 | 0.993 | 1.434 | 1.719 | 77.125 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23704 | 0 | 4740.217 | 0.997 | 1.462 | 1.773 | 77.676 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23587 | 0 | 4716.555 | 1.003 | 1.442 | 1.775 | 81.172 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20203 | 0 | 4039.905 | 1.179 | 1.67 | 2.017 | 81.48 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23703 | 0 | 4739.963 | 0.995 | 1.455 | 1.834 | 81.508 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23108 | 0 | 4620.761 | 1.022 | 1.502 | 1.888 | 83.328 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17480 | 0 | 3495.263 | 1.376 | 1.87 | 2.233 | 113.762 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8871 | 0 | 1773.478 | 2.75 | 3.481 | 3.879 | 99.902 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16810 | 0 | 3361.348 | 1.429 | 1.93 | 2.287 | 114.832 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.031 | 16510 | 0 | 3289.26 | 0.789 | 1.559 | 41.04 | 103.207 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10894 | 0 | 2178.118 | 2.028 | 3.67 | 5.211 | 122.012 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4622 | 0 | 923.6 | 5.362 | 6.466 | 6.999 | 120.188 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11269 | 0 | 2252.994 | 1.971 | 3.269 | 4.966 | 114.816 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11280 | 0 | 2255.311 | 1.974 | 3.402 | 4.806 | 115.426 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8125 | 0 | 1624.304 | 2.741 | 4.682 | 6.646 | 175.523 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2713 | 0 | 541.668 | 9.139 | 10.882 | 11.667 | 144.172 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8370 | 0 | 1673.275 | 2.6 | 4.842 | 13.256 | 127.965 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8154 | 0 | 1630.161 | 2.696 | 4.763 | 6.581 | 119.445 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5230 | 0 | 1045.133 | 4.342 | 6.775 | 18.17 | 183.176 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.014 | 3.167 | 1499 | 0 | 298.962 | 16.609 | 19.43 | 20.953 | 160.016 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5494 | 0 | 1097.791 | 4.102 | 6.263 | 18.078 | 144.488 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5848 | 0 | 1168.446 | 3.836 | 5.584 | 17.309 | 121.516 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3237 | 0 | 646.569 | 7.5 | 11.877 | 13.61 | 160.547 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.414 | 6.017 | 1000 | 0 | 155.914 | 31.54 | 36.827 | 39.272 | 165.816 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3370 | 0 | 673.259 | 7.27 | 9.008 | 10.087 | 158.281 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3693 | 0 | 737.713 | 6.624 | 8.227 | 9.164 | 123.418 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.983 | 51.047 | 360 | 0 | 7.061 | 2547.167 | 2580.806 | 2592.855 | 140.461 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.975 | 34.049 | 240 | 0 | 7.064 | 1697.166 | 1724.705 | 1734.328 | 153.102 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.485 | 25.523 | 180 | 0 | 7.063 | 1273.352 | 1291.99 | 1301.137 | 153.172 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.984 | 17.017 | 120 | 0 | 7.066 | 848.393 | 870.431 | 880.814 | 153.238 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.177 | 14.232 | 100 | 0 | 7.054 | 816.095 | 853.622 | 857.444 | 153.242 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.505 | 8.52 | 60 | 0 | 7.054 | 424.797 | 435.99 | 439.968 | 153.242 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.659 | 5.657 | 40 | 0 | 7.069 | 282.955 | 289.03 | 292.396 | 158.305 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3534 | 0 | 706.783 | 1.391 | 1.501 | 1.663 | 173.555 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.004 | 957 | 0 | 191.26 | 5.184 | 5.356 | 5.593 | 178.016 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.004 | 487 | 0 | 97.281 | 10.235 | 10.437 | 10.539 | 178.02 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.05 | 2.022 | 100 | 0 | 19.802 | 50.431 | 50.655 | 50.864 | 178.02 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.012 | 50 | 0 | 9.937 | 100.55 | 100.741 | 100.843 | 178.02 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.021 | 2.007 | 25 | 0 | 4.98 | 200.694 | 200.892 | 201.668 | 178.02 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23356 | 0 | 4670.428 | 1.015 | 1.452 | 1.753 | 69.184 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22938 | 0 | 4586.971 | 1.036 | 1.485 | 1.802 | 70.027 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23464 | 0 | 4691.448 | 1.007 | 1.467 | 1.813 | 69.711 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22912 | 0 | 4581.472 | 1.033 | 1.51 | 1.873 | 69.645 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23062 | 0 | 4611.741 | 1.025 | 1.482 | 1.878 | 71.688 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19533 | 0 | 3905.892 | 1.222 | 1.727 | 2.117 | 71.754 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22588 | 0 | 4516.672 | 1.043 | 1.545 | 1.974 | 71.762 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22495 | 0 | 4498.333 | 1.05 | 1.542 | 2.003 | 72.93 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16937 | 0 | 3386.702 | 1.422 | 1.902 | 2.234 | 85.918 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8588 | 0 | 1716.935 | 2.85 | 3.606 | 4.073 | 78.816 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16932 | 0 | 3385.333 | 1.415 | 1.924 | 2.319 | 85.102 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.034 | 16248 | 0 | 3237.1 | 0.786 | 1.645 | 41.015 | 74.586 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10782 | 0 | 2155.798 | 2.091 | 3.426 | 4.814 | 111.004 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4568 | 0 | 912.79 | 5.421 | 6.501 | 7.096 | 86.695 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10833 | 0 | 2166.003 | 2.049 | 3.473 | 5.351 | 77.848 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10995 | 0 | 2198.396 | 2.006 | 3.448 | 5.151 | 77.285 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7737 | 0 | 1546.662 | 2.863 | 4.769 | 16.409 | 140.953 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2644 | 0 | 527.959 | 9.361 | 11.119 | 11.842 | 117.738 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7980 | 0 | 1595.287 | 2.757 | 4.637 | 15.909 | 111.773 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8080 | 0 | 1615.441 | 2.704 | 4.506 | 15.864 | 111.773 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5018 | 0 | 1002.88 | 4.51 | 7.105 | 19.609 | 162.051 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.14 | 1474 | 0 | 293.893 | 16.836 | 19.565 | 21.047 | 121.344 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.003 | 5354 | 0 | 1069.617 | 4.198 | 6.5 | 19.215 | 121.48 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5384 | 0 | 1075.959 | 4.047 | 6.985 | 19.586 | 121.48 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3300 | 0 | 659.168 | 7.454 | 9.239 | 10.399 | 142.73 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.467 | 6.081 | 1000 | 0 | 154.64 | 32.101 | 37.451 | 39.512 | 133.711 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 3441 | 0 | 687.389 | 7.091 | 8.894 | 10.009 | 129.98 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3706 | 0 | 740.113 | 6.592 | 8.148 | 9.215 | 129.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.976 | 51.073 | 360 | 0 | 7.062 | 2548.788 | 2570.636 | 2579.666 | 145.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.988 | 34.066 | 240 | 0 | 7.061 | 1699.714 | 1715.476 | 1725.267 | 151.859 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.484 | 25.523 | 180 | 0 | 7.063 | 1274.287 | 1295.121 | 1300.699 | 152.617 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.998 | 17.005 | 120 | 0 | 7.06 | 849.586 | 866.958 | 871.891 | 152.684 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.224 | 14.248 | 100 | 0 | 7.03 | 790.629 | 853.747 | 861.905 | 152.684 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.5 | 8.506 | 60 | 0 | 7.059 | 425.136 | 437.75 | 445.792 | 152.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.658 | 5.661 | 40 | 0 | 7.07 | 282.621 | 287.404 | 291.646 | 152.688 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3535 | 0 | 706.852 | 1.39 | 1.503 | 1.697 | 154.0 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.003 | 958 | 0 | 191.469 | 5.18 | 5.344 | 5.713 | 154.0 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.007 | 487 | 0 | 97.228 | 10.225 | 10.442 | 10.609 | 154.0 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.021 | 100 | 0 | 19.81 | 50.419 | 50.653 | 50.724 | 154.063 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.014 | 50 | 0 | 9.936 | 100.576 | 100.736 | 100.809 | 154.066 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.008 | 25 | 0 | 4.982 | 200.618 | 200.834 | 201.028 | 154.066 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.112 | 1000 | 0 | 62.047 | 40.987 | 41.975 | 42.251 | 29.852 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.094 | 1000 | 0 | 62.048 | 40.991 | 41.983 | 42.462 | 30.18 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.092 | 1000 | 0 | 62.085 | 40.988 | 41.965 | 42.274 | 30.32 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.083 | 1000 | 0 | 62.064 | 40.987 | 41.974 | 42.227 | 30.402 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.085 | 1000 | 0 | 62.05 | 40.988 | 41.939 | 42.338 | 30.469 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.084 | 1000 | 0 | 62.075 | 40.987 | 41.956 | 42.135 | 30.469 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.083 | 1000 | 0 | 62.099 | 40.986 | 41.934 | 42.039 | 30.492 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.082 | 1000 | 0 | 62.073 | 40.988 | 41.981 | 42.127 | 31.059 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.955 | 15.05 | 1000 | 0 | 66.866 | 40.978 | 41.981 | 42.175 | 31.059 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.366 | 15.451 | 1000 | 0 | 65.077 | 40.981 | 41.99 | 42.125 | 31.07 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16141 | 0 | 3227.438 | 0.878 | 1.464 | 3.69 | 31.473 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.484 | 15.545 | 1000 | 0 | 64.584 | 40.979 | 41.988 | 42.171 | 36.387 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.5 | 11.657 | 1000 | 0 | 117.648 | 40.942 | 41.979 | 42.863 | 36.387 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.462 | 10.952 | 1000 | 0 | 87.244 | 40.963 | 41.993 | 43.034 | 36.387 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 10598 | 0 | 2119.015 | 1.248 | 2.104 | 41.449 | 36.387 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.171 | 11.175 | 1000 | 0 | 109.037 | 40.985 | 42.377 | 43.613 | 42.492 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.722 | 11.363 | 1000 | 0 | 93.267 | 41.294 | 42.402 | 43.706 | 40.594 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.037 | 9.093 | 1000 | 0 | 110.655 | 40.987 | 42.702 | 44.046 | 40.594 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.003 | 7498 | 0 | 1497.986 | 1.707 | 3.098 | 18.648 | 40.594 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.335 | 13.509 | 1000 | 0 | 81.071 | 41.961 | 43.01 | 44.287 | 48.395 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.485 | 10.794 | 1000 | 0 | 87.07 | 41.962 | 43.53 | 44.995 | 48.395 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.48 | 12.72 | 1000 | 0 | 87.105 | 41.974 | 43.89 | 45.899 | 46.422 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4827 | 0 | 964.711 | 2.694 | 5.398 | 19.837 | 48.871 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.429 | 14.583 | 1000 | 0 | 74.467 | 43.023 | 45.678 | 47.229 | 53.359 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.422 | 13.266 | 1000 | 0 | 87.548 | 43.005 | 46.269 | 48.155 | 52.621 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.932 | 13.257 | 1000 | 0 | 83.811 | 42.985 | 46.243 | 49.257 | 52.621 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.008 | 3268 | 0 | 652.659 | 4.423 | 6.308 | 12.843 | 58.633 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.987 | 15.238 | 1000 | 0 | 66.725 | 45.322 | 50.166 | 58.049 | 81.625 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.015 | 28.783 | 363 | 0 | 12.511 | 241.825 | 242.89 | 19618.885 | 82.109 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.414 | 19.179 | 243 | 0 | 12.517 | 241.687 | 242.989 | 12804.52 | 82.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.629 | 14.383 | 183 | 0 | 12.51 | 241.885 | 242.707 | 10031.47 | 82.141 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.593 | 123 | 0 | 12.517 | 241.437 | 242.747 | 5233.673 | 82.145 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.585 | 103 | 0 | 10.485 | 241.575 | 242.488 | 5131.111 | 82.145 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.799 | 63 | 0 | 12.51 | 241.64 | 242.381 | 242.559 | 82.145 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.793 | 42 | 0 | 8.344 | 241.534 | 242.21 | 242.265 | 82.145 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.02 | 122 | 0 | 24.342 | 41.976 | 42.856 | 43.045 | 82.164 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.03 | 112 | 0 | 22.263 | 45.963 | 46.115 | 46.355 | 82.191 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.038 | 98 | 0 | 19.546 | 51.814 | 52.06 | 52.246 | 82.227 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.066 | 55 | 0 | 10.989 | 91.928 | 92.101 | 92.499 | 82.238 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.079 | 36 | 0 | 7.133 | 140.985 | 141.997 | 142.627 | 82.238 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.38 | 21 | 0 | 4.17 | 241.826 | 242.096 | 242.257 | 82.238 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.105 | 1000 | 0 | 62.066 | 40.989 | 41.981 | 42.223 | 29.859 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.096 | 1000 | 0 | 62.097 | 40.983 | 41.929 | 42.162 | 30.078 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.094 | 1000 | 0 | 62.046 | 40.989 | 41.981 | 42.163 | 30.336 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.089 | 1000 | 0 | 62.029 | 40.986 | 42.003 | 42.269 | 30.48 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.09 | 1000 | 0 | 62.076 | 40.985 | 41.985 | 42.133 | 30.531 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.095 | 1000 | 0 | 62.034 | 40.989 | 41.987 | 42.465 | 30.551 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.082 | 1000 | 0 | 62.099 | 40.985 | 41.978 | 42.091 | 30.559 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.097 | 1000 | 0 | 62.063 | 40.99 | 41.965 | 42.426 | 30.871 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.003 | 14.566 | 1000 | 0 | 66.655 | 40.982 | 41.977 | 42.241 | 30.926 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.088 | 15.657 | 1000 | 0 | 66.278 | 40.98 | 41.982 | 42.292 | 30.957 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 15491 | 0 | 3097.605 | 0.913 | 1.56 | 4.277 | 31.457 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.374 | 15.353 | 1000 | 0 | 65.043 | 40.98 | 41.98 | 42.1 | 36.539 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.47 | 9.232 | 1000 | 0 | 105.595 | 40.945 | 41.979 | 42.496 | 36.539 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.102 | 12.058 | 1000 | 0 | 90.071 | 40.964 | 41.976 | 42.737 | 36.539 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.159 | 2.002 | 10905 | 0 | 2113.913 | 1.214 | 2.095 | 41.722 | 36.816 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.409 | 10.986 | 1000 | 0 | 106.287 | 40.966 | 42.04 | 42.997 | 41.762 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.431 | 9.699 | 1001 | 0 | 106.138 | 40.976 | 42.586 | 43.899 | 41.762 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.495 | 8.631 | 1000 | 0 | 117.72 | 41.022 | 42.65 | 43.957 | 41.762 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 7702 | 0 | 1539.338 | 1.664 | 2.89 | 32.33 | 42.309 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.728 | 13.177 | 1000 | 0 | 85.269 | 41.953 | 42.947 | 44.275 | 46.195 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.251 | 11.153 | 1000 | 0 | 81.626 | 41.97 | 43.129 | 45.26 | 44.0 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.483 | 12.154 | 1000 | 0 | 95.39 | 41.943 | 43.396 | 45.043 | 44.0 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 5131 | 0 | 1025.548 | 2.543 | 4.792 | 20.194 | 47.086 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.88 | 14.61 | 1000 | 0 | 72.046 | 42.999 | 45.288 | 47.76 | 53.105 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.9 | 12.968 | 1000 | 0 | 91.744 | 42.941 | 46.212 | 49.316 | 53.105 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.233 | 12.53 | 1000 | 0 | 81.743 | 43.353 | 45.999 | 48.281 | 53.105 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.007 | 3198 | 0 | 638.496 | 4.419 | 6.841 | 23.64 | 59.117 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.064 | 15.757 | 1000 | 0 | 66.385 | 44.982 | 48.285 | 53.992 | 65.367 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.002 | 28.767 | 363 | 0 | 12.517 | 241.724 | 242.833 | 19610.864 | 65.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.411 | 19.179 | 243 | 0 | 12.519 | 241.627 | 242.848 | 12802.364 | 65.785 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.617 | 14.383 | 183 | 0 | 12.52 | 241.644 | 242.571 | 10024.665 | 65.805 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.591 | 123 | 0 | 12.506 | 241.813 | 242.514 | 5238.881 | 65.805 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.581 | 103 | 0 | 10.476 | 241.819 | 242.416 | 5136.621 | 65.805 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.794 | 63 | 0 | 12.519 | 241.312 | 242.302 | 242.854 | 65.805 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.789 | 42 | 0 | 8.34 | 241.724 | 242.275 | 242.582 | 65.805 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.019 | 122 | 0 | 24.343 | 41.979 | 42.977 | 43.037 | 65.809 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.029 | 112 | 0 | 22.26 | 45.976 | 46.271 | 46.996 | 65.813 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.02 | 98 | 0 | 19.512 | 51.914 | 52.243 | 52.968 | 65.832 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.072 | 55 | 0 | 10.967 | 91.945 | 92.247 | 92.602 | 65.84 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.063 | 2.089 | 36 | 0 | 7.11 | 141.931 | 142.163 | 142.695 | 65.84 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.38 | 21 | 0 | 4.167 | 241.97 | 242.013 | 242.174 | 65.84 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.12 | 1000 | 0 | 62.062 | 40.991 | 41.966 | 42.305 | 29.898 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.097 | 1000 | 0 | 62.093 | 40.986 | 41.975 | 42.187 | 30.027 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.092 | 1000 | 0 | 62.049 | 40.991 | 41.975 | 42.193 | 30.215 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.087 | 1000 | 0 | 62.071 | 40.985 | 41.958 | 42.199 | 30.473 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.084 | 1000 | 0 | 62.068 | 40.987 | 41.966 | 42.248 | 30.52 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.081 | 1000 | 0 | 62.071 | 40.989 | 41.966 | 42.275 | 30.527 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.087 | 1000 | 0 | 62.093 | 40.988 | 41.952 | 42.168 | 30.531 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.088 | 1000 | 0 | 62.098 | 40.988 | 41.966 | 42.249 | 31.086 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.531 | 14.728 | 1000 | 0 | 64.389 | 40.983 | 41.976 | 42.07 | 31.086 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.317 | 15.087 | 1000 | 0 | 65.287 | 40.98 | 41.994 | 42.208 | 31.121 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16751 | 0 | 3349.327 | 0.841 | 1.411 | 5.168 | 31.48 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.32 | 15.421 | 1000 | 0 | 65.275 | 40.981 | 41.98 | 42.159 | 36.594 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.15 | 11.47 | 1000 | 0 | 98.525 | 40.956 | 41.978 | 42.863 | 36.594 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.17 | 12.186 | 1000 | 0 | 89.525 | 40.96 | 41.969 | 42.666 | 36.594 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 10971 | 0 | 2193.071 | 1.18 | 2.107 | 41.335 | 36.719 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.668 | 9.533 | 1000 | 0 | 93.739 | 40.981 | 42.081 | 42.94 | 41.984 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.08 | 6.678 | 1001 | 0 | 110.246 | 40.972 | 42.316 | 43.76 | 41.984 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.073 | 8.395 | 1000 | 0 | 99.277 | 41.013 | 42.341 | 43.514 | 41.984 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 7579 | 0 | 1514.944 | 1.713 | 3.111 | 19.343 | 41.984 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.909 | 11.897 | 1000 | 0 | 83.97 | 41.959 | 42.975 | 44.012 | 47.375 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.494 | 11.363 | 1000 | 0 | 95.296 | 41.933 | 43.423 | 45.328 | 47.375 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.604 | 11.532 | 1000 | 0 | 94.308 | 41.958 | 43.42 | 45.242 | 47.375 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.004 | 4698 | 0 | 938.554 | 2.735 | 5.416 | 22.384 | 47.66 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.609 | 14.471 | 1000 | 0 | 73.482 | 42.973 | 45.017 | 51.841 | 54.293 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.167 | 13.147 | 1000 | 0 | 82.189 | 42.998 | 45.893 | 49.114 | 54.293 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.584 | 12.715 | 1000 | 0 | 79.466 | 43.252 | 45.958 | 48.268 | 54.305 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.008 | 3163 | 0 | 631.72 | 4.561 | 6.61 | 21.457 | 60.316 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.913 | 14.942 | 1000 | 0 | 67.054 | 45.366 | 49.182 | 57.739 | 85.809 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.016 | 28.782 | 363 | 0 | 12.51 | 241.843 | 242.898 | 19621.536 | 86.242 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.415 | 19.173 | 243 | 0 | 12.516 | 241.732 | 242.962 | 12805.741 | 86.273 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.385 | 183 | 0 | 12.513 | 241.744 | 242.792 | 10024.9 | 86.281 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.592 | 123 | 0 | 12.511 | 241.859 | 242.941 | 5229.539 | 86.285 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.586 | 103 | 0 | 10.478 | 241.767 | 242.429 | 5132.469 | 86.289 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.797 | 63 | 0 | 12.505 | 241.803 | 242.315 | 242.617 | 86.293 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 4.79 | 42 | 0 | 8.35 | 241.16 | 242.143 | 242.241 | 86.293 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.019 | 122 | 0 | 24.352 | 41.972 | 42.78 | 42.967 | 86.324 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.029 | 112 | 0 | 22.254 | 45.975 | 46.818 | 46.986 | 86.324 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.031 | 98 | 0 | 19.507 | 51.929 | 52.079 | 52.91 | 86.34 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.066 | 55 | 0 | 10.992 | 91.918 | 92.129 | 92.856 | 86.34 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.057 | 2.08 | 36 | 0 | 7.119 | 141.684 | 142.099 | 142.612 | 86.363 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.379 | 21 | 0 | 4.171 | 241.911 | 242.057 | 242.168 | 86.367 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23138 | 0 | 4627.03 | 1.022 | 1.435 | 1.821 | 71.168 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22618 | 0 | 4522.793 | 1.055 | 1.42 | 1.846 | 71.426 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22734 | 0 | 4546.055 | 1.039 | 1.494 | 1.87 | 71.211 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22784 | 0 | 4555.902 | 1.044 | 1.442 | 1.805 | 71.23 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22711 | 0 | 4541.614 | 1.044 | 1.452 | 1.807 | 72.652 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19388 | 0 | 3876.965 | 1.234 | 1.671 | 2.044 | 73.0 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22664 | 0 | 4531.937 | 1.041 | 1.503 | 1.853 | 73.063 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22612 | 0 | 4521.802 | 1.041 | 1.521 | 1.885 | 73.785 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17013 | 0 | 3401.782 | 1.412 | 1.889 | 2.227 | 84.152 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8396 | 0 | 1678.383 | 2.898 | 3.71 | 4.19 | 79.238 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16808 | 0 | 3360.892 | 1.426 | 1.932 | 2.253 | 83.859 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 2.027 | 16125 | 0 | 3215.241 | 0.938 | 1.605 | 41.026 | 77.848 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10422 | 0 | 2083.555 | 2.086 | 3.686 | 5.767 | 118.758 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4657 | 0 | 930.534 | 5.301 | 6.41 | 6.968 | 87.246 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 10800 | 0 | 2159.407 | 2.023 | 3.536 | 5.314 | 83.668 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.002 | 10565 | 0 | 2107.863 | 2.05 | 3.553 | 6.197 | 83.543 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7439 | 0 | 1486.923 | 2.885 | 5.186 | 20.713 | 130.191 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2575 | 0 | 514.163 | 9.686 | 11.287 | 12.055 | 103.07 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7764 | 0 | 1552.129 | 2.721 | 5.113 | 20.188 | 102.332 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7768 | 0 | 1553.023 | 2.694 | 5.011 | 19.892 | 102.402 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 4948 | 0 | 988.976 | 4.449 | 7.654 | 23.718 | 161.496 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 3.307 | 1472 | 0 | 293.663 | 16.984 | 19.402 | 20.272 | 92.758 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.011 | 5286 | 0 | 1056.652 | 4.044 | 7.395 | 23.095 | 96.18 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5370 | 0 | 1073.29 | 3.988 | 7.323 | 23.3 | 96.18 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 3177 | 0 | 634.674 | 7.738 | 9.621 | 10.545 | 100.121 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.567 | 6.022 | 1000 | 0 | 152.286 | 32.84 | 36.726 | 37.849 | 98.805 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3571 | 0 | 713.491 | 6.905 | 8.33 | 9.029 | 97.215 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 3692 | 0 | 737.62 | 6.622 | 8.234 | 9.197 | 97.215 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.182 | 51.211 | 360 | 0 | 7.034 | 2557.98 | 2574.662 | 2580.286 | 118.66 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.105 | 34.123 | 240 | 0 | 7.037 | 1704.275 | 1716.926 | 1723.801 | 120.66 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.592 | 25.595 | 180 | 0 | 7.034 | 1279.103 | 1292.184 | 1296.65 | 128.203 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.05 | 17.059 | 120 | 0 | 7.038 | 852.328 | 861.99 | 863.842 | 128.266 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.261 | 14.258 | 100 | 0 | 7.012 | 827.386 | 851.736 | 858.934 | 131.078 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.535 | 8.532 | 60 | 0 | 7.03 | 426.793 | 432.236 | 434.214 | 131.082 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.701 | 5.696 | 40 | 0 | 7.017 | 284.934 | 286.493 | 287.378 | 131.082 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.0 | 1370 | 0 | 273.9 | 3.614 | 3.904 | 4.139 | 131.832 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.003 | 411 | 0 | 82.06 | 12.155 | 12.644 | 12.825 | 131.832 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.002 | 321 | 0 | 64.119 | 15.589 | 16.022 | 16.203 | 131.832 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.039 | 2.02 | 98 | 0 | 19.447 | 51.346 | 51.957 | 52.047 | 131.965 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.015 | 50 | 0 | 9.938 | 100.542 | 100.709 | 100.782 | 132.344 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.545 | 200.758 | 200.924 | 132.344 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22812 | 0 | 4561.745 | 1.04 | 1.426 | 1.805 | 69.488 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22934 | 0 | 4586.146 | 1.035 | 1.432 | 1.78 | 69.5 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22915 | 0 | 4582.265 | 1.032 | 1.451 | 1.816 | 69.535 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23243 | 0 | 4647.808 | 1.018 | 1.443 | 1.83 | 69.93 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22215 | 0 | 4442.156 | 1.067 | 1.502 | 1.882 | 71.477 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19022 | 0 | 3803.657 | 1.259 | 1.723 | 2.107 | 71.551 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22390 | 0 | 4477.336 | 1.058 | 1.48 | 1.867 | 72.941 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22269 | 0 | 4453.085 | 1.065 | 1.507 | 1.91 | 73.977 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16870 | 0 | 3372.984 | 1.427 | 1.89 | 2.165 | 82.98 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8628 | 0 | 1724.827 | 2.828 | 3.576 | 3.925 | 77.68 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16801 | 0 | 3359.497 | 1.431 | 1.899 | 2.239 | 82.16 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.033 | 16060 | 0 | 3207.927 | 0.914 | 1.624 | 41.013 | 75.402 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10335 | 0 | 2066.285 | 2.115 | 3.675 | 6.137 | 109.336 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4583 | 0 | 915.628 | 5.368 | 6.562 | 7.19 | 84.938 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10627 | 0 | 2124.683 | 2.043 | 3.6 | 5.513 | 83.109 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10796 | 0 | 2158.546 | 2.026 | 3.378 | 5.108 | 83.109 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7672 | 0 | 1533.806 | 2.814 | 4.773 | 21.417 | 123.594 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.009 | 2647 | 0 | 528.356 | 9.374 | 10.984 | 11.727 | 84.707 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 7715 | 0 | 1541.498 | 2.766 | 4.78 | 21.223 | 86.207 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7807 | 0 | 1560.714 | 2.705 | 4.519 | 21.087 | 86.297 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5055 | 0 | 1010.306 | 4.4 | 6.803 | 24.381 | 142.965 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.338 | 1436 | 0 | 286.144 | 17.337 | 20.159 | 21.6 | 88.949 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.007 | 5203 | 0 | 1039.961 | 4.216 | 6.489 | 24.239 | 88.992 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.006 | 5279 | 0 | 1053.537 | 4.099 | 6.499 | 24.585 | 88.992 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3225 | 0 | 644.174 | 7.653 | 9.315 | 10.13 | 98.055 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.668 | 6.471 | 1000 | 0 | 149.975 | 33.118 | 37.409 | 39.289 | 91.195 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3380 | 0 | 675.29 | 7.346 | 8.738 | 9.391 | 90.332 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3724 | 0 | 743.984 | 6.646 | 7.95 | 8.692 | 90.332 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.202 | 51.206 | 360 | 0 | 7.031 | 2559.124 | 2574.806 | 2583.056 | 111.645 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.122 | 34.131 | 240 | 0 | 7.034 | 1705.998 | 1720.434 | 1723.564 | 114.375 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.587 | 25.595 | 180 | 0 | 7.035 | 1279.327 | 1289.206 | 1292.643 | 114.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.061 | 17.063 | 120 | 0 | 7.034 | 852.183 | 862.319 | 864.559 | 114.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.251 | 14.265 | 100 | 0 | 7.017 | 833.993 | 854.666 | 860.612 | 114.5 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.529 | 8.534 | 60 | 0 | 7.035 | 426.304 | 432.957 | 435.09 | 114.5 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.705 | 5.694 | 40 | 0 | 7.012 | 284.99 | 287.623 | 288.915 | 114.504 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.003 | 1376 | 0 | 275.127 | 3.606 | 3.902 | 4.078 | 118.254 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.012 | 410 | 0 | 81.869 | 12.218 | 12.652 | 12.751 | 118.313 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.012 | 322 | 0 | 64.213 | 15.551 | 15.987 | 16.172 | 118.313 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.018 | 98 | 0 | 19.414 | 51.438 | 51.845 | 52.003 | 118.313 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.01 | 50 | 0 | 9.938 | 100.54 | 100.7 | 100.878 | 118.313 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.007 | 25 | 0 | 4.982 | 200.584 | 200.89 | 201.338 | 118.316 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23072 | 0 | 4613.555 | 1.025 | 1.423 | 1.783 | 71.023 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22120 | 0 | 4423.301 | 1.074 | 1.487 | 1.853 | 71.352 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 22673 | 0 | 4533.799 | 1.047 | 1.456 | 1.823 | 71.246 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23002 | 0 | 4599.754 | 1.03 | 1.461 | 1.825 | 71.395 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22247 | 0 | 4448.635 | 1.064 | 1.511 | 1.879 | 73.215 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18772 | 0 | 3753.735 | 1.271 | 1.757 | 2.13 | 73.219 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22366 | 0 | 4472.6 | 1.056 | 1.519 | 1.914 | 73.348 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22477 | 0 | 4494.371 | 1.051 | 1.531 | 1.919 | 74.141 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17047 | 0 | 3408.726 | 1.409 | 1.874 | 2.222 | 95.641 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8569 | 0 | 1712.907 | 2.844 | 3.597 | 4.048 | 82.754 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16796 | 0 | 3358.353 | 1.432 | 1.889 | 2.21 | 94.793 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.003 | 16589 | 0 | 3310.192 | 0.901 | 1.602 | 40.947 | 78.148 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 11079 | 0 | 2214.164 | 2.009 | 3.134 | 4.34 | 107.891 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4707 | 0 | 940.585 | 5.238 | 6.365 | 7.026 | 87.848 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11142 | 0 | 2227.54 | 1.967 | 3.29 | 4.911 | 82.797 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 10982 | 0 | 2194.62 | 2.01 | 3.252 | 4.876 | 82.609 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 7876 | 0 | 1573.685 | 2.785 | 4.245 | 22.16 | 123.176 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2616 | 0 | 522.342 | 9.491 | 11.198 | 11.835 | 91.277 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8056 | 0 | 1610.516 | 2.691 | 4.137 | 21.538 | 84.746 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8026 | 0 | 1604.4 | 2.664 | 4.348 | 21.516 | 84.688 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5094 | 0 | 1018.066 | 4.372 | 6.363 | 25.512 | 121.172 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 3.288 | 1473 | 0 | 293.813 | 16.898 | 19.665 | 20.631 | 91.641 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5241 | 0 | 1047.48 | 4.198 | 6.189 | 24.692 | 85.598 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5605 | 0 | 1120.312 | 3.934 | 5.642 | 24.134 | 85.598 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3109 | 0 | 620.925 | 7.954 | 9.625 | 10.39 | 98.141 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.624 | 6.274 | 1000 | 0 | 150.956 | 32.974 | 37.335 | 39.875 | 96.84 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3416 | 0 | 682.053 | 7.194 | 8.822 | 9.589 | 89.203 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3582 | 0 | 715.643 | 6.79 | 8.455 | 9.252 | 89.203 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.191 | 51.207 | 360 | 0 | 7.033 | 2557.818 | 2574.65 | 2583.653 | 110.324 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.107 | 34.115 | 240 | 0 | 7.037 | 1705.057 | 1718.116 | 1723.42 | 112.949 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.589 | 25.588 | 180 | 0 | 7.034 | 1279.169 | 1289.109 | 1291.635 | 113.016 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.052 | 17.063 | 120 | 0 | 7.037 | 852.493 | 862.266 | 863.048 | 113.957 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.224 | 14.264 | 100 | 0 | 7.03 | 799.746 | 854.954 | 856.636 | 113.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.53 | 8.528 | 60 | 0 | 7.034 | 426.351 | 431.227 | 432.851 | 114.273 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.702 | 5.695 | 40 | 0 | 7.015 | 285.258 | 286.956 | 287.217 | 119.82 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1387 | 0 | 277.339 | 3.582 | 3.819 | 3.986 | 124.988 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.004 | 410 | 0 | 81.981 | 12.214 | 12.622 | 12.752 | 124.988 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.015 | 323 | 0 | 64.413 | 15.5 | 15.923 | 16.015 | 124.988 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.043 | 98 | 0 | 19.531 | 51.11 | 51.651 | 51.774 | 124.988 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.011 | 50 | 0 | 9.949 | 100.432 | 100.617 | 100.869 | 124.988 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.543 | 200.721 | 200.746 | 124.988 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

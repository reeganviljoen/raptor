# Puma vs Raptor Simulation

Run ID: `20260707-143440`

## Environment

- Ruby: `ruby 4.0.5 (2026-05-20 revision 64336ffd0e) +PRISM [aarch64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.122 | 1000 | 0 | 61.954 | 40.981 | 42.008 | 42.786 | 30.188 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.145 | 16.212 | 1000 | 0 | 61.938 | 40.98 | 42.045 | 42.758 | 30.211 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.181 | 16.193 | 1000 | 0 | 61.8 | 40.999 | 42.223 | 42.928 | 30.23 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.336 | 1000 | 0 | 62.001 | 40.983 | 41.992 | 42.87 | 30.277 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.294 | 1000 | 0 | 62.035 | 40.978 | 42.0 | 42.852 | 30.289 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.15 | 16.29 | 1000 | 0 | 61.92 | 40.99 | 42.159 | 42.714 | 30.289 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.154 | 1000 | 0 | 61.985 | 40.981 | 41.997 | 42.571 | 30.289 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.167 | 16.286 | 1000 | 0 | 61.856 | 40.99 | 42.247 | 42.924 | 30.781 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.723 | 12.966 | 1000 | 0 | 67.923 | 40.961 | 41.962 | 42.178 | 30.906 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.313 | 13.984 | 1000 | 0 | 69.864 | 40.961 | 41.953 | 42.181 | 30.961 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 11459 | 0 | 2291.071 | 1.274 | 1.851 | 3.088 | 31.328 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.481 | 14.181 | 1000 | 0 | 69.054 | 40.966 | 41.992 | 42.909 | 37.539 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.77 | 10.162 | 1000 | 0 | 128.707 | 1.881 | 42.182 | 43.501 | 37.539 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.508 | 10.154 | 1000 | 0 | 105.176 | 40.999 | 42.656 | 43.754 | 37.539 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9039 | 0 | 1806.94 | 1.542 | 2.282 | 41.641 | 37.539 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.123 | 10.842 | 1000 | 0 | 82.49 | 41.912 | 42.991 | 43.717 | 49.652 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.463 | 13.643 | 1000 | 0 | 74.279 | 41.937 | 43.106 | 44.446 | 49.652 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.306 | 12.599 | 1000 | 0 | 81.262 | 41.952 | 43.493 | 45.18 | 49.652 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.118 | 6536 | 0 | 1306.406 | 2.032 | 3.214 | 14.534 | 49.652 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.36 | 15.021 | 1000 | 0 | 69.639 | 41.982 | 44.063 | 45.621 | 58.512 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.138 | 14.84 | 1000 | 0 | 66.06 | 42.318 | 44.972 | 49.419 | 58.512 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.618 | 15.4 | 1000 | 0 | 68.407 | 42.553 | 44.174 | 45.968 | 58.512 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.003 | 4847 | 0 | 968.301 | 2.831 | 4.57 | 14.468 | 59.281 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.403 | 16.596 | 1000 | 0 | 64.923 | 43.067 | 46.051 | 47.781 | 64.301 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.838 | 16.305 | 1000 | 0 | 63.14 | 43.946 | 47.323 | 49.966 | 64.02 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.437 | 16.445 | 1000 | 0 | 64.778 | 43.979 | 47.3 | 49.01 | 64.02 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3565 | 0 | 712.192 | 4.113 | 5.18 | 8.424 | 67.93 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.175 | 17.295 | 1000 | 0 | 58.225 | 46.234 | 51.025 | 54.026 | 78.691 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.036 | 28.823 | 363 | 0 | 12.502 | 241.96 | 243.199 | 19624.45 | 78.965 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.44 | 19.212 | 243 | 0 | 12.5 | 241.958 | 243.018 | 12820.257 | 78.984 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.637 | 14.408 | 183 | 0 | 12.503 | 241.961 | 243.07 | 10028.287 | 78.996 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.84 | 9.603 | 123 | 0 | 12.501 | 241.953 | 242.822 | 5238.81 | 79.0 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.6 | 103 | 0 | 10.473 | 241.932 | 242.81 | 5136.958 | 79.008 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 4.806 | 63 | 0 | 12.496 | 241.961 | 242.281 | 243.369 | 79.008 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.799 | 42 | 0 | 8.339 | 241.829 | 242.279 | 242.953 | 79.008 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.018 | 122 | 0 | 24.343 | 41.967 | 42.956 | 43.001 | 79.031 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.026 | 110 | 0 | 21.835 | 46.958 | 47.132 | 48.009 | 79.035 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.023 | 99 | 0 | 19.617 | 50.981 | 52.088 | 52.967 | 79.047 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.066 | 55 | 0 | 10.961 | 91.961 | 92.32 | 92.881 | 79.051 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.069 | 2.086 | 36 | 0 | 7.101 | 141.956 | 142.09 | 142.621 | 79.074 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.381 | 21 | 0 | 4.167 | 241.961 | 242.114 | 242.127 | 79.074 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.154 | 1000 | 0 | 62.074 | 40.979 | 41.961 | 42.278 | 29.395 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.327 | 1000 | 0 | 61.978 | 40.983 | 42.005 | 42.627 | 29.531 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.222 | 1000 | 0 | 62.072 | 40.981 | 41.986 | 42.426 | 29.539 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.094 | 16.246 | 1000 | 0 | 62.135 | 40.98 | 41.887 | 42.543 | 29.637 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.255 | 1000 | 0 | 62.001 | 40.983 | 42.079 | 42.556 | 29.711 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.452 | 1000 | 0 | 61.986 | 40.985 | 42.097 | 42.835 | 29.711 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.409 | 1000 | 0 | 61.981 | 40.981 | 41.993 | 42.754 | 29.711 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.425 | 1000 | 0 | 62.029 | 40.981 | 41.979 | 42.629 | 30.633 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.715 | 14.527 | 1000 | 0 | 67.958 | 40.963 | 41.957 | 42.17 | 30.742 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.113 | 14.256 | 1000 | 0 | 66.17 | 40.966 | 41.955 | 42.118 | 30.742 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 11445 | 0 | 2288.348 | 1.262 | 1.882 | 3.394 | 30.902 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.036 | 13.494 | 1000 | 0 | 66.508 | 40.969 | 41.982 | 42.927 | 39.699 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.094 | 9.029 | 1000 | 0 | 109.963 | 40.939 | 42.186 | 43.221 | 39.699 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.65 | 10.745 | 1000 | 0 | 115.608 | 40.955 | 42.149 | 42.918 | 39.699 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9252 | 0 | 1849.529 | 1.481 | 2.259 | 18.778 | 39.699 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.068 | 13.033 | 1000 | 0 | 76.524 | 41.876 | 42.901 | 43.506 | 49.656 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.846 | 13.585 | 1000 | 0 | 72.225 | 41.951 | 42.988 | 43.792 | 49.656 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.396 | 13.782 | 1000 | 0 | 74.65 | 41.958 | 43.024 | 44.054 | 49.656 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.069 | 7192 | 0 | 1437.743 | 1.885 | 2.93 | 12.736 | 49.656 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.817 | 14.304 | 1000 | 0 | 67.491 | 41.967 | 43.293 | 45.061 | 56.742 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.834 | 15.571 | 1000 | 0 | 67.412 | 41.998 | 44.809 | 46.212 | 56.742 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.664 | 15.048 | 1000 | 0 | 68.195 | 41.988 | 44.197 | 45.262 | 56.742 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5265 | 0 | 1052.228 | 2.579 | 3.967 | 14.56 | 57.738 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.987 | 15.961 | 1000 | 0 | 62.552 | 42.987 | 45.798 | 46.954 | 66.031 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.536 | 15.952 | 1000 | 0 | 64.366 | 43.972 | 48.066 | 50.031 | 62.934 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.805 | 15.604 | 1000 | 0 | 63.271 | 43.976 | 47.979 | 49.499 | 62.934 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 3610 | 0 | 721.178 | 4.051 | 5.18 | 8.603 | 68.945 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.87 | 17.347 | 1000 | 0 | 59.277 | 45.889 | 49.656 | 53.347 | 76.016 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.044 | 28.811 | 363 | 0 | 12.498 | 241.974 | 243.193 | 19633.345 | 73.496 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.445 | 19.205 | 243 | 0 | 12.497 | 241.981 | 243.099 | 12820.568 | 73.543 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.641 | 14.402 | 183 | 0 | 12.499 | 241.957 | 243.131 | 10034.753 | 73.547 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.844 | 9.6 | 123 | 0 | 12.495 | 241.988 | 242.959 | 5237.308 | 73.551 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.839 | 9.597 | 103 | 0 | 10.469 | 241.957 | 242.575 | 5136.784 | 73.559 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 4.805 | 63 | 0 | 12.493 | 241.926 | 242.75 | 243.288 | 73.57 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.803 | 42 | 0 | 8.338 | 241.924 | 242.192 | 242.54 | 73.57 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.362 | 41.96 | 42.153 | 42.958 | 73.57 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.016 | 109 | 0 | 21.771 | 46.964 | 47.943 | 47.986 | 73.578 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.018 | 98 | 0 | 19.587 | 51.029 | 51.994 | 52.089 | 73.594 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.066 | 55 | 0 | 10.948 | 91.959 | 92.951 | 92.963 | 73.598 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.07 | 2.087 | 36 | 0 | 7.101 | 141.95 | 142.951 | 143.025 | 73.598 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.382 | 21 | 0 | 4.172 | 241.754 | 242.023 | 242.679 | 73.598 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.155 | 16.265 | 1000 | 0 | 61.901 | 40.983 | 42.159 | 42.596 | 29.121 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.16 | 16.386 | 1000 | 0 | 61.883 | 40.987 | 42.151 | 42.881 | 29.145 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.146 | 16.39 | 1000 | 0 | 61.936 | 40.981 | 42.014 | 42.683 | 29.48 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.156 | 16.267 | 1000 | 0 | 61.897 | 40.988 | 42.181 | 42.887 | 29.539 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.172 | 16.352 | 1000 | 0 | 61.837 | 40.987 | 42.269 | 43.172 | 29.551 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.398 | 1000 | 0 | 62.007 | 40.977 | 41.982 | 42.915 | 29.586 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.299 | 1000 | 0 | 62.037 | 40.973 | 41.982 | 42.401 | 29.586 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.199 | 16.368 | 1000 | 0 | 61.733 | 41.024 | 42.363 | 42.888 | 30.594 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.91 | 13.09 | 1000 | 0 | 67.068 | 40.961 | 41.967 | 42.459 | 30.594 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.967 | 14.124 | 1000 | 0 | 66.815 | 40.96 | 41.957 | 42.695 | 30.637 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 11628 | 0 | 2324.641 | 1.259 | 1.81 | 3.181 | 30.891 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.927 | 13.08 | 1000 | 0 | 66.995 | 40.967 | 41.983 | 42.904 | 39.109 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.173 | 10.602 | 1000 | 0 | 89.501 | 40.97 | 42.139 | 43.277 | 39.109 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.375 | 10.463 | 1000 | 0 | 96.387 | 40.999 | 42.472 | 43.255 | 39.109 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 8881 | 0 | 1774.752 | 1.558 | 2.359 | 13.611 | 39.109 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.36 | 12.569 | 1000 | 0 | 96.529 | 41.819 | 42.934 | 43.791 | 47.668 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.19 | 13.432 | 1000 | 0 | 75.815 | 41.938 | 42.953 | 43.987 | 47.699 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.075 | 13.747 | 1000 | 0 | 76.481 | 41.954 | 42.998 | 44.03 | 47.699 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6986 | 0 | 1396.413 | 1.931 | 3.006 | 29.048 | 47.699 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.953 | 14.923 | 1000 | 0 | 71.667 | 41.966 | 43.205 | 44.943 | 52.563 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.299 | 15.577 | 1000 | 0 | 69.937 | 41.993 | 44.767 | 47.296 | 52.563 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.13 | 15.464 | 1000 | 0 | 66.094 | 42.196 | 44.993 | 46.661 | 48.031 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 5067 | 0 | 1012.374 | 2.678 | 4.44 | 15.6 | 49.879 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.298 | 16.248 | 1000 | 0 | 65.369 | 42.991 | 45.36 | 47.912 | 65.895 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.292 | 16.185 | 1000 | 0 | 65.394 | 43.969 | 47.158 | 49.911 | 65.895 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.059 | 16.455 | 1000 | 0 | 66.404 | 43.986 | 47.523 | 49.462 | 65.895 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.206 | 3372 | 0 | 673.472 | 4.361 | 5.739 | 10.608 | 67.898 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.947 | 17.308 | 1000 | 0 | 59.007 | 45.91 | 49.996 | 52.225 | 75.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.044 | 28.815 | 363 | 0 | 12.498 | 241.983 | 243.114 | 19629.534 | 76.063 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.443 | 19.209 | 243 | 0 | 12.498 | 241.971 | 243.153 | 12820.886 | 76.082 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.64 | 14.407 | 183 | 0 | 12.5 | 241.937 | 242.99 | 10031.507 | 76.113 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.844 | 9.605 | 123 | 0 | 12.495 | 241.975 | 242.871 | 5240.274 | 76.117 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.602 | 103 | 0 | 10.474 | 241.813 | 242.966 | 5134.098 | 76.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 4.805 | 63 | 0 | 12.487 | 241.979 | 243.002 | 243.234 | 76.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.807 | 42 | 0 | 8.335 | 241.86 | 242.843 | 243.152 | 76.137 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.361 | 41.964 | 42.362 | 42.983 | 76.156 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.021 | 109 | 0 | 21.776 | 46.959 | 47.898 | 48.003 | 76.16 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.021 | 99 | 0 | 19.621 | 50.983 | 51.978 | 52.016 | 76.164 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.075 | 55 | 0 | 10.955 | 91.957 | 92.106 | 92.894 | 76.184 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.069 | 2.091 | 36 | 0 | 7.101 | 141.938 | 142.087 | 142.621 | 76.188 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.381 | 21 | 0 | 4.168 | 241.956 | 242.123 | 242.127 | 76.188 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16386 | 0 | 3276.389 | 1.442 | 2.103 | 2.71 | 94.688 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16308 | 0 | 3260.418 | 1.462 | 2.008 | 2.496 | 96.258 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16680 | 0 | 3334.806 | 1.433 | 1.939 | 2.398 | 96.301 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15169 | 0 | 3033.027 | 1.57 | 2.129 | 2.84 | 96.336 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16503 | 0 | 3299.753 | 1.457 | 1.933 | 2.433 | 103.551 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14552 | 0 | 2909.509 | 1.654 | 2.183 | 2.598 | 105.016 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16223 | 0 | 3243.624 | 1.466 | 2.043 | 2.578 | 105.582 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15018 | 0 | 3002.865 | 1.592 | 2.109 | 2.708 | 114.195 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12509 | 0 | 2500.878 | 1.926 | 2.499 | 2.969 | 133.715 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 7219 | 0 | 1442.625 | 3.394 | 4.161 | 4.616 | 133.02 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12744 | 0 | 2547.873 | 1.886 | 2.416 | 2.738 | 132.672 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12848 | 0 | 2568.87 | 1.87 | 2.415 | 2.802 | 114.301 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9867 | 0 | 1972.16 | 2.346 | 3.392 | 4.462 | 143.18 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4131 | 0 | 825.228 | 6.048 | 6.764 | 7.288 | 136.18 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 10201 | 0 | 2038.13 | 2.235 | 3.242 | 4.325 | 118.184 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10011 | 0 | 2001.423 | 2.28 | 3.292 | 4.078 | 117.082 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7662 | 0 | 1531.488 | 3.035 | 4.371 | 14.601 | 186.199 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.131 | 2374 | 0 | 473.857 | 10.607 | 11.462 | 11.896 | 145.016 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8010 | 0 | 1601.193 | 2.805 | 4.089 | 14.473 | 136.18 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7866 | 0 | 1572.31 | 2.829 | 4.298 | 14.806 | 136.539 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5143 | 0 | 1027.856 | 4.617 | 6.327 | 17.146 | 181.852 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.924 | 1271 | 0 | 253.361 | 19.692 | 20.943 | 21.546 | 166.813 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5275 | 0 | 1054.241 | 4.23 | 6.081 | 19.112 | 164.773 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5019 | 0 | 1002.987 | 4.465 | 6.285 | 18.824 | 134.914 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.006 | 2969 | 0 | 592.768 | 8.401 | 11.382 | 12.418 | 163.711 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.451 | 7.343 | 1000 | 0 | 134.212 | 37.154 | 37.981 | 38.436 | 177.102 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3503 | 0 | 699.72 | 7.019 | 8.185 | 8.96 | 156.953 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3416 | 0 | 682.341 | 7.137 | 8.497 | 9.431 | 156.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.901 | 51.083 | 360 | 0 | 7.073 | 2544.91 | 2548.935 | 2549.841 | 178.961 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.931 | 34.057 | 240 | 0 | 7.073 | 1695.615 | 1701.463 | 1702.275 | 196.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.431 | 25.51 | 180 | 0 | 7.078 | 1270.732 | 1277.677 | 1279.362 | 196.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.973 | 17.017 | 120 | 0 | 7.07 | 848.594 | 850.664 | 851.425 | 196.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.191 | 14.235 | 100 | 0 | 7.047 | 833.185 | 842.241 | 843.405 | 196.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.486 | 8.506 | 60 | 0 | 7.071 | 424.136 | 425.792 | 428.637 | 195.043 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.652 | 5.653 | 40 | 0 | 7.077 | 282.398 | 283.872 | 284.739 | 195.043 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3711 | 0 | 742.025 | 1.307 | 1.434 | 1.6 | 215.715 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.003 | 939 | 0 | 187.617 | 5.282 | 5.426 | 5.527 | 215.715 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.005 | 483 | 0 | 96.509 | 10.309 | 10.447 | 10.742 | 215.715 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.025 | 99 | 0 | 19.776 | 50.49 | 50.675 | 50.785 | 215.777 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.018 | 50 | 0 | 9.938 | 100.571 | 100.657 | 100.711 | 215.777 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.008 | 25 | 0 | 4.981 | 200.593 | 200.732 | 201.955 | 215.777 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16499 | 0 | 3298.946 | 1.433 | 2.039 | 2.659 | 94.039 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16384 | 0 | 3276.148 | 1.45 | 2.009 | 2.578 | 99.898 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16879 | 0 | 3375.014 | 1.416 | 1.913 | 2.388 | 99.66 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15511 | 0 | 3101.316 | 1.544 | 2.041 | 2.701 | 99.707 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16844 | 0 | 3368.012 | 1.426 | 1.918 | 2.332 | 106.867 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14731 | 0 | 2945.459 | 1.63 | 2.191 | 2.593 | 105.586 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 16399 | 0 | 3278.66 | 1.452 | 2.011 | 2.443 | 108.504 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15093 | 0 | 3017.667 | 1.584 | 2.115 | 2.706 | 117.168 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12334 | 0 | 2465.949 | 1.959 | 2.513 | 2.912 | 135.973 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 7135 | 0 | 1425.958 | 3.452 | 4.163 | 4.635 | 134.094 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12302 | 0 | 2459.611 | 1.959 | 2.492 | 2.872 | 133.375 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12509 | 0 | 2500.939 | 1.928 | 2.426 | 2.77 | 116.168 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9441 | 0 | 1887.15 | 2.414 | 3.671 | 5.377 | 142.113 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4122 | 0 | 823.618 | 6.044 | 6.873 | 7.337 | 134.691 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9829 | 0 | 1965.006 | 2.304 | 3.476 | 4.583 | 125.203 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9916 | 0 | 1982.423 | 2.287 | 3.287 | 4.63 | 124.266 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7506 | 0 | 1500.591 | 3.078 | 4.45 | 15.792 | 186.895 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.091 | 2354 | 0 | 469.949 | 10.661 | 11.63 | 12.164 | 141.621 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7870 | 0 | 1573.316 | 2.837 | 4.218 | 16.065 | 124.723 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7776 | 0 | 1554.444 | 2.872 | 4.369 | 15.999 | 118.113 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4984 | 0 | 996.228 | 4.709 | 6.534 | 19.385 | 160.57 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.82 | 1286 | 0 | 256.343 | 19.425 | 20.887 | 22.803 | 160.711 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.003 | 5327 | 0 | 1063.968 | 4.076 | 6.585 | 19.869 | 150.578 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5130 | 0 | 1025.0 | 4.351 | 6.14 | 19.674 | 140.152 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2840 | 0 | 566.951 | 8.884 | 11.882 | 12.617 | 161.617 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.307 | 7.197 | 1000 | 0 | 136.862 | 36.466 | 38.071 | 44.202 | 174.746 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3534 | 0 | 705.996 | 6.931 | 8.333 | 8.888 | 126.074 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3525 | 0 | 704.234 | 7.097 | 8.022 | 8.543 | 126.137 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.826 | 50.951 | 360 | 0 | 7.083 | 2540.846 | 2543.763 | 2545.37 | 148.477 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.877 | 33.959 | 240 | 0 | 7.084 | 1693.436 | 1699.422 | 1700.187 | 148.668 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.415 | 25.478 | 180 | 0 | 7.082 | 1270.525 | 1272.197 | 1273.013 | 148.793 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.943 | 16.976 | 120 | 0 | 7.082 | 847.111 | 848.321 | 849.089 | 152.047 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.179 | 14.198 | 100 | 0 | 7.053 | 832.622 | 841.283 | 841.878 | 156.32 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.475 | 8.499 | 60 | 0 | 7.079 | 423.384 | 425.453 | 428.964 | 163.242 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.648 | 5.651 | 40 | 0 | 7.082 | 282.217 | 282.8 | 283.831 | 163.305 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3675 | 0 | 734.956 | 1.313 | 1.507 | 1.656 | 185.855 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.004 | 939 | 0 | 187.67 | 5.284 | 5.404 | 5.524 | 185.855 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.002 | 483 | 0 | 96.418 | 10.32 | 10.508 | 10.658 | 185.918 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.028 | 99 | 0 | 19.761 | 50.54 | 50.648 | 50.855 | 185.918 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.016 | 50 | 0 | 9.938 | 100.533 | 100.711 | 100.977 | 185.918 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.638 | 200.77 | 200.799 | 185.918 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15828 | 0 | 3164.298 | 1.488 | 2.176 | 2.837 | 95.309 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15691 | 0 | 3137.386 | 1.513 | 2.103 | 2.546 | 95.723 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16394 | 0 | 3277.772 | 1.461 | 1.96 | 2.43 | 94.926 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15074 | 0 | 3014.146 | 1.583 | 2.138 | 2.701 | 95.715 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16260 | 0 | 3251.326 | 1.467 | 2.048 | 2.569 | 101.504 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 14221 | 0 | 2843.192 | 1.68 | 2.269 | 2.824 | 102.152 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16224 | 0 | 3243.901 | 1.472 | 1.995 | 2.588 | 102.641 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14976 | 0 | 2994.369 | 1.599 | 2.087 | 2.855 | 104.789 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12205 | 0 | 2439.838 | 1.969 | 2.575 | 3.025 | 126.188 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7258 | 0 | 1450.828 | 3.391 | 4.109 | 4.55 | 129.406 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12420 | 0 | 2483.062 | 1.937 | 2.455 | 2.774 | 132.008 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12697 | 0 | 2538.537 | 1.897 | 2.408 | 2.747 | 110.152 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8985 | 0 | 1796.288 | 2.52 | 3.857 | 5.211 | 138.449 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4005 | 0 | 800.174 | 6.144 | 7.255 | 7.984 | 133.625 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9900 | 0 | 1979.244 | 2.277 | 3.434 | 4.543 | 123.543 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9841 | 0 | 1967.338 | 2.306 | 3.406 | 4.368 | 123.73 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7426 | 0 | 1484.39 | 3.077 | 4.534 | 14.21 | 179.543 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.118 | 2331 | 0 | 465.239 | 10.784 | 11.669 | 12.039 | 141.539 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7668 | 0 | 1532.541 | 2.881 | 4.454 | 17.273 | 123.484 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7864 | 0 | 1571.983 | 2.834 | 4.163 | 16.422 | 123.82 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5143 | 0 | 1027.854 | 4.623 | 6.359 | 19.776 | 170.68 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.802 | 1309 | 0 | 260.788 | 19.148 | 20.451 | 20.983 | 163.254 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5382 | 0 | 1075.531 | 4.165 | 5.881 | 20.65 | 138.152 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5125 | 0 | 1024.324 | 4.391 | 6.011 | 20.769 | 138.277 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3151 | 0 | 629.334 | 7.925 | 9.568 | 10.329 | 161.938 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.443 | 7.29 | 1000 | 0 | 134.362 | 36.819 | 41.18 | 43.632 | 173.133 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3600 | 0 | 719.075 | 6.84 | 7.964 | 8.552 | 158.359 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3362 | 0 | 671.477 | 7.215 | 8.811 | 10.457 | 152.23 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.783 | 50.941 | 360 | 0 | 7.089 | 2538.539 | 2540.697 | 2540.964 | 173.73 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.837 | 33.985 | 240 | 0 | 7.093 | 1691.431 | 1697.69 | 1698.252 | 176.262 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.385 | 25.432 | 180 | 0 | 7.091 | 1268.705 | 1271.031 | 1271.883 | 176.395 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.93 | 16.958 | 120 | 0 | 7.088 | 846.27 | 847.737 | 848.139 | 179.707 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.155 | 14.186 | 100 | 0 | 7.064 | 831.28 | 839.746 | 840.177 | 183.395 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.462 | 8.483 | 60 | 0 | 7.09 | 422.881 | 424.001 | 424.809 | 183.398 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.644 | 5.641 | 40 | 0 | 7.087 | 281.984 | 283.236 | 283.444 | 183.398 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3729 | 0 | 745.626 | 1.305 | 1.415 | 1.553 | 209.703 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.002 | 946 | 0 | 189.028 | 5.252 | 5.366 | 5.461 | 209.703 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.003 | 483 | 0 | 96.446 | 10.319 | 10.518 | 10.702 | 209.766 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.028 | 99 | 0 | 19.79 | 50.462 | 50.588 | 50.666 | 209.766 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.015 | 50 | 0 | 9.937 | 100.567 | 100.682 | 100.772 | 209.766 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.009 | 25 | 0 | 4.982 | 200.631 | 200.744 | 201.027 | 209.766 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.145 | 1000 | 0 | 62.046 | 40.978 | 41.968 | 42.608 | 30.363 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.161 | 16.225 | 1000 | 0 | 61.878 | 40.987 | 42.2 | 42.855 | 30.793 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.266 | 16.245 | 1000 | 0 | 61.479 | 41.451 | 42.553 | 43.008 | 31.063 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.152 | 16.243 | 1000 | 0 | 61.911 | 40.983 | 42.119 | 42.917 | 31.191 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.162 | 16.217 | 1000 | 0 | 61.874 | 40.989 | 42.295 | 42.997 | 31.242 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.172 | 1000 | 0 | 62.059 | 40.977 | 41.983 | 42.48 | 31.281 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.161 | 1000 | 0 | 62.102 | 40.98 | 41.833 | 42.425 | 31.281 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.247 | 1000 | 0 | 61.971 | 40.983 | 42.042 | 42.837 | 31.734 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.466 | 14.911 | 1000 | 0 | 69.126 | 40.96 | 41.943 | 42.222 | 31.754 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.349 | 14.332 | 1000 | 0 | 65.152 | 40.966 | 41.96 | 42.226 | 31.777 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11600 | 0 | 2319.169 | 1.253 | 1.833 | 3.562 | 32.098 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.853 | 14.615 | 1000 | 0 | 67.328 | 40.969 | 41.987 | 42.998 | 39.395 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.274 | 9.818 | 1000 | 0 | 107.829 | 40.944 | 42.269 | 43.198 | 39.395 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.382 | 8.259 | 1001 | 0 | 135.591 | 1.872 | 42.523 | 43.954 | 39.395 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8556 | 0 | 1710.476 | 1.588 | 2.475 | 38.546 | 39.395 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.573 | 10.919 | 1000 | 0 | 86.406 | 41.315 | 42.876 | 43.738 | 45.563 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.711 | 11.422 | 1000 | 0 | 78.674 | 41.929 | 42.851 | 43.682 | 45.563 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.829 | 12.817 | 1000 | 0 | 77.946 | 41.933 | 42.968 | 44.411 | 45.563 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6871 | 0 | 1373.338 | 1.922 | 2.999 | 23.601 | 46.098 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.45 | 14.899 | 1000 | 0 | 69.204 | 41.966 | 43.896 | 45.268 | 49.988 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.116 | 15.637 | 1000 | 0 | 70.844 | 41.978 | 43.829 | 46.563 | 49.988 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.513 | 15.469 | 1000 | 0 | 68.904 | 41.975 | 44.11 | 46.676 | 49.988 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.007 | 5068 | 0 | 1012.857 | 2.683 | 4.254 | 19.373 | 50.664 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.432 | 16.006 | 1000 | 0 | 64.799 | 42.978 | 45.395 | 49.263 | 63.484 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.393 | 15.237 | 1000 | 0 | 64.966 | 43.006 | 46.029 | 49.087 | 55.844 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.188 | 15.271 | 1000 | 0 | 65.842 | 43.961 | 46.959 | 49.33 | 55.844 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.008 | 3522 | 0 | 703.444 | 4.102 | 5.615 | 62.473 | 61.855 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.586 | 17.102 | 1000 | 0 | 60.293 | 45.184 | 50.2 | 52.006 | 71.199 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.032 | 28.801 | 363 | 0 | 12.504 | 241.955 | 243.089 | 19626.659 | 71.051 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.439 | 19.21 | 243 | 0 | 12.501 | 241.971 | 242.843 | 12821.155 | 71.086 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.641 | 14.408 | 183 | 0 | 12.499 | 241.968 | 242.917 | 10035.62 | 71.094 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.603 | 123 | 0 | 12.503 | 241.909 | 242.646 | 5240.443 | 71.098 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.84 | 9.609 | 103 | 0 | 10.468 | 241.948 | 243.408 | 5144.161 | 71.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 4.802 | 63 | 0 | 12.495 | 241.99 | 242.798 | 243.001 | 71.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.807 | 42 | 0 | 8.338 | 241.892 | 242.617 | 242.986 | 71.102 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.019 | 122 | 0 | 24.358 | 41.963 | 42.287 | 42.981 | 71.113 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 2.031 | 114 | 0 | 22.68 | 44.967 | 45.981 | 46.021 | 71.145 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.04 | 97 | 0 | 19.366 | 51.968 | 52.385 | 52.991 | 71.164 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.082 | 2.065 | 56 | 0 | 11.019 | 91.071 | 92.005 | 92.483 | 71.176 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.051 | 2.084 | 36 | 0 | 7.127 | 140.997 | 142.001 | 142.075 | 71.176 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.376 | 21 | 0 | 4.166 | 241.918 | 242.13 | 242.775 | 71.176 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.298 | 1000 | 0 | 61.975 | 40.983 | 42.071 | 42.596 | 30.539 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.164 | 16.328 | 1000 | 0 | 61.866 | 40.999 | 42.329 | 42.945 | 30.871 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.401 | 1000 | 0 | 61.971 | 40.984 | 42.151 | 42.931 | 30.996 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.138 | 16.332 | 1000 | 0 | 61.965 | 40.979 | 42.034 | 42.817 | 31.125 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.397 | 1000 | 0 | 61.989 | 40.977 | 42.133 | 42.921 | 31.203 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.19 | 16.393 | 1000 | 0 | 61.768 | 41.013 | 42.286 | 42.858 | 31.203 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.289 | 1000 | 0 | 62.094 | 40.977 | 41.954 | 42.421 | 31.223 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.15 | 16.246 | 1000 | 0 | 61.92 | 40.987 | 42.182 | 42.978 | 32.035 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.995 | 11.179 | 1000 | 0 | 66.688 | 40.967 | 41.959 | 42.894 | 32.035 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.275 | 14.212 | 1000 | 0 | 65.467 | 40.966 | 41.965 | 42.206 | 32.152 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11772 | 0 | 2353.443 | 1.242 | 1.817 | 3.322 | 32.414 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.776 | 14.754 | 1000 | 0 | 67.676 | 40.967 | 41.983 | 42.946 | 37.031 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.502 | 9.801 | 1000 | 0 | 117.616 | 40.946 | 42.144 | 43.18 | 37.031 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.19 | 8.476 | 1001 | 0 | 108.922 | 40.962 | 42.242 | 43.218 | 37.031 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8736 | 0 | 1746.587 | 1.514 | 2.451 | 41.924 | 37.234 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.619 | 9.9 | 1000 | 0 | 86.067 | 41.699 | 42.929 | 44.105 | 45.711 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.861 | 13.026 | 1000 | 0 | 77.754 | 41.938 | 43.126 | 46.399 | 45.711 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.828 | 12.435 | 1000 | 0 | 77.954 | 41.936 | 43.013 | 44.403 | 45.711 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 6508 | 0 | 1300.555 | 2.03 | 3.279 | 20.254 | 45.711 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.312 | 15.181 | 1000 | 0 | 69.872 | 41.971 | 43.913 | 45.495 | 50.488 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.759 | 15.156 | 1000 | 0 | 67.757 | 41.974 | 44.809 | 46.702 | 50.488 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.898 | 14.878 | 1000 | 0 | 71.951 | 41.98 | 44.758 | 46.976 | 50.488 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 4888 | 0 | 976.725 | 2.768 | 4.654 | 21.781 | 52.012 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.183 | 16.046 | 1000 | 0 | 65.862 | 42.973 | 46.31 | 52.444 | 59.617 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.254 | 15.484 | 1000 | 0 | 65.557 | 43.437 | 46.997 | 48.852 | 59.367 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.496 | 15.899 | 1000 | 0 | 64.532 | 43.962 | 47.448 | 50.303 | 59.367 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3458 | 0 | 690.705 | 4.203 | 5.596 | 8.734 | 63.375 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.27 | 17.31 | 1000 | 0 | 61.463 | 45.006 | 50.318 | 52.717 | 73.566 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.038 | 28.776 | 363 | 0 | 12.501 | 241.969 | 243.372 | 19634.988 | 73.793 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.441 | 19.206 | 243 | 0 | 12.5 | 241.956 | 243.134 | 12822.769 | 73.801 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.645 | 14.4 | 183 | 0 | 12.496 | 241.994 | 243.171 | 10041.931 | 73.805 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.839 | 9.605 | 123 | 0 | 12.501 | 241.926 | 242.973 | 5239.597 | 73.805 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.608 | 103 | 0 | 10.473 | 241.874 | 242.836 | 5134.787 | 73.809 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.799 | 63 | 0 | 12.498 | 241.935 | 242.487 | 242.87 | 73.816 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.802 | 42 | 0 | 8.345 | 241.792 | 242.174 | 242.234 | 73.816 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.019 | 122 | 0 | 24.366 | 41.972 | 42.279 | 42.981 | 73.816 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.032 | 114 | 0 | 22.736 | 44.973 | 45.115 | 45.976 | 73.836 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.043 | 97 | 0 | 19.392 | 51.972 | 52.078 | 52.977 | 73.875 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.061 | 56 | 0 | 11.043 | 90.978 | 91.978 | 92.249 | 73.875 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.048 | 2.082 | 36 | 0 | 7.132 | 141.017 | 141.995 | 142.041 | 73.879 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.392 | 21 | 0 | 4.165 | 241.941 | 242.11 | 242.768 | 73.879 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.185 | 1000 | 0 | 62.051 | 40.98 | 41.978 | 42.483 | 30.504 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.16 | 1000 | 0 | 62.005 | 40.983 | 41.991 | 42.821 | 30.945 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.145 | 1000 | 0 | 62.055 | 40.983 | 41.979 | 42.486 | 31.055 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.156 | 1000 | 0 | 62.107 | 40.979 | 41.957 | 42.296 | 31.145 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.179 | 1000 | 0 | 62.128 | 40.978 | 41.91 | 42.267 | 31.203 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.166 | 1000 | 0 | 62.089 | 40.98 | 41.967 | 42.343 | 31.266 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.166 | 1000 | 0 | 62.089 | 40.979 | 41.948 | 42.222 | 31.266 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.262 | 1000 | 0 | 61.978 | 40.984 | 42.15 | 42.623 | 31.719 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.186 | 15.186 | 1000 | 0 | 65.849 | 40.972 | 41.97 | 42.42 | 31.871 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.906 | 14.59 | 1000 | 0 | 67.086 | 40.97 | 41.952 | 42.137 | 31.883 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12039 | 0 | 2406.983 | 1.209 | 1.761 | 2.847 | 32.141 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.166 | 15.152 | 1000 | 0 | 65.937 | 40.971 | 41.977 | 42.659 | 37.195 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.27 | 10.651 | 1000 | 0 | 107.879 | 40.961 | 42.109 | 43.071 | 37.195 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.497 | 10.274 | 1000 | 0 | 80.017 | 40.965 | 41.998 | 42.92 | 37.195 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 8977 | 0 | 1794.25 | 1.497 | 2.284 | 19.637 | 37.195 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.538 | 11.162 | 1001 | 0 | 94.988 | 40.987 | 42.831 | 43.857 | 46.625 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.501 | 12.653 | 1000 | 0 | 79.996 | 41.891 | 43.043 | 44.826 | 46.188 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.895 | 13.323 | 1000 | 0 | 84.068 | 41.93 | 42.972 | 44.188 | 46.188 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 6810 | 0 | 1361.436 | 1.875 | 3.034 | 30.339 | 46.188 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.478 | 15.048 | 1000 | 0 | 74.193 | 41.979 | 43.792 | 44.963 | 49.656 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.134 | 15.062 | 1000 | 0 | 70.752 | 41.975 | 43.93 | 45.285 | 49.496 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.815 | 15.363 | 1000 | 0 | 67.5 | 41.987 | 44.938 | 53.511 | 49.496 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 5050 | 0 | 1009.356 | 2.683 | 4.286 | 21.327 | 50.691 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.651 | 16.086 | 1000 | 0 | 63.894 | 42.979 | 45.514 | 47.882 | 60.777 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.429 | 15.44 | 1000 | 0 | 64.815 | 43.17 | 47.85 | 49.773 | 53.012 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.434 | 15.35 | 1000 | 0 | 64.793 | 43.428 | 47.753 | 49.988 | 53.012 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.007 | 3572 | 0 | 713.676 | 4.05 | 5.441 | 8.969 | 59.023 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.189 | 16.698 | 1000 | 0 | 61.769 | 45.044 | 50.195 | 51.959 | 71.277 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.034 | 28.791 | 363 | 0 | 12.503 | 241.965 | 243.133 | 19628.384 | 71.75 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.437 | 19.208 | 243 | 0 | 12.502 | 241.964 | 242.917 | 12816.884 | 71.77 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.638 | 14.398 | 183 | 0 | 12.502 | 241.969 | 242.85 | 10034.238 | 71.773 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.601 | 123 | 0 | 12.505 | 241.927 | 242.854 | 5235.693 | 71.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.84 | 9.602 | 103 | 0 | 10.468 | 241.943 | 242.971 | 5139.062 | 71.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 4.801 | 63 | 0 | 12.496 | 241.966 | 243.069 | 243.417 | 71.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.805 | 42 | 0 | 8.337 | 241.954 | 242.613 | 242.955 | 71.777 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.018 | 122 | 0 | 24.362 | 41.972 | 42.333 | 43.013 | 71.813 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.03 | 114 | 0 | 22.723 | 44.978 | 45.959 | 45.985 | 71.848 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.037 | 97 | 0 | 19.366 | 51.966 | 52.969 | 53.087 | 71.898 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.064 | 56 | 0 | 11.05 | 90.978 | 91.974 | 92.006 | 71.965 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.048 | 2.083 | 36 | 0 | 7.132 | 140.977 | 141.993 | 142.567 | 71.965 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.377 | 21 | 0 | 4.168 | 241.914 | 242.252 | 243.377 | 71.965 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17841 | 0 | 3567.257 | 1.332 | 1.801 | 2.288 | 97.879 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17647 | 0 | 3528.656 | 1.356 | 1.803 | 2.098 | 98.719 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18026 | 0 | 3603.782 | 1.329 | 1.75 | 2.047 | 98.09 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17281 | 0 | 3455.25 | 1.389 | 1.825 | 2.373 | 97.98 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17764 | 0 | 3551.812 | 1.351 | 1.772 | 2.101 | 105.344 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15641 | 0 | 3127.397 | 1.533 | 2.063 | 2.469 | 107.016 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17588 | 0 | 3516.98 | 1.359 | 1.796 | 2.201 | 110.426 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16958 | 0 | 3390.687 | 1.415 | 1.858 | 2.353 | 114.383 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13327 | 0 | 2664.677 | 1.811 | 2.26 | 2.537 | 131.715 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7434 | 0 | 1485.979 | 3.329 | 3.953 | 4.308 | 133.57 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13226 | 0 | 2644.375 | 1.82 | 2.278 | 2.579 | 132.004 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13668 | 0 | 2732.736 | 1.76 | 2.201 | 2.514 | 110.766 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10234 | 0 | 2045.927 | 2.203 | 3.205 | 4.52 | 149.566 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 4287 | 0 | 856.425 | 5.84 | 6.596 | 6.91 | 148.371 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10438 | 0 | 2086.856 | 2.164 | 3.075 | 4.047 | 123.348 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10429 | 0 | 2085.147 | 2.154 | 3.117 | 4.018 | 118.645 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 7771 | 0 | 1553.006 | 2.759 | 4.305 | 21.031 | 178.445 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.066 | 2439 | 0 | 486.771 | 10.329 | 11.268 | 11.716 | 149.367 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.002 | 8068 | 0 | 1606.98 | 2.698 | 4.19 | 20.723 | 131.809 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7965 | 0 | 1592.264 | 2.731 | 4.229 | 20.796 | 131.82 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.006 | 5401 | 0 | 1079.447 | 4.078 | 5.806 | 24.098 | 162.484 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.672 | 1340 | 0 | 267.151 | 18.796 | 20.131 | 20.787 | 166.789 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5684 | 0 | 1136.043 | 3.845 | 5.503 | 23.507 | 155.688 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5347 | 0 | 1068.594 | 4.138 | 5.761 | 23.863 | 145.938 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3886 | 0 | 776.138 | 6.329 | 8.813 | 9.852 | 176.84 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.171 | 7.246 | 1000 | 0 | 139.444 | 35.716 | 42.352 | 43.312 | 191.277 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3757 | 0 | 750.568 | 6.501 | 7.762 | 8.137 | 168.617 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3715 | 0 | 742.162 | 6.635 | 7.646 | 8.217 | 168.617 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.879 | 50.882 | 360 | 0 | 7.076 | 2543.382 | 2545.043 | 2546.063 | 184.66 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.921 | 33.917 | 240 | 0 | 7.075 | 1695.779 | 1696.906 | 1698.07 | 202.516 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.441 | 25.441 | 180 | 0 | 7.075 | 1271.844 | 1272.854 | 1274.192 | 202.516 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.961 | 16.96 | 120 | 0 | 7.075 | 847.881 | 848.539 | 848.736 | 202.516 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.189 | 14.191 | 100 | 0 | 7.048 | 844.092 | 845.881 | 846.256 | 202.516 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.479 | 8.48 | 60 | 0 | 7.076 | 423.845 | 424.268 | 424.352 | 202.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.652 | 40 | 0 | 7.078 | 282.446 | 282.714 | 282.838 | 202.543 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 1950 | 0 | 389.952 | 2.515 | 2.686 | 2.829 | 211.297 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.005 | 568 | 0 | 113.459 | 8.771 | 8.924 | 9.197 | 211.297 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.01 | 409 | 0 | 81.722 | 12.181 | 12.376 | 12.493 | 211.359 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.046 | 2.02 | 100 | 0 | 19.818 | 50.405 | 50.465 | 50.604 | 211.359 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.016 | 50 | 0 | 9.943 | 100.451 | 100.667 | 101.689 | 211.359 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.008 | 25 | 0 | 4.986 | 200.487 | 200.615 | 200.721 | 211.422 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16965 | 0 | 3392.149 | 1.396 | 1.91 | 2.472 | 98.309 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16812 | 0 | 3361.541 | 1.426 | 1.88 | 2.219 | 98.859 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16968 | 0 | 3392.71 | 1.411 | 1.854 | 2.185 | 98.484 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16767 | 0 | 3352.517 | 1.43 | 1.881 | 2.438 | 98.18 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17113 | 0 | 3421.711 | 1.4 | 1.838 | 2.215 | 105.176 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15035 | 0 | 3006.143 | 1.588 | 2.134 | 2.551 | 107.906 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17137 | 0 | 3426.618 | 1.393 | 1.847 | 2.262 | 111.727 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16612 | 0 | 3321.233 | 1.448 | 1.88 | 2.443 | 116.754 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13115 | 0 | 2622.279 | 1.837 | 2.319 | 2.609 | 134.5 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7443 | 0 | 1487.76 | 3.296 | 4.019 | 4.38 | 136.258 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13098 | 0 | 2618.681 | 1.844 | 2.295 | 2.562 | 138.582 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12980 | 0 | 2595.158 | 1.853 | 2.311 | 2.62 | 118.992 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9831 | 0 | 1965.576 | 2.259 | 3.454 | 4.588 | 146.82 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4207 | 0 | 840.522 | 5.951 | 6.741 | 7.076 | 140.16 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9922 | 0 | 1983.627 | 2.231 | 3.341 | 4.527 | 131.313 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9883 | 0 | 1975.934 | 2.248 | 3.371 | 4.746 | 133.07 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.014 | 2.002 | 7489 | 0 | 1493.665 | 2.818 | 4.694 | 22.645 | 188.297 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.069 | 2399 | 0 | 478.983 | 10.452 | 11.494 | 12.017 | 146.176 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.005 | 7813 | 0 | 1561.874 | 2.763 | 4.357 | 22.369 | 135.258 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7621 | 0 | 1523.287 | 2.838 | 4.529 | 22.226 | 135.145 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5217 | 0 | 1042.743 | 4.169 | 6.501 | 25.998 | 158.918 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.735 | 1310 | 0 | 261.081 | 19.223 | 20.987 | 23.586 | 163.461 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5265 | 0 | 1052.259 | 4.078 | 6.251 | 25.693 | 152.777 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5101 | 0 | 1019.223 | 4.22 | 6.385 | 26.492 | 152.84 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3585 | 0 | 716.169 | 6.84 | 8.123 | 8.717 | 160.266 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.316 | 7.247 | 1000 | 0 | 136.681 | 36.421 | 42.957 | 44.042 | 196.922 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3634 | 0 | 725.984 | 6.699 | 8.047 | 8.789 | 150.902 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3560 | 0 | 711.207 | 6.817 | 8.155 | 8.905 | 150.902 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.875 | 50.885 | 360 | 0 | 7.076 | 2543.36 | 2544.998 | 2545.528 | 164.074 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.913 | 33.919 | 240 | 0 | 7.077 | 1695.395 | 1697.347 | 1697.74 | 178.641 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.438 | 25.433 | 180 | 0 | 7.076 | 1271.575 | 1273.702 | 1275.0 | 178.645 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.958 | 16.956 | 120 | 0 | 7.076 | 847.745 | 849.624 | 849.981 | 178.645 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.186 | 14.19 | 100 | 0 | 7.049 | 841.929 | 846.327 | 846.543 | 178.645 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.482 | 8.48 | 60 | 0 | 7.074 | 424.031 | 424.386 | 424.648 | 185.27 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.654 | 40 | 0 | 7.076 | 282.572 | 282.939 | 283.059 | 190.84 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.002 | 1950 | 0 | 389.964 | 2.514 | 2.697 | 2.88 | 203.277 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.003 | 567 | 0 | 113.218 | 8.788 | 8.903 | 9.263 | 203.402 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.007 | 409 | 0 | 81.755 | 12.165 | 12.384 | 12.504 | 203.402 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.022 | 99 | 0 | 19.798 | 50.447 | 50.578 | 50.983 | 203.402 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.016 | 50 | 0 | 9.943 | 100.517 | 100.626 | 100.653 | 203.402 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.006 | 25 | 0 | 4.985 | 200.501 | 200.573 | 200.868 | 203.402 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16661 | 0 | 3331.23 | 1.42 | 1.956 | 2.585 | 101.223 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16550 | 0 | 3309.261 | 1.442 | 1.915 | 2.324 | 103.109 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16861 | 0 | 3371.354 | 1.417 | 1.861 | 2.224 | 101.988 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16005 | 0 | 3200.139 | 1.47 | 2.105 | 2.676 | 102.52 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16454 | 0 | 3289.976 | 1.429 | 2.019 | 2.462 | 110.969 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15047 | 0 | 3008.498 | 1.599 | 2.089 | 2.451 | 109.914 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16851 | 0 | 3369.361 | 1.418 | 1.863 | 2.31 | 111.336 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16266 | 0 | 3252.456 | 1.47 | 1.94 | 2.689 | 115.676 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12600 | 0 | 2519.118 | 1.88 | 2.557 | 2.972 | 136.984 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7432 | 0 | 1485.567 | 3.315 | 3.985 | 4.381 | 136.91 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12877 | 0 | 2574.656 | 1.873 | 2.338 | 2.664 | 139.77 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13105 | 0 | 2620.126 | 1.838 | 2.298 | 2.635 | 112.07 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9634 | 0 | 1926.087 | 2.323 | 3.396 | 4.467 | 147.891 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4213 | 0 | 841.854 | 5.91 | 6.806 | 7.285 | 144.945 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9852 | 0 | 1969.591 | 2.258 | 3.361 | 4.513 | 124.598 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.035 | 2.002 | 10001 | 0 | 1986.312 | 2.242 | 3.236 | 4.455 | 124.16 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.002 | 7585 | 0 | 1513.426 | 2.826 | 4.183 | 23.698 | 191.57 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.077 | 2357 | 0 | 470.651 | 10.639 | 11.761 | 12.227 | 152.688 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7689 | 0 | 1537.049 | 2.809 | 4.241 | 23.654 | 148.535 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7775 | 0 | 1554.292 | 2.801 | 4.018 | 23.88 | 148.707 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.003 | 5293 | 0 | 1056.336 | 4.133 | 5.794 | 26.376 | 178.836 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.795 | 1305 | 0 | 260.054 | 19.277 | 20.887 | 21.384 | 174.27 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5485 | 0 | 1096.14 | 3.965 | 5.492 | 26.157 | 160.477 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5112 | 0 | 1021.636 | 4.262 | 6.051 | 27.081 | 160.539 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3465 | 0 | 692.138 | 7.012 | 8.449 | 9.25 | 165.297 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.425 | 7.347 | 1000 | 0 | 134.678 | 37.0 | 43.611 | 44.891 | 186.621 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3458 | 0 | 690.632 | 7.051 | 8.388 | 8.977 | 158.59 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3357 | 0 | 670.715 | 7.227 | 8.727 | 9.375 | 158.59 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.895 | 50.889 | 360 | 0 | 7.073 | 2544.393 | 2547.166 | 2548.288 | 185.852 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.918 | 33.919 | 240 | 0 | 7.076 | 1695.625 | 1697.699 | 1698.248 | 196.063 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.446 | 25.438 | 180 | 0 | 7.074 | 1272.129 | 1274.067 | 1275.726 | 196.063 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.96 | 16.959 | 120 | 0 | 7.076 | 847.963 | 849.532 | 850.094 | 196.063 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.191 | 14.19 | 100 | 0 | 7.047 | 842.063 | 847.261 | 847.455 | 196.066 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.482 | 8.48 | 60 | 0 | 7.074 | 423.951 | 424.774 | 425.331 | 198.313 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.652 | 5.653 | 40 | 0 | 7.077 | 282.497 | 282.854 | 283.104 | 198.313 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1907 | 0 | 381.247 | 2.599 | 2.769 | 2.983 | 211.504 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.006 | 566 | 0 | 112.991 | 8.806 | 8.948 | 9.099 | 212.816 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.007 | 403 | 0 | 80.569 | 12.35 | 12.572 | 12.825 | 212.941 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.021 | 99 | 0 | 19.793 | 50.466 | 50.601 | 50.648 | 212.941 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.014 | 50 | 0 | 9.94 | 100.523 | 100.649 | 100.876 | 212.941 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.509 | 200.666 | 200.67 | 212.941 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

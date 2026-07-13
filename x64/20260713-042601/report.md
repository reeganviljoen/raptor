# Puma vs Raptor Simulation

Run ID: `20260713-042601`

## Environment

- Ruby: `ruby 4.0.5 (2026-05-20 revision 64336ffd0e) +PRISM [x86_64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.185 | 16.226 | 1000 | 0 | 61.785 | 41.04 | 42.251 | 43.587 | 30.32 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.197 | 16.113 | 1000 | 0 | 61.738 | 41.045 | 42.303 | 42.941 | 30.656 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.169 | 1000 | 0 | 62.0 | 40.992 | 41.979 | 42.247 | 30.68 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.147 | 16.098 | 1000 | 0 | 61.932 | 40.996 | 42.018 | 42.489 | 30.758 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.23 | 16.081 | 1000 | 0 | 61.615 | 41.136 | 42.4 | 42.937 | 30.758 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.152 | 16.088 | 1000 | 0 | 61.913 | 40.999 | 42.073 | 43.061 | 30.785 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.142 | 16.095 | 1000 | 0 | 61.952 | 41.004 | 42.011 | 42.804 | 30.785 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.241 | 16.109 | 1000 | 0 | 61.572 | 41.143 | 42.416 | 42.916 | 31.266 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.107 | 14.612 | 1000 | 0 | 66.193 | 40.981 | 41.971 | 42.966 | 31.316 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.153 | 15.03 | 1000 | 0 | 65.992 | 40.98 | 41.982 | 42.738 | 31.32 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10097 | 0 | 2018.604 | 1.421 | 2.075 | 3.379 | 31.676 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.271 | 14.634 | 1000 | 0 | 65.483 | 40.986 | 41.99 | 43.051 | 41.074 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.512 | 13.834 | 1000 | 0 | 68.911 | 41.95 | 42.948 | 44.822 | 41.074 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.66 | 14.319 | 1000 | 0 | 68.215 | 41.956 | 42.87 | 43.821 | 41.074 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 8369 | 0 | 1672.896 | 1.635 | 2.417 | 42.503 | 41.074 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.351 | 15.389 | 1000 | 0 | 65.142 | 41.971 | 42.962 | 43.251 | 51.918 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.543 | 15.436 | 1000 | 0 | 64.337 | 42.0 | 43.149 | 44.494 | 51.918 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.461 | 15.759 | 1000 | 0 | 64.68 | 42.068 | 43.269 | 44.336 | 51.918 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 6118 | 0 | 1222.831 | 2.252 | 3.797 | 11.338 | 51.918 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.644 | 16.081 | 1000 | 0 | 63.921 | 42.949 | 43.988 | 45.099 | 51.934 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.229 | 16.358 | 1000 | 0 | 61.617 | 43.885 | 44.954 | 46.217 | 51.934 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.302 | 16.375 | 1000 | 0 | 61.34 | 43.898 | 45.044 | 50.564 | 51.934 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4510 | 0 | 901.303 | 3.042 | 5.255 | 16.016 | 53.977 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.892 | 16.725 | 1000 | 0 | 59.199 | 44.815 | 45.98 | 47.297 | 68.371 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.967 | 17.685 | 1000 | 0 | 58.939 | 46.76 | 48.26 | 49.909 | 68.371 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.91 | 17.717 | 1000 | 0 | 59.136 | 46.792 | 49.107 | 50.591 | 68.371 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3100 | 0 | 619.145 | 4.715 | 6.469 | 10.148 | 72.133 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.057 | 18.355 | 1000 | 0 | 55.38 | 47.983 | 50.997 | 56.366 | 79.496 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.045 | 28.81 | 363 | 0 | 12.498 | 242.0 | 243.509 | 19639.86 | 79.73 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.438 | 19.2 | 243 | 0 | 12.501 | 241.944 | 242.905 | 12816.781 | 79.758 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.641 | 14.398 | 183 | 0 | 12.499 | 241.97 | 243.297 | 10036.331 | 79.777 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.846 | 9.602 | 123 | 0 | 12.493 | 242.007 | 243.173 | 5240.9 | 79.793 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.597 | 103 | 0 | 10.47 | 241.952 | 242.89 | 5141.55 | 79.797 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 4.8 | 63 | 0 | 12.491 | 241.932 | 242.323 | 243.681 | 79.797 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.797 | 42 | 0 | 8.333 | 241.919 | 242.172 | 242.715 | 79.797 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.021 | 122 | 0 | 24.347 | 41.974 | 42.908 | 42.996 | 79.832 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.025 | 110 | 0 | 21.848 | 46.955 | 47.069 | 47.87 | 79.836 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.023 | 98 | 0 | 19.59 | 51.046 | 52.043 | 52.38 | 79.848 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.067 | 55 | 0 | 10.994 | 91.906 | 92.04 | 92.259 | 79.848 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.059 | 2.082 | 36 | 0 | 7.117 | 141.921 | 142.008 | 142.321 | 79.852 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.378 | 21 | 0 | 4.165 | 241.981 | 242.905 | 242.941 | 79.852 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.101 | 1000 | 0 | 62.022 | 40.994 | 41.985 | 42.771 | 29.828 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.182 | 16.114 | 1000 | 0 | 61.798 | 41.018 | 42.198 | 42.92 | 29.914 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.177 | 16.116 | 1000 | 0 | 61.815 | 41.014 | 42.213 | 43.105 | 29.918 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.159 | 16.157 | 1000 | 0 | 61.886 | 40.997 | 42.151 | 42.743 | 30.051 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.149 | 16.105 | 1000 | 0 | 61.925 | 40.995 | 42.075 | 42.619 | 30.051 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.099 | 1000 | 0 | 61.979 | 40.987 | 41.976 | 42.356 | 30.051 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.167 | 16.104 | 1000 | 0 | 61.853 | 41.006 | 42.169 | 42.661 | 30.055 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.148 | 16.116 | 1000 | 0 | 61.928 | 40.996 | 42.049 | 42.442 | 30.977 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.339 | 14.782 | 1000 | 0 | 65.195 | 40.979 | 41.97 | 42.117 | 30.977 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.274 | 14.653 | 1000 | 0 | 65.471 | 40.98 | 41.979 | 42.543 | 30.977 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10173 | 0 | 2033.824 | 1.422 | 2.042 | 3.519 | 31.293 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.297 | 15.332 | 1000 | 0 | 65.373 | 40.99 | 41.996 | 42.99 | 39.492 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.194 | 14.632 | 1000 | 0 | 65.817 | 41.955 | 42.468 | 43.225 | 39.492 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.317 | 14.798 | 1000 | 0 | 69.845 | 41.944 | 42.938 | 43.394 | 39.492 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 7764 | 0 | 1552.179 | 1.717 | 2.696 | 42.957 | 39.492 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.469 | 15.359 | 1000 | 0 | 64.645 | 41.972 | 42.956 | 43.953 | 47.168 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.8 | 15.463 | 1000 | 0 | 67.568 | 42.0 | 43.144 | 44.709 | 44.895 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.398 | 16.117 | 1000 | 0 | 64.945 | 41.988 | 43.238 | 44.848 | 44.895 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 6345 | 0 | 1268.398 | 2.151 | 3.323 | 33.508 | 45.387 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.584 | 16.02 | 1000 | 0 | 64.168 | 42.948 | 43.967 | 45.298 | 52.227 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.8 | 16.526 | 1000 | 0 | 63.291 | 43.826 | 45.02 | 46.597 | 52.227 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.648 | 16.064 | 1000 | 0 | 63.905 | 43.93 | 45.028 | 46.74 | 52.227 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4485 | 0 | 896.169 | 3.097 | 4.98 | 14.353 | 54.363 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.514 | 16.875 | 1000 | 0 | 60.556 | 44.929 | 46.437 | 49.624 | 65.996 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.656 | 17.513 | 1000 | 0 | 60.039 | 46.252 | 48.601 | 49.992 | 56.051 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.907 | 17.426 | 1000 | 0 | 59.147 | 46.936 | 48.67 | 51.031 | 56.051 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.006 | 3072 | 0 | 613.467 | 4.816 | 6.317 | 10.1 | 62.063 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.812 | 18.215 | 1000 | 0 | 56.142 | 47.97 | 51.055 | 53.674 | 72.625 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.04 | 28.801 | 363 | 0 | 12.5 | 241.992 | 243.664 | 19635.833 | 71.098 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.438 | 19.202 | 243 | 0 | 12.501 | 241.949 | 243.593 | 12814.927 | 71.113 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.641 | 14.4 | 183 | 0 | 12.499 | 241.986 | 243.004 | 10032.038 | 71.137 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.842 | 9.599 | 123 | 0 | 12.498 | 241.944 | 243.504 | 5240.11 | 71.145 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.596 | 103 | 0 | 10.476 | 241.868 | 242.508 | 5131.617 | 71.148 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 4.803 | 63 | 0 | 12.493 | 242.006 | 242.574 | 242.841 | 71.148 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.798 | 42 | 0 | 8.335 | 241.953 | 242.181 | 242.397 | 71.148 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.017 | 122 | 0 | 24.367 | 41.97 | 42.277 | 42.975 | 71.18 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.014 | 109 | 0 | 21.797 | 46.969 | 47.383 | 47.912 | 71.188 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.018 | 99 | 0 | 19.652 | 50.98 | 51.972 | 51.99 | 71.199 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.068 | 55 | 0 | 10.989 | 91.931 | 92.058 | 92.945 | 71.199 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.088 | 36 | 0 | 7.099 | 141.935 | 142.033 | 144.825 | 71.203 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.379 | 21 | 0 | 4.169 | 241.935 | 241.975 | 241.996 | 71.207 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.094 | 1000 | 0 | 61.987 | 40.994 | 42.005 | 42.432 | 29.828 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.235 | 16.194 | 1000 | 0 | 61.596 | 41.167 | 42.399 | 43.007 | 30.117 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.138 | 16.11 | 1000 | 0 | 61.964 | 40.995 | 41.989 | 42.872 | 30.195 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.194 | 16.122 | 1000 | 0 | 61.752 | 41.032 | 42.282 | 42.998 | 30.277 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.199 | 16.171 | 1000 | 0 | 61.733 | 41.03 | 42.254 | 43.658 | 30.301 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.154 | 16.161 | 1000 | 0 | 61.905 | 40.998 | 42.088 | 42.742 | 30.328 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.101 | 1000 | 0 | 61.982 | 40.997 | 41.983 | 42.39 | 30.363 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.18 | 16.11 | 1000 | 0 | 61.805 | 40.992 | 42.011 | 42.552 | 30.883 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.139 | 13.6 | 1000 | 0 | 66.056 | 40.978 | 41.971 | 42.289 | 31.0 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.272 | 15.283 | 1000 | 0 | 70.066 | 40.981 | 41.975 | 42.549 | 31.02 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 10161 | 0 | 2031.346 | 1.418 | 2.057 | 3.426 | 31.504 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.943 | 15.12 | 1000 | 0 | 66.921 | 40.988 | 41.99 | 42.939 | 40.738 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.335 | 13.945 | 1000 | 0 | 69.757 | 41.94 | 42.602 | 43.185 | 40.738 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.051 | 14.683 | 1000 | 0 | 66.439 | 41.95 | 42.836 | 43.234 | 40.738 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.038 | 2.002 | 7999 | 0 | 1587.849 | 1.664 | 2.56 | 42.382 | 40.762 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.646 | 15.172 | 1000 | 0 | 68.279 | 41.97 | 42.912 | 43.026 | 51.059 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.756 | 15.361 | 1000 | 0 | 63.468 | 42.004 | 43.207 | 44.726 | 51.059 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.213 | 15.377 | 1000 | 0 | 65.732 | 42.015 | 43.57 | 44.397 | 51.059 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 6187 | 0 | 1236.144 | 2.176 | 3.394 | 15.053 | 47.117 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.932 | 15.709 | 1000 | 0 | 62.766 | 42.952 | 43.969 | 45.273 | 55.313 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.444 | 15.836 | 1000 | 0 | 64.748 | 43.927 | 45.4 | 53.735 | 55.293 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.451 | 15.715 | 1000 | 0 | 64.721 | 43.927 | 45.18 | 47.741 | 55.293 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.018 | 4533 | 0 | 905.613 | 3.021 | 5.012 | 16.406 | 56.113 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.969 | 16.799 | 1000 | 0 | 62.623 | 44.524 | 46.173 | 57.43 | 65.168 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.3 | 17.04 | 1000 | 0 | 61.35 | 46.9 | 48.985 | 52.59 | 65.168 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.781 | 17.333 | 1000 | 0 | 59.591 | 46.783 | 48.938 | 52.949 | 65.168 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.032 | 3002 | 0 | 599.757 | 4.866 | 6.658 | 11.135 | 69.176 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.831 | 18.199 | 1000 | 0 | 56.083 | 47.965 | 51.007 | 56.124 | 76.023 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.041 | 28.81 | 363 | 0 | 12.5 | 241.967 | 243.897 | 19634.525 | 76.305 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.447 | 19.204 | 243 | 0 | 12.496 | 241.984 | 243.197 | 12821.462 | 76.316 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.632 | 14.402 | 183 | 0 | 12.507 | 241.944 | 243.048 | 10028.543 | 76.316 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.842 | 9.602 | 123 | 0 | 12.498 | 241.941 | 242.891 | 5238.748 | 76.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.594 | 103 | 0 | 10.47 | 241.971 | 242.734 | 5137.221 | 76.348 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.801 | 63 | 0 | 12.498 | 241.92 | 242.334 | 242.975 | 76.348 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.797 | 42 | 0 | 8.337 | 241.884 | 242.147 | 242.953 | 76.348 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.018 | 122 | 0 | 24.375 | 41.96 | 42.044 | 42.786 | 76.348 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.04 | 110 | 0 | 21.807 | 46.958 | 47.472 | 47.951 | 76.359 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.023 | 98 | 0 | 19.546 | 51.874 | 52.032 | 52.095 | 76.398 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.066 | 55 | 0 | 10.996 | 91.94 | 92.022 | 92.425 | 76.406 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.055 | 2.087 | 36 | 0 | 7.122 | 141.447 | 142.014 | 142.183 | 76.406 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.376 | 21 | 0 | 4.168 | 241.931 | 242.416 | 242.84 | 76.418 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14115 | 0 | 2822.058 | 1.706 | 2.226 | 2.528 | 75.102 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13785 | 0 | 2756.239 | 1.754 | 2.252 | 2.578 | 75.145 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14053 | 0 | 2809.818 | 1.717 | 2.224 | 2.556 | 75.281 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13309 | 0 | 2660.965 | 1.796 | 2.422 | 2.799 | 75.488 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13921 | 0 | 2783.427 | 1.728 | 2.277 | 2.655 | 78.902 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12246 | 0 | 2448.306 | 1.973 | 2.561 | 2.983 | 79.277 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13958 | 0 | 2790.824 | 1.721 | 2.257 | 2.733 | 79.324 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13228 | 0 | 2644.762 | 1.802 | 2.474 | 2.946 | 80.93 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11321 | 0 | 2263.495 | 2.141 | 2.714 | 3.138 | 103.156 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 6012 | 0 | 1201.316 | 4.103 | 5.081 | 5.607 | 94.766 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11503 | 0 | 2299.817 | 2.114 | 2.644 | 3.008 | 103.992 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11421 | 0 | 2283.423 | 2.119 | 2.662 | 3.019 | 82.34 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8719 | 0 | 1742.924 | 2.642 | 3.864 | 5.561 | 109.582 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3352 | 0 | 669.578 | 7.449 | 9.095 | 9.993 | 97.883 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8917 | 0 | 1782.627 | 2.57 | 3.915 | 5.328 | 82.738 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9051 | 0 | 1809.492 | 2.564 | 3.687 | 4.926 | 82.363 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6974 | 0 | 1394.042 | 3.281 | 5.13 | 14.636 | 150.672 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.535 | 1906 | 0 | 380.541 | 13.159 | 15.763 | 16.878 | 103.98 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7231 | 0 | 1445.426 | 3.133 | 4.875 | 14.787 | 92.613 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7130 | 0 | 1425.407 | 3.159 | 5.27 | 14.818 | 92.613 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 4505 | 0 | 900.22 | 5.223 | 7.747 | 19.207 | 145.848 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 4.583 | 1030 | 0 | 205.148 | 24.387 | 28.621 | 30.888 | 106.129 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4513 | 0 | 901.707 | 5.073 | 7.373 | 20.032 | 98.156 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.019 | 4476 | 0 | 894.456 | 5.1 | 7.461 | 19.639 | 98.156 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.013 | 2328 | 0 | 464.544 | 10.756 | 12.938 | 14.057 | 114.434 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.952 | 8.195 | 1000 | 0 | 111.706 | 44.059 | 52.822 | 57.206 | 106.098 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2795 | 0 | 558.232 | 8.808 | 10.36 | 11.563 | 101.313 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 2899 | 0 | 579.068 | 8.386 | 10.369 | 12.15 | 101.316 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.093 | 51.07 | 360 | 0 | 7.046 | 2556.906 | 2620.769 | 2636.301 | 122.375 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.044 | 34.032 | 240 | 0 | 7.05 | 1701.557 | 1750.364 | 1756.411 | 123.313 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.504 | 25.528 | 180 | 0 | 7.058 | 1274.836 | 1313.22 | 1323.57 | 124.77 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.997 | 16.998 | 120 | 0 | 7.06 | 850.291 | 877.083 | 886.86 | 125.645 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.172 | 14.198 | 100 | 0 | 7.056 | 785.739 | 848.853 | 858.73 | 137.523 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.511 | 8.492 | 60 | 0 | 7.05 | 426.101 | 442.271 | 452.056 | 137.523 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.665 | 5.66 | 40 | 0 | 7.06 | 283.008 | 284.25 | 285.977 | 137.523 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3579 | 0 | 715.596 | 1.359 | 1.478 | 1.701 | 137.586 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 939 | 0 | 187.751 | 5.291 | 5.376 | 5.691 | 137.586 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.006 | 483 | 0 | 96.574 | 10.32 | 10.39 | 10.597 | 137.586 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.024 | 99 | 0 | 19.747 | 50.578 | 50.666 | 51.019 | 137.586 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.014 | 50 | 0 | 9.931 | 100.639 | 100.692 | 100.969 | 137.586 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.983 | 200.629 | 200.717 | 200.844 | 137.586 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14118 | 0 | 2822.899 | 1.693 | 2.254 | 2.776 | 94.172 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13959 | 0 | 2791.119 | 1.726 | 2.222 | 2.56 | 95.316 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14273 | 0 | 2853.881 | 1.69 | 2.179 | 2.528 | 94.855 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13607 | 0 | 2720.849 | 1.759 | 2.352 | 2.793 | 95.371 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14145 | 0 | 2828.16 | 1.706 | 2.213 | 2.531 | 102.309 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12407 | 0 | 2480.586 | 1.946 | 2.499 | 2.97 | 103.02 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14173 | 0 | 2833.681 | 1.702 | 2.206 | 2.513 | 102.895 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13388 | 0 | 2677.007 | 1.79 | 2.394 | 2.838 | 109.547 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11540 | 0 | 2307.116 | 2.096 | 2.675 | 3.117 | 124.402 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6078 | 0 | 1214.773 | 4.07 | 5.081 | 5.7 | 129.488 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11595 | 0 | 2318.213 | 2.098 | 2.617 | 2.905 | 130.078 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11580 | 0 | 2315.217 | 2.099 | 2.614 | 2.883 | 102.293 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 8740 | 0 | 1746.611 | 2.652 | 3.895 | 5.287 | 132.582 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3370 | 0 | 673.176 | 7.394 | 9.074 | 10.145 | 133.508 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9274 | 0 | 1854.165 | 2.498 | 3.543 | 4.899 | 116.035 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9175 | 0 | 1834.093 | 2.547 | 3.429 | 4.548 | 115.172 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6944 | 0 | 1388.122 | 3.305 | 5.146 | 15.025 | 181.898 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.504 | 1940 | 0 | 387.195 | 12.902 | 15.464 | 16.491 | 145.035 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7314 | 0 | 1462.048 | 3.126 | 4.588 | 15.678 | 133.621 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.003 | 7193 | 0 | 1436.944 | 3.161 | 4.635 | 16.062 | 129.016 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.005 | 4571 | 0 | 910.744 | 5.217 | 7.548 | 19.174 | 167.328 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 4.345 | 1080 | 0 | 215.294 | 22.913 | 27.402 | 29.523 | 160.758 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4582 | 0 | 915.601 | 5.015 | 6.953 | 19.632 | 145.367 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4436 | 0 | 886.476 | 5.155 | 7.032 | 20.56 | 137.43 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2724 | 0 | 543.811 | 9.101 | 12.626 | 14.824 | 170.355 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.906 | 8.015 | 1000 | 0 | 112.282 | 43.818 | 51.751 | 55.603 | 168.16 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.006 | 2827 | 0 | 564.432 | 8.706 | 10.49 | 11.5 | 138.934 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2906 | 0 | 580.371 | 8.405 | 10.452 | 11.467 | 139.125 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.076 | 51.109 | 360 | 0 | 7.048 | 2558.694 | 2619.141 | 2631.023 | 170.895 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.042 | 34.104 | 240 | 0 | 7.05 | 1702.258 | 1742.074 | 1755.546 | 174.715 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.523 | 25.551 | 180 | 0 | 7.052 | 1274.952 | 1303.666 | 1314.776 | 174.777 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.023 | 17.042 | 120 | 0 | 7.049 | 852.612 | 877.062 | 887.004 | 174.777 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.185 | 14.251 | 100 | 0 | 7.05 | 790.96 | 851.159 | 862.094 | 175.34 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.511 | 8.506 | 60 | 0 | 7.049 | 425.671 | 439.309 | 442.398 | 175.34 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.669 | 5.681 | 40 | 0 | 7.056 | 283.133 | 296.729 | 297.776 | 175.344 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3546 | 0 | 708.999 | 1.393 | 1.492 | 1.822 | 192.953 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 936 | 0 | 187.136 | 5.302 | 5.429 | 5.651 | 193.016 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.01 | 478 | 0 | 95.403 | 10.422 | 10.579 | 10.966 | 193.016 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.028 | 99 | 0 | 19.725 | 50.634 | 50.713 | 51.185 | 193.016 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.036 | 2.016 | 50 | 0 | 9.929 | 100.641 | 100.747 | 100.824 | 193.016 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.009 | 25 | 0 | 4.981 | 200.666 | 200.924 | 201.21 | 193.141 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14020 | 0 | 2803.302 | 1.723 | 2.235 | 2.593 | 74.691 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13680 | 0 | 2735.147 | 1.763 | 2.278 | 2.607 | 75.113 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14004 | 0 | 2800.001 | 1.722 | 2.244 | 2.613 | 74.293 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13282 | 0 | 2655.658 | 1.802 | 2.427 | 2.853 | 74.414 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13896 | 0 | 2778.493 | 1.737 | 2.259 | 2.661 | 77.855 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12166 | 0 | 2432.391 | 1.983 | 2.579 | 3.028 | 77.855 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13867 | 0 | 2772.607 | 1.738 | 2.272 | 2.7 | 78.746 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13186 | 0 | 2635.955 | 1.807 | 2.514 | 3.04 | 80.039 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11491 | 0 | 2297.273 | 2.116 | 2.672 | 3.038 | 103.711 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6035 | 0 | 1206.251 | 4.09 | 5.082 | 5.718 | 91.664 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11451 | 0 | 2289.273 | 2.127 | 2.637 | 2.981 | 103.992 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11383 | 0 | 2275.832 | 2.138 | 2.657 | 3.004 | 78.832 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8502 | 0 | 1699.454 | 2.687 | 4.087 | 5.696 | 112.984 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.005 | 3377 | 0 | 674.355 | 7.396 | 8.912 | 9.938 | 99.07 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8768 | 0 | 1752.672 | 2.577 | 3.962 | 5.293 | 86.602 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8709 | 0 | 1740.998 | 2.606 | 4.087 | 5.405 | 85.852 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6681 | 0 | 1335.418 | 3.38 | 5.559 | 16.375 | 140.961 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.547 | 1886 | 0 | 376.492 | 13.273 | 15.868 | 17.174 | 101.828 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7032 | 0 | 1405.677 | 3.17 | 5.287 | 16.888 | 92.352 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6965 | 0 | 1392.367 | 3.184 | 5.203 | 7.728 | 92.352 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 4496 | 0 | 897.972 | 5.161 | 7.982 | 20.94 | 141.344 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 4.73 | 1057 | 0 | 210.711 | 23.812 | 28.131 | 29.536 | 101.559 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4618 | 0 | 922.88 | 4.859 | 7.562 | 21.126 | 96.93 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4394 | 0 | 878.156 | 5.08 | 8.365 | 21.537 | 96.992 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.009 | 2554 | 0 | 510.06 | 9.81 | 12.904 | 14.414 | 113.289 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.685 | 7.855 | 1000 | 0 | 115.145 | 42.665 | 51.865 | 54.364 | 103.762 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.009 | 2777 | 0 | 554.644 | 8.857 | 10.546 | 11.368 | 102.066 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2782 | 0 | 555.522 | 8.848 | 10.726 | 12.042 | 102.066 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.019 | 51.035 | 360 | 0 | 7.056 | 2561.682 | 2629.279 | 2642.927 | 117.754 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.005 | 33.989 | 240 | 0 | 7.058 | 1711.191 | 1752.509 | 1763.571 | 117.945 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.516 | 25.51 | 180 | 0 | 7.054 | 1278.258 | 1326.53 | 1331.44 | 121.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.0 | 17.0 | 120 | 0 | 7.059 | 849.685 | 889.778 | 894.667 | 125.199 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.163 | 14.174 | 100 | 0 | 7.061 | 743.867 | 838.55 | 851.808 | 120.293 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.512 | 8.501 | 60 | 0 | 7.049 | 424.176 | 450.566 | 453.572 | 120.293 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.677 | 5.669 | 40 | 0 | 7.046 | 283.57 | 298.001 | 298.787 | 120.293 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3592 | 0 | 718.293 | 1.348 | 1.467 | 1.733 | 136.434 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.0 | 940 | 0 | 187.903 | 5.286 | 5.378 | 5.669 | 136.434 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.008 | 483 | 0 | 96.5 | 10.323 | 10.415 | 10.69 | 136.434 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.026 | 99 | 0 | 19.772 | 50.519 | 50.612 | 50.745 | 136.434 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.034 | 2.014 | 50 | 0 | 9.933 | 100.597 | 100.793 | 101.101 | 136.434 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.626 | 200.662 | 200.671 | 136.434 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.157 | 1000 | 0 | 61.96 | 41.001 | 42.016 | 42.372 | 30.879 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.119 | 1000 | 0 | 61.956 | 40.999 | 41.999 | 42.571 | 31.258 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.159 | 16.212 | 1000 | 0 | 61.885 | 41.01 | 42.181 | 42.841 | 31.344 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.166 | 16.174 | 1000 | 0 | 61.857 | 41.011 | 42.166 | 42.812 | 31.785 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.159 | 16.091 | 1000 | 0 | 61.886 | 41.009 | 42.141 | 42.708 | 31.816 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.176 | 16.111 | 1000 | 0 | 61.821 | 41.015 | 42.223 | 42.977 | 31.859 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.189 | 16.138 | 1000 | 0 | 61.77 | 41.024 | 42.28 | 42.76 | 31.879 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.16 | 16.222 | 1000 | 0 | 61.883 | 41.013 | 42.141 | 42.849 | 32.352 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.947 | 13.344 | 1000 | 0 | 66.901 | 40.978 | 41.977 | 42.859 | 32.426 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.257 | 13.618 | 1000 | 0 | 70.143 | 40.976 | 41.982 | 42.735 | 32.426 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 10369 | 0 | 2072.309 | 1.381 | 2.057 | 4.184 | 32.855 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.909 | 13.526 | 1000 | 0 | 67.075 | 40.989 | 41.991 | 42.923 | 40.398 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.465 | 11.778 | 1000 | 0 | 87.223 | 41.652 | 42.367 | 43.514 | 40.398 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.543 | 11.201 | 1000 | 0 | 86.631 | 41.811 | 42.785 | 43.824 | 40.398 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 7543 | 0 | 1507.854 | 1.7 | 2.752 | 43.528 | 40.398 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.475 | 14.057 | 1000 | 0 | 80.159 | 41.947 | 42.962 | 43.965 | 47.965 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.592 | 15.003 | 1000 | 0 | 68.53 | 41.985 | 43.065 | 44.621 | 47.965 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.992 | 15.199 | 1000 | 0 | 71.471 | 41.986 | 43.209 | 45.943 | 47.965 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 5938 | 0 | 1186.883 | 2.201 | 3.672 | 19.439 | 47.965 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.203 | 15.063 | 1000 | 0 | 65.776 | 42.912 | 43.957 | 45.305 | 53.004 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.569 | 15.703 | 1000 | 0 | 68.64 | 43.547 | 44.985 | 45.953 | 51.227 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.945 | 15.776 | 1000 | 0 | 66.91 | 43.831 | 45.097 | 48.047 | 51.227 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 4138 | 0 | 827.018 | 3.229 | 5.972 | 21.491 | 51.938 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.14 | 16.726 | 1000 | 0 | 61.96 | 44.448 | 46.287 | 50.031 | 59.594 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.641 | 16.549 | 1000 | 0 | 63.935 | 45.896 | 48.052 | 50.282 | 59.594 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.53 | 16.468 | 1000 | 0 | 60.497 | 45.959 | 48.085 | 50.822 | 54.211 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.068 | 2704 | 0 | 539.816 | 5.394 | 8.246 | 13.333 | 60.223 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.883 | 17.604 | 1000 | 0 | 59.231 | 47.37 | 50.897 | 54.904 | 75.398 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.033 | 28.807 | 363 | 0 | 12.503 | 241.962 | 243.114 | 19631.965 | 74.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.44 | 19.195 | 243 | 0 | 12.5 | 241.952 | 243.053 | 12816.24 | 74.988 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.639 | 14.401 | 183 | 0 | 12.501 | 241.953 | 242.851 | 10039.091 | 74.996 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.841 | 9.599 | 123 | 0 | 12.499 | 241.972 | 242.84 | 5237.046 | 75.0 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.841 | 9.6 | 103 | 0 | 10.467 | 241.982 | 242.839 | 5138.857 | 75.004 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 4.8 | 63 | 0 | 12.493 | 242.008 | 242.727 | 243.386 | 75.008 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.793 | 42 | 0 | 8.335 | 241.863 | 242.187 | 242.721 | 75.012 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.022 | 122 | 0 | 24.361 | 41.965 | 42.432 | 42.903 | 75.043 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.031 | 112 | 0 | 22.293 | 45.944 | 46.243 | 46.974 | 75.098 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.028 | 99 | 0 | 19.651 | 50.985 | 51.979 | 52.03 | 75.102 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.074 | 55 | 0 | 10.989 | 91.94 | 92.053 | 92.968 | 75.102 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.059 | 2.079 | 36 | 0 | 7.116 | 141.927 | 142.013 | 142.028 | 75.109 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.38 | 21 | 0 | 4.172 | 241.907 | 241.992 | 242.026 | 75.109 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.138 | 16.152 | 1000 | 0 | 61.964 | 40.999 | 41.988 | 42.436 | 31.125 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.191 | 16.122 | 1000 | 0 | 61.762 | 41.027 | 42.264 | 42.836 | 31.258 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.141 | 1000 | 0 | 61.955 | 41.001 | 42.06 | 42.504 | 31.348 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.146 | 16.101 | 1000 | 0 | 61.936 | 41.002 | 42.023 | 42.427 | 31.449 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.198 | 1000 | 0 | 61.986 | 40.992 | 41.985 | 42.458 | 31.496 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.162 | 16.1 | 1000 | 0 | 61.874 | 41.004 | 42.063 | 42.736 | 31.758 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.142 | 16.087 | 1000 | 0 | 61.951 | 40.996 | 41.99 | 42.273 | 31.777 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.102 | 1000 | 0 | 62.012 | 40.99 | 41.978 | 42.14 | 32.195 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.115 | 12.747 | 1000 | 0 | 66.161 | 40.978 | 41.973 | 42.939 | 32.254 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.723 | 13.6 | 1000 | 0 | 67.92 | 40.982 | 41.983 | 42.926 | 32.293 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10472 | 0 | 2093.582 | 1.361 | 2.035 | 3.879 | 32.789 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.451 | 14.321 | 1000 | 0 | 69.198 | 40.996 | 42.007 | 42.994 | 39.223 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.01 | 12.308 | 1000 | 0 | 76.861 | 41.866 | 42.708 | 53.393 | 39.223 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.313 | 12.789 | 1000 | 0 | 81.216 | 41.869 | 42.306 | 43.022 | 39.223 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.031 | 8064 | 0 | 1611.594 | 1.635 | 2.593 | 43.81 | 39.234 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.651 | 13.759 | 1000 | 0 | 68.253 | 41.963 | 42.961 | 43.864 | 43.309 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.048 | 15.451 | 1000 | 0 | 66.456 | 41.98 | 43.019 | 47.017 | 43.309 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.859 | 15.834 | 1000 | 0 | 67.298 | 41.98 | 43.022 | 45.723 | 43.309 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6024 | 0 | 1204.142 | 2.187 | 3.517 | 45.957 | 44.184 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.359 | 15.789 | 1000 | 0 | 65.108 | 42.912 | 43.971 | 45.084 | 49.254 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.419 | 15.817 | 1000 | 0 | 64.856 | 43.647 | 44.988 | 47.059 | 47.18 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.073 | 15.469 | 1000 | 0 | 66.344 | 43.428 | 44.952 | 46.673 | 47.18 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 4251 | 0 | 849.232 | 3.2 | 5.35 | 23.813 | 50.348 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.148 | 16.317 | 1000 | 0 | 61.927 | 44.011 | 46.007 | 56.421 | 59.859 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.251 | 1000 | 0 | 62.053 | 45.929 | 47.885 | 49.496 | 59.859 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.433 | 17.075 | 1000 | 0 | 64.795 | 45.961 | 48.257 | 51.015 | 59.859 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.01 | 2.007 | 2925 | 0 | 583.878 | 5.051 | 6.877 | 10.988 | 63.867 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.812 | 17.779 | 1000 | 0 | 56.143 | 47.93 | 50.324 | 53.799 | 78.402 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.05 | 28.789 | 363 | 0 | 12.496 | 242.022 | 243.664 | 19640.171 | 74.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.442 | 19.207 | 243 | 0 | 12.499 | 241.968 | 243.142 | 12821.781 | 74.297 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.639 | 14.402 | 183 | 0 | 12.501 | 241.971 | 242.817 | 10036.128 | 74.309 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.845 | 9.604 | 123 | 0 | 12.494 | 241.976 | 243.025 | 5241.88 | 74.316 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.841 | 9.599 | 103 | 0 | 10.466 | 241.961 | 242.712 | 5142.37 | 74.316 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 4.8 | 63 | 0 | 12.491 | 241.995 | 242.559 | 243.004 | 74.316 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.794 | 42 | 0 | 8.336 | 241.899 | 242.768 | 243.223 | 74.32 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.031 | 122 | 0 | 24.363 | 41.96 | 42.114 | 42.939 | 74.324 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.029 | 112 | 0 | 22.303 | 45.933 | 46.101 | 46.896 | 74.352 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.023 | 99 | 0 | 19.617 | 50.995 | 52.009 | 52.122 | 74.363 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.075 | 55 | 0 | 10.972 | 91.957 | 92.086 | 92.25 | 74.363 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.087 | 36 | 0 | 7.106 | 141.945 | 142.961 | 142.969 | 74.363 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.379 | 21 | 0 | 4.169 | 241.886 | 242.128 | 242.153 | 74.363 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.228 | 16.204 | 1000 | 0 | 61.621 | 41.11 | 42.374 | 42.972 | 31.461 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.148 | 16.17 | 1000 | 0 | 61.927 | 41.001 | 42.005 | 42.455 | 31.59 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.133 | 1000 | 0 | 61.993 | 40.986 | 41.99 | 42.387 | 31.633 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.204 | 16.13 | 1000 | 0 | 61.714 | 41.057 | 42.329 | 42.85 | 31.879 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.201 | 16.107 | 1000 | 0 | 61.726 | 41.045 | 42.309 | 42.911 | 31.934 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.236 | 16.123 | 1000 | 0 | 61.591 | 41.139 | 42.356 | 42.904 | 31.949 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.15 | 16.124 | 1000 | 0 | 61.92 | 40.997 | 42.034 | 42.392 | 32.102 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.155 | 16.108 | 1000 | 0 | 61.9 | 41.005 | 42.099 | 42.713 | 33.008 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.423 | 13.478 | 1000 | 0 | 69.336 | 40.979 | 41.983 | 42.653 | 33.008 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.152 | 13.617 | 1000 | 0 | 65.999 | 40.976 | 41.974 | 42.906 | 33.035 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10480 | 0 | 2095.178 | 1.367 | 2.039 | 3.875 | 33.262 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.775 | 12.47 | 1000 | 0 | 67.684 | 40.988 | 41.996 | 42.946 | 38.586 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.958 | 12.029 | 1000 | 0 | 77.171 | 41.88 | 42.427 | 43.141 | 38.582 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.393 | 12.677 | 1000 | 0 | 74.665 | 41.914 | 42.625 | 43.694 | 38.582 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.034 | 8001 | 0 | 1599.479 | 1.627 | 2.645 | 42.295 | 38.777 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.447 | 14.326 | 1000 | 0 | 69.221 | 41.954 | 42.962 | 43.939 | 45.211 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.735 | 15.786 | 1000 | 0 | 67.865 | 41.982 | 43.168 | 44.632 | 45.211 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.71 | 14.904 | 1000 | 0 | 67.981 | 41.983 | 43.186 | 44.533 | 45.211 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 5955 | 0 | 1190.213 | 2.245 | 3.659 | 21.6 | 45.211 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.547 | 15.594 | 1000 | 0 | 64.319 | 42.922 | 43.979 | 45.576 | 51.422 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.405 | 15.981 | 1000 | 0 | 64.915 | 43.802 | 44.99 | 47.056 | 48.523 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.027 | 15.079 | 1000 | 0 | 62.393 | 43.08 | 44.903 | 46.896 | 48.523 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 4236 | 0 | 846.302 | 3.205 | 5.307 | 22.053 | 51.277 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.554 | 16.229 | 1000 | 0 | 60.408 | 44.191 | 46.143 | 48.974 | 61.273 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.355 | 15.791 | 1000 | 0 | 61.145 | 45.925 | 47.978 | 50.992 | 61.273 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.218 | 17.132 | 1000 | 0 | 61.662 | 46.019 | 48.53 | 50.672 | 61.273 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.054 | 2751 | 0 | 549.354 | 5.35 | 8.23 | 11.962 | 65.281 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.572 | 17.915 | 1000 | 0 | 56.909 | 47.912 | 50.365 | 58.845 | 75.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.036 | 28.787 | 363 | 0 | 12.502 | 241.997 | 243.118 | 19630.921 | 75.754 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.431 | 19.196 | 243 | 0 | 12.506 | 241.928 | 242.894 | 12815.542 | 75.758 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.634 | 14.401 | 183 | 0 | 12.505 | 241.957 | 242.904 | 10035.159 | 75.762 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.842 | 9.601 | 123 | 0 | 12.497 | 241.938 | 243.027 | 5238.527 | 75.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.595 | 103 | 0 | 10.477 | 241.864 | 242.33 | 5138.953 | 75.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.799 | 63 | 0 | 12.5 | 241.907 | 242.61 | 242.801 | 75.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.792 | 42 | 0 | 8.338 | 241.849 | 242.246 | 242.839 | 75.777 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.02 | 122 | 0 | 24.357 | 41.97 | 42.179 | 42.984 | 75.816 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.029 | 112 | 0 | 22.342 | 45.951 | 46.169 | 46.956 | 75.844 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 2.016 | 99 | 0 | 19.687 | 50.982 | 51.976 | 52.046 | 75.859 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.084 | 2.07 | 56 | 0 | 11.015 | 91.256 | 92.012 | 92.19 | 75.867 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.089 | 36 | 0 | 7.099 | 141.964 | 142.144 | 142.705 | 75.871 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.028 | 2.372 | 21 | 0 | 4.177 | 240.972 | 242.007 | 242.03 | 75.871 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 14543 | 0 | 2907.589 | 1.666 | 2.137 | 2.416 | 78.699 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14197 | 0 | 2838.775 | 1.699 | 2.187 | 2.473 | 79.734 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14477 | 0 | 2894.561 | 1.672 | 2.135 | 2.394 | 79.102 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14030 | 0 | 2805.162 | 1.712 | 2.232 | 2.615 | 79.074 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14390 | 0 | 2877.088 | 1.683 | 2.143 | 2.451 | 82.254 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12564 | 0 | 2511.914 | 1.933 | 2.451 | 2.794 | 82.086 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14439 | 0 | 2886.825 | 1.674 | 2.143 | 2.483 | 82.395 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13978 | 0 | 2794.866 | 1.717 | 2.251 | 2.593 | 86.363 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11742 | 0 | 2347.481 | 2.081 | 2.576 | 2.895 | 108.813 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 6141 | 0 | 1227.266 | 3.993 | 4.986 | 5.454 | 95.141 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11887 | 0 | 2376.662 | 2.048 | 2.548 | 2.848 | 108.074 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11712 | 0 | 2341.601 | 2.072 | 2.553 | 2.895 | 85.328 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9334 | 0 | 1866.04 | 2.466 | 3.368 | 4.565 | 118.57 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3418 | 0 | 682.692 | 7.275 | 8.889 | 9.969 | 103.25 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9239 | 0 | 1847.084 | 2.482 | 3.392 | 4.718 | 90.438 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9193 | 0 | 1837.879 | 2.508 | 3.408 | 4.516 | 90.5 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7096 | 0 | 1418.322 | 3.173 | 4.526 | 20.373 | 144.273 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.539 | 1959 | 0 | 391.05 | 12.785 | 15.283 | 17.064 | 107.688 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 7314 | 0 | 1461.512 | 3.07 | 4.299 | 20.223 | 92.625 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7301 | 0 | 1459.206 | 3.055 | 4.327 | 19.933 | 91.723 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4489 | 0 | 896.803 | 5.141 | 6.83 | 23.186 | 133.063 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.265 | 1057 | 0 | 210.54 | 23.752 | 27.712 | 29.687 | 108.508 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 5004 | 0 | 999.625 | 4.49 | 6.224 | 23.133 | 108.977 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4642 | 0 | 927.741 | 4.882 | 6.577 | 23.146 | 108.977 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2732 | 0 | 545.573 | 9.049 | 10.732 | 12.037 | 112.543 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.662 | 7.889 | 1000 | 0 | 115.449 | 43.214 | 49.7 | 52.444 | 109.133 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2970 | 0 | 593.221 | 8.284 | 9.677 | 10.646 | 109.875 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 2964 | 0 | 592.109 | 8.273 | 9.94 | 10.827 | 109.938 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.159 | 51.163 | 360 | 0 | 7.037 | 2557.751 | 2602.102 | 2615.298 | 129.305 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.109 | 34.125 | 240 | 0 | 7.036 | 1705.618 | 1738.453 | 1747.704 | 133.914 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.581 | 25.578 | 180 | 0 | 7.036 | 1279.287 | 1313.214 | 1318.21 | 134.355 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.055 | 17.05 | 120 | 0 | 7.036 | 853.377 | 876.826 | 887.469 | 134.355 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.246 | 14.23 | 100 | 0 | 7.02 | 817.79 | 858.982 | 863.87 | 134.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.527 | 8.526 | 60 | 0 | 7.036 | 426.96 | 441.023 | 441.828 | 136.918 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.687 | 5.678 | 40 | 0 | 7.034 | 284.192 | 287.998 | 290.312 | 142.484 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 1643 | 0 | 328.513 | 3.016 | 3.299 | 3.472 | 143.625 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.009 | 491 | 0 | 98.124 | 10.214 | 10.702 | 10.787 | 143.629 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.007 | 354 | 0 | 70.645 | 14.163 | 14.356 | 14.559 | 143.629 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.021 | 99 | 0 | 19.798 | 50.448 | 50.554 | 50.723 | 143.629 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.013 | 50 | 0 | 9.945 | 100.501 | 100.543 | 100.558 | 143.629 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.543 | 200.618 | 201.339 | 143.629 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14441 | 0 | 2887.503 | 1.662 | 2.198 | 2.751 | 99.508 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14111 | 0 | 2821.348 | 1.708 | 2.215 | 2.615 | 104.059 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14576 | 0 | 2914.341 | 1.658 | 2.132 | 2.436 | 103.23 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14180 | 0 | 2835.303 | 1.7 | 2.181 | 2.55 | 103.281 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14411 | 0 | 2881.342 | 1.674 | 2.157 | 2.457 | 112.031 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12631 | 0 | 2525.474 | 1.923 | 2.423 | 2.74 | 111.109 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14529 | 0 | 2905.016 | 1.667 | 2.13 | 2.435 | 112.992 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14086 | 0 | 2816.388 | 1.705 | 2.219 | 2.616 | 115.414 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11838 | 0 | 2366.869 | 2.058 | 2.563 | 2.878 | 136.836 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6230 | 0 | 1245.185 | 3.938 | 4.978 | 5.545 | 136.828 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11861 | 0 | 2371.422 | 2.053 | 2.562 | 2.878 | 135.105 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11864 | 0 | 2371.876 | 2.033 | 2.52 | 2.81 | 120.07 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9070 | 0 | 1813.25 | 2.532 | 3.611 | 4.682 | 141.988 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3436 | 0 | 686.4 | 7.237 | 8.803 | 9.782 | 144.141 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9196 | 0 | 1838.551 | 2.486 | 3.551 | 4.651 | 126.375 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9106 | 0 | 1820.438 | 2.499 | 3.594 | 4.755 | 126.047 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.022 | 2.003 | 7091 | 0 | 1411.939 | 3.163 | 4.727 | 20.343 | 175.574 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.454 | 1995 | 0 | 398.211 | 12.463 | 14.916 | 16.341 | 151.672 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7261 | 0 | 1451.467 | 3.045 | 4.636 | 20.922 | 133.738 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7181 | 0 | 1435.585 | 3.116 | 4.314 | 20.941 | 133.941 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.022 | 4528 | 0 | 904.542 | 5.028 | 6.803 | 24.21 | 173.133 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.023 | 4.447 | 1088 | 0 | 216.595 | 23.021 | 26.939 | 28.821 | 175.406 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4548 | 0 | 908.698 | 4.944 | 7.003 | 25.066 | 150.492 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4618 | 0 | 922.723 | 4.823 | 6.747 | 24.762 | 150.305 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2771 | 0 | 553.362 | 8.923 | 10.546 | 11.333 | 181.805 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.709 | 7.763 | 1000 | 0 | 114.828 | 43.527 | 49.803 | 52.63 | 187.367 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2862 | 0 | 571.438 | 8.593 | 10.274 | 11.377 | 157.141 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2933 | 0 | 585.67 | 8.384 | 9.852 | 11.733 | 154.398 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.179 | 51.179 | 360 | 0 | 7.034 | 2558.069 | 2600.669 | 2619.723 | 173.801 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.132 | 34.13 | 240 | 0 | 7.032 | 1705.088 | 1737.521 | 1754.568 | 196.434 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.585 | 25.593 | 180 | 0 | 7.035 | 1278.942 | 1302.334 | 1309.86 | 196.434 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.07 | 17.08 | 120 | 0 | 7.03 | 853.88 | 874.792 | 885.963 | 196.496 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.235 | 14.245 | 100 | 0 | 7.025 | 751.18 | 843.741 | 851.342 | 196.496 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.532 | 8.533 | 60 | 0 | 7.032 | 426.753 | 440.988 | 447.219 | 196.496 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.691 | 5.687 | 40 | 0 | 7.028 | 283.859 | 291.948 | 294.282 | 190.68 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1632 | 0 | 326.348 | 3.049 | 3.311 | 3.474 | 207.309 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.0 | 487 | 0 | 97.371 | 10.308 | 10.816 | 10.983 | 208.133 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.014 | 350 | 0 | 69.957 | 14.314 | 14.592 | 14.734 | 208.258 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.049 | 2.017 | 100 | 0 | 19.807 | 50.403 | 50.51 | 50.864 | 208.258 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.011 | 50 | 0 | 9.945 | 100.492 | 100.554 | 100.924 | 208.258 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.518 | 200.727 | 200.821 | 208.258 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14613 | 0 | 2921.792 | 1.657 | 2.13 | 2.404 | 77.891 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14192 | 0 | 2837.718 | 1.708 | 2.165 | 2.443 | 78.086 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14528 | 0 | 2904.849 | 1.669 | 2.125 | 2.404 | 77.609 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14076 | 0 | 2814.418 | 1.711 | 2.205 | 2.539 | 77.563 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14398 | 0 | 2878.935 | 1.684 | 2.133 | 2.452 | 80.813 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12531 | 0 | 2505.534 | 1.938 | 2.448 | 2.841 | 81.148 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14336 | 0 | 2866.285 | 1.688 | 2.156 | 2.526 | 81.352 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13934 | 0 | 2786.22 | 1.726 | 2.236 | 2.657 | 82.965 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 11643 | 0 | 2327.926 | 2.091 | 2.596 | 2.965 | 106.363 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6181 | 0 | 1235.388 | 3.981 | 4.898 | 5.433 | 95.527 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11744 | 0 | 2348.088 | 2.077 | 2.566 | 2.833 | 106.32 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11600 | 0 | 2319.282 | 2.082 | 2.577 | 2.908 | 88.742 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9136 | 0 | 1826.235 | 2.5 | 3.482 | 4.639 | 121.449 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3412 | 0 | 681.515 | 7.286 | 8.921 | 9.817 | 103.781 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9300 | 0 | 1859.143 | 2.452 | 3.375 | 4.803 | 96.582 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9057 | 0 | 1810.639 | 2.522 | 3.472 | 4.641 | 96.895 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7175 | 0 | 1434.247 | 3.123 | 4.408 | 22.057 | 144.273 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.545 | 1948 | 0 | 388.742 | 12.848 | 15.322 | 16.676 | 108.578 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7304 | 0 | 1460.093 | 3.069 | 4.195 | 21.769 | 100.25 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7221 | 0 | 1443.308 | 3.068 | 4.266 | 21.799 | 100.523 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4392 | 0 | 877.746 | 5.228 | 6.744 | 25.008 | 131.641 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 4.446 | 1087 | 0 | 216.512 | 22.95 | 27.396 | 29.036 | 112.207 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4796 | 0 | 958.507 | 4.702 | 6.309 | 24.115 | 117.102 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4654 | 0 | 930.083 | 4.814 | 6.286 | 25.142 | 117.164 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2778 | 0 | 554.735 | 8.902 | 10.501 | 11.486 | 117.543 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.746 | 7.884 | 1000 | 0 | 114.338 | 43.449 | 51.139 | 53.238 | 115.336 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2885 | 0 | 576.063 | 8.526 | 10.226 | 11.201 | 119.641 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 2972 | 0 | 593.578 | 8.242 | 9.713 | 10.617 | 119.652 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.178 | 51.184 | 360 | 0 | 7.034 | 2555.821 | 2612.293 | 2627.038 | 141.453 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.113 | 34.116 | 240 | 0 | 7.035 | 1702.257 | 1743.401 | 1754.33 | 141.344 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.578 | 25.587 | 180 | 0 | 7.037 | 1277.885 | 1313.562 | 1329.013 | 142.594 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.055 | 17.054 | 120 | 0 | 7.036 | 853.997 | 876.811 | 878.452 | 142.66 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.221 | 14.218 | 100 | 0 | 7.032 | 761.672 | 857.717 | 868.062 | 142.66 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.533 | 8.533 | 60 | 0 | 7.031 | 426.412 | 443.875 | 445.177 | 142.66 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.688 | 5.694 | 40 | 0 | 7.033 | 284.566 | 292.347 | 295.07 | 142.66 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1674 | 0 | 334.64 | 2.968 | 3.27 | 3.328 | 151.809 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.003 | 511 | 0 | 102.109 | 9.771 | 10.483 | 10.907 | 151.809 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.008 | 354 | 0 | 70.707 | 14.191 | 14.407 | 14.598 | 151.809 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.046 | 2.02 | 100 | 0 | 19.819 | 50.39 | 50.593 | 50.781 | 151.809 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.011 | 50 | 0 | 9.944 | 100.493 | 100.591 | 100.67 | 151.809 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.507 | 200.572 | 200.716 | 151.809 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

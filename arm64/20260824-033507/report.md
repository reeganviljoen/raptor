# Puma vs Raptor Simulation

Run ID: `20260824-033507`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.107 | 1000 | 0 | 62.081 | 40.982 | 41.987 | 42.589 | 28.945 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.094 | 1000 | 0 | 62.105 | 40.984 | 41.952 | 42.261 | 29.164 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.096 | 1000 | 0 | 62.077 | 40.983 | 41.973 | 42.417 | 29.453 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.086 | 1000 | 0 | 62.1 | 40.983 | 41.818 | 42.47 | 29.527 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.092 | 1000 | 0 | 62.117 | 40.98 | 41.671 | 42.118 | 29.527 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.092 | 16.087 | 1000 | 0 | 62.143 | 40.98 | 41.381 | 42.155 | 29.676 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.087 | 1000 | 0 | 62.067 | 40.983 | 41.894 | 42.301 | 29.68 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.092 | 1000 | 0 | 62.116 | 40.981 | 41.962 | 42.232 | 30.469 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.978 | 15.085 | 1000 | 0 | 66.764 | 40.973 | 41.919 | 42.085 | 30.469 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.222 | 14.525 | 1000 | 0 | 65.693 | 40.973 | 41.957 | 42.132 | 30.609 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 14741 | 0 | 2947.589 | 0.94 | 1.577 | 5.972 | 30.809 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.88 | 15.145 | 1000 | 0 | 67.204 | 40.975 | 41.963 | 42.498 | 42.227 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.577 | 9.746 | 1000 | 0 | 79.508 | 40.972 | 41.979 | 42.284 | 42.227 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.246 | 12.374 | 1000 | 0 | 81.661 | 40.973 | 41.998 | 42.711 | 42.227 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11166 | 0 | 2232.459 | 1.199 | 2.332 | 42.642 | 42.227 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.825 | 13.071 | 1000 | 0 | 72.332 | 41.755 | 42.658 | 43.382 | 50.871 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.042 | 14.014 | 1000 | 0 | 76.675 | 41.947 | 42.967 | 43.85 | 50.871 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.001 | 14.456 | 1000 | 0 | 71.424 | 41.954 | 42.952 | 43.756 | 50.871 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 7697 | 0 | 1538.818 | 1.568 | 3.236 | 37.849 | 50.871 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.575 | 14.936 | 1000 | 0 | 68.609 | 41.968 | 43.072 | 44.157 | 64.094 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.584 | 15.308 | 1000 | 0 | 68.569 | 41.976 | 43.682 | 46.273 | 64.094 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.87 | 15.323 | 1000 | 0 | 67.249 | 42.622 | 44.006 | 46.103 | 64.094 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 5954 | 0 | 1189.973 | 2.214 | 4.437 | 12.829 | 64.094 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.389 | 15.804 | 1000 | 0 | 64.981 | 42.975 | 45.06 | 47.487 | 73.426 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.405 | 16.223 | 1000 | 0 | 64.916 | 43.956 | 46.426 | 48.951 | 69.516 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.528 | 16.284 | 1000 | 0 | 64.4 | 43.989 | 47.201 | 48.897 | 69.516 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3713 | 0 | 741.605 | 3.776 | 6.942 | 11.424 | 74.73 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.024 | 17.561 | 1000 | 0 | 58.741 | 45.91 | 50.648 | 51.975 | 87.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.998 | 28.748 | 363 | 0 | 12.518 | 241.739 | 243.012 | 19607.944 | 86.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.407 | 19.165 | 243 | 0 | 12.521 | 241.5 | 243.011 | 12798.683 | 86.789 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.616 | 14.369 | 183 | 0 | 12.52 | 241.579 | 242.82 | 10024.632 | 86.809 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.822 | 9.581 | 123 | 0 | 12.522 | 241.312 | 242.47 | 5231.409 | 86.844 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.588 | 103 | 0 | 10.484 | 241.733 | 242.49 | 5132.113 | 86.848 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.793 | 63 | 0 | 12.513 | 241.642 | 242.374 | 243.329 | 86.852 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.798 | 42 | 0 | 8.345 | 241.504 | 242.18 | 242.257 | 86.914 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.018 | 122 | 0 | 24.337 | 41.97 | 42.962 | 43.055 | 86.918 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.023 | 2.011 | 110 | 0 | 21.9 | 46.957 | 47.949 | 47.987 | 86.969 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 2.035 | 99 | 0 | 19.694 | 50.973 | 51.971 | 52.029 | 86.969 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.089 | 2.069 | 56 | 0 | 11.005 | 91.894 | 92.016 | 92.146 | 87.035 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.086 | 36 | 0 | 7.104 | 141.957 | 142.006 | 142.067 | 87.039 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.382 | 21 | 0 | 4.169 | 241.934 | 242.163 | 242.721 | 87.039 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.144 | 1000 | 0 | 62.09 | 40.978 | 41.912 | 42.28 | 27.574 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.119 | 1000 | 0 | 62.114 | 40.978 | 41.973 | 42.155 | 27.578 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.101 | 1000 | 0 | 62.128 | 40.98 | 41.696 | 42.194 | 27.617 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.138 | 1000 | 0 | 62.031 | 40.98 | 41.951 | 42.376 | 27.691 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.141 | 1000 | 0 | 62.106 | 40.981 | 41.835 | 42.347 | 27.711 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.109 | 1000 | 0 | 62.087 | 40.981 | 41.97 | 42.237 | 27.719 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.114 | 1000 | 0 | 62.088 | 40.975 | 41.943 | 42.296 | 27.734 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.144 | 1000 | 0 | 62.017 | 40.979 | 41.955 | 42.27 | 28.344 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.183 | 13.605 | 1000 | 0 | 75.855 | 40.963 | 41.951 | 42.226 | 28.344 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.757 | 13.697 | 1000 | 0 | 67.764 | 40.97 | 41.961 | 42.155 | 28.344 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 13570 | 0 | 2713.199 | 1.007 | 1.778 | 13.448 | 28.703 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.794 | 13.97 | 1000 | 0 | 67.597 | 40.972 | 42.014 | 42.948 | 32.668 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.601 | 6.132 | 1000 | 0 | 94.332 | 41.001 | 42.312 | 43.274 | 32.668 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.182 | 10.664 | 1000 | 0 | 108.91 | 40.971 | 42.468 | 43.409 | 32.668 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10243 | 0 | 2047.914 | 1.282 | 2.546 | 33.321 | 32.734 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.432 | 11.447 | 1000 | 0 | 74.45 | 41.93 | 42.927 | 43.392 | 40.672 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.98 | 13.922 | 1000 | 0 | 71.531 | 41.941 | 42.971 | 44.181 | 40.672 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.727 | 13.999 | 1000 | 0 | 72.851 | 41.946 | 42.937 | 43.814 | 40.672 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7323 | 0 | 1463.679 | 1.663 | 3.423 | 17.431 | 40.672 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.946 | 14.986 | 1000 | 0 | 71.707 | 41.96 | 43.206 | 44.323 | 43.754 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.848 | 15.434 | 1000 | 0 | 67.35 | 42.153 | 44.004 | 47.954 | 43.754 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.814 | 15.393 | 1000 | 0 | 67.504 | 42.768 | 44.188 | 45.933 | 43.754 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 5262 | 0 | 1051.705 | 2.462 | 4.928 | 24.486 | 45.199 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.917 | 16.201 | 1000 | 0 | 62.825 | 43.853 | 45.99 | 48.427 | 51.609 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.265 | 16.394 | 1000 | 0 | 65.511 | 43.966 | 47.014 | 49.574 | 51.16 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.929 | 16.138 | 1000 | 0 | 62.779 | 43.959 | 46.304 | 50.222 | 51.16 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3438 | 0 | 686.716 | 3.924 | 7.427 | 22.433 | 57.172 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.502 | 17.55 | 1000 | 0 | 60.597 | 45.593 | 49.913 | 51.489 | 83.074 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.997 | 28.748 | 363 | 0 | 12.519 | 241.741 | 243.052 | 19603.423 | 83.313 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.425 | 19.173 | 243 | 0 | 12.51 | 241.892 | 243.01 | 12804.762 | 83.316 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.376 | 183 | 0 | 12.513 | 241.761 | 243.341 | 10024.545 | 83.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.588 | 123 | 0 | 12.514 | 241.659 | 242.92 | 5232.366 | 83.344 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.58 | 103 | 0 | 10.477 | 241.72 | 242.65 | 5134.195 | 83.348 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.793 | 63 | 0 | 12.499 | 241.936 | 242.272 | 242.984 | 83.352 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.796 | 42 | 0 | 8.342 | 241.649 | 242.267 | 242.779 | 83.352 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.018 | 122 | 0 | 24.36 | 41.965 | 42.373 | 42.949 | 83.352 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.005 | 109 | 0 | 21.762 | 46.968 | 47.923 | 48.045 | 83.363 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 2.038 | 99 | 0 | 19.675 | 50.982 | 51.985 | 52.049 | 83.367 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.091 | 2.071 | 56 | 0 | 11.0 | 91.867 | 92.076 | 92.238 | 83.371 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.069 | 2.089 | 36 | 0 | 7.101 | 141.95 | 142.955 | 143.026 | 83.371 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.383 | 21 | 0 | 4.168 | 241.911 | 242.955 | 242.971 | 83.375 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.164 | 1000 | 0 | 61.983 | 40.976 | 41.981 | 42.527 | 27.629 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.172 | 1000 | 0 | 62.044 | 40.975 | 41.963 | 42.236 | 27.648 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.159 | 1000 | 0 | 62.074 | 40.973 | 41.964 | 42.36 | 27.656 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.163 | 1000 | 0 | 62.069 | 40.975 | 41.95 | 42.235 | 27.754 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.162 | 1000 | 0 | 62.028 | 40.978 | 41.97 | 42.424 | 27.758 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.151 | 16.165 | 1000 | 0 | 61.914 | 40.976 | 41.967 | 42.374 | 27.758 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.155 | 1000 | 0 | 62.067 | 40.974 | 41.842 | 42.23 | 27.762 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.194 | 1000 | 0 | 62.036 | 40.982 | 41.954 | 42.24 | 28.391 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.063 | 13.036 | 1000 | 0 | 71.107 | 40.957 | 41.973 | 42.929 | 28.473 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.562 | 12.149 | 1000 | 0 | 68.671 | 40.959 | 41.959 | 42.231 | 28.473 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 12440 | 0 | 2487.101 | 1.085 | 2.066 | 6.399 | 28.809 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.186 | 13.889 | 1000 | 0 | 70.49 | 40.968 | 42.035 | 42.981 | 34.504 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.891 | 9.384 | 1000 | 0 | 112.477 | 40.976 | 42.305 | 43.229 | 34.504 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.258 | 9.612 | 1000 | 0 | 88.822 | 41.296 | 42.542 | 43.69 | 34.504 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9137 | 0 | 1826.608 | 1.411 | 2.917 | 29.273 | 34.805 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.945 | 11.665 | 1000 | 0 | 83.717 | 41.897 | 42.616 | 43.096 | 39.645 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.437 | 13.956 | 1000 | 0 | 74.424 | 41.938 | 42.971 | 44.365 | 37.98 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.968 | 13.741 | 1000 | 0 | 77.115 | 41.93 | 42.941 | 43.634 | 37.98 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6890 | 0 | 1377.098 | 1.77 | 3.768 | 23.829 | 38.684 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.426 | 15.226 | 1000 | 0 | 69.318 | 41.966 | 43.368 | 45.517 | 44.672 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.311 | 14.898 | 1000 | 0 | 69.876 | 42.632 | 44.294 | 45.761 | 41.887 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.412 | 14.916 | 1000 | 0 | 69.388 | 42.924 | 44.711 | 47.98 | 41.887 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 5322 | 0 | 1063.484 | 2.461 | 5.036 | 17.157 | 46.402 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.511 | 16.539 | 1000 | 0 | 64.469 | 43.214 | 46.16 | 48.319 | 51.016 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.52 | 15.942 | 1000 | 0 | 64.435 | 43.973 | 46.537 | 48.48 | 51.016 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.299 | 16.06 | 1000 | 0 | 65.362 | 43.974 | 46.964 | 50.04 | 51.016 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.008 | 3328 | 0 | 664.791 | 4.215 | 7.7 | 13.73 | 57.027 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.758 | 17.42 | 1000 | 0 | 59.674 | 45.929 | 50.945 | 56.155 | 64.566 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.008 | 28.77 | 363 | 0 | 12.514 | 241.849 | 243.683 | 19611.854 | 62.332 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.419 | 19.171 | 243 | 0 | 12.514 | 241.914 | 242.972 | 12806.779 | 62.359 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.616 | 14.382 | 183 | 0 | 12.521 | 241.629 | 242.462 | 10013.624 | 62.363 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.822 | 9.589 | 123 | 0 | 12.523 | 241.394 | 242.428 | 5227.417 | 62.379 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.59 | 103 | 0 | 10.47 | 241.949 | 242.561 | 5136.723 | 62.383 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.797 | 63 | 0 | 12.516 | 241.466 | 242.33 | 242.429 | 62.387 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.794 | 42 | 0 | 8.34 | 241.692 | 242.276 | 242.313 | 62.391 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.018 | 122 | 0 | 24.358 | 41.959 | 42.196 | 42.916 | 62.398 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.023 | 110 | 0 | 21.917 | 46.945 | 47.128 | 47.963 | 62.449 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.038 | 98 | 0 | 19.577 | 51.002 | 52.008 | 52.944 | 62.449 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.078 | 55 | 0 | 10.952 | 91.963 | 92.097 | 92.906 | 62.453 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.093 | 36 | 0 | 7.099 | 141.961 | 142.064 | 142.23 | 62.453 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.381 | 21 | 0 | 4.172 | 241.013 | 242.037 | 242.768 | 62.453 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16338 | 0 | 3266.838 | 1.441 | 2.097 | 2.555 | 63.625 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15999 | 0 | 3198.947 | 1.474 | 2.148 | 2.571 | 64.059 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15986 | 0 | 3196.548 | 1.467 | 2.18 | 2.625 | 63.91 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15153 | 0 | 3029.602 | 1.553 | 2.508 | 3.127 | 64.199 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16176 | 0 | 3234.527 | 1.447 | 2.195 | 2.663 | 65.887 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14240 | 0 | 2847.285 | 1.662 | 2.465 | 2.997 | 65.617 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16957 | 0 | 3390.672 | 1.381 | 2.121 | 2.6 | 65.793 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15012 | 0 | 3001.202 | 1.552 | 2.621 | 3.173 | 68.391 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12977 | 0 | 2594.475 | 1.826 | 2.634 | 3.245 | 78.055 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7186 | 0 | 1436.414 | 3.369 | 4.375 | 6.309 | 70.637 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12422 | 0 | 2483.617 | 1.886 | 2.854 | 3.596 | 77.398 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12990 | 0 | 2597.272 | 1.776 | 2.645 | 3.416 | 67.527 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9374 | 0 | 1873.925 | 2.365 | 4.05 | 6.676 | 99.668 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4039 | 0 | 806.894 | 6.031 | 9.975 | 11.45 | 75.031 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9362 | 0 | 1871.566 | 2.307 | 4.305 | 7.291 | 69.629 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9436 | 0 | 1886.504 | 2.313 | 4.237 | 6.475 | 69.566 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7374 | 0 | 1473.966 | 2.988 | 5.137 | 14.88 | 118.945 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.181 | 2213 | 0 | 441.524 | 11.264 | 14.881 | 20.348 | 78.098 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6947 | 0 | 1388.711 | 3.065 | 5.848 | 15.565 | 71.828 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7238 | 0 | 1446.847 | 2.905 | 5.683 | 15.191 | 71.828 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4714 | 0 | 941.843 | 4.867 | 8.377 | 18.301 | 136.559 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 3.894 | 1234 | 0 | 245.833 | 20.152 | 21.759 | 36.399 | 78.02 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4624 | 0 | 923.693 | 4.694 | 8.974 | 19.169 | 71.695 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5021 | 0 | 1003.578 | 4.359 | 8.334 | 17.319 | 71.762 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.009 | 2673 | 0 | 533.583 | 9.152 | 14.586 | 16.694 | 105.262 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.386 | 7.343 | 1000 | 0 | 135.388 | 36.732 | 38.132 | 66.538 | 79.543 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2852 | 0 | 569.361 | 7.999 | 15.111 | 16.875 | 74.813 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2950 | 0 | 589.159 | 8.033 | 14.486 | 16.426 | 74.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.861 | 51.043 | 360 | 0 | 7.078 | 2542.829 | 2561.915 | 2572.67 | 91.309 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.905 | 34.027 | 240 | 0 | 7.079 | 1694.967 | 1708.227 | 1720.418 | 94.527 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.414 | 25.502 | 180 | 0 | 7.083 | 1270.335 | 1278.841 | 1279.608 | 94.66 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.958 | 16.987 | 120 | 0 | 7.076 | 847.775 | 861.007 | 867.367 | 97.098 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.19 | 14.169 | 100 | 0 | 7.047 | 816.637 | 848.666 | 848.995 | 99.727 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.47 | 8.488 | 60 | 0 | 7.084 | 423.482 | 426.208 | 429.418 | 99.727 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.648 | 5.649 | 40 | 0 | 7.083 | 282.141 | 283.163 | 283.772 | 99.727 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3531 | 0 | 706.151 | 1.375 | 1.497 | 1.755 | 106.695 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.005 | 937 | 0 | 187.275 | 5.292 | 5.478 | 5.699 | 106.887 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.007 | 481 | 0 | 96.198 | 10.351 | 10.473 | 10.604 | 109.352 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.025 | 99 | 0 | 19.777 | 50.496 | 50.629 | 50.81 | 109.352 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.018 | 50 | 0 | 9.935 | 100.586 | 100.801 | 100.92 | 109.352 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.009 | 25 | 0 | 4.983 | 200.598 | 200.708 | 201.31 | 109.984 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17629 | 0 | 3524.85 | 1.343 | 1.913 | 2.288 | 63.84 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17042 | 0 | 3407.493 | 1.386 | 1.996 | 2.432 | 63.855 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17485 | 0 | 3496.359 | 1.351 | 1.933 | 2.323 | 64.199 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16460 | 0 | 3291.226 | 1.448 | 2.298 | 2.761 | 64.629 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17099 | 0 | 3419.033 | 1.374 | 2.032 | 2.539 | 66.605 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14750 | 0 | 2949.313 | 1.611 | 2.324 | 2.818 | 66.625 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16776 | 0 | 3354.397 | 1.397 | 2.074 | 2.556 | 66.84 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15530 | 0 | 3105.216 | 1.507 | 2.493 | 3.076 | 67.676 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 13278 | 0 | 2654.247 | 1.787 | 2.581 | 3.178 | 74.836 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7180 | 0 | 1435.149 | 3.357 | 4.906 | 6.363 | 71.094 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13116 | 0 | 2622.604 | 1.783 | 2.772 | 3.47 | 79.648 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.001 | 13755 | 0 | 2744.652 | 1.441 | 2.27 | 3.257 | 68.781 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 10003 | 0 | 1999.812 | 2.21 | 3.756 | 6.071 | 107.344 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4158 | 0 | 830.763 | 5.85 | 9.393 | 11.189 | 78.633 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9727 | 0 | 1944.74 | 2.234 | 4.077 | 6.733 | 72.582 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.002 | 9571 | 0 | 1911.996 | 2.267 | 4.187 | 6.482 | 72.207 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.002 | 7412 | 0 | 1479.672 | 2.96 | 5.161 | 16.044 | 127.164 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.162 | 2318 | 0 | 462.827 | 10.544 | 17.753 | 20.035 | 82.523 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7571 | 0 | 1513.452 | 2.781 | 5.463 | 15.633 | 80.945 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7557 | 0 | 1510.427 | 2.818 | 5.378 | 15.48 | 80.945 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.003 | 5062 | 0 | 1009.858 | 4.639 | 7.562 | 18.254 | 146.77 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.793 | 1316 | 0 | 262.395 | 18.772 | 25.44 | 34.764 | 90.328 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5499 | 0 | 1099.131 | 3.901 | 7.579 | 18.926 | 91.527 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.127 | 2.004 | 5210 | 0 | 1016.096 | 4.077 | 7.828 | 19.06 | 91.594 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.01 | 2848 | 0 | 568.772 | 8.746 | 13.867 | 15.99 | 134.184 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.323 | 7.28 | 1000 | 0 | 136.55 | 36.27 | 37.855 | 66.618 | 90.672 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 2970 | 0 | 593.342 | 7.869 | 14.472 | 16.374 | 91.59 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.009 | 3101 | 0 | 619.289 | 7.602 | 13.732 | 15.593 | 91.59 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.766 | 50.961 | 360 | 0 | 7.091 | 2537.199 | 2548.403 | 2554.114 | 112.016 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.865 | 33.929 | 240 | 0 | 7.087 | 1692.747 | 1707.474 | 1713.217 | 115.242 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.396 | 25.446 | 180 | 0 | 7.088 | 1269.568 | 1284.297 | 1289.103 | 107.309 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.929 | 16.961 | 120 | 0 | 7.089 | 846.068 | 857.052 | 861.775 | 112.063 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.141 | 14.142 | 100 | 0 | 7.072 | 814.529 | 846.889 | 849.247 | 108.191 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.463 | 8.479 | 60 | 0 | 7.09 | 423.013 | 424.778 | 428.288 | 108.191 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.644 | 5.646 | 40 | 0 | 7.088 | 281.923 | 282.824 | 283.292 | 109.316 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3560 | 0 | 711.881 | 1.366 | 1.505 | 1.81 | 120.039 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.0 | 939 | 0 | 187.65 | 5.289 | 5.419 | 5.58 | 121.227 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.005 | 481 | 0 | 96.125 | 10.358 | 10.492 | 10.704 | 123.484 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.024 | 99 | 0 | 19.781 | 50.508 | 50.623 | 50.662 | 123.484 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.036 | 2.017 | 50 | 0 | 9.929 | 100.659 | 101.052 | 101.072 | 123.484 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.555 | 200.969 | 201.058 | 123.484 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17795 | 0 | 3558.302 | 1.331 | 1.882 | 2.325 | 63.953 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16992 | 0 | 3397.622 | 1.39 | 1.983 | 2.452 | 64.156 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17836 | 0 | 3566.176 | 1.326 | 1.896 | 2.348 | 64.137 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16813 | 0 | 3361.881 | 1.414 | 2.268 | 2.687 | 64.371 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17738 | 0 | 3546.973 | 1.322 | 1.946 | 2.488 | 66.359 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15377 | 0 | 3074.539 | 1.553 | 2.17 | 2.71 | 66.027 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17344 | 0 | 3467.984 | 1.354 | 1.996 | 2.511 | 66.082 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17183 | 0 | 3435.779 | 1.382 | 2.161 | 2.666 | 68.203 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13751 | 0 | 2749.214 | 1.727 | 2.49 | 3.016 | 76.91 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7232 | 0 | 1445.485 | 3.341 | 4.398 | 6.322 | 71.766 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13684 | 0 | 2735.908 | 1.723 | 2.561 | 3.234 | 77.09 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13447 | 0 | 2688.981 | 1.688 | 2.535 | 3.262 | 67.836 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9615 | 0 | 1922.179 | 2.296 | 3.879 | 6.727 | 95.297 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4126 | 0 | 824.405 | 5.853 | 10.033 | 11.397 | 75.863 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.012 | 10002 | 0 | 1999.609 | 2.141 | 4.02 | 6.619 | 69.074 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.005 | 9653 | 0 | 1929.641 | 2.249 | 4.152 | 6.476 | 69.012 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7603 | 0 | 1519.926 | 2.91 | 4.902 | 16.639 | 123.324 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.077 | 2328 | 0 | 464.599 | 10.502 | 17.558 | 19.783 | 79.59 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.002 | 7519 | 0 | 1498.657 | 2.788 | 5.427 | 17.379 | 72.68 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7704 | 0 | 1540.093 | 2.733 | 5.222 | 16.541 | 72.68 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5039 | 0 | 1006.845 | 4.6 | 7.616 | 19.993 | 129.09 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.898 | 1263 | 0 | 251.707 | 19.572 | 21.67 | 35.917 | 77.965 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4801 | 0 | 959.396 | 4.445 | 8.583 | 20.952 | 72.496 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4953 | 0 | 989.602 | 4.3 | 8.488 | 20.328 | 72.559 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2798 | 0 | 558.831 | 8.854 | 14.051 | 15.486 | 141.754 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.338 | 7.297 | 1000 | 0 | 136.279 | 36.522 | 37.429 | 66.331 | 81.727 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2980 | 0 | 595.159 | 7.844 | 14.39 | 15.965 | 77.75 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3131 | 0 | 625.208 | 7.574 | 13.318 | 14.785 | 77.754 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.077 | 51.238 | 360 | 0 | 7.048 | 2554.073 | 2570.021 | 2577.106 | 93.797 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.026 | 34.174 | 240 | 0 | 7.053 | 1701.047 | 1716.633 | 1738.817 | 94.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.53 | 25.594 | 180 | 0 | 7.051 | 1276.227 | 1286.792 | 1287.482 | 94.254 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.008 | 17.093 | 120 | 0 | 7.056 | 850.259 | 860.447 | 860.769 | 94.754 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.186 | 14.216 | 100 | 0 | 7.049 | 809.225 | 851.597 | 852.069 | 99.449 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.51 | 8.547 | 60 | 0 | 7.051 | 425.358 | 429.194 | 433.398 | 95.574 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.673 | 5.669 | 40 | 0 | 7.051 | 283.56 | 284.116 | 285.738 | 95.578 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3622 | 0 | 724.359 | 1.345 | 1.47 | 1.636 | 101.328 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.001 | 944 | 0 | 188.675 | 5.266 | 5.377 | 5.52 | 101.328 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.005 | 482 | 0 | 96.221 | 10.351 | 10.479 | 10.652 | 101.328 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.03 | 99 | 0 | 19.746 | 50.515 | 51.102 | 51.343 | 101.391 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.017 | 50 | 0 | 9.936 | 100.566 | 100.711 | 101.206 | 101.391 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.009 | 25 | 0 | 4.984 | 200.536 | 200.693 | 200.75 | 101.391 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.151 | 1000 | 0 | 62.026 | 40.98 | 41.953 | 42.408 | 28.836 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.137 | 1000 | 0 | 62.071 | 40.975 | 41.95 | 42.261 | 29.086 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.135 | 1000 | 0 | 62.04 | 40.981 | 41.97 | 42.379 | 29.18 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.14 | 1000 | 0 | 62.057 | 40.977 | 41.96 | 42.238 | 29.469 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.135 | 1000 | 0 | 62.063 | 40.974 | 41.949 | 42.234 | 29.543 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.126 | 1000 | 0 | 62.045 | 40.979 | 41.975 | 42.455 | 29.555 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.121 | 1000 | 0 | 62.086 | 40.973 | 41.938 | 42.095 | 29.566 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.15 | 1000 | 0 | 62.067 | 40.977 | 41.957 | 42.379 | 30.055 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.881 | 13.533 | 1000 | 0 | 67.201 | 40.964 | 41.969 | 42.931 | 30.055 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.0 | 14.481 | 1000 | 0 | 66.669 | 40.966 | 41.96 | 42.924 | 30.055 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13702 | 0 | 2739.207 | 0.999 | 1.755 | 4.965 | 30.445 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.296 | 14.474 | 1000 | 0 | 65.375 | 40.97 | 41.981 | 42.992 | 34.148 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.618 | 10.015 | 1000 | 0 | 94.176 | 40.978 | 42.365 | 43.246 | 34.148 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.078 | 7.668 | 1000 | 0 | 110.158 | 40.95 | 42.043 | 43.591 | 34.148 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.159 | 9475 | 0 | 1894.221 | 1.27 | 2.637 | 42.043 | 34.563 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.672 | 9.558 | 1000 | 0 | 85.675 | 41.791 | 42.827 | 43.258 | 39.926 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.106 | 11.526 | 1000 | 0 | 76.302 | 41.928 | 42.936 | 43.48 | 39.926 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.947 | 11.861 | 1000 | 0 | 77.239 | 41.922 | 42.878 | 44.288 | 39.926 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.007 | 7340 | 0 | 1466.826 | 1.681 | 3.469 | 19.184 | 39.926 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.409 | 15.131 | 1000 | 0 | 74.578 | 41.966 | 43.5 | 48.261 | 46.059 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.211 | 15.227 | 1000 | 0 | 70.368 | 41.962 | 44.109 | 52.187 | 44.004 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.715 | 14.965 | 1000 | 0 | 67.957 | 41.979 | 43.996 | 46.809 | 44.004 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5170 | 0 | 1033.201 | 2.454 | 5.16 | 22.229 | 47.398 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.278 | 16.074 | 1000 | 0 | 65.454 | 42.995 | 45.502 | 48.379 | 53.734 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.073 | 15.567 | 1000 | 0 | 66.345 | 43.802 | 46.999 | 49.808 | 53.734 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.699 | 15.565 | 1000 | 0 | 68.03 | 43.97 | 47.364 | 51.432 | 53.734 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3416 | 0 | 682.262 | 3.939 | 7.85 | 24.909 | 59.746 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.675 | 17.289 | 1000 | 0 | 59.971 | 45.007 | 49.793 | 52.96 | 64.07 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.009 | 28.763 | 363 | 0 | 12.513 | 241.798 | 243.182 | 19614.09 | 64.098 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.166 | 243 | 0 | 12.512 | 241.801 | 242.997 | 12806.593 | 64.113 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.376 | 183 | 0 | 12.51 | 241.776 | 242.959 | 10028.74 | 64.113 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.585 | 123 | 0 | 12.514 | 241.825 | 242.411 | 5236.623 | 64.113 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.587 | 103 | 0 | 10.482 | 241.57 | 242.936 | 5130.542 | 64.113 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.791 | 63 | 0 | 12.507 | 241.738 | 242.401 | 242.585 | 64.113 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.8 | 42 | 0 | 8.345 | 241.195 | 242.202 | 242.987 | 64.113 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.018 | 122 | 0 | 24.357 | 41.975 | 42.112 | 42.945 | 64.145 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.031 | 114 | 0 | 22.723 | 44.978 | 45.956 | 46.014 | 64.176 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.041 | 97 | 0 | 19.361 | 51.968 | 52.953 | 52.988 | 64.195 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.07 | 2.058 | 56 | 0 | 11.046 | 90.975 | 91.979 | 91.987 | 64.207 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.081 | 36 | 0 | 7.137 | 140.975 | 141.987 | 142.01 | 64.207 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.381 | 21 | 0 | 4.164 | 241.974 | 242.959 | 242.98 | 64.207 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.172 | 1000 | 0 | 62.075 | 40.98 | 41.956 | 42.285 | 29.156 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.134 | 1000 | 0 | 62.061 | 40.978 | 41.991 | 42.661 | 29.336 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.134 | 1000 | 0 | 62.095 | 40.977 | 41.964 | 42.311 | 29.484 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.159 | 1000 | 0 | 62.056 | 40.979 | 41.963 | 42.39 | 29.582 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.144 | 1000 | 0 | 62.102 | 40.978 | 41.895 | 42.093 | 29.629 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.135 | 1000 | 0 | 62.051 | 40.981 | 41.965 | 42.387 | 29.762 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.149 | 1000 | 0 | 62.077 | 40.978 | 41.963 | 42.225 | 29.785 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.137 | 1000 | 0 | 62.047 | 40.979 | 41.963 | 42.296 | 30.414 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.719 | 14.755 | 1000 | 0 | 67.94 | 40.967 | 41.965 | 42.126 | 30.473 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.993 | 14.234 | 1000 | 0 | 66.698 | 40.964 | 41.976 | 42.966 | 30.473 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13718 | 0 | 2742.741 | 0.995 | 1.762 | 6.795 | 30.867 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.31 | 14.648 | 1000 | 0 | 65.316 | 40.97 | 41.984 | 42.966 | 35.328 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.8 | 8.047 | 1000 | 0 | 113.636 | 40.94 | 42.011 | 42.964 | 35.328 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.399 | 8.555 | 1000 | 0 | 119.06 | 40.916 | 42.155 | 43.24 | 35.328 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.012 | 2.002 | 9874 | 0 | 1970.169 | 1.254 | 2.575 | 33.131 | 35.363 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.722 | 11.682 | 1000 | 0 | 93.266 | 41.659 | 42.725 | 43.241 | 43.184 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.49 | 11.953 | 1000 | 0 | 80.063 | 41.927 | 42.957 | 44.114 | 40.152 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.032 | 12.364 | 1000 | 0 | 76.734 | 41.926 | 42.943 | 44.238 | 40.152 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.115 | 2.003 | 7054 | 0 | 1378.984 | 1.707 | 3.636 | 51.484 | 40.531 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.016 | 15.031 | 1000 | 0 | 71.347 | 41.968 | 43.388 | 44.868 | 46.25 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.065 | 14.81 | 1000 | 0 | 71.099 | 41.974 | 44.304 | 54.161 | 46.25 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.469 | 15.101 | 1000 | 0 | 69.112 | 41.981 | 44.053 | 46.863 | 44.031 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 5238 | 0 | 1046.809 | 2.401 | 5.051 | 22.615 | 45.645 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.385 | 16.198 | 1000 | 0 | 64.999 | 42.998 | 45.907 | 52.165 | 52.855 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.185 | 15.538 | 1000 | 0 | 65.854 | 43.8 | 46.928 | 49.117 | 52.855 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.908 | 15.311 | 1000 | 0 | 67.079 | 43.964 | 47.419 | 49.514 | 52.855 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.008 | 3480 | 0 | 695.088 | 3.924 | 7.396 | 24.537 | 58.867 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.616 | 17.405 | 1000 | 0 | 60.184 | 45.865 | 50.662 | 55.116 | 67.348 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.998 | 28.762 | 363 | 0 | 12.518 | 241.629 | 242.919 | 19611.017 | 64.688 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.416 | 19.172 | 243 | 0 | 12.515 | 241.766 | 242.82 | 12802.918 | 64.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.614 | 14.379 | 183 | 0 | 12.522 | 241.459 | 242.608 | 10017.772 | 64.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.593 | 123 | 0 | 12.516 | 241.722 | 242.67 | 5235.554 | 64.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.821 | 9.585 | 103 | 0 | 10.488 | 241.255 | 242.351 | 5127.882 | 64.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.795 | 63 | 0 | 12.516 | 241.477 | 242.407 | 242.493 | 64.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 4.788 | 42 | 0 | 8.352 | 241.12 | 242.221 | 243.016 | 64.703 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.018 | 122 | 0 | 24.337 | 41.972 | 42.925 | 42.985 | 64.723 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.032 | 114 | 0 | 22.728 | 44.974 | 45.598 | 45.998 | 64.746 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.04 | 97 | 0 | 19.358 | 51.967 | 52.947 | 52.987 | 64.793 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.085 | 2.064 | 56 | 0 | 11.013 | 91.045 | 92.021 | 92.974 | 64.82 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.049 | 2.086 | 36 | 0 | 7.13 | 140.998 | 141.977 | 141.996 | 64.824 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 2.385 | 21 | 0 | 4.176 | 240.98 | 242.109 | 242.217 | 64.828 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.162 | 1000 | 0 | 62.114 | 40.976 | 41.955 | 42.143 | 28.992 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.156 | 1000 | 0 | 62.108 | 40.977 | 41.946 | 42.309 | 29.16 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.144 | 1000 | 0 | 62.061 | 40.98 | 41.965 | 42.32 | 29.406 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.156 | 1000 | 0 | 62.081 | 40.979 | 41.971 | 42.184 | 29.535 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.15 | 1000 | 0 | 62.059 | 40.981 | 41.952 | 42.331 | 29.598 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.142 | 1000 | 0 | 62.069 | 40.979 | 41.938 | 42.297 | 29.598 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.158 | 1000 | 0 | 62.08 | 40.98 | 41.959 | 42.356 | 29.605 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.132 | 1000 | 0 | 62.077 | 40.977 | 41.967 | 42.463 | 29.895 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.278 | 14.152 | 1000 | 0 | 65.452 | 40.966 | 41.948 | 42.196 | 29.922 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.878 | 14.163 | 1000 | 0 | 67.214 | 40.968 | 41.956 | 42.92 | 30.004 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13999 | 0 | 2798.741 | 0.979 | 1.719 | 6.421 | 30.551 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.989 | 14.969 | 1000 | 0 | 66.714 | 40.972 | 41.978 | 42.952 | 34.648 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.996 | 10.305 | 1000 | 0 | 90.941 | 40.965 | 42.249 | 43.326 | 34.648 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.108 | 8.538 | 1001 | 0 | 90.113 | 40.985 | 42.485 | 43.657 | 34.648 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.036 | 9698 | 0 | 1937.936 | 1.298 | 2.765 | 42.656 | 34.953 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.842 | 11.595 | 1000 | 0 | 84.443 | 41.832 | 42.895 | 43.368 | 39.719 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.538 | 13.504 | 1000 | 0 | 79.758 | 41.927 | 42.913 | 44.009 | 39.723 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.616 | 12.987 | 1000 | 0 | 86.088 | 41.932 | 42.968 | 45.134 | 39.723 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7382 | 0 | 1475.653 | 1.632 | 3.459 | 21.751 | 39.723 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.67 | 14.088 | 1000 | 0 | 68.165 | 41.974 | 43.386 | 47.073 | 45.371 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.769 | 15.58 | 1000 | 0 | 72.625 | 41.978 | 43.939 | 45.881 | 45.371 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.585 | 14.945 | 1000 | 0 | 68.564 | 41.984 | 43.995 | 46.017 | 45.371 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 5159 | 0 | 1031.1 | 2.421 | 5.386 | 23.481 | 47.395 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.52 | 15.307 | 1000 | 0 | 64.433 | 42.992 | 45.283 | 47.413 | 52.59 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.24 | 15.48 | 1000 | 0 | 65.617 | 43.804 | 47.378 | 49.942 | 52.578 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.859 | 15.643 | 1000 | 0 | 67.299 | 43.973 | 47.773 | 53.881 | 52.578 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3566 | 0 | 712.339 | 3.861 | 7.256 | 11.359 | 58.598 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.272 | 16.557 | 1000 | 0 | 61.454 | 45.378 | 50.985 | 53.641 | 65.891 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.993 | 28.753 | 363 | 0 | 12.52 | 241.685 | 243.173 | 19600.469 | 66.23 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.42 | 19.153 | 243 | 0 | 12.513 | 241.798 | 243.003 | 12801.982 | 66.246 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.622 | 14.367 | 183 | 0 | 12.516 | 241.755 | 242.604 | 10028.963 | 66.25 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.581 | 123 | 0 | 12.51 | 241.744 | 242.886 | 5235.885 | 66.258 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.821 | 9.578 | 103 | 0 | 10.488 | 241.322 | 242.386 | 5126.459 | 66.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.79 | 63 | 0 | 12.516 | 241.434 | 242.442 | 242.641 | 66.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 4.794 | 42 | 0 | 8.352 | 241.071 | 242.017 | 242.152 | 66.266 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.018 | 122 | 0 | 24.347 | 41.968 | 42.887 | 42.977 | 66.352 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.031 | 114 | 0 | 22.723 | 44.974 | 45.61 | 45.985 | 66.379 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.039 | 97 | 0 | 19.373 | 51.97 | 52.119 | 52.959 | 66.391 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.069 | 2.064 | 56 | 0 | 11.048 | 90.972 | 91.977 | 91.989 | 66.41 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 2.085 | 36 | 0 | 7.136 | 140.992 | 141.973 | 141.99 | 66.41 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.381 | 21 | 0 | 4.17 | 241.822 | 242.302 | 242.487 | 66.41 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19366 | 0 | 3872.49 | 1.219 | 1.76 | 2.223 | 67.84 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19127 | 0 | 3824.742 | 1.236 | 1.782 | 2.241 | 67.992 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19508 | 0 | 3900.915 | 1.212 | 1.721 | 2.189 | 68.309 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18991 | 0 | 3796.88 | 1.25 | 1.806 | 2.222 | 68.758 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18943 | 0 | 3788.056 | 1.245 | 1.827 | 2.267 | 70.16 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16420 | 0 | 3283.138 | 1.448 | 2.094 | 2.646 | 70.387 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18799 | 0 | 3758.908 | 1.257 | 1.816 | 2.285 | 70.492 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18483 | 0 | 3695.547 | 1.279 | 1.877 | 2.355 | 72.652 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14815 | 0 | 2962.253 | 1.596 | 2.247 | 3.008 | 81.863 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8033 | 0 | 1605.86 | 3.024 | 3.897 | 5.757 | 76.91 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15004 | 0 | 3000.107 | 1.579 | 2.175 | 2.97 | 81.496 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.03 | 2.023 | 14832 | 0 | 2948.89 | 1.228 | 1.971 | 40.654 | 71.559 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10438 | 0 | 2086.837 | 2.041 | 3.748 | 6.295 | 98.539 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4398 | 0 | 878.531 | 5.514 | 9.171 | 10.654 | 80.359 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10529 | 0 | 2105.144 | 2.04 | 3.736 | 5.695 | 74.566 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10436 | 0 | 2086.397 | 2.039 | 3.815 | 6.497 | 74.566 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7664 | 0 | 1532.129 | 2.706 | 5.253 | 20.448 | 114.324 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.021 | 2442 | 0 | 487.562 | 10.071 | 16.59 | 19.086 | 84.086 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7977 | 0 | 1594.295 | 2.557 | 5.13 | 20.165 | 76.242 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7944 | 0 | 1588.16 | 2.587 | 4.964 | 20.232 | 76.32 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5306 | 0 | 1060.061 | 3.925 | 7.641 | 23.867 | 140.59 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.677 | 1357 | 0 | 270.4 | 17.951 | 30.512 | 34.209 | 104.785 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5518 | 0 | 1102.937 | 3.738 | 7.483 | 23.555 | 99.086 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.097 | 2.003 | 5235 | 0 | 1027.052 | 3.986 | 7.726 | 23.784 | 99.148 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3470 | 0 | 693.142 | 6.729 | 11.594 | 13.407 | 121.117 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.171 | 7.192 | 1000 | 0 | 139.46 | 35.526 | 38.115 | 64.975 | 116.586 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3098 | 0 | 618.696 | 7.652 | 13.712 | 15.857 | 118.23 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3376 | 0 | 674.336 | 7.025 | 12.531 | 13.971 | 118.23 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.878 | 50.883 | 360 | 0 | 7.076 | 2543.56 | 2546.715 | 2547.107 | 133.328 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.92 | 33.91 | 240 | 0 | 7.076 | 1695.736 | 1698.983 | 1699.734 | 135.203 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.436 | 25.431 | 180 | 0 | 7.077 | 1271.43 | 1274.392 | 1276.008 | 135.332 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.956 | 16.955 | 120 | 0 | 7.077 | 847.603 | 850.237 | 850.426 | 135.332 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.192 | 14.135 | 100 | 0 | 7.046 | 840.654 | 847.974 | 848.299 | 135.652 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.48 | 8.48 | 60 | 0 | 7.075 | 423.946 | 425.035 | 425.708 | 135.652 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.65 | 40 | 0 | 7.076 | 282.475 | 282.955 | 283.832 | 135.652 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 1898 | 0 | 379.549 | 2.624 | 2.776 | 3.091 | 137.793 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.001 | 568 | 0 | 113.528 | 8.769 | 8.907 | 9.071 | 115.906 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.002 | 403 | 0 | 80.501 | 12.357 | 12.649 | 12.941 | 115.844 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.049 | 2.025 | 100 | 0 | 19.805 | 50.441 | 50.536 | 50.694 | 115.844 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.027 | 2.014 | 50 | 0 | 9.947 | 100.468 | 100.586 | 100.659 | 115.844 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.508 | 200.693 | 200.786 | 115.844 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17516 | 0 | 3502.526 | 1.346 | 1.952 | 2.45 | 67.828 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18806 | 0 | 3760.324 | 1.256 | 1.806 | 2.309 | 68.066 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18784 | 0 | 3756.045 | 1.259 | 1.85 | 2.278 | 68.035 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18653 | 0 | 3728.969 | 1.269 | 1.836 | 2.309 | 68.719 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18605 | 0 | 3720.222 | 1.267 | 1.864 | 2.377 | 69.969 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16631 | 0 | 3325.51 | 1.428 | 2.052 | 2.612 | 70.113 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18933 | 0 | 3785.854 | 1.244 | 1.821 | 2.276 | 70.18 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18697 | 0 | 3738.688 | 1.262 | 1.867 | 2.328 | 72.77 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14694 | 0 | 2938.113 | 1.608 | 2.265 | 3.045 | 82.672 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7819 | 0 | 1562.979 | 3.103 | 4.034 | 5.859 | 76.277 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14448 | 0 | 2888.843 | 1.632 | 2.37 | 3.141 | 81.258 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.04 | 2.001 | 14655 | 0 | 2907.843 | 1.297 | 2.105 | 3.249 | 70.879 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10170 | 0 | 2032.99 | 2.097 | 3.845 | 6.121 | 98.738 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4359 | 0 | 871.024 | 5.584 | 9.23 | 10.645 | 80.578 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10338 | 0 | 2066.705 | 2.047 | 3.825 | 6.304 | 73.863 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10352 | 0 | 2069.569 | 2.042 | 3.847 | 6.24 | 73.676 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7960 | 0 | 1591.199 | 2.606 | 5.058 | 13.368 | 119.496 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.038 | 2460 | 0 | 490.999 | 9.881 | 17.133 | 19.035 | 84.359 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 2.002 | 7919 | 0 | 1578.001 | 2.573 | 5.124 | 21.279 | 77.027 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7936 | 0 | 1586.582 | 2.594 | 4.99 | 21.24 | 77.102 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5539 | 0 | 1107.104 | 3.825 | 7.102 | 24.031 | 126.84 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 3.677 | 1340 | 0 | 266.921 | 18.398 | 30.102 | 33.837 | 85.539 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5348 | 0 | 1068.799 | 3.896 | 7.655 | 24.36 | 82.949 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.098 | 2.003 | 5338 | 0 | 1047.088 | 3.924 | 7.622 | 23.897 | 82.949 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3403 | 0 | 679.67 | 6.981 | 11.501 | 12.884 | 98.031 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.116 | 7.015 | 1000 | 0 | 140.527 | 35.239 | 38.104 | 64.856 | 88.762 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3417 | 0 | 682.453 | 6.78 | 12.336 | 13.636 | 87.809 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3442 | 0 | 687.426 | 6.738 | 12.452 | 13.663 | 87.809 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.866 | 50.879 | 360 | 0 | 7.077 | 2542.815 | 2546.886 | 2547.293 | 102.375 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.907 | 33.902 | 240 | 0 | 7.078 | 1695.124 | 1698.368 | 1698.718 | 102.688 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.429 | 25.435 | 180 | 0 | 7.079 | 1271.222 | 1274.43 | 1274.694 | 103.258 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.953 | 16.953 | 120 | 0 | 7.079 | 847.427 | 850.669 | 850.845 | 105.355 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.137 | 14.135 | 100 | 0 | 7.074 | 844.249 | 848.625 | 849.068 | 105.355 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.478 | 8.478 | 60 | 0 | 7.077 | 423.831 | 425.158 | 425.51 | 105.355 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.652 | 5.652 | 40 | 0 | 7.077 | 282.525 | 282.839 | 283.066 | 105.355 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.0 | 1899 | 0 | 379.668 | 2.633 | 2.764 | 3.045 | 116.512 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.001 | 568 | 0 | 113.483 | 8.767 | 8.912 | 9.049 | 119.047 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.011 | 406 | 0 | 81.05 | 12.282 | 12.619 | 12.913 | 119.113 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.045 | 2.018 | 100 | 0 | 19.823 | 50.392 | 50.495 | 50.603 | 119.113 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.014 | 50 | 0 | 9.942 | 100.518 | 100.64 | 100.75 | 119.113 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.489 | 200.539 | 200.54 | 119.113 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19094 | 0 | 3817.983 | 1.236 | 1.766 | 2.245 | 68.453 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18744 | 0 | 3747.725 | 1.262 | 1.82 | 2.311 | 69.168 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 19297 | 0 | 3858.808 | 1.225 | 1.738 | 2.213 | 69.367 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18996 | 0 | 3798.56 | 1.247 | 1.79 | 2.246 | 69.641 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18944 | 0 | 3788.005 | 1.243 | 1.829 | 2.285 | 71.273 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16506 | 0 | 3300.547 | 1.44 | 2.05 | 2.632 | 71.406 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18966 | 0 | 3792.369 | 1.243 | 1.801 | 2.293 | 71.461 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18581 | 0 | 3715.454 | 1.268 | 1.859 | 2.315 | 72.953 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14738 | 0 | 2946.891 | 1.604 | 2.25 | 3.004 | 82.277 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7771 | 0 | 1553.345 | 3.115 | 4.326 | 5.957 | 77.688 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14651 | 0 | 2929.502 | 1.614 | 2.229 | 3.059 | 82.027 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14202 | 0 | 2839.779 | 0.977 | 1.859 | 41.19 | 73.344 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10507 | 0 | 2100.56 | 2.023 | 3.692 | 5.621 | 101.75 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4377 | 0 | 874.583 | 5.563 | 9.179 | 10.721 | 81.574 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10672 | 0 | 2133.672 | 2.001 | 3.679 | 5.603 | 76.82 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10240 | 0 | 2047.228 | 2.065 | 3.873 | 6.478 | 76.82 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7952 | 0 | 1589.521 | 2.596 | 4.943 | 22.073 | 120.652 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.048 | 2465 | 0 | 492.211 | 9.989 | 16.511 | 18.935 | 84.648 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 7914 | 0 | 1581.679 | 2.59 | 5.002 | 22.573 | 77.305 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7980 | 0 | 1595.259 | 2.559 | 4.947 | 21.835 | 77.367 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5598 | 0 | 1118.863 | 3.758 | 6.879 | 25.518 | 124.953 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.642 | 1342 | 0 | 267.6 | 18.353 | 30.43 | 34.576 | 85.926 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5316 | 0 | 1062.505 | 3.902 | 7.731 | 25.544 | 83.918 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5322 | 0 | 1063.678 | 3.945 | 7.699 | 24.898 | 83.98 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3374 | 0 | 674.01 | 7.037 | 11.683 | 13.248 | 103.695 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.137 | 7.088 | 1000 | 0 | 140.115 | 35.235 | 49.292 | 65.048 | 90.992 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3362 | 0 | 671.523 | 6.892 | 12.698 | 14.194 | 92.996 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3420 | 0 | 683.005 | 6.697 | 12.48 | 14.001 | 92.996 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.863 | 50.882 | 360 | 0 | 7.078 | 2542.72 | 2546.794 | 2547.398 | 110.555 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.917 | 33.916 | 240 | 0 | 7.076 | 1695.424 | 1698.022 | 1699.007 | 110.617 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.431 | 25.431 | 180 | 0 | 7.078 | 1271.333 | 1275.213 | 1275.596 | 112.598 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.956 | 16.953 | 120 | 0 | 7.077 | 847.615 | 851.456 | 851.689 | 108.789 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.134 | 14.248 | 100 | 0 | 7.075 | 839.998 | 848.056 | 848.795 | 113.105 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.478 | 8.478 | 60 | 0 | 7.077 | 423.801 | 425.368 | 426.511 | 113.109 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.652 | 40 | 0 | 7.078 | 282.458 | 283.104 | 283.684 | 113.109 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1964 | 0 | 392.67 | 2.504 | 2.652 | 2.9 | 118.145 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.001 | 577 | 0 | 115.281 | 8.62 | 8.866 | 9.214 | 118.207 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.009 | 411 | 0 | 82.07 | 12.149 | 12.26 | 12.367 | 120.145 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.047 | 2.024 | 100 | 0 | 19.814 | 50.413 | 50.534 | 50.615 | 120.145 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.014 | 50 | 0 | 9.947 | 100.473 | 100.595 | 100.648 | 118.207 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.529 | 200.673 | 200.695 | 118.207 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

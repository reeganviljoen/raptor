# Puma vs Raptor Simulation

Run ID: `20260914-033208`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.094 | 1000 | 0 | 62.039 | 40.99 | 41.969 | 42.405 | 29.988 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.59 | 1000 | 0 | 62.047 | 40.991 | 41.991 | 42.385 | 30.348 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.087 | 1000 | 0 | 62.064 | 40.991 | 41.965 | 42.194 | 30.348 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.084 | 1000 | 0 | 62.07 | 40.99 | 41.959 | 42.219 | 30.445 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.085 | 1000 | 0 | 62.1 | 40.988 | 41.956 | 42.068 | 30.543 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.083 | 1000 | 0 | 62.088 | 40.988 | 41.957 | 42.164 | 30.543 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.082 | 1000 | 0 | 62.057 | 40.989 | 41.967 | 42.286 | 30.543 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.082 | 1000 | 0 | 62.095 | 40.987 | 41.981 | 42.204 | 31.586 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.343 | 15.524 | 1000 | 0 | 65.175 | 40.977 | 41.962 | 42.1 | 31.629 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.751 | 15.248 | 1000 | 0 | 63.49 | 40.981 | 41.973 | 42.143 | 31.629 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 17524 | 0 | 3504.128 | 0.808 | 1.314 | 2.718 | 31.801 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.612 | 15.658 | 1000 | 0 | 64.054 | 40.981 | 41.985 | 42.124 | 43.453 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.434 | 6.472 | 1000 | 0 | 95.837 | 40.935 | 41.959 | 42.364 | 43.453 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.718 | 9.648 | 1000 | 0 | 102.899 | 40.95 | 41.964 | 42.354 | 43.453 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 12650 | 0 | 2528.848 | 1.102 | 1.675 | 40.981 | 43.453 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.576 | 11.687 | 1000 | 0 | 86.389 | 41.004 | 42.118 | 42.971 | 57.328 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.086 | 10.89 | 1000 | 0 | 99.149 | 41.545 | 42.545 | 43.107 | 57.328 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.896 | 11.562 | 1000 | 0 | 91.78 | 41.166 | 42.646 | 44.013 | 57.328 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8455 | 0 | 1690.206 | 1.586 | 2.9 | 31.469 | 57.328 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.843 | 13.995 | 1000 | 0 | 72.236 | 41.966 | 42.974 | 43.907 | 66.688 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.769 | 14.324 | 1000 | 0 | 72.629 | 41.992 | 43.774 | 44.853 | 63.344 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.323 | 14.5 | 1000 | 0 | 75.058 | 41.995 | 43.87 | 44.991 | 63.344 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 5512 | 0 | 1101.325 | 2.474 | 4.144 | 11.734 | 63.344 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.191 | 15.505 | 1000 | 0 | 65.827 | 42.978 | 44.568 | 46.334 | 77.344 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.87 | 14.445 | 1000 | 0 | 72.098 | 43.904 | 46.367 | 48.685 | 77.344 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.896 | 15.544 | 1000 | 0 | 71.963 | 43.251 | 46.337 | 50.406 | 77.344 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 3662 | 0 | 731.548 | 3.965 | 5.531 | 15.267 | 77.344 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.031 | 16.514 | 1000 | 0 | 62.377 | 45.064 | 49.717 | 52.526 | 88.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.999 | 28.765 | 363 | 0 | 12.518 | 241.755 | 243.097 | 19607.727 | 88.895 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.415 | 19.177 | 243 | 0 | 12.516 | 241.549 | 243.041 | 12799.48 | 89.039 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.622 | 14.373 | 183 | 0 | 12.516 | 241.763 | 242.846 | 10018.463 | 89.055 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.586 | 123 | 0 | 12.51 | 241.81 | 243.063 | 5231.248 | 89.129 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.589 | 103 | 0 | 10.481 | 241.692 | 242.639 | 5128.863 | 89.148 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.796 | 63 | 0 | 12.515 | 241.441 | 242.409 | 242.882 | 89.16 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.792 | 42 | 0 | 8.342 | 241.818 | 242.207 | 242.229 | 89.238 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.367 | 41.983 | 42.132 | 42.98 | 89.27 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.015 | 110 | 0 | 21.82 | 46.979 | 47.26 | 48.0 | 89.293 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.017 | 99 | 0 | 19.642 | 51.045 | 51.995 | 52.094 | 89.293 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.067 | 55 | 0 | 10.996 | 91.889 | 92.15 | 92.927 | 89.309 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.062 | 2.086 | 36 | 0 | 7.112 | 141.95 | 142.052 | 142.692 | 89.316 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.377 | 21 | 0 | 4.172 | 241.863 | 242.125 | 242.69 | 89.316 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.079 | 1000 | 0 | 62.095 | 40.992 | 41.974 | 42.208 | 28.41 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.082 | 1000 | 0 | 62.126 | 40.988 | 41.93 | 42.215 | 28.418 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.083 | 1000 | 0 | 62.095 | 40.985 | 41.955 | 42.171 | 28.43 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.097 | 16.08 | 1000 | 0 | 62.125 | 40.986 | 41.867 | 42.148 | 28.434 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.08 | 1000 | 0 | 62.08 | 40.989 | 41.973 | 42.167 | 28.434 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.082 | 1000 | 0 | 62.08 | 40.986 | 41.977 | 42.226 | 28.434 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.08 | 1000 | 0 | 62.106 | 40.983 | 41.966 | 42.199 | 28.48 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.092 | 16.084 | 1000 | 0 | 62.141 | 40.988 | 41.957 | 42.331 | 29.09 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.558 | 15.405 | 1000 | 0 | 64.276 | 40.981 | 41.988 | 42.045 | 29.09 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.865 | 15.731 | 1000 | 0 | 67.271 | 40.98 | 41.972 | 42.145 | 29.09 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 17617 | 0 | 3522.517 | 0.801 | 1.33 | 5.214 | 29.465 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.196 | 14.931 | 1000 | 0 | 65.807 | 40.983 | 41.984 | 42.367 | 33.137 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.152 | 8.691 | 1000 | 0 | 98.499 | 40.939 | 41.957 | 42.689 | 33.137 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.703 | 7.796 | 1000 | 0 | 103.062 | 40.935 | 41.947 | 42.83 | 33.137 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12382 | 0 | 2475.605 | 1.142 | 1.7 | 8.627 | 33.32 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.73 | 9.888 | 1000 | 0 | 85.253 | 40.986 | 42.008 | 42.948 | 39.883 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.021 | 10.496 | 1000 | 0 | 90.732 | 41.036 | 42.314 | 43.186 | 38.855 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.546 | 13.302 | 1000 | 0 | 79.706 | 41.908 | 42.855 | 43.772 | 38.855 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8307 | 0 | 1660.632 | 1.604 | 2.683 | 10.884 | 39.23 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.493 | 14.454 | 1000 | 0 | 69.0 | 41.969 | 42.99 | 43.967 | 44.133 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.275 | 13.341 | 1000 | 0 | 75.331 | 41.989 | 43.522 | 44.384 | 44.133 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.213 | 14.039 | 1000 | 0 | 75.686 | 42.036 | 43.868 | 44.723 | 44.133 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5492 | 0 | 1097.578 | 2.487 | 4.22 | 13.987 | 47.074 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.026 | 15.026 | 1000 | 0 | 66.552 | 42.968 | 44.9 | 46.014 | 53.484 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.449 | 15.027 | 1000 | 0 | 69.209 | 43.743 | 45.791 | 49.979 | 53.484 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.032 | 14.77 | 1000 | 0 | 66.524 | 43.942 | 45.987 | 47.752 | 53.484 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.007 | 3518 | 0 | 702.389 | 4.139 | 5.843 | 13.371 | 59.496 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.379 | 16.31 | 1000 | 0 | 61.052 | 44.986 | 47.529 | 56.826 | 66.867 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.012 | 28.781 | 363 | 0 | 12.512 | 241.88 | 243.103 | 19616.464 | 64.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.423 | 19.181 | 243 | 0 | 12.511 | 241.866 | 243.03 | 12810.448 | 64.793 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.62 | 14.386 | 183 | 0 | 12.517 | 241.74 | 242.49 | 10023.763 | 64.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.587 | 123 | 0 | 12.516 | 241.748 | 242.679 | 5234.262 | 64.816 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.584 | 103 | 0 | 10.48 | 241.79 | 242.53 | 5133.976 | 64.824 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.795 | 63 | 0 | 12.508 | 241.816 | 242.63 | 242.817 | 64.828 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.796 | 42 | 0 | 8.341 | 241.628 | 242.847 | 242.96 | 64.828 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.017 | 122 | 0 | 24.365 | 41.985 | 42.148 | 42.883 | 64.953 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.025 | 2.025 | 110 | 0 | 21.891 | 46.968 | 47.547 | 48.001 | 64.961 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.015 | 99 | 0 | 19.647 | 51.006 | 52.005 | 52.805 | 64.961 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.072 | 55 | 0 | 10.993 | 91.936 | 92.104 | 92.945 | 64.965 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.059 | 2.087 | 36 | 0 | 7.116 | 141.924 | 142.019 | 142.64 | 64.969 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.377 | 21 | 0 | 4.168 | 241.938 | 242.255 | 242.651 | 64.969 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.08 | 1000 | 0 | 62.115 | 40.987 | 41.974 | 42.127 | 28.289 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.079 | 1000 | 0 | 62.107 | 40.987 | 41.964 | 42.093 | 28.289 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.08 | 1000 | 0 | 62.118 | 40.989 | 41.968 | 42.199 | 28.293 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.08 | 1000 | 0 | 62.098 | 40.989 | 41.91 | 42.151 | 28.52 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.078 | 1000 | 0 | 62.119 | 40.988 | 41.862 | 42.247 | 28.52 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.081 | 1000 | 0 | 62.08 | 40.988 | 41.964 | 42.223 | 28.523 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.079 | 1000 | 0 | 62.114 | 40.987 | 41.929 | 42.087 | 28.527 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.077 | 1000 | 0 | 62.106 | 40.988 | 41.937 | 42.122 | 29.172 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.379 | 15.323 | 1000 | 0 | 65.022 | 40.98 | 41.943 | 42.089 | 29.172 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.459 | 15.364 | 1000 | 0 | 64.686 | 40.979 | 41.969 | 42.117 | 29.172 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 17579 | 0 | 3514.898 | 0.803 | 1.307 | 4.551 | 29.555 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.274 | 15.537 | 1000 | 0 | 65.471 | 40.982 | 41.983 | 42.167 | 33.098 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.75 | 9.21 | 1001 | 0 | 114.398 | 40.918 | 41.999 | 42.941 | 33.098 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.428 | 10.473 | 1001 | 0 | 106.172 | 40.899 | 41.899 | 42.911 | 33.098 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 11832 | 0 | 2365.719 | 1.163 | 1.848 | 30.904 | 33.406 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.051 | 10.175 | 1000 | 0 | 99.494 | 40.982 | 42.075 | 43.009 | 40.305 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.573 | 11.32 | 1000 | 0 | 86.407 | 41.617 | 42.439 | 43.271 | 38.73 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.186 | 8.841 | 1000 | 0 | 89.398 | 41.187 | 42.331 | 43.06 | 38.73 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.002 | 8820 | 0 | 1761.3 | 1.507 | 2.334 | 52.212 | 38.949 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.98 | 13.693 | 1000 | 0 | 71.53 | 41.966 | 42.988 | 43.689 | 46.375 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.816 | 14.63 | 1000 | 0 | 78.025 | 41.986 | 43.655 | 44.909 | 46.375 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.744 | 14.205 | 1000 | 0 | 78.469 | 41.998 | 43.452 | 44.799 | 46.375 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5460 | 0 | 1091.039 | 2.475 | 4.212 | 14.282 | 47.75 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.261 | 14.941 | 1000 | 0 | 70.119 | 42.968 | 44.673 | 46.011 | 54.07 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.308 | 13.664 | 1000 | 0 | 69.893 | 43.889 | 45.889 | 47.622 | 54.07 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.915 | 13.913 | 1000 | 0 | 71.863 | 43.89 | 46.199 | 48.351 | 54.07 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3614 | 0 | 721.734 | 4.043 | 5.579 | 11.153 | 60.082 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.544 | 16.102 | 1000 | 0 | 64.333 | 44.985 | 47.504 | 49.082 | 85.09 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.99 | 28.759 | 363 | 0 | 12.521 | 241.611 | 243.0 | 19600.437 | 85.363 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.415 | 19.174 | 243 | 0 | 12.516 | 241.715 | 243.176 | 12803.973 | 85.406 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.613 | 14.383 | 183 | 0 | 12.523 | 241.538 | 242.962 | 10012.04 | 85.406 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.58 | 123 | 0 | 12.522 | 241.439 | 242.447 | 5229.488 | 85.426 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.59 | 103 | 0 | 10.477 | 241.86 | 242.734 | 5134.436 | 85.449 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.794 | 63 | 0 | 12.51 | 241.753 | 242.779 | 243.239 | 85.457 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.794 | 42 | 0 | 8.345 | 241.743 | 242.105 | 242.332 | 85.457 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.018 | 122 | 0 | 24.375 | 41.988 | 42.112 | 43.011 | 85.477 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 2.016 | 110 | 0 | 21.873 | 46.976 | 47.111 | 47.995 | 85.52 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.015 | 99 | 0 | 19.632 | 51.014 | 52.019 | 52.159 | 85.527 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.069 | 55 | 0 | 10.989 | 91.955 | 92.059 | 92.878 | 85.527 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.061 | 2.089 | 36 | 0 | 7.113 | 141.907 | 142.142 | 142.676 | 85.527 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.376 | 21 | 0 | 4.172 | 241.932 | 242.033 | 242.05 | 85.527 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 25384 | 0 | 5076.127 | 0.939 | 1.294 | 1.529 | 65.625 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24897 | 0 | 4978.246 | 0.958 | 1.318 | 1.55 | 67.406 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24991 | 0 | 4997.188 | 0.952 | 1.346 | 1.58 | 67.137 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24746 | 0 | 4947.836 | 0.958 | 1.374 | 1.662 | 67.156 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24801 | 0 | 4959.477 | 0.958 | 1.361 | 1.587 | 68.582 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21142 | 0 | 4227.594 | 1.131 | 1.551 | 1.842 | 68.426 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24869 | 0 | 4972.934 | 0.957 | 1.35 | 1.596 | 68.738 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24203 | 0 | 4839.903 | 0.981 | 1.418 | 1.718 | 70.398 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18913 | 0 | 3781.867 | 1.28 | 1.673 | 1.918 | 95.98 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9518 | 0 | 1902.945 | 2.58 | 3.131 | 3.418 | 81.754 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18934 | 0 | 3786.088 | 1.279 | 1.635 | 1.864 | 96.871 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.029 | 2.027 | 17158 | 0 | 3411.976 | 0.807 | 1.524 | 40.95 | 78.207 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12307 | 0 | 2460.634 | 1.874 | 2.904 | 3.843 | 109.883 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5246 | 0 | 1048.587 | 4.749 | 5.597 | 6.013 | 92.941 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12149 | 0 | 2428.963 | 1.865 | 2.973 | 4.101 | 89.531 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12060 | 0 | 2411.332 | 1.86 | 3.029 | 4.275 | 89.844 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8443 | 0 | 1687.946 | 2.622 | 4.589 | 12.745 | 141.188 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 2921 | 0 | 583.449 | 8.51 | 9.966 | 10.44 | 97.285 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8775 | 0 | 1754.327 | 2.526 | 4.297 | 12.273 | 88.375 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 8414 | 0 | 1681.575 | 2.58 | 4.697 | 12.359 | 88.063 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5510 | 0 | 1100.997 | 4.157 | 6.119 | 15.857 | 120.75 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 3.012 | 1646 | 0 | 328.362 | 15.112 | 17.594 | 18.479 | 98.434 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5846 | 0 | 1168.296 | 3.882 | 5.767 | 15.113 | 100.844 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.138 | 2.003 | 5889 | 0 | 1146.217 | 3.795 | 6.037 | 15.48 | 100.781 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.009 | 3667 | 0 | 732.495 | 6.7 | 8.369 | 10.237 | 140.531 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.765 | 5.455 | 1000 | 0 | 173.472 | 28.729 | 33.754 | 38.123 | 104.676 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3999 | 0 | 799.067 | 6.071 | 7.711 | 8.822 | 104.168 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4391 | 0 | 877.337 | 5.533 | 6.884 | 7.857 | 104.168 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.941 | 50.973 | 360 | 0 | 7.067 | 2548.017 | 2573.134 | 2580.493 | 120.902 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.98 | 33.998 | 240 | 0 | 7.063 | 1698.828 | 1712.87 | 1715.407 | 121.344 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.482 | 25.491 | 180 | 0 | 7.064 | 1274.292 | 1292.032 | 1299.465 | 124.477 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.983 | 16.998 | 120 | 0 | 7.066 | 848.051 | 867.335 | 869.082 | 126.043 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.148 | 14.16 | 100 | 0 | 7.068 | 773.008 | 848.889 | 853.62 | 129.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.488 | 8.493 | 60 | 0 | 7.069 | 424.589 | 432.105 | 435.582 | 133.453 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.654 | 5.65 | 40 | 0 | 7.075 | 282.684 | 284.863 | 286.756 | 133.453 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3583 | 0 | 716.55 | 1.373 | 1.477 | 1.605 | 146.426 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 963 | 0 | 192.528 | 5.163 | 5.281 | 5.406 | 146.426 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.007 | 489 | 0 | 97.632 | 10.201 | 10.397 | 10.492 | 146.426 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.038 | 2.013 | 100 | 0 | 19.85 | 50.333 | 50.549 | 50.588 | 146.426 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.021 | 2.009 | 50 | 0 | 9.958 | 100.377 | 100.526 | 100.581 | 146.426 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.005 | 25 | 0 | 4.987 | 200.503 | 200.675 | 200.684 | 146.43 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 25325 | 0 | 5064.405 | 0.943 | 1.284 | 1.532 | 66.535 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24366 | 0 | 4872.484 | 0.973 | 1.349 | 1.579 | 66.988 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 25229 | 0 | 5045.064 | 0.944 | 1.311 | 1.567 | 66.406 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24560 | 0 | 4911.046 | 0.969 | 1.372 | 1.696 | 66.535 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24171 | 0 | 4833.535 | 0.989 | 1.36 | 1.62 | 67.703 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21427 | 0 | 4284.768 | 1.12 | 1.517 | 1.777 | 67.219 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24841 | 0 | 4967.341 | 0.955 | 1.361 | 1.623 | 67.805 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24054 | 0 | 4810.062 | 0.99 | 1.405 | 1.765 | 73.254 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19202 | 0 | 3839.777 | 1.261 | 1.639 | 1.915 | 88.457 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9454 | 0 | 1890.233 | 2.592 | 3.208 | 3.631 | 76.973 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18971 | 0 | 3793.601 | 1.271 | 1.618 | 1.923 | 88.211 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.009 | 18139 | 0 | 3623.647 | 0.794 | 1.415 | 40.92 | 71.477 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12067 | 0 | 2412.207 | 1.872 | 3.012 | 4.418 | 107.25 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5188 | 0 | 1036.887 | 4.774 | 5.646 | 6.126 | 81.352 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 11765 | 0 | 2352.384 | 1.893 | 3.161 | 4.738 | 72.785 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 11842 | 0 | 2367.789 | 1.872 | 3.189 | 4.675 | 72.285 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8571 | 0 | 1713.347 | 2.571 | 4.57 | 13.116 | 137.086 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3057 | 0 | 610.623 | 8.093 | 9.507 | 10.115 | 86.027 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.004 | 8966 | 0 | 1792.663 | 2.455 | 4.211 | 12.194 | 79.27 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8924 | 0 | 1783.959 | 2.443 | 4.24 | 12.044 | 79.27 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5597 | 0 | 1118.68 | 3.997 | 7.061 | 15.596 | 166.816 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.014 | 2.925 | 1690 | 0 | 337.086 | 14.657 | 17.352 | 18.192 | 100.586 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5838 | 0 | 1166.894 | 3.859 | 5.911 | 15.779 | 104.871 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6372 | 0 | 1273.532 | 3.529 | 5.413 | 14.672 | 100.508 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3640 | 0 | 727.213 | 6.756 | 8.259 | 9.11 | 111.02 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.688 | 5.356 | 1000 | 0 | 175.81 | 28.733 | 32.417 | 34.806 | 111.324 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3823 | 0 | 763.715 | 6.342 | 8.179 | 9.659 | 109.199 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 4223 | 0 | 843.465 | 5.768 | 7.199 | 8.067 | 109.203 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.929 | 51.022 | 360 | 0 | 7.069 | 2545.759 | 2558.354 | 2573.441 | 128.695 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.952 | 34.024 | 240 | 0 | 7.069 | 1697.108 | 1709.124 | 1713.274 | 140.734 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.482 | 25.506 | 180 | 0 | 7.064 | 1273.999 | 1288.611 | 1298.55 | 141.18 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.972 | 16.987 | 120 | 0 | 7.07 | 848.237 | 859.241 | 859.684 | 141.371 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.265 | 14.276 | 100 | 0 | 7.01 | 829.103 | 852.817 | 855.066 | 141.438 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.491 | 8.51 | 60 | 0 | 7.067 | 424.496 | 430.872 | 433.036 | 141.438 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.65 | 40 | 0 | 7.076 | 282.491 | 285.113 | 289.525 | 141.441 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3610 | 0 | 721.853 | 1.362 | 1.472 | 1.624 | 141.445 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 962 | 0 | 192.327 | 5.167 | 5.287 | 5.439 | 141.445 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.006 | 488 | 0 | 97.462 | 10.223 | 10.396 | 10.479 | 141.445 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.037 | 2.016 | 100 | 0 | 19.851 | 50.342 | 50.531 | 50.668 | 141.445 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.02 | 2.009 | 50 | 0 | 9.96 | 100.361 | 100.479 | 100.51 | 141.445 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.006 | 25 | 0 | 4.985 | 200.565 | 200.677 | 200.714 | 141.445 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24904 | 0 | 4980.005 | 0.959 | 1.312 | 1.566 | 66.504 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24723 | 0 | 4943.924 | 0.966 | 1.31 | 1.548 | 66.906 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 25149 | 0 | 5029.192 | 0.946 | 1.322 | 1.609 | 66.297 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24758 | 0 | 4950.968 | 0.957 | 1.381 | 1.739 | 66.488 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24995 | 0 | 4998.235 | 0.954 | 1.321 | 1.562 | 67.871 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21293 | 0 | 4257.991 | 1.127 | 1.526 | 1.768 | 67.953 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24401 | 0 | 4879.464 | 0.977 | 1.369 | 1.622 | 68.07 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24045 | 0 | 4808.216 | 0.986 | 1.421 | 1.729 | 70.605 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18511 | 0 | 3701.229 | 1.305 | 1.684 | 1.948 | 81.598 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9493 | 0 | 1897.796 | 2.591 | 3.208 | 3.611 | 73.875 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18779 | 0 | 3755.135 | 1.283 | 1.671 | 1.913 | 80.051 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.04 | 2.023 | 17581 | 0 | 3488.22 | 0.827 | 1.481 | 40.977 | 69.254 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12101 | 0 | 2419.135 | 1.863 | 3.076 | 4.255 | 109.742 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5163 | 0 | 1031.827 | 4.792 | 5.716 | 6.309 | 78.359 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12385 | 0 | 2476.208 | 1.808 | 3.052 | 4.206 | 71.094 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11974 | 0 | 2394.071 | 1.879 | 3.112 | 4.137 | 70.969 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8771 | 0 | 1753.523 | 2.518 | 4.275 | 13.47 | 120.047 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 2990 | 0 | 597.23 | 8.281 | 9.834 | 11.33 | 79.703 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9209 | 0 | 1841.085 | 2.417 | 3.885 | 12.805 | 74.855 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8753 | 0 | 1750.053 | 2.489 | 4.356 | 13.488 | 74.859 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5610 | 0 | 1121.118 | 4.082 | 6.004 | 17.009 | 114.637 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.014 | 2.951 | 1637 | 0 | 326.465 | 15.141 | 17.714 | 18.887 | 82.902 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5910 | 0 | 1181.368 | 3.823 | 5.62 | 16.531 | 82.047 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6159 | 0 | 1230.997 | 3.598 | 5.689 | 16.36 | 82.047 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3481 | 0 | 695.436 | 7.027 | 8.945 | 10.77 | 130.43 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.905 | 5.69 | 1000 | 0 | 169.342 | 29.126 | 33.515 | 35.422 | 85.883 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.005 | 3490 | 0 | 696.892 | 6.967 | 9.038 | 10.355 | 83.434 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3932 | 0 | 785.473 | 6.292 | 7.443 | 8.212 | 83.434 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.957 | 51.056 | 360 | 0 | 7.065 | 2547.718 | 2575.177 | 2587.984 | 103.754 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.955 | 33.999 | 240 | 0 | 7.068 | 1697.999 | 1715.382 | 1721.527 | 103.762 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.484 | 25.5 | 180 | 0 | 7.063 | 1276.33 | 1291.024 | 1300.737 | 103.766 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.984 | 17.003 | 120 | 0 | 7.065 | 849.5 | 865.257 | 872.471 | 103.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.157 | 14.225 | 100 | 0 | 7.064 | 753.833 | 822.61 | 861.03 | 104.148 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.493 | 8.503 | 60 | 0 | 7.065 | 424.208 | 433.135 | 441.16 | 104.148 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.652 | 5.653 | 40 | 0 | 7.077 | 282.669 | 284.582 | 284.654 | 104.148 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3583 | 0 | 716.545 | 1.366 | 1.492 | 1.756 | 114.563 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.004 | 963 | 0 | 192.411 | 5.166 | 5.288 | 5.468 | 119.605 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.002 | 488 | 0 | 97.434 | 10.215 | 10.397 | 10.63 | 119.605 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.039 | 2.016 | 100 | 0 | 19.844 | 50.338 | 50.536 | 50.635 | 119.605 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.023 | 2.01 | 50 | 0 | 9.955 | 100.385 | 100.539 | 100.713 | 119.605 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.509 | 200.68 | 200.684 | 119.605 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.118 | 1000 | 0 | 62.106 | 40.987 | 41.947 | 42.155 | 29.648 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.087 | 1000 | 0 | 62.121 | 40.987 | 41.95 | 42.095 | 29.816 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.086 | 1000 | 0 | 62.072 | 40.988 | 41.985 | 42.253 | 30.094 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.086 | 1000 | 0 | 62.119 | 40.987 | 41.848 | 42.227 | 30.277 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.083 | 1000 | 0 | 62.103 | 40.99 | 41.963 | 42.387 | 30.352 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.081 | 1000 | 0 | 62.121 | 40.987 | 41.967 | 42.216 | 30.355 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.079 | 1000 | 0 | 62.083 | 40.987 | 41.96 | 42.317 | 30.359 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.081 | 1000 | 0 | 62.087 | 40.988 | 41.97 | 42.299 | 30.883 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.03 | 15.287 | 1000 | 0 | 66.532 | 40.98 | 41.979 | 42.111 | 30.883 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.944 | 15.165 | 1000 | 0 | 66.915 | 40.98 | 41.974 | 42.156 | 30.883 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 16739 | 0 | 3347.148 | 0.844 | 1.387 | 3.557 | 31.207 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.806 | 15.466 | 1000 | 0 | 63.267 | 40.983 | 41.988 | 42.983 | 35.09 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.852 | 10.056 | 1000 | 0 | 112.965 | 40.911 | 41.959 | 42.304 | 35.09 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.439 | 11.017 | 1000 | 0 | 87.422 | 40.955 | 41.948 | 42.995 | 35.09 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 11433 | 0 | 2285.729 | 1.183 | 1.941 | 41.538 | 35.844 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.881 | 9.212 | 1000 | 0 | 91.9 | 40.982 | 42.061 | 42.966 | 43.59 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.407 | 7.944 | 1001 | 0 | 96.188 | 40.993 | 42.731 | 49.757 | 43.59 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.217 | 13.08 | 1000 | 0 | 97.879 | 41.161 | 42.571 | 43.211 | 43.59 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.182 | 7997 | 0 | 1598.628 | 1.598 | 2.702 | 43.849 | 43.59 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.215 | 14.268 | 1000 | 0 | 81.864 | 41.948 | 42.973 | 44.929 | 48.227 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.786 | 12.27 | 1000 | 0 | 84.85 | 41.968 | 43.585 | 45.032 | 48.227 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.354 | 12.79 | 1000 | 0 | 96.58 | 41.955 | 43.391 | 45.121 | 48.227 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.01 | 2.003 | 5339 | 0 | 1065.715 | 2.424 | 4.812 | 18.386 | 49.766 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.676 | 14.551 | 1000 | 0 | 68.139 | 42.944 | 44.928 | 47.097 | 53.68 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.679 | 14.163 | 1000 | 0 | 78.873 | 43.409 | 46.662 | 56.733 | 53.68 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.195 | 14.229 | 1000 | 0 | 70.449 | 43.489 | 45.98 | 48.54 | 53.68 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.007 | 3630 | 0 | 724.76 | 3.997 | 5.738 | 20.385 | 59.691 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.317 | 16.082 | 1000 | 0 | 65.287 | 44.947 | 48.953 | 50.736 | 86.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.994 | 28.751 | 363 | 0 | 12.52 | 241.731 | 242.878 | 19611.007 | 87.406 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.403 | 19.171 | 243 | 0 | 12.524 | 241.379 | 242.888 | 12793.597 | 87.43 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.616 | 14.371 | 183 | 0 | 12.521 | 241.547 | 242.872 | 10026.002 | 87.445 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.581 | 123 | 0 | 12.515 | 241.747 | 242.465 | 5235.052 | 87.449 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.82 | 9.583 | 103 | 0 | 10.489 | 241.277 | 242.192 | 5132.009 | 87.457 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.788 | 63 | 0 | 12.522 | 241.209 | 242.192 | 242.464 | 87.457 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.786 | 42 | 0 | 8.347 | 241.236 | 242.175 | 242.259 | 87.473 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.361 | 41.988 | 42.143 | 43.005 | 87.504 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.031 | 112 | 0 | 22.223 | 45.99 | 46.958 | 47.024 | 87.543 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.051 | 2.033 | 99 | 0 | 19.599 | 51.841 | 52.091 | 52.868 | 87.566 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.06 | 56 | 0 | 11.041 | 90.997 | 92.021 | 92.411 | 87.574 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 2.076 | 36 | 0 | 7.136 | 140.985 | 141.987 | 142.016 | 87.598 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.374 | 21 | 0 | 4.172 | 241.843 | 242.005 | 242.006 | 87.598 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.11 | 1000 | 0 | 62.111 | 40.987 | 41.962 | 42.111 | 29.738 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.086 | 1000 | 0 | 62.09 | 40.988 | 41.933 | 42.186 | 30.078 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.083 | 1000 | 0 | 62.114 | 40.987 | 41.981 | 42.141 | 30.207 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.083 | 1000 | 0 | 62.064 | 40.989 | 41.981 | 42.243 | 30.313 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.086 | 1000 | 0 | 62.088 | 40.993 | 41.983 | 42.315 | 30.379 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.14 | 16.078 | 1000 | 0 | 61.956 | 40.99 | 41.973 | 42.15 | 30.383 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.082 | 1000 | 0 | 62.091 | 40.988 | 41.992 | 42.235 | 30.395 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.092 | 16.079 | 1000 | 0 | 62.141 | 40.984 | 41.865 | 42.164 | 30.68 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.548 | 15.485 | 1000 | 0 | 64.316 | 40.981 | 41.956 | 42.154 | 30.719 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.385 | 15.12 | 1000 | 0 | 64.997 | 40.982 | 41.967 | 42.033 | 30.746 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 17560 | 0 | 3511.069 | 0.805 | 1.331 | 4.146 | 31.223 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.448 | 15.664 | 1000 | 0 | 64.732 | 40.981 | 41.987 | 42.959 | 35.27 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.514 | 11.065 | 1000 | 0 | 105.109 | 40.927 | 41.952 | 42.199 | 35.27 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.252 | 9.005 | 1000 | 0 | 108.079 | 40.948 | 41.962 | 42.283 | 35.27 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 11836 | 0 | 2366.424 | 1.129 | 1.853 | 41.262 | 35.41 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.641 | 9.529 | 1000 | 0 | 93.979 | 40.98 | 42.164 | 43.01 | 41.547 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.926 | 9.427 | 1000 | 0 | 83.853 | 41.157 | 42.187 | 43.205 | 41.547 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.633 | 11.841 | 1000 | 0 | 94.045 | 41.14 | 42.441 | 43.166 | 41.551 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8129 | 0 | 1625.11 | 1.576 | 2.585 | 16.49 | 41.551 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.086 | 11.969 | 1000 | 0 | 70.992 | 41.954 | 42.948 | 43.401 | 48.117 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.746 | 14.682 | 1000 | 0 | 78.454 | 41.976 | 43.588 | 48.861 | 48.117 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.216 | 14.123 | 1000 | 0 | 81.861 | 41.966 | 43.133 | 45.629 | 48.117 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.013 | 2.015 | 5663 | 0 | 1129.752 | 2.327 | 4.059 | 17.519 | 48.574 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.449 | 15.029 | 1000 | 0 | 69.207 | 42.876 | 44.087 | 45.994 | 52.668 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.211 | 14.005 | 1000 | 0 | 81.891 | 43.236 | 46.558 | 49.415 | 50.371 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.047 | 12.773 | 1000 | 0 | 71.191 | 43.48 | 45.633 | 47.916 | 50.371 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3578 | 0 | 714.645 | 4.029 | 5.666 | 11.343 | 56.383 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.263 | 16.048 | 1000 | 0 | 65.517 | 44.681 | 47.92 | 50.829 | 64.539 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.988 | 28.746 | 363 | 0 | 12.523 | 241.583 | 242.871 | 19603.502 | 64.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.406 | 19.155 | 243 | 0 | 12.522 | 241.362 | 242.979 | 12789.354 | 64.969 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.616 | 14.365 | 183 | 0 | 12.521 | 241.464 | 242.407 | 10018.574 | 64.973 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.822 | 9.58 | 123 | 0 | 12.523 | 241.542 | 242.437 | 5231.268 | 64.984 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.822 | 9.58 | 103 | 0 | 10.487 | 241.398 | 242.768 | 5127.914 | 64.984 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 4.792 | 63 | 0 | 12.525 | 241.349 | 242.116 | 242.497 | 64.984 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 4.791 | 42 | 0 | 8.35 | 241.168 | 242.204 | 242.268 | 64.984 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.02 | 122 | 0 | 24.356 | 41.981 | 42.166 | 42.992 | 65.031 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.03 | 112 | 0 | 22.209 | 45.983 | 46.994 | 47.1 | 65.063 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.028 | 99 | 0 | 19.619 | 51.112 | 52.086 | 52.907 | 65.063 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.082 | 2.061 | 56 | 0 | 11.019 | 91.026 | 92.857 | 93.004 | 65.078 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.051 | 2.079 | 36 | 0 | 7.127 | 141.021 | 141.994 | 142.05 | 65.078 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.378 | 21 | 0 | 4.174 | 240.987 | 242.016 | 242.772 | 65.078 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.118 | 1000 | 0 | 62.126 | 40.987 | 41.964 | 42.273 | 29.676 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.087 | 1000 | 0 | 62.069 | 40.988 | 41.962 | 42.267 | 29.879 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.084 | 1000 | 0 | 62.076 | 40.988 | 41.98 | 42.196 | 30.066 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.081 | 1000 | 0 | 62.114 | 40.986 | 41.885 | 42.208 | 30.207 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.081 | 1000 | 0 | 62.088 | 40.989 | 41.962 | 42.206 | 30.238 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.082 | 1000 | 0 | 62.091 | 40.989 | 41.965 | 42.135 | 30.238 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.081 | 1000 | 0 | 62.064 | 40.993 | 41.98 | 42.275 | 30.313 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.084 | 1000 | 0 | 62.076 | 40.987 | 41.971 | 42.295 | 30.844 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.063 | 15.081 | 1000 | 0 | 66.387 | 40.98 | 41.975 | 42.171 | 30.883 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.952 | 15.04 | 1000 | 0 | 66.88 | 40.98 | 41.975 | 42.258 | 30.898 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16842 | 0 | 3367.592 | 0.841 | 1.391 | 3.897 | 31.273 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.479 | 15.692 | 1000 | 0 | 64.605 | 40.982 | 41.963 | 42.056 | 36.223 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.799 | 9.856 | 1000 | 0 | 92.604 | 40.957 | 41.968 | 42.183 | 36.223 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.156 | 10.251 | 1000 | 0 | 98.466 | 40.947 | 41.942 | 42.43 | 36.223 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.029 | 2.002 | 10925 | 0 | 2172.31 | 1.219 | 2.014 | 41.392 | 36.551 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.093 | 9.397 | 1000 | 0 | 82.694 | 40.973 | 41.987 | 42.747 | 40.414 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.049 | 10.887 | 1000 | 0 | 99.51 | 41.069 | 42.408 | 44.259 | 40.414 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.187 | 10.208 | 1001 | 0 | 98.259 | 40.992 | 42.285 | 43.728 | 40.414 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.07 | 8206 | 0 | 1639.976 | 1.595 | 2.693 | 16.5 | 40.414 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.416 | 12.238 | 1000 | 0 | 74.535 | 41.957 | 42.939 | 43.785 | 46.777 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.737 | 13.152 | 1000 | 0 | 85.199 | 41.968 | 43.476 | 45.153 | 45.75 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.267 | 13.381 | 1000 | 0 | 81.519 | 41.978 | 43.484 | 46.607 | 45.75 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.023 | 2.004 | 5301 | 0 | 1055.378 | 2.445 | 4.805 | 18.738 | 47.102 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.618 | 14.427 | 1000 | 0 | 68.411 | 42.938 | 44.115 | 45.71 | 53.766 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.141 | 13.832 | 1000 | 0 | 82.366 | 43.017 | 45.581 | 48.056 | 53.766 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.95 | 14.055 | 1000 | 0 | 77.218 | 43.113 | 45.932 | 48.0 | 53.766 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.007 | 3633 | 0 | 725.839 | 4.006 | 5.419 | 11.878 | 59.777 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.046 | 15.146 | 1000 | 0 | 66.463 | 44.939 | 47.712 | 50.982 | 83.035 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.986 | 28.729 | 363 | 0 | 12.523 | 241.305 | 243.017 | 19588.916 | 79.254 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.393 | 19.16 | 243 | 0 | 12.53 | 241.229 | 242.428 | 12789.584 | 79.266 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.609 | 14.368 | 183 | 0 | 12.526 | 241.393 | 242.419 | 10018.388 | 79.277 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.818 | 9.579 | 123 | 0 | 12.528 | 241.2 | 242.59 | 5229.161 | 79.316 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.82 | 9.575 | 103 | 0 | 10.489 | 241.287 | 242.921 | 5130.813 | 79.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 4.785 | 63 | 0 | 12.524 | 241.177 | 242.086 | 242.198 | 79.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.784 | 42 | 0 | 8.348 | 241.225 | 242.131 | 242.872 | 79.32 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.019 | 122 | 0 | 24.351 | 41.982 | 42.602 | 43.03 | 79.359 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.03 | 112 | 0 | 22.253 | 45.988 | 46.197 | 46.975 | 79.43 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.014 | 98 | 0 | 19.53 | 51.913 | 52.135 | 52.996 | 79.457 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.061 | 56 | 0 | 11.05 | 90.998 | 92.017 | 92.113 | 79.461 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.074 | 36 | 0 | 7.137 | 140.994 | 142.016 | 142.025 | 79.469 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.375 | 21 | 0 | 4.167 | 241.967 | 242.957 | 242.959 | 79.473 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 25570 | 0 | 5113.295 | 0.932 | 1.237 | 1.508 | 70.766 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24585 | 0 | 4916.316 | 0.965 | 1.33 | 1.628 | 70.836 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 24287 | 0 | 4856.676 | 0.976 | 1.378 | 1.679 | 70.727 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24075 | 0 | 4814.302 | 0.989 | 1.352 | 1.68 | 70.914 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23771 | 0 | 4753.509 | 0.999 | 1.376 | 1.703 | 72.52 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21155 | 0 | 4230.257 | 1.134 | 1.514 | 1.764 | 72.723 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24337 | 0 | 4866.709 | 0.976 | 1.346 | 1.599 | 72.84 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24747 | 0 | 4948.803 | 0.954 | 1.343 | 1.627 | 74.855 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18503 | 0 | 3699.801 | 1.304 | 1.681 | 1.934 | 85.262 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9561 | 0 | 1911.331 | 2.555 | 3.145 | 3.491 | 79.477 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18370 | 0 | 3673.257 | 1.311 | 1.7 | 1.951 | 84.988 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.033 | 2.028 | 17738 | 0 | 3524.074 | 0.856 | 1.452 | 40.937 | 74.281 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11672 | 0 | 2333.542 | 1.909 | 3.053 | 4.619 | 114.027 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5165 | 0 | 1032.27 | 4.787 | 5.681 | 6.454 | 87.688 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11755 | 0 | 2350.268 | 1.885 | 3.058 | 4.251 | 82.043 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11199 | 0 | 2239.103 | 1.941 | 3.303 | 5.375 | 81.867 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8160 | 0 | 1631.466 | 2.662 | 4.414 | 18.734 | 125.148 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 2916 | 0 | 582.474 | 8.512 | 9.992 | 10.825 | 103.074 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8652 | 0 | 1729.637 | 2.476 | 4.301 | 17.395 | 100.25 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.016 | 8523 | 0 | 1704.028 | 2.479 | 4.572 | 17.643 | 100.199 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.007 | 5343 | 0 | 1067.717 | 4.131 | 6.539 | 21.666 | 137.324 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.891 | 1663 | 0 | 331.78 | 14.89 | 17.44 | 18.387 | 113.004 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5734 | 0 | 1146.123 | 3.81 | 6.23 | 20.424 | 115.652 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 6059 | 0 | 1210.658 | 3.591 | 6.023 | 19.577 | 115.652 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3571 | 0 | 713.329 | 6.804 | 8.867 | 10.815 | 121.027 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.955 | 5.616 | 1000 | 0 | 167.923 | 29.595 | 33.836 | 37.695 | 116.785 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3633 | 0 | 725.946 | 6.702 | 8.555 | 9.677 | 118.672 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 4213 | 0 | 841.578 | 5.904 | 6.836 | 7.596 | 118.672 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.166 | 51.189 | 360 | 0 | 7.036 | 2557.341 | 2570.715 | 2575.348 | 133.535 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.119 | 34.126 | 240 | 0 | 7.034 | 1705.317 | 1717.414 | 1721.359 | 143.641 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.59 | 25.587 | 180 | 0 | 7.034 | 1279.408 | 1286.525 | 1290.268 | 143.836 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.062 | 17.06 | 120 | 0 | 7.033 | 852.596 | 860.914 | 866.26 | 143.902 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.241 | 14.275 | 100 | 0 | 7.022 | 816.774 | 855.559 | 860.319 | 143.902 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.53 | 8.527 | 60 | 0 | 7.034 | 426.157 | 430.088 | 431.205 | 143.902 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.699 | 5.694 | 40 | 0 | 7.018 | 284.794 | 287.648 | 287.872 | 143.902 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.0 | 1311 | 0 | 262.09 | 3.85 | 3.956 | 4.235 | 146.973 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.001 | 392 | 0 | 78.339 | 12.818 | 13.009 | 13.095 | 126.73 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.002 | 308 | 0 | 61.532 | 16.245 | 16.429 | 16.568 | 130.348 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.038 | 2.053 | 96 | 0 | 19.056 | 52.514 | 52.711 | 52.787 | 130.348 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.022 | 2.011 | 50 | 0 | 9.956 | 100.368 | 100.573 | 100.886 | 130.348 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.007 | 25 | 0 | 4.988 | 200.417 | 200.65 | 200.734 | 130.348 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 25212 | 0 | 5041.213 | 0.946 | 1.264 | 1.532 | 70.539 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24175 | 0 | 4834.095 | 0.984 | 1.34 | 1.639 | 71.113 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24021 | 0 | 4803.345 | 0.988 | 1.347 | 1.658 | 70.684 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24078 | 0 | 4814.922 | 0.988 | 1.347 | 1.659 | 70.609 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23930 | 0 | 4785.264 | 0.997 | 1.326 | 1.61 | 72.473 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20791 | 0 | 4157.225 | 1.16 | 1.487 | 1.774 | 72.535 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23906 | 0 | 4780.425 | 0.998 | 1.34 | 1.634 | 72.637 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24335 | 0 | 4866.272 | 0.975 | 1.377 | 1.669 | 74.836 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18738 | 0 | 3746.8 | 1.286 | 1.64 | 1.903 | 85.715 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9514 | 0 | 1902.065 | 2.573 | 3.171 | 3.488 | 78.891 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18415 | 0 | 3682.111 | 1.31 | 1.662 | 1.936 | 85.758 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.04 | 2.039 | 17603 | 0 | 3492.956 | 1.187 | 1.631 | 2.334 | 73.047 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11499 | 0 | 2299.04 | 1.889 | 3.356 | 5.012 | 103.184 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5241 | 0 | 1047.51 | 4.722 | 5.629 | 6.154 | 83.125 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11489 | 0 | 2297.055 | 1.862 | 3.369 | 5.693 | 76.941 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 11510 | 0 | 2301.487 | 1.867 | 3.406 | 5.026 | 76.816 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8299 | 0 | 1659.114 | 2.542 | 4.865 | 18.271 | 126.848 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3049 | 0 | 609.066 | 8.129 | 9.546 | 10.212 | 84.555 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8252 | 0 | 1649.831 | 2.528 | 5.053 | 18.117 | 84.43 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 8256 | 0 | 1649.557 | 2.506 | 5.036 | 18.349 | 84.512 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5306 | 0 | 1060.377 | 4.116 | 6.939 | 22.318 | 150.957 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.966 | 1651 | 0 | 329.407 | 15.091 | 17.362 | 18.665 | 120.082 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.003 | 5592 | 0 | 1116.826 | 3.865 | 6.881 | 21.91 | 117.473 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5723 | 0 | 1143.705 | 3.742 | 6.669 | 21.818 | 117.473 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3516 | 0 | 702.352 | 7.04 | 8.347 | 8.939 | 130.121 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.762 | 5.537 | 1000 | 0 | 173.551 | 28.081 | 33.285 | 36.697 | 126.023 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 3764 | 0 | 752.008 | 6.58 | 7.728 | 8.54 | 122.785 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.004 | 4268 | 0 | 852.326 | 5.745 | 6.992 | 7.62 | 122.785 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.161 | 51.167 | 360 | 0 | 7.037 | 2565.737 | 2587.965 | 2591.281 | 139.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.121 | 34.124 | 240 | 0 | 7.034 | 1710.548 | 1725.644 | 1730.941 | 146.52 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.58 | 25.587 | 180 | 0 | 7.037 | 1283.905 | 1295.81 | 1303.733 | 146.582 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.048 | 17.053 | 120 | 0 | 7.039 | 855.566 | 862.802 | 866.151 | 147.082 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.218 | 14.216 | 100 | 0 | 7.033 | 718.3 | 848.779 | 858.836 | 148.852 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.533 | 8.538 | 60 | 0 | 7.032 | 426.873 | 434.451 | 434.989 | 148.852 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.71 | 5.718 | 40 | 0 | 7.005 | 284.879 | 289.87 | 291.178 | 148.852 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1352 | 0 | 270.291 | 3.708 | 3.919 | 4.175 | 150.98 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.001 | 400 | 0 | 79.941 | 12.536 | 12.733 | 12.825 | 151.043 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.004 | 315 | 0 | 62.941 | 15.887 | 16.095 | 16.237 | 151.043 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.023 | 97 | 0 | 19.33 | 51.714 | 52.008 | 52.079 | 151.043 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.023 | 2.011 | 50 | 0 | 9.953 | 100.398 | 100.584 | 100.676 | 151.043 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.534 | 200.699 | 200.725 | 151.043 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24772 | 0 | 4953.808 | 0.963 | 1.282 | 1.542 | 69.047 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23927 | 0 | 4784.649 | 1.0 | 1.33 | 1.6 | 69.348 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24782 | 0 | 4955.692 | 0.953 | 1.326 | 1.649 | 69.383 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24723 | 0 | 4944.044 | 0.959 | 1.321 | 1.634 | 69.828 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23320 | 0 | 4663.347 | 1.012 | 1.413 | 1.741 | 71.402 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20835 | 0 | 4166.415 | 1.15 | 1.547 | 1.857 | 71.238 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23809 | 0 | 4761.202 | 0.994 | 1.379 | 1.736 | 79.457 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 24704 | 0 | 4940.14 | 0.959 | 1.329 | 1.679 | 81.449 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17960 | 0 | 3591.327 | 1.345 | 1.723 | 1.993 | 101.074 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9139 | 0 | 1826.867 | 2.68 | 3.327 | 3.675 | 84.793 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17798 | 0 | 3558.835 | 1.355 | 1.745 | 2.042 | 100.531 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.034 | 2.001 | 16792 | 0 | 3335.828 | 0.872 | 1.526 | 40.969 | 83.277 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11180 | 0 | 2235.224 | 1.964 | 3.198 | 4.738 | 112.434 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4919 | 0 | 983.084 | 5.013 | 6.098 | 6.878 | 98.082 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 11567 | 0 | 2312.803 | 1.892 | 3.119 | 4.611 | 88.852 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 11404 | 0 | 2279.597 | 1.896 | 3.188 | 4.879 | 88.789 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 8032 | 0 | 1605.75 | 2.689 | 4.507 | 20.298 | 143.813 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 2886 | 0 | 576.459 | 8.565 | 10.122 | 11.099 | 104.195 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 8028 | 0 | 1604.161 | 2.644 | 4.643 | 21.312 | 91.438 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 8009 | 0 | 1600.338 | 2.603 | 4.859 | 20.624 | 92.25 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.003 | 5147 | 0 | 1028.238 | 4.251 | 6.868 | 23.808 | 151.629 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.209 | 1572 | 0 | 313.368 | 15.753 | 18.422 | 20.526 | 125.715 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.003 | 5405 | 0 | 1079.228 | 3.999 | 6.505 | 23.847 | 125.957 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5506 | 0 | 1100.543 | 3.853 | 6.445 | 23.742 | 126.078 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3446 | 0 | 688.369 | 7.173 | 8.642 | 9.394 | 133.895 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.096 | 5.931 | 1000 | 0 | 164.055 | 30.166 | 34.988 | 39.105 | 133.941 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3609 | 0 | 721.129 | 6.868 | 8.026 | 9.055 | 132.484 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3691 | 0 | 737.122 | 6.637 | 8.219 | 9.275 | 132.484 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.205 | 51.243 | 360 | 0 | 7.031 | 2559.663 | 2571.633 | 2577.053 | 159.762 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.127 | 34.133 | 240 | 0 | 7.033 | 1706.021 | 1716.965 | 1719.985 | 159.762 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.593 | 25.6 | 180 | 0 | 7.033 | 1279.387 | 1289.51 | 1292.355 | 159.828 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.067 | 17.073 | 120 | 0 | 7.031 | 853.269 | 859.869 | 861.451 | 159.832 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.233 | 14.276 | 100 | 0 | 7.026 | 834.663 | 853.806 | 856.94 | 159.898 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.527 | 8.532 | 60 | 0 | 7.036 | 426.131 | 429.791 | 431.615 | 159.898 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.706 | 5.699 | 40 | 0 | 7.01 | 285.292 | 287.355 | 287.804 | 159.898 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.003 | 1314 | 0 | 262.663 | 3.849 | 3.958 | 4.176 | 150.461 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.009 | 397 | 0 | 79.329 | 12.725 | 12.974 | 13.104 | 150.461 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.004 | 309 | 0 | 61.722 | 16.222 | 16.425 | 16.53 | 150.461 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.004 | 96 | 0 | 19.137 | 52.286 | 52.66 | 52.785 | 150.461 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.024 | 2.011 | 50 | 0 | 9.951 | 100.42 | 100.636 | 100.732 | 150.52 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.515 | 200.693 | 200.747 | 150.52 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

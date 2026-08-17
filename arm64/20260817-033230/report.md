# Puma vs Raptor Simulation

Run ID: `20260817-033230`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.161 | 1000 | 0 | 62.015 | 40.982 | 41.971 | 42.771 | 28.184 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.103 | 1000 | 0 | 62.065 | 40.983 | 41.973 | 42.378 | 28.184 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.11 | 1000 | 0 | 62.068 | 40.982 | 41.938 | 42.244 | 28.207 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.112 | 1000 | 0 | 62.102 | 40.98 | 41.949 | 42.145 | 28.242 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.098 | 1000 | 0 | 62.097 | 40.98 | 41.887 | 42.394 | 28.242 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.099 | 1000 | 0 | 62.086 | 40.982 | 41.958 | 42.344 | 28.242 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.105 | 1000 | 0 | 62.085 | 40.98 | 41.98 | 42.559 | 28.242 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.108 | 1000 | 0 | 62.101 | 40.98 | 41.938 | 42.246 | 28.656 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.313 | 14.984 | 1000 | 0 | 65.303 | 40.973 | 41.974 | 42.271 | 28.656 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.789 | 15.508 | 1000 | 0 | 67.617 | 40.972 | 41.965 | 42.182 | 28.656 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13928 | 0 | 2784.623 | 0.975 | 1.811 | 7.356 | 28.961 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.36 | 15.004 | 1000 | 0 | 65.102 | 40.972 | 41.97 | 42.188 | 35.402 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.376 | 9.299 | 1000 | 0 | 96.381 | 40.956 | 41.988 | 42.952 | 35.402 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.613 | 10.35 | 1000 | 0 | 86.108 | 40.973 | 42.059 | 42.975 | 35.402 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10508 | 0 | 2100.76 | 1.227 | 2.432 | 41.91 | 35.402 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.54 | 13.255 | 1000 | 0 | 73.854 | 41.202 | 42.453 | 43.031 | 42.707 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.726 | 13.809 | 1000 | 0 | 85.284 | 41.945 | 42.987 | 43.968 | 42.707 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.644 | 14.09 | 1000 | 0 | 79.092 | 41.945 | 42.999 | 44.189 | 42.707 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.01 | 2.005 | 7304 | 0 | 1457.9 | 1.702 | 3.596 | 15.1 | 42.707 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.587 | 14.61 | 1000 | 0 | 68.553 | 41.971 | 43.279 | 44.243 | 48.117 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.913 | 15.638 | 1000 | 0 | 67.056 | 41.994 | 44.107 | 45.8 | 48.113 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.465 | 15.423 | 1000 | 0 | 64.66 | 41.978 | 43.552 | 44.812 | 48.113 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 5707 | 0 | 1140.642 | 2.307 | 4.582 | 13.83 | 49.586 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.565 | 15.685 | 1000 | 0 | 64.246 | 42.985 | 44.995 | 46.258 | 57.898 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.563 | 16.34 | 1000 | 0 | 64.254 | 43.973 | 47.536 | 49.371 | 57.898 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.738 | 16.18 | 1000 | 0 | 63.541 | 43.993 | 47.484 | 49.871 | 57.898 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3683 | 0 | 735.559 | 3.794 | 6.94 | 33.395 | 60.457 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.869 | 17.213 | 1000 | 0 | 59.279 | 45.036 | 50.554 | 51.686 | 87.895 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.004 | 28.74 | 363 | 0 | 12.515 | 241.756 | 243.363 | 19609.59 | 88.344 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.425 | 19.17 | 243 | 0 | 12.51 | 241.909 | 243.011 | 12809.186 | 88.375 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.372 | 183 | 0 | 12.513 | 241.793 | 242.988 | 10023.089 | 88.383 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.583 | 123 | 0 | 12.511 | 241.764 | 242.967 | 5232.064 | 88.391 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.583 | 103 | 0 | 10.48 | 241.663 | 242.778 | 5131.875 | 88.391 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.79 | 63 | 0 | 12.505 | 241.763 | 242.42 | 243.217 | 88.391 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.796 | 42 | 0 | 8.342 | 241.72 | 242.218 | 242.241 | 88.391 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.018 | 122 | 0 | 24.352 | 41.98 | 42.944 | 43.011 | 88.398 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.005 | 110 | 0 | 21.795 | 46.979 | 47.498 | 48.013 | 88.504 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.007 | 99 | 0 | 19.655 | 50.983 | 52.013 | 52.967 | 88.508 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.092 | 2.067 | 56 | 0 | 10.998 | 91.833 | 92.751 | 93.075 | 88.523 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.064 | 2.084 | 36 | 0 | 7.109 | 141.94 | 142.934 | 142.967 | 88.543 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.379 | 21 | 0 | 4.17 | 241.861 | 242.113 | 242.881 | 88.555 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.093 | 1000 | 0 | 62.075 | 40.982 | 41.962 | 42.244 | 27.43 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.112 | 1000 | 0 | 62.101 | 40.979 | 41.857 | 42.285 | 27.664 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.099 | 1000 | 0 | 62.065 | 40.981 | 41.945 | 42.394 | 27.668 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.116 | 1000 | 0 | 62.094 | 40.981 | 41.953 | 42.269 | 27.719 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.097 | 16.101 | 1000 | 0 | 62.125 | 40.98 | 41.821 | 42.139 | 27.73 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.109 | 1000 | 0 | 62.076 | 40.977 | 41.953 | 42.287 | 27.73 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.102 | 1000 | 0 | 62.102 | 40.98 | 41.946 | 42.021 | 27.73 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.11 | 1000 | 0 | 62.067 | 40.977 | 41.935 | 42.288 | 28.41 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.319 | 14.036 | 1000 | 0 | 65.276 | 40.966 | 41.966 | 42.331 | 28.41 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.443 | 14.802 | 1000 | 0 | 64.756 | 40.969 | 41.954 | 42.771 | 28.41 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13733 | 0 | 2745.577 | 0.98 | 1.874 | 6.65 | 28.824 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.109 | 14.729 | 1000 | 0 | 66.186 | 40.971 | 41.983 | 42.389 | 32.625 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.099 | 12.026 | 1000 | 0 | 82.65 | 40.982 | 42.184 | 43.13 | 32.625 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.167 | 10.777 | 1000 | 0 | 82.19 | 41.013 | 42.355 | 43.16 | 32.625 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10055 | 0 | 2010.129 | 1.311 | 2.648 | 40.965 | 33.059 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.279 | 12.12 | 1000 | 0 | 81.44 | 41.784 | 42.877 | 43.926 | 38.773 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.283 | 13.843 | 1000 | 0 | 75.283 | 41.955 | 42.98 | 43.993 | 38.773 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.802 | 13.775 | 1000 | 0 | 72.453 | 41.952 | 42.981 | 43.821 | 38.773 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.11 | 7541 | 0 | 1506.493 | 1.606 | 3.377 | 18.833 | 39.16 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.86 | 14.737 | 1000 | 0 | 67.297 | 41.977 | 43.191 | 44.348 | 45.676 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.029 | 15.151 | 1000 | 0 | 66.537 | 41.998 | 43.719 | 44.773 | 45.676 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.359 | 14.931 | 1000 | 0 | 69.644 | 42.915 | 44.737 | 52.9 | 45.676 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5265 | 0 | 1052.232 | 2.463 | 4.981 | 15.957 | 46.223 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.295 | 16.008 | 1000 | 0 | 65.383 | 43.051 | 45.864 | 47.875 | 52.031 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.891 | 16.441 | 1000 | 0 | 62.93 | 43.975 | 47.359 | 50.765 | 52.031 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.731 | 16.125 | 1000 | 0 | 63.569 | 43.998 | 47.267 | 49.171 | 52.031 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 3543 | 0 | 707.823 | 3.916 | 7.327 | 17.801 | 58.043 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.76 | 17.404 | 1000 | 0 | 59.667 | 45.003 | 49.698 | 51.934 | 64.559 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.003 | 28.754 | 363 | 0 | 12.516 | 241.799 | 243.156 | 19603.004 | 64.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.412 | 19.162 | 243 | 0 | 12.518 | 241.552 | 243.116 | 12803.601 | 64.789 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.62 | 14.375 | 183 | 0 | 12.517 | 241.731 | 243.09 | 10017.123 | 64.801 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.584 | 123 | 0 | 12.516 | 241.726 | 242.422 | 5231.197 | 64.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.578 | 103 | 0 | 10.482 | 241.752 | 242.32 | 5130.095 | 64.809 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.791 | 63 | 0 | 12.513 | 241.512 | 242.424 | 242.961 | 64.816 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.789 | 42 | 0 | 8.335 | 241.859 | 242.97 | 243.149 | 64.816 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.018 | 122 | 0 | 24.342 | 41.97 | 42.942 | 42.982 | 64.82 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 2.01 | 110 | 0 | 21.805 | 46.975 | 47.969 | 47.993 | 64.82 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 2.002 | 99 | 0 | 19.683 | 50.979 | 51.977 | 52.143 | 64.82 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.071 | 55 | 0 | 10.992 | 91.935 | 92.023 | 92.712 | 64.82 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.074 | 2.09 | 36 | 0 | 7.095 | 141.963 | 142.956 | 142.974 | 64.82 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.381 | 21 | 0 | 4.165 | 241.959 | 242.395 | 242.829 | 64.82 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.116 | 1000 | 0 | 62.074 | 40.978 | 41.961 | 42.326 | 27.578 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.113 | 1000 | 0 | 62.106 | 40.98 | 41.963 | 42.071 | 27.652 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.132 | 1000 | 0 | 62.083 | 40.98 | 41.961 | 42.238 | 27.664 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.157 | 1000 | 0 | 62.08 | 40.978 | 41.881 | 42.332 | 27.707 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.126 | 1000 | 0 | 62.101 | 40.98 | 41.858 | 42.165 | 27.707 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.153 | 1000 | 0 | 62.088 | 40.975 | 41.956 | 42.294 | 27.707 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.165 | 1000 | 0 | 62.083 | 40.982 | 41.916 | 42.273 | 27.715 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.193 | 1000 | 0 | 62.051 | 40.98 | 41.96 | 42.324 | 28.344 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.708 | 13.657 | 1000 | 0 | 67.989 | 40.966 | 41.963 | 42.112 | 28.5 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.844 | 14.407 | 1000 | 0 | 67.366 | 40.964 | 41.966 | 42.305 | 28.5 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12815 | 0 | 2562.188 | 1.037 | 2.071 | 7.214 | 28.848 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.126 | 14.934 | 1000 | 0 | 66.113 | 40.971 | 41.982 | 42.646 | 34.43 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.856 | 9.819 | 1000 | 0 | 77.787 | 40.975 | 42.014 | 43.067 | 34.43 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.308 | 11.694 | 1000 | 0 | 81.249 | 40.976 | 42.025 | 42.956 | 34.43 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9673 | 0 | 1933.86 | 1.284 | 2.71 | 41.344 | 34.637 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.577 | 12.057 | 1000 | 0 | 94.548 | 41.016 | 42.24 | 43.238 | 39.41 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.536 | 13.853 | 1000 | 0 | 79.769 | 41.941 | 42.89 | 43.952 | 39.41 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.484 | 12.951 | 1000 | 0 | 74.162 | 41.946 | 42.906 | 43.256 | 39.41 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.13 | 7594 | 0 | 1517.996 | 1.621 | 3.34 | 70.11 | 39.41 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.102 | 14.909 | 1000 | 0 | 66.216 | 41.967 | 43.002 | 44.062 | 43.918 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.253 | 15.339 | 1000 | 0 | 65.562 | 41.979 | 43.651 | 46.808 | 43.918 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.146 | 15.25 | 1000 | 0 | 66.025 | 41.983 | 44.224 | 46.774 | 43.918 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 5574 | 0 | 1114.022 | 2.33 | 4.775 | 16.829 | 45.633 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.375 | 16.043 | 1000 | 0 | 65.043 | 42.984 | 45.256 | 47.258 | 51.855 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.327 | 15.654 | 1000 | 0 | 65.244 | 43.788 | 46.307 | 48.617 | 51.855 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.356 | 16.055 | 1000 | 0 | 65.12 | 43.973 | 47.37 | 49.608 | 51.855 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 3620 | 0 | 723.165 | 3.844 | 7.19 | 19.455 | 57.867 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.731 | 17.039 | 1000 | 0 | 59.768 | 45.26 | 49.706 | 51.803 | 83.063 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.991 | 28.74 | 363 | 0 | 12.521 | 241.546 | 243.182 | 19595.885 | 82.719 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.41 | 19.154 | 243 | 0 | 12.519 | 241.612 | 242.984 | 12793.789 | 82.77 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.617 | 14.37 | 183 | 0 | 12.52 | 241.614 | 242.72 | 10020.946 | 82.809 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.57 | 123 | 0 | 12.508 | 241.89 | 242.891 | 5232.837 | 82.82 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.82 | 9.574 | 103 | 0 | 10.489 | 241.212 | 242.872 | 5126.961 | 82.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.79 | 63 | 0 | 12.507 | 241.622 | 242.795 | 243.213 | 82.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.789 | 42 | 0 | 8.342 | 241.747 | 242.279 | 242.7 | 82.84 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.367 | 41.98 | 42.095 | 42.968 | 82.84 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.028 | 110 | 0 | 21.795 | 46.971 | 47.103 | 47.988 | 82.867 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.008 | 99 | 0 | 19.722 | 50.972 | 51.973 | 51.994 | 82.895 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.074 | 55 | 0 | 10.955 | 91.966 | 92.316 | 93.075 | 82.914 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.07 | 2.095 | 36 | 0 | 7.101 | 141.949 | 142.298 | 142.943 | 82.914 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.38 | 21 | 0 | 4.165 | 241.966 | 242.337 | 242.953 | 82.914 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20176 | 0 | 4034.495 | 1.175 | 1.638 | 2.058 | 63.77 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19192 | 0 | 3837.577 | 1.235 | 1.743 | 2.167 | 63.848 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 19816 | 0 | 3962.441 | 1.194 | 1.701 | 2.062 | 63.648 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19453 | 0 | 3889.708 | 1.224 | 1.85 | 2.26 | 63.797 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19717 | 0 | 3942.642 | 1.2 | 1.735 | 2.125 | 65.828 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17284 | 0 | 3456.047 | 1.379 | 1.943 | 2.457 | 65.016 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19641 | 0 | 3927.555 | 1.206 | 1.744 | 2.11 | 65.578 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19136 | 0 | 3826.385 | 1.244 | 1.876 | 2.286 | 68.324 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14766 | 0 | 2952.294 | 1.594 | 2.337 | 2.946 | 76.441 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 8026 | 0 | 1604.387 | 3.007 | 4.23 | 5.627 | 70.746 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15000 | 0 | 2999.238 | 1.566 | 2.339 | 2.964 | 76.473 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.022 | 2.001 | 15034 | 0 | 2993.857 | 1.289 | 2.063 | 3.046 | 67.332 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10709 | 0 | 2140.987 | 2.073 | 3.542 | 5.601 | 102.586 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4521 | 0 | 903.443 | 5.409 | 8.982 | 10.24 | 78.168 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10724 | 0 | 2143.773 | 2.013 | 3.762 | 5.964 | 73.059 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10895 | 0 | 2178.376 | 1.997 | 3.684 | 5.743 | 73.246 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.012 | 8315 | 0 | 1662.382 | 2.679 | 4.534 | 13.132 | 124.469 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.012 | 2491 | 0 | 497.373 | 9.802 | 16.817 | 18.414 | 83.48 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8429 | 0 | 1685.103 | 2.519 | 4.893 | 13.004 | 78.973 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8494 | 0 | 1698.054 | 2.495 | 4.795 | 13.072 | 78.973 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5446 | 0 | 1088.339 | 4.305 | 7.187 | 16.167 | 142.363 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.66 | 1370 | 0 | 273.094 | 17.85 | 30.605 | 33.039 | 83.832 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5713 | 0 | 1141.892 | 3.814 | 7.178 | 16.127 | 81.93 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5567 | 0 | 1112.579 | 3.921 | 7.538 | 16.416 | 82.246 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3114 | 0 | 622.07 | 7.934 | 12.52 | 14.286 | 121.555 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.176 | 7.159 | 1000 | 0 | 139.361 | 35.259 | 63.318 | 65.417 | 88.211 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3627 | 0 | 724.405 | 6.337 | 11.651 | 13.046 | 90.77 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3541 | 0 | 707.414 | 6.561 | 11.97 | 13.264 | 90.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.007 | 51.114 | 360 | 0 | 7.058 | 2550.871 | 2567.296 | 2579.165 | 111.07 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.006 | 34.058 | 240 | 0 | 7.058 | 1699.976 | 1714.941 | 1715.928 | 114.793 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.494 | 25.543 | 180 | 0 | 7.06 | 1274.451 | 1289.188 | 1291.504 | 114.863 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.995 | 17.025 | 120 | 0 | 7.061 | 849.634 | 854.817 | 857.043 | 116.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.167 | 14.225 | 100 | 0 | 7.059 | 817.307 | 850.497 | 850.712 | 116.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.501 | 8.514 | 60 | 0 | 7.058 | 424.98 | 428.498 | 430.967 | 116.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.664 | 5.662 | 40 | 0 | 7.062 | 283.308 | 283.765 | 290.602 | 118.996 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3659 | 0 | 731.753 | 1.328 | 1.468 | 1.709 | 127.953 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.003 | 951 | 0 | 190.146 | 5.231 | 5.309 | 5.447 | 128.395 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.01 | 487 | 0 | 97.208 | 10.255 | 10.342 | 10.512 | 128.395 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.038 | 2.018 | 100 | 0 | 19.849 | 50.328 | 50.434 | 50.512 | 128.395 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.024 | 2.01 | 50 | 0 | 9.951 | 100.406 | 100.598 | 101.029 | 130.926 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.483 | 200.56 | 200.594 | 130.926 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19961 | 0 | 3991.466 | 1.185 | 1.638 | 2.008 | 63.586 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19492 | 0 | 3897.745 | 1.216 | 1.696 | 2.118 | 63.695 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20277 | 0 | 4054.705 | 1.17 | 1.596 | 2.049 | 63.867 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19701 | 0 | 3939.554 | 1.209 | 1.796 | 2.203 | 65.117 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19073 | 0 | 3813.919 | 1.245 | 1.755 | 2.202 | 66.488 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16828 | 0 | 3364.565 | 1.407 | 2.016 | 2.562 | 66.527 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19560 | 0 | 3911.191 | 1.215 | 1.674 | 2.099 | 66.664 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19002 | 0 | 3799.483 | 1.25 | 1.899 | 2.305 | 68.188 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14616 | 0 | 2922.141 | 1.61 | 2.415 | 2.971 | 77.066 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 8072 | 0 | 1613.18 | 2.982 | 4.479 | 5.66 | 71.254 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14068 | 0 | 2812.909 | 1.664 | 2.633 | 3.19 | 76.488 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 2.031 | 14416 | 0 | 2874.477 | 1.53 | 2.319 | 3.116 | 68.316 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10471 | 0 | 2093.306 | 2.1 | 3.556 | 6.224 | 99.184 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4362 | 0 | 871.523 | 5.466 | 9.606 | 10.794 | 75.879 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10599 | 0 | 2118.644 | 2.007 | 3.79 | 6.58 | 70.988 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10454 | 0 | 2090.068 | 2.076 | 3.823 | 6.498 | 70.801 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 8090 | 0 | 1617.331 | 2.702 | 4.68 | 14.775 | 117.586 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.009 | 2521 | 0 | 503.229 | 9.633 | 16.689 | 18.412 | 83.18 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8347 | 0 | 1668.772 | 2.508 | 4.9 | 14.536 | 79.508 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8358 | 0 | 1670.907 | 2.513 | 4.867 | 14.577 | 79.508 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 5263 | 0 | 1051.546 | 4.424 | 7.389 | 17.743 | 123.219 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.694 | 1351 | 0 | 269.332 | 18.089 | 30.133 | 33.644 | 83.27 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5697 | 0 | 1138.602 | 3.777 | 7.289 | 17.268 | 77.957 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5494 | 0 | 1098.002 | 3.91 | 7.546 | 17.798 | 78.023 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 3116 | 0 | 622.262 | 7.953 | 12.549 | 14.322 | 136.09 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.057 | 7.064 | 1000 | 0 | 141.713 | 34.734 | 57.45 | 64.124 | 82.859 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3590 | 0 | 717.091 | 6.413 | 11.846 | 13.315 | 80.27 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3703 | 0 | 739.777 | 6.297 | 11.502 | 12.866 | 80.27 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.974 | 51.088 | 360 | 0 | 7.062 | 2548.205 | 2563.73 | 2579.787 | 96.699 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.987 | 34.075 | 240 | 0 | 7.062 | 1699.895 | 1720.349 | 1727.587 | 97.211 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.487 | 25.521 | 180 | 0 | 7.062 | 1274.195 | 1287.428 | 1292.222 | 97.527 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.989 | 17.011 | 120 | 0 | 7.064 | 849.366 | 859.284 | 865.87 | 98.594 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.163 | 14.187 | 100 | 0 | 7.061 | 812.189 | 850.345 | 857.99 | 104.656 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.495 | 8.521 | 60 | 0 | 7.063 | 424.82 | 433.8 | 434.534 | 100.785 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.66 | 5.661 | 40 | 0 | 7.067 | 282.933 | 283.404 | 283.71 | 100.785 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3656 | 0 | 731.072 | 1.331 | 1.441 | 1.708 | 114.008 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.005 | 942 | 0 | 188.234 | 5.259 | 5.47 | 5.737 | 114.199 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.01 | 486 | 0 | 97.003 | 10.276 | 10.38 | 10.484 | 114.512 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.027 | 100 | 0 | 19.81 | 50.426 | 50.552 | 50.817 | 116.637 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.013 | 50 | 0 | 9.945 | 100.475 | 100.659 | 100.753 | 116.641 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.552 | 200.661 | 200.675 | 116.641 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 19585 | 0 | 3916.229 | 1.209 | 1.695 | 2.123 | 63.563 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19430 | 0 | 3885.1 | 1.22 | 1.7 | 2.125 | 63.98 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19962 | 0 | 3991.568 | 1.186 | 1.666 | 2.103 | 63.715 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17640 | 0 | 3527.241 | 1.345 | 2.109 | 2.529 | 64.609 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18239 | 0 | 3647.002 | 1.292 | 1.899 | 2.3 | 65.879 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15997 | 0 | 3198.611 | 1.479 | 2.184 | 2.733 | 65.105 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17699 | 0 | 3539.047 | 1.323 | 2.003 | 2.441 | 65.785 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17192 | 0 | 3437.63 | 1.372 | 2.176 | 2.671 | 68.191 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13735 | 0 | 2745.821 | 1.706 | 2.655 | 3.22 | 77.324 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7599 | 0 | 1518.977 | 3.141 | 5.275 | 6.129 | 71.121 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13850 | 0 | 2769.047 | 1.677 | 2.776 | 3.309 | 77.25 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.001 | 13953 | 0 | 2778.706 | 1.533 | 2.451 | 3.265 | 68.047 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10351 | 0 | 2069.468 | 2.126 | 3.612 | 5.895 | 107.547 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4275 | 0 | 854.082 | 5.587 | 9.837 | 10.948 | 77.633 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10321 | 0 | 2063.496 | 2.085 | 3.885 | 5.895 | 73.887 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10264 | 0 | 2052.057 | 2.081 | 3.898 | 6.122 | 74.199 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7906 | 0 | 1580.507 | 2.781 | 4.716 | 16.3 | 150.652 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.06 | 2470 | 0 | 493.202 | 9.593 | 17.255 | 18.604 | 81.609 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8178 | 0 | 1634.88 | 2.562 | 4.966 | 15.825 | 77.863 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8084 | 0 | 1616.084 | 2.591 | 5.0 | 16.141 | 77.863 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5192 | 0 | 1037.6 | 4.461 | 7.329 | 18.74 | 132.223 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.782 | 1294 | 0 | 257.975 | 18.606 | 32.763 | 35.265 | 118.012 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5502 | 0 | 1099.65 | 3.84 | 7.524 | 19.747 | 111.773 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5445 | 0 | 1088.207 | 3.906 | 7.615 | 18.482 | 111.84 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 3248 | 0 | 648.494 | 7.653 | 11.744 | 13.481 | 181.496 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.092 | 7.044 | 1000 | 0 | 141.003 | 34.608 | 57.944 | 64.049 | 146.102 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3468 | 0 | 692.809 | 6.514 | 11.953 | 15.031 | 149.012 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3591 | 0 | 717.005 | 6.405 | 11.847 | 13.453 | 149.016 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.794 | 50.859 | 360 | 0 | 7.087 | 2538.651 | 2561.066 | 2566.603 | 169.289 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.858 | 33.883 | 240 | 0 | 7.088 | 1692.527 | 1705.831 | 1708.531 | 169.359 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.391 | 25.43 | 180 | 0 | 7.089 | 1269.417 | 1281.86 | 1285.904 | 170.754 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.926 | 16.955 | 120 | 0 | 7.09 | 845.985 | 859.057 | 868.686 | 170.758 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.207 | 14.158 | 100 | 0 | 7.039 | 819.873 | 849.444 | 855.126 | 171.32 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.463 | 8.485 | 60 | 0 | 7.09 | 423.002 | 424.961 | 425.786 | 171.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.639 | 5.639 | 40 | 0 | 7.094 | 281.752 | 282.327 | 283.673 | 171.324 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3685 | 0 | 736.939 | 1.325 | 1.426 | 1.584 | 172.137 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.004 | 945 | 0 | 188.934 | 5.245 | 5.379 | 5.745 | 172.137 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.009 | 486 | 0 | 97.056 | 10.265 | 10.375 | 10.56 | 112.445 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.04 | 2.018 | 100 | 0 | 19.843 | 50.356 | 50.429 | 50.527 | 112.945 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.013 | 50 | 0 | 9.948 | 100.46 | 100.561 | 100.613 | 112.949 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.585 | 200.648 | 200.658 | 112.949 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.121 | 1000 | 0 | 62.074 | 40.979 | 41.968 | 42.401 | 28.883 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.1 | 1000 | 0 | 62.092 | 40.98 | 41.94 | 42.16 | 29.254 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.099 | 1000 | 0 | 62.057 | 40.979 | 41.939 | 42.325 | 29.391 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.118 | 1000 | 0 | 62.074 | 40.979 | 41.963 | 42.273 | 29.5 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.12 | 1000 | 0 | 62.085 | 40.977 | 41.938 | 42.224 | 29.563 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.112 | 1000 | 0 | 62.068 | 40.979 | 41.967 | 42.291 | 29.563 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.106 | 1000 | 0 | 62.05 | 40.982 | 41.964 | 42.277 | 29.582 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.097 | 1000 | 0 | 62.118 | 40.979 | 41.96 | 42.248 | 30.137 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.552 | 14.855 | 1000 | 0 | 68.72 | 40.97 | 41.971 | 42.784 | 30.191 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.146 | 13.684 | 1000 | 0 | 70.691 | 40.972 | 41.972 | 42.965 | 30.246 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 13956 | 0 | 2790.379 | 0.971 | 1.808 | 6.604 | 30.703 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.286 | 14.203 | 1000 | 0 | 65.418 | 40.974 | 41.972 | 42.352 | 34.719 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.054 | 8.344 | 1001 | 0 | 110.558 | 40.928 | 42.004 | 43.098 | 34.73 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.912 | 10.475 | 1001 | 0 | 112.317 | 40.921 | 42.442 | 43.853 | 34.73 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9594 | 0 | 1918.114 | 1.289 | 2.641 | 40.787 | 34.992 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.467 | 12.372 | 1000 | 0 | 80.213 | 41.057 | 42.559 | 43.562 | 40.695 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.439 | 11.916 | 1000 | 0 | 87.423 | 41.768 | 42.852 | 43.824 | 40.695 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.992 | 12.941 | 1000 | 0 | 76.969 | 41.933 | 42.879 | 44.043 | 40.695 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.08 | 2.005 | 7466 | 0 | 1469.78 | 1.653 | 3.478 | 22.088 | 40.695 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.334 | 14.597 | 1000 | 0 | 69.767 | 41.969 | 43.006 | 44.212 | 46.77 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.479 | 14.962 | 1000 | 0 | 69.065 | 41.975 | 43.779 | 45.41 | 42.336 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.215 | 14.962 | 1000 | 0 | 70.346 | 41.973 | 43.701 | 44.821 | 42.336 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5372 | 0 | 1073.441 | 2.386 | 4.951 | 22.119 | 46.277 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.209 | 15.613 | 1000 | 0 | 65.751 | 42.97 | 44.368 | 45.816 | 53.699 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.012 | 15.61 | 1000 | 0 | 66.614 | 42.997 | 45.237 | 47.303 | 53.324 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.308 | 14.992 | 1000 | 0 | 65.324 | 43.035 | 46.001 | 49.876 | 53.324 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3695 | 0 | 738.104 | 3.758 | 6.945 | 38.032 | 57.332 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.378 | 16.855 | 1000 | 0 | 61.058 | 44.971 | 49.483 | 61.78 | 67.672 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.991 | 28.755 | 363 | 0 | 12.521 | 241.576 | 243.113 | 19606.819 | 68.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.4 | 19.171 | 243 | 0 | 12.526 | 241.342 | 242.792 | 12789.868 | 68.148 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.613 | 14.382 | 183 | 0 | 12.523 | 241.608 | 242.711 | 10020.247 | 68.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.58 | 123 | 0 | 12.517 | 241.575 | 242.578 | 5234.532 | 68.164 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.579 | 103 | 0 | 10.483 | 241.539 | 242.474 | 5129.942 | 68.164 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.791 | 63 | 0 | 12.512 | 241.735 | 242.327 | 242.413 | 68.164 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.79 | 42 | 0 | 8.345 | 241.18 | 242.681 | 243.015 | 68.168 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.018 | 122 | 0 | 24.338 | 41.977 | 42.982 | 43.008 | 68.223 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.03 | 114 | 0 | 22.722 | 44.984 | 45.947 | 46.001 | 68.223 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.035 | 97 | 0 | 19.392 | 51.97 | 52.967 | 53.012 | 68.223 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.059 | 2.061 | 56 | 0 | 11.07 | 90.976 | 91.245 | 91.969 | 68.227 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.079 | 36 | 0 | 7.139 | 140.974 | 141.982 | 142.107 | 68.227 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.38 | 21 | 0 | 4.168 | 241.955 | 242.056 | 242.07 | 68.234 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.125 | 1000 | 0 | 62.088 | 40.984 | 41.961 | 42.151 | 29.0 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.099 | 1000 | 0 | 62.12 | 40.981 | 41.924 | 42.114 | 29.309 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.105 | 1000 | 0 | 62.113 | 40.981 | 41.78 | 42.356 | 29.441 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.109 | 1000 | 0 | 62.127 | 40.981 | 41.725 | 42.248 | 29.523 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.103 | 1000 | 0 | 62.105 | 40.981 | 41.967 | 42.16 | 29.566 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.103 | 1000 | 0 | 62.12 | 40.981 | 41.88 | 42.221 | 29.59 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.105 | 1000 | 0 | 62.128 | 40.98 | 41.834 | 42.129 | 29.605 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.097 | 1000 | 0 | 62.096 | 40.981 | 41.975 | 42.147 | 30.156 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.829 | 14.932 | 1000 | 0 | 67.435 | 40.971 | 41.964 | 42.17 | 30.156 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.158 | 15.15 | 1000 | 0 | 65.973 | 40.971 | 41.976 | 42.317 | 30.238 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13676 | 0 | 2734.333 | 0.996 | 1.842 | 5.692 | 30.566 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.487 | 15.242 | 1000 | 0 | 69.027 | 40.973 | 41.979 | 42.302 | 34.59 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.134 | 9.577 | 1000 | 0 | 98.677 | 40.96 | 41.984 | 43.0 | 34.59 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.023 | 10.163 | 1000 | 0 | 90.721 | 40.962 | 41.99 | 43.22 | 34.59 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9548 | 0 | 1908.77 | 1.189 | 2.438 | 51.305 | 34.863 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.657 | 11.202 | 1000 | 0 | 85.787 | 40.985 | 42.064 | 43.262 | 42.07 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.42 | 12.627 | 1000 | 0 | 80.517 | 41.84 | 42.95 | 44.413 | 40.223 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.131 | 13.103 | 1000 | 0 | 82.433 | 41.933 | 42.958 | 43.318 | 40.223 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 7280 | 0 | 1455.373 | 1.683 | 3.621 | 20.276 | 39.52 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.309 | 13.577 | 1000 | 0 | 69.887 | 41.969 | 43.151 | 53.202 | 44.172 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.763 | 14.738 | 1000 | 0 | 67.737 | 41.98 | 43.697 | 47.581 | 41.766 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.89 | 14.926 | 1000 | 0 | 67.159 | 41.976 | 43.765 | 49.358 | 41.766 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5486 | 0 | 1096.367 | 2.325 | 4.871 | 20.772 | 45.656 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.357 | 15.72 | 1000 | 0 | 65.115 | 42.983 | 44.975 | 47.044 | 52.684 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.168 | 15.629 | 1000 | 0 | 65.927 | 43.034 | 46.356 | 50.953 | 52.477 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.122 | 15.123 | 1000 | 0 | 66.128 | 43.489 | 46.607 | 55.528 | 52.477 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3512 | 0 | 701.529 | 3.993 | 7.407 | 11.541 | 58.488 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.956 | 16.84 | 1000 | 0 | 62.671 | 45.001 | 50.251 | 52.877 | 66.457 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.996 | 28.762 | 363 | 0 | 12.519 | 241.667 | 243.024 | 19601.677 | 66.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.42 | 19.167 | 243 | 0 | 12.513 | 241.743 | 243.205 | 12802.958 | 66.773 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.622 | 14.382 | 183 | 0 | 12.515 | 241.72 | 242.973 | 10024.452 | 66.781 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.587 | 123 | 0 | 12.513 | 241.759 | 242.582 | 5233.316 | 66.781 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.592 | 103 | 0 | 10.481 | 241.688 | 242.792 | 5133.964 | 66.781 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.795 | 63 | 0 | 12.508 | 241.809 | 242.244 | 242.568 | 66.781 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.8 | 42 | 0 | 8.348 | 241.142 | 242.214 | 242.944 | 66.781 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.022 | 122 | 0 | 24.333 | 41.979 | 42.966 | 42.999 | 66.844 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.03 | 114 | 0 | 22.732 | 44.968 | 45.498 | 45.993 | 66.848 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.041 | 97 | 0 | 19.362 | 51.976 | 52.924 | 52.996 | 66.98 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.06 | 56 | 0 | 11.057 | 90.975 | 91.973 | 92.053 | 67.008 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.084 | 36 | 0 | 7.14 | 140.97 | 141.999 | 142.678 | 67.008 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.379 | 21 | 0 | 4.171 | 241.88 | 242.851 | 242.925 | 67.008 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.168 | 1000 | 0 | 62.109 | 40.981 | 41.94 | 42.129 | 28.895 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.167 | 1000 | 0 | 62.116 | 40.98 | 41.732 | 42.294 | 29.141 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.144 | 1000 | 0 | 62.084 | 40.98 | 41.955 | 42.212 | 29.266 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.139 | 1000 | 0 | 62.1 | 40.979 | 41.81 | 42.081 | 29.559 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.159 | 1000 | 0 | 62.098 | 40.981 | 41.748 | 42.25 | 29.645 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.122 | 1000 | 0 | 62.103 | 40.98 | 41.957 | 42.238 | 29.645 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.114 | 1000 | 0 | 62.091 | 40.983 | 41.964 | 42.35 | 29.648 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.124 | 1000 | 0 | 62.096 | 40.981 | 41.973 | 42.237 | 30.219 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.949 | 13.404 | 1000 | 0 | 66.894 | 40.972 | 41.967 | 42.169 | 30.219 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.225 | 15.118 | 1000 | 0 | 70.298 | 40.973 | 41.966 | 42.408 | 30.242 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 13820 | 0 | 2763.276 | 0.979 | 1.867 | 6.876 | 30.613 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.315 | 14.818 | 1000 | 0 | 65.295 | 40.973 | 41.979 | 42.962 | 34.672 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.392 | 11.97 | 1000 | 0 | 119.166 | 40.934 | 41.987 | 42.943 | 34.672 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.227 | 9.769 | 1000 | 0 | 108.382 | 40.943 | 42.022 | 43.227 | 34.672 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 9705 | 0 | 1939.412 | 1.255 | 2.666 | 37.37 | 34.875 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.199 | 13.021 | 1000 | 0 | 89.297 | 41.027 | 42.357 | 43.074 | 39.801 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.671 | 10.917 | 1000 | 0 | 93.713 | 41.665 | 42.928 | 44.106 | 39.801 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.979 | 12.274 | 1000 | 0 | 83.48 | 41.921 | 42.829 | 43.362 | 39.801 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.187 | 2.019 | 7023 | 0 | 1353.946 | 1.731 | 3.591 | 24.396 | 40.105 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.831 | 14.575 | 1000 | 0 | 72.304 | 41.974 | 43.394 | 46.024 | 45.074 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.646 | 14.172 | 1000 | 0 | 73.284 | 41.976 | 43.925 | 46.94 | 41.699 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.026 | 14.711 | 1000 | 0 | 71.296 | 41.98 | 43.844 | 46.112 | 41.699 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.004 | 5174 | 0 | 1033.334 | 2.417 | 5.11 | 23.877 | 46.297 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.96 | 15.747 | 1000 | 0 | 66.847 | 43.002 | 45.496 | 49.813 | 53.891 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.821 | 14.856 | 1000 | 0 | 67.474 | 43.048 | 46.911 | 49.758 | 53.891 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.521 | 14.936 | 1000 | 0 | 68.864 | 43.595 | 46.421 | 49.293 | 53.891 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3559 | 0 | 710.912 | 3.88 | 7.394 | 13.425 | 59.902 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.976 | 16.29 | 1000 | 0 | 62.594 | 44.973 | 49.373 | 52.875 | 68.215 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.988 | 28.763 | 363 | 0 | 12.523 | 241.532 | 243.038 | 19597.954 | 68.66 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.41 | 19.15 | 243 | 0 | 12.52 | 241.724 | 242.962 | 12801.213 | 68.668 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.617 | 14.373 | 183 | 0 | 12.52 | 241.672 | 242.493 | 10021.369 | 68.668 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.587 | 123 | 0 | 12.519 | 241.588 | 242.437 | 5230.592 | 68.672 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.58 | 103 | 0 | 10.481 | 241.828 | 242.427 | 5134.826 | 68.672 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.79 | 63 | 0 | 12.515 | 241.502 | 242.382 | 242.509 | 68.676 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.793 | 42 | 0 | 8.339 | 241.908 | 242.31 | 242.719 | 68.68 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.366 | 41.968 | 42.106 | 42.973 | 68.711 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.03 | 114 | 0 | 22.723 | 44.974 | 45.653 | 45.983 | 68.723 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.037 | 97 | 0 | 19.361 | 51.969 | 52.97 | 52.994 | 68.793 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.058 | 56 | 0 | 11.044 | 90.976 | 92.011 | 92.876 | 68.797 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.05 | 2.084 | 36 | 0 | 7.129 | 141.018 | 142.034 | 142.159 | 68.797 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.377 | 21 | 0 | 4.167 | 241.944 | 242.02 | 242.102 | 68.797 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18735 | 0 | 3746.092 | 1.257 | 1.865 | 2.353 | 67.754 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18631 | 0 | 3725.411 | 1.267 | 1.86 | 2.39 | 67.875 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18797 | 0 | 3758.108 | 1.254 | 1.811 | 2.297 | 68.105 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18514 | 0 | 3702.092 | 1.273 | 1.904 | 2.339 | 68.523 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18564 | 0 | 3712.04 | 1.264 | 1.915 | 2.389 | 70.043 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16078 | 0 | 3214.923 | 1.456 | 2.284 | 2.823 | 70.23 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18237 | 0 | 3646.675 | 1.284 | 2.009 | 2.453 | 70.363 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17846 | 0 | 3568.447 | 1.311 | 2.048 | 2.464 | 72.684 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13407 | 0 | 2680.698 | 1.703 | 2.972 | 3.545 | 81.645 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7592 | 0 | 1517.507 | 3.132 | 5.312 | 6.16 | 76.188 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13924 | 0 | 2784.116 | 1.673 | 2.827 | 3.333 | 81.563 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.029 | 2.017 | 13924 | 0 | 2768.989 | 1.422 | 2.441 | 3.42 | 72.699 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.014 | 9821 | 0 | 1963.323 | 2.136 | 4.051 | 6.945 | 99.125 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4114 | 0 | 821.995 | 5.809 | 10.249 | 11.5 | 82.773 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9928 | 0 | 1984.933 | 2.117 | 4.041 | 6.762 | 76.297 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 10305 | 0 | 2059.538 | 2.046 | 3.875 | 6.165 | 76.609 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7793 | 0 | 1557.764 | 2.639 | 5.186 | 20.484 | 119.688 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.118 | 2404 | 0 | 480.005 | 9.855 | 17.63 | 19.409 | 84.473 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7792 | 0 | 1557.553 | 2.622 | 5.287 | 20.074 | 83.129 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7626 | 0 | 1524.559 | 2.667 | 5.377 | 20.743 | 83.203 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.006 | 5356 | 0 | 1070.536 | 3.907 | 7.495 | 23.552 | 158.449 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.694 | 1312 | 0 | 261.498 | 18.227 | 32.163 | 35.02 | 87.32 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5301 | 0 | 1059.51 | 3.917 | 7.709 | 24.065 | 86.832 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5201 | 0 | 1039.42 | 4.003 | 7.833 | 23.16 | 86.895 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3558 | 0 | 710.655 | 6.746 | 10.626 | 11.957 | 97.109 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.163 | 7.133 | 1000 | 0 | 139.598 | 35.33 | 58.101 | 65.429 | 88.609 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3616 | 0 | 722.319 | 6.321 | 11.761 | 12.956 | 87.293 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3656 | 0 | 730.27 | 6.295 | 11.647 | 12.895 | 87.293 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.863 | 50.859 | 360 | 0 | 7.078 | 2542.701 | 2545.223 | 2545.614 | 107.426 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.898 | 33.901 | 240 | 0 | 7.08 | 1694.641 | 1698.763 | 1699.048 | 107.992 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.431 | 25.427 | 180 | 0 | 7.078 | 1271.288 | 1275.486 | 1275.822 | 108.055 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.949 | 16.949 | 120 | 0 | 7.08 | 847.266 | 851.229 | 851.444 | 108.055 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.131 | 14.243 | 100 | 0 | 7.077 | 834.301 | 847.916 | 848.369 | 108.121 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.477 | 8.478 | 60 | 0 | 7.078 | 423.796 | 425.611 | 426.241 | 108.121 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.65 | 40 | 0 | 7.078 | 282.479 | 282.806 | 282.82 | 108.121 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 1966 | 0 | 393.177 | 2.499 | 2.641 | 2.962 | 116.332 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.008 | 576 | 0 | 115.139 | 8.613 | 8.914 | 9.125 | 116.395 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.005 | 411 | 0 | 82.135 | 12.138 | 12.274 | 12.42 | 118.281 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.042 | 2.018 | 100 | 0 | 19.835 | 50.362 | 50.505 | 50.59 | 118.281 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.011 | 50 | 0 | 9.948 | 100.461 | 100.57 | 100.617 | 118.281 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.006 | 25 | 0 | 4.984 | 200.528 | 200.631 | 200.742 | 118.281 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19166 | 0 | 3832.494 | 1.233 | 1.763 | 2.264 | 68.145 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18376 | 0 | 3674.495 | 1.279 | 1.915 | 2.422 | 68.512 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19129 | 0 | 3825.149 | 1.231 | 1.805 | 2.278 | 68.422 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19305 | 0 | 3860.269 | 1.224 | 1.767 | 2.189 | 68.758 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19147 | 0 | 3828.457 | 1.229 | 1.815 | 2.305 | 70.273 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16748 | 0 | 3348.589 | 1.413 | 2.038 | 2.67 | 70.543 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19112 | 0 | 3821.738 | 1.23 | 1.853 | 2.328 | 70.641 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18578 | 0 | 3714.93 | 1.266 | 1.914 | 2.376 | 72.59 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14451 | 0 | 2889.273 | 1.621 | 2.575 | 3.161 | 82.566 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7877 | 0 | 1574.562 | 3.047 | 4.618 | 5.882 | 76.445 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14186 | 0 | 2836.284 | 1.643 | 2.742 | 3.267 | 81.715 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.028 | 2.018 | 14584 | 0 | 2900.389 | 1.325 | 2.172 | 3.22 | 71.512 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10258 | 0 | 2050.922 | 2.063 | 3.814 | 6.07 | 97.961 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4383 | 0 | 875.713 | 5.513 | 9.395 | 10.555 | 81.023 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10257 | 0 | 2050.711 | 2.037 | 3.88 | 6.754 | 75.977 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10417 | 0 | 2082.673 | 2.034 | 3.83 | 6.245 | 76.227 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7820 | 0 | 1563.292 | 2.63 | 5.022 | 21.613 | 116.938 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.055 | 2441 | 0 | 487.202 | 9.918 | 17.171 | 19.101 | 84.824 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7948 | 0 | 1588.785 | 2.571 | 5.129 | 20.779 | 81.551 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7852 | 0 | 1569.51 | 2.545 | 5.067 | 21.784 | 81.625 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 5229 | 0 | 1044.555 | 3.978 | 7.793 | 24.276 | 153.879 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.754 | 1338 | 0 | 266.755 | 17.898 | 32.006 | 34.659 | 88.52 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5307 | 0 | 1060.771 | 3.904 | 7.707 | 24.266 | 84.621 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.16 | 2.003 | 5224 | 0 | 1012.379 | 4.011 | 7.753 | 23.904 | 84.684 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3561 | 0 | 711.475 | 6.827 | 11.17 | 12.764 | 136.957 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.265 | 7.158 | 1000 | 0 | 137.65 | 35.507 | 60.038 | 66.321 | 112.617 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3444 | 0 | 687.839 | 6.687 | 12.267 | 13.736 | 90.727 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3548 | 0 | 708.769 | 6.486 | 12.07 | 13.491 | 90.727 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.87 | 50.854 | 360 | 0 | 7.077 | 2542.904 | 2547.15 | 2547.855 | 109.301 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.906 | 33.9 | 240 | 0 | 7.078 | 1694.881 | 1698.923 | 1701.248 | 109.676 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.431 | 25.424 | 180 | 0 | 7.078 | 1271.374 | 1275.328 | 1275.491 | 110.301 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.954 | 16.954 | 120 | 0 | 7.078 | 847.469 | 851.159 | 851.598 | 110.301 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.128 | 14.128 | 100 | 0 | 7.078 | 834.532 | 847.776 | 847.951 | 110.301 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.479 | 8.477 | 60 | 0 | 7.076 | 423.835 | 425.426 | 425.703 | 110.363 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.651 | 40 | 0 | 7.079 | 282.433 | 282.781 | 283.078 | 110.363 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 1957 | 0 | 391.348 | 2.513 | 2.652 | 2.886 | 114.102 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.008 | 579 | 0 | 115.6 | 8.61 | 8.77 | 8.935 | 114.227 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.007 | 410 | 0 | 81.987 | 12.155 | 12.286 | 12.451 | 114.918 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.045 | 2.024 | 100 | 0 | 19.821 | 50.394 | 50.536 | 50.676 | 114.922 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.013 | 50 | 0 | 9.943 | 100.479 | 100.663 | 101.179 | 114.922 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.492 | 200.549 | 200.601 | 114.922 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19052 | 0 | 3809.634 | 1.232 | 1.832 | 2.343 | 67.699 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18556 | 0 | 3710.523 | 1.267 | 1.925 | 2.387 | 68.055 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 18647 | 0 | 3728.728 | 1.256 | 1.949 | 2.405 | 68.07 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18628 | 0 | 3724.839 | 1.262 | 1.931 | 2.388 | 68.371 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18536 | 0 | 3706.348 | 1.262 | 1.997 | 2.414 | 69.781 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16417 | 0 | 3282.528 | 1.418 | 2.332 | 2.822 | 70.195 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18792 | 0 | 3757.746 | 1.243 | 1.962 | 2.403 | 70.652 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18433 | 0 | 3685.703 | 1.264 | 1.992 | 2.424 | 71.523 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14184 | 0 | 2835.987 | 1.63 | 2.805 | 3.262 | 79.172 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7670 | 0 | 1533.034 | 3.05 | 5.39 | 6.136 | 75.637 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13856 | 0 | 2770.417 | 1.657 | 2.936 | 3.361 | 78.871 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 14315 | 0 | 2861.131 | 1.505 | 2.635 | 3.263 | 71.473 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10145 | 0 | 2028.274 | 2.054 | 3.917 | 6.518 | 98.152 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4295 | 0 | 858.1 | 5.462 | 9.897 | 10.92 | 80.223 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10308 | 0 | 2061.005 | 2.02 | 3.853 | 6.005 | 76.613 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10352 | 0 | 2069.622 | 2.013 | 3.853 | 6.239 | 76.613 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7726 | 0 | 1544.488 | 2.65 | 5.112 | 22.484 | 117.77 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.066 | 2399 | 0 | 478.812 | 9.692 | 17.658 | 19.503 | 84.68 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7759 | 0 | 1551.116 | 2.577 | 5.214 | 22.826 | 79.621 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7961 | 0 | 1591.212 | 2.522 | 5.036 | 22.064 | 79.695 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.023 | 5352 | 0 | 1069.693 | 3.916 | 7.437 | 25.949 | 152.848 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.757 | 1320 | 0 | 263.067 | 17.975 | 32.091 | 35.102 | 83.117 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.025 | 5416 | 0 | 1082.568 | 3.786 | 7.498 | 25.875 | 81.164 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5174 | 0 | 1033.806 | 3.995 | 7.91 | 26.139 | 81.227 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3454 | 0 | 689.966 | 6.807 | 11.048 | 12.359 | 97.785 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.282 | 7.198 | 1000 | 0 | 137.327 | 35.721 | 58.549 | 66.507 | 93.125 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3494 | 0 | 698.072 | 6.544 | 12.039 | 13.3 | 87.664 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3471 | 0 | 693.469 | 6.715 | 12.203 | 13.545 | 87.664 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.856 | 50.862 | 360 | 0 | 7.079 | 2542.282 | 2546.619 | 2547.739 | 107.508 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.902 | 33.902 | 240 | 0 | 7.079 | 1694.616 | 1698.708 | 1699.288 | 108.074 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.426 | 25.426 | 180 | 0 | 7.079 | 1270.929 | 1274.962 | 1275.374 | 108.199 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.95 | 16.951 | 120 | 0 | 7.08 | 847.33 | 851.079 | 851.367 | 108.199 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.129 | 14.128 | 100 | 0 | 7.078 | 839.664 | 847.781 | 848.182 | 108.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.479 | 8.477 | 60 | 0 | 7.076 | 423.921 | 425.649 | 426.284 | 108.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.65 | 5.652 | 40 | 0 | 7.079 | 282.38 | 282.792 | 283.221 | 108.262 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1980 | 0 | 395.932 | 2.489 | 2.612 | 2.754 | 111.41 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.005 | 579 | 0 | 115.791 | 8.597 | 8.755 | 8.873 | 111.473 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.012 | 411 | 0 | 82.17 | 12.129 | 12.294 | 12.471 | 111.473 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.044 | 2.028 | 100 | 0 | 19.825 | 50.385 | 50.531 | 50.607 | 111.477 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.025 | 2.013 | 50 | 0 | 9.95 | 100.451 | 100.563 | 100.625 | 111.477 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.48 | 200.62 | 201.207 | 111.539 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

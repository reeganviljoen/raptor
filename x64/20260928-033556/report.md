# Puma vs Raptor Simulation

Run ID: `20260928-033556`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.142 | 16.113 | 1000 | 0 | 61.951 | 40.993 | 41.975 | 42.493 | 29.945 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.1 | 1000 | 0 | 62.005 | 40.986 | 41.971 | 42.557 | 30.012 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.14 | 16.124 | 1000 | 0 | 61.957 | 40.986 | 41.978 | 42.453 | 30.086 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.138 | 16.137 | 1000 | 0 | 61.967 | 40.983 | 41.974 | 42.47 | 30.137 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.103 | 1000 | 0 | 62.037 | 40.984 | 41.974 | 42.37 | 30.137 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.096 | 1000 | 0 | 62.024 | 40.983 | 41.968 | 42.299 | 30.137 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.102 | 1000 | 0 | 61.981 | 40.987 | 41.987 | 42.386 | 30.164 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.156 | 16.201 | 1000 | 0 | 61.898 | 40.991 | 41.982 | 42.567 | 30.805 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.424 | 10.868 | 1000 | 0 | 74.494 | 41.041 | 42.08 | 42.926 | 30.805 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.362 | 11.667 | 1000 | 0 | 74.839 | 41.056 | 42.145 | 43.025 | 30.805 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.001 | 12375 | 0 | 2473.692 | 1.141 | 1.954 | 5.718 | 31.059 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.532 | 12.909 | 1000 | 0 | 79.798 | 41.137 | 42.346 | 43.11 | 42.109 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.788 | 14.955 | 1000 | 0 | 67.625 | 41.944 | 42.808 | 43.284 | 42.109 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.244 | 15.402 | 1000 | 0 | 65.598 | 41.945 | 42.899 | 43.561 | 42.109 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10036 | 0 | 2006.411 | 1.386 | 2.294 | 36.922 | 42.109 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.704 | 15.764 | 1000 | 0 | 63.677 | 41.972 | 42.94 | 43.075 | 52.641 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.319 | 15.987 | 1000 | 0 | 65.277 | 42.023 | 43.277 | 44.211 | 52.641 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.228 | 15.451 | 1000 | 0 | 65.668 | 42.467 | 43.463 | 45.583 | 52.641 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6919 | 0 | 1382.864 | 1.899 | 3.496 | 44.463 | 52.867 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.01 | 15.968 | 1000 | 0 | 62.462 | 42.958 | 43.962 | 44.2 | 58.855 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.486 | 16.851 | 1000 | 0 | 60.657 | 43.966 | 45.2 | 47.289 | 58.164 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.459 | 15.86 | 1000 | 0 | 64.686 | 43.966 | 45.113 | 46.658 | 58.164 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 4694 | 0 | 937.745 | 2.881 | 5.401 | 15.549 | 59.941 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.584 | 16.623 | 1000 | 0 | 60.3 | 44.939 | 46.455 | 49.702 | 71.094 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.034 | 18.094 | 1000 | 0 | 58.707 | 46.962 | 49.131 | 50.765 | 71.074 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.546 | 18.002 | 1000 | 0 | 56.993 | 46.959 | 48.921 | 51.373 | 71.074 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.009 | 2992 | 0 | 597.485 | 4.85 | 6.615 | 19.41 | 75.77 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.367 | 18.649 | 1000 | 0 | 54.445 | 48.855 | 51.185 | 53.749 | 84.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.019 | 28.779 | 363 | 0 | 12.509 | 241.902 | 242.978 | 19619.825 | 84.43 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.428 | 19.187 | 243 | 0 | 12.508 | 241.881 | 243.165 | 12813.655 | 84.52 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.64 | 14.391 | 183 | 0 | 12.5 | 241.945 | 242.599 | 10034.351 | 84.531 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.595 | 123 | 0 | 12.507 | 241.816 | 243.014 | 5233.576 | 84.594 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.594 | 103 | 0 | 10.475 | 241.757 | 242.679 | 5133.235 | 84.605 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.798 | 63 | 0 | 12.503 | 241.833 | 242.401 | 242.756 | 84.668 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.796 | 42 | 0 | 8.339 | 241.862 | 242.292 | 242.885 | 84.668 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.017 | 122 | 0 | 24.377 | 41.961 | 42.029 | 42.768 | 84.676 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.027 | 109 | 0 | 21.771 | 46.967 | 47.491 | 48.166 | 84.707 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.025 | 2.034 | 98 | 0 | 19.503 | 51.917 | 52.066 | 52.943 | 84.711 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.068 | 55 | 0 | 10.965 | 91.951 | 92.471 | 92.931 | 84.727 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.057 | 2.084 | 36 | 0 | 7.119 | 141.735 | 141.977 | 141.985 | 84.805 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.38 | 21 | 0 | 4.169 | 241.941 | 241.997 | 242.009 | 84.805 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.149 | 16.104 | 1000 | 0 | 61.924 | 40.993 | 41.998 | 42.561 | 27.93 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.093 | 1000 | 0 | 62.016 | 40.985 | 41.97 | 42.318 | 28.133 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.102 | 1000 | 0 | 62.024 | 40.984 | 41.973 | 42.328 | 28.133 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.102 | 1000 | 0 | 61.97 | 40.988 | 41.982 | 42.6 | 28.16 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.134 | 1000 | 0 | 62.028 | 40.985 | 41.967 | 42.311 | 28.184 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.108 | 1000 | 0 | 62.047 | 40.983 | 41.953 | 42.705 | 28.191 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.115 | 1000 | 0 | 61.987 | 40.983 | 41.967 | 42.3 | 28.207 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.155 | 16.178 | 1000 | 0 | 61.902 | 40.99 | 42.0 | 42.437 | 28.457 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.335 | 14.033 | 1000 | 0 | 65.21 | 40.981 | 41.991 | 42.837 | 28.559 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.167 | 14.61 | 1000 | 0 | 65.933 | 40.978 | 41.981 | 42.925 | 28.578 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 12575 | 0 | 2513.92 | 1.11 | 1.923 | 7.139 | 29.063 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.146 | 13.31 | 1000 | 0 | 76.071 | 41.38 | 42.249 | 42.958 | 32.871 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.723 | 15.093 | 1000 | 0 | 67.919 | 41.945 | 42.844 | 43.789 | 32.871 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.278 | 14.712 | 1000 | 0 | 65.452 | 41.955 | 42.713 | 43.025 | 32.871 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9762 | 0 | 1951.588 | 1.419 | 2.359 | 42.271 | 33.105 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.401 | 15.459 | 1000 | 0 | 64.933 | 41.965 | 42.968 | 43.253 | 37.453 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.219 | 15.031 | 1000 | 0 | 65.706 | 42.441 | 43.579 | 44.359 | 37.453 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.838 | 15.111 | 1000 | 0 | 67.395 | 42.811 | 43.803 | 44.899 | 37.453 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.002 | 7085 | 0 | 1415.51 | 1.935 | 3.212 | 13.497 | 38.148 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.741 | 15.638 | 1000 | 0 | 63.529 | 42.964 | 44.016 | 45.077 | 46.0 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.16 | 15.861 | 1000 | 0 | 61.88 | 43.966 | 45.18 | 47.988 | 46.0 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.435 | 16.638 | 1000 | 0 | 64.789 | 43.977 | 45.357 | 47.267 | 46.0 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 4701 | 0 | 939.552 | 2.873 | 5.122 | 16.062 | 47.113 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.218 | 16.737 | 1000 | 0 | 61.658 | 44.951 | 46.75 | 50.906 | 50.328 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.235 | 17.572 | 1000 | 0 | 58.022 | 46.952 | 48.641 | 51.721 | 50.281 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.758 | 17.443 | 1000 | 0 | 59.673 | 46.954 | 49.042 | 52.714 | 50.281 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3010 | 0 | 601.248 | 4.872 | 6.367 | 12.692 | 56.293 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.845 | 18.673 | 1000 | 0 | 56.037 | 48.412 | 51.978 | 60.099 | 63.348 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.023 | 28.792 | 363 | 0 | 12.508 | 241.929 | 242.987 | 19617.815 | 63.566 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.419 | 19.186 | 243 | 0 | 12.514 | 241.744 | 242.976 | 12805.485 | 63.574 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.629 | 14.394 | 183 | 0 | 12.509 | 241.75 | 243.319 | 10021.301 | 63.586 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.596 | 123 | 0 | 12.51 | 241.87 | 242.963 | 5232.825 | 63.602 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.597 | 103 | 0 | 10.472 | 241.929 | 242.537 | 5137.628 | 63.609 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.798 | 63 | 0 | 12.515 | 241.64 | 242.29 | 242.41 | 63.613 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.799 | 42 | 0 | 8.332 | 241.943 | 242.402 | 242.842 | 63.617 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.019 | 122 | 0 | 24.377 | 41.954 | 42.049 | 42.939 | 63.625 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.028 | 109 | 0 | 21.788 | 46.954 | 47.11 | 47.941 | 63.637 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.035 | 98 | 0 | 19.527 | 51.896 | 52.425 | 52.967 | 63.715 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.066 | 55 | 0 | 10.985 | 91.945 | 92.047 | 92.964 | 63.715 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.081 | 36 | 0 | 7.105 | 141.947 | 142.326 | 142.891 | 63.719 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.375 | 21 | 0 | 4.169 | 241.944 | 242.574 | 242.84 | 63.719 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.09 | 1000 | 0 | 62.042 | 40.984 | 41.965 | 42.253 | 29.199 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.112 | 1000 | 0 | 61.96 | 40.987 | 41.987 | 42.616 | 29.25 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.12 | 1000 | 0 | 61.974 | 40.986 | 41.979 | 42.449 | 29.621 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.124 | 1000 | 0 | 62.016 | 40.987 | 41.966 | 42.315 | 29.684 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.154 | 16.128 | 1000 | 0 | 61.905 | 40.981 | 41.964 | 42.241 | 29.684 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.175 | 16.126 | 1000 | 0 | 61.822 | 40.99 | 41.988 | 42.523 | 29.684 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.08 | 1000 | 0 | 62.027 | 40.984 | 41.977 | 42.313 | 29.691 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.092 | 1000 | 0 | 62.019 | 40.982 | 41.978 | 42.283 | 30.227 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.001 | 15.261 | 1000 | 0 | 66.664 | 40.978 | 41.971 | 42.557 | 30.387 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.632 | 14.722 | 1000 | 0 | 73.357 | 40.977 | 41.979 | 42.933 | 30.387 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12605 | 0 | 2520.237 | 1.122 | 1.902 | 6.441 | 30.836 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.063 | 14.403 | 1000 | 0 | 66.39 | 40.989 | 41.992 | 42.979 | 37.828 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.06 | 15.477 | 1000 | 0 | 66.403 | 41.953 | 42.899 | 43.443 | 37.676 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.901 | 15.765 | 1000 | 0 | 67.109 | 41.963 | 42.743 | 43.133 | 37.676 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9928 | 0 | 1984.754 | 1.394 | 2.352 | 41.702 | 37.676 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.47 | 15.213 | 1000 | 0 | 64.641 | 41.97 | 42.948 | 44.159 | 47.125 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.005 | 15.124 | 1000 | 0 | 66.644 | 42.019 | 43.296 | 46.005 | 47.125 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.861 | 16.048 | 1000 | 0 | 67.29 | 42.107 | 43.348 | 44.686 | 47.125 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7049 | 0 | 1408.95 | 1.909 | 3.266 | 15.892 | 47.125 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.329 | 15.893 | 1000 | 0 | 65.235 | 42.966 | 44.005 | 44.952 | 53.703 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.863 | 16.455 | 1000 | 0 | 63.04 | 43.966 | 45.023 | 47.453 | 50.91 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.902 | 16.572 | 1000 | 0 | 62.884 | 43.965 | 45.001 | 47.253 | 50.91 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 4785 | 0 | 956.155 | 2.778 | 5.122 | 15.945 | 53.492 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.597 | 16.572 | 1000 | 0 | 60.251 | 44.914 | 46.068 | 47.623 | 67.41 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.971 | 17.356 | 1000 | 0 | 58.923 | 46.949 | 48.86 | 52.047 | 64.832 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.384 | 17.555 | 1000 | 0 | 57.524 | 46.949 | 48.73 | 50.795 | 64.832 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.054 | 2976 | 0 | 594.14 | 4.979 | 6.494 | 14.239 | 68.84 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.113 | 18.712 | 1000 | 0 | 55.209 | 48.001 | 51.393 | 53.735 | 79.523 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.025 | 28.79 | 363 | 0 | 12.506 | 241.919 | 243.149 | 19617.741 | 79.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.428 | 19.191 | 243 | 0 | 12.507 | 241.918 | 242.883 | 12806.672 | 79.848 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.632 | 14.398 | 183 | 0 | 12.507 | 241.846 | 242.725 | 10025.634 | 79.855 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.593 | 123 | 0 | 12.509 | 241.787 | 242.483 | 5231.939 | 79.859 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.594 | 103 | 0 | 10.475 | 241.889 | 242.497 | 5134.474 | 79.867 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.8 | 63 | 0 | 12.505 | 241.702 | 242.63 | 243.186 | 79.871 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.796 | 42 | 0 | 8.344 | 241.699 | 242.117 | 242.152 | 79.871 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.017 | 122 | 0 | 24.342 | 41.96 | 42.931 | 43.014 | 79.891 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.028 | 109 | 0 | 21.779 | 46.963 | 47.642 | 47.96 | 79.891 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.037 | 98 | 0 | 19.569 | 51.291 | 52.002 | 52.102 | 79.891 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.075 | 55 | 0 | 10.989 | 91.904 | 92.038 | 92.456 | 79.891 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.054 | 2.088 | 36 | 0 | 7.124 | 141.012 | 141.995 | 142.006 | 79.895 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.379 | 21 | 0 | 4.169 | 241.94 | 242.437 | 242.803 | 79.895 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17027 | 0 | 3404.615 | 1.399 | 1.972 | 2.374 | 64.52 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16664 | 0 | 3332.066 | 1.43 | 2.024 | 2.405 | 71.949 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17025 | 0 | 3404.29 | 1.399 | 1.967 | 2.325 | 71.934 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16828 | 0 | 3364.895 | 1.413 | 2.027 | 2.44 | 71.688 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16648 | 0 | 3328.915 | 1.425 | 2.042 | 2.451 | 75.742 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14453 | 0 | 2889.86 | 1.656 | 2.304 | 2.798 | 74.844 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16741 | 0 | 3347.504 | 1.413 | 2.06 | 2.506 | 75.871 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16504 | 0 | 3300.063 | 1.436 | 2.11 | 2.603 | 77.254 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13590 | 0 | 2717.147 | 1.775 | 2.333 | 2.837 | 101.273 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6610 | 0 | 1321.314 | 3.737 | 4.528 | 5.014 | 88.984 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13602 | 0 | 2719.6 | 1.781 | 2.295 | 2.589 | 101.332 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.024 | 2.001 | 13236 | 0 | 2634.656 | 1.282 | 2.08 | 41.166 | 86.316 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9830 | 0 | 1965.267 | 2.267 | 3.949 | 6.025 | 109.805 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3530 | 0 | 705.292 | 7.084 | 8.293 | 9.004 | 93.586 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9801 | 0 | 1959.28 | 2.295 | 3.81 | 5.679 | 84.223 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9499 | 0 | 1899.05 | 2.364 | 3.984 | 6.091 | 84.598 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6900 | 0 | 1379.213 | 3.2 | 5.613 | 16.268 | 134.523 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.517 | 1937 | 0 | 386.437 | 12.87 | 14.859 | 16.105 | 99.105 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 2.002 | 6902 | 0 | 1376.315 | 3.208 | 5.667 | 16.213 | 95.344 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.005 | 6796 | 0 | 1358.571 | 3.233 | 5.515 | 16.466 | 94.656 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4168 | 0 | 832.631 | 5.536 | 8.117 | 21.247 | 147.695 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.751 | 1047 | 0 | 208.588 | 23.917 | 27.48 | 28.735 | 103.004 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.007 | 4307 | 0 | 860.657 | 5.282 | 7.971 | 21.566 | 102.547 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4383 | 0 | 875.656 | 5.138 | 8.457 | 21.148 | 102.613 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2539 | 0 | 507.006 | 9.683 | 11.715 | 13.033 | 106.926 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.112 | 8.582 | 1000 | 0 | 109.751 | 45.135 | 51.592 | 54.547 | 107.25 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2771 | 0 | 553.379 | 8.916 | 10.066 | 10.864 | 103.887 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.007 | 2849 | 0 | 568.708 | 8.572 | 10.341 | 11.194 | 103.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.032 | 50.992 | 360 | 0 | 7.054 | 2550.691 | 2579.808 | 2586.203 | 122.758 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.02 | 34.018 | 240 | 0 | 7.055 | 1700.815 | 1722.195 | 1738.239 | 126.84 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.511 | 25.495 | 180 | 0 | 7.056 | 1275.294 | 1297.176 | 1302.135 | 127.094 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.022 | 17.015 | 120 | 0 | 7.05 | 850.763 | 872.768 | 879.656 | 130.16 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.181 | 14.233 | 100 | 0 | 7.052 | 804.45 | 852.763 | 854.909 | 133.246 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.498 | 8.501 | 60 | 0 | 7.061 | 424.923 | 434.474 | 438.457 | 133.25 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.667 | 5.667 | 40 | 0 | 7.058 | 283.229 | 285.874 | 289.946 | 133.25 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3657 | 0 | 731.263 | 1.346 | 1.447 | 1.744 | 143.113 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.004 | 936 | 0 | 187.029 | 5.3 | 5.449 | 5.681 | 143.113 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.007 | 476 | 0 | 95.009 | 10.473 | 10.609 | 10.971 | 143.113 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.021 | 2.027 | 99 | 0 | 19.719 | 50.655 | 50.728 | 50.759 | 143.117 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.039 | 2.015 | 50 | 0 | 9.923 | 100.691 | 100.916 | 101.321 | 143.117 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.021 | 2.008 | 25 | 0 | 4.979 | 200.713 | 200.783 | 201.544 | 143.117 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17052 | 0 | 3409.682 | 1.395 | 1.953 | 2.373 | 64.66 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16615 | 0 | 3322.284 | 1.436 | 1.989 | 2.401 | 64.664 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16999 | 0 | 3399.069 | 1.395 | 1.997 | 2.448 | 64.605 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16690 | 0 | 3337.193 | 1.425 | 2.05 | 2.529 | 64.43 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16706 | 0 | 3340.437 | 1.42 | 2.021 | 2.467 | 66.684 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14365 | 0 | 2871.778 | 1.663 | 2.325 | 2.759 | 66.031 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16607 | 0 | 3320.679 | 1.422 | 2.066 | 2.564 | 66.48 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16313 | 0 | 3261.553 | 1.447 | 2.14 | 2.671 | 67.199 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13640 | 0 | 2726.908 | 1.774 | 2.362 | 2.815 | 79.539 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6706 | 0 | 1340.33 | 3.668 | 4.551 | 5.11 | 73.156 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13528 | 0 | 2704.907 | 1.788 | 2.319 | 2.753 | 78.891 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.019 | 13368 | 0 | 2667.358 | 1.49 | 2.172 | 16.512 | 69.094 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9442 | 0 | 1887.818 | 2.285 | 4.382 | 7.783 | 109.398 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3626 | 0 | 724.452 | 6.882 | 8.107 | 8.756 | 78.762 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9374 | 0 | 1874.182 | 2.275 | 4.279 | 8.514 | 72.883 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9194 | 0 | 1838.148 | 2.361 | 4.284 | 8.193 | 72.762 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6700 | 0 | 1339.409 | 3.134 | 6.467 | 17.598 | 116.66 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.451 | 2034 | 0 | 405.939 | 12.302 | 14.315 | 15.068 | 83.184 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6575 | 0 | 1314.21 | 3.201 | 6.533 | 17.66 | 81.109 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6793 | 0 | 1358.068 | 3.185 | 6.139 | 16.441 | 81.172 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.025 | 4229 | 0 | 844.911 | 5.218 | 9.843 | 22.007 | 130.965 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 4.43 | 1088 | 0 | 216.894 | 22.905 | 26.397 | 28.231 | 93.457 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4402 | 0 | 879.311 | 5.049 | 9.143 | 22.309 | 97.008 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4405 | 0 | 880.101 | 5.048 | 8.579 | 22.587 | 97.008 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2559 | 0 | 511.038 | 9.591 | 11.881 | 13.802 | 116.496 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.907 | 8.323 | 1000 | 0 | 112.273 | 44.291 | 51.319 | 53.339 | 99.105 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2703 | 0 | 539.62 | 9.041 | 11.141 | 12.757 | 103.332 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 2826 | 0 | 564.361 | 8.654 | 10.636 | 11.722 | 103.398 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.018 | 51.055 | 360 | 0 | 7.056 | 2551.472 | 2576.693 | 2593.285 | 120.176 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.987 | 34.029 | 240 | 0 | 7.062 | 1697.698 | 1727.99 | 1736.359 | 127.609 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.485 | 25.501 | 180 | 0 | 7.063 | 1273.98 | 1298.602 | 1315.008 | 127.617 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.987 | 16.993 | 120 | 0 | 7.064 | 849.012 | 870.25 | 879.849 | 127.684 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.211 | 14.18 | 100 | 0 | 7.037 | 686.927 | 852.385 | 861.319 | 127.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.493 | 8.507 | 60 | 0 | 7.065 | 424.981 | 432.074 | 440.059 | 127.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.672 | 5.676 | 40 | 0 | 7.052 | 283.382 | 286.979 | 296.916 | 127.691 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3664 | 0 | 732.632 | 1.346 | 1.445 | 1.711 | 128.691 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.003 | 943 | 0 | 188.46 | 5.27 | 5.359 | 5.587 | 128.754 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.005 | 483 | 0 | 96.517 | 10.311 | 10.542 | 10.859 | 128.754 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.027 | 99 | 0 | 19.76 | 50.56 | 50.681 | 50.801 | 128.754 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.014 | 50 | 0 | 9.934 | 100.593 | 100.699 | 101.125 | 128.754 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.008 | 25 | 0 | 4.982 | 200.646 | 200.747 | 200.95 | 128.754 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17268 | 0 | 3452.933 | 1.384 | 1.89 | 2.284 | 64.707 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16707 | 0 | 3340.812 | 1.431 | 1.958 | 2.401 | 64.734 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17138 | 0 | 3426.693 | 1.393 | 1.941 | 2.296 | 64.453 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16906 | 0 | 3380.49 | 1.413 | 2.006 | 2.412 | 64.457 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16909 | 0 | 3381.211 | 1.409 | 1.979 | 2.413 | 66.598 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14702 | 0 | 2938.988 | 1.633 | 2.23 | 2.734 | 66.098 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16849 | 0 | 3369.146 | 1.414 | 1.996 | 2.397 | 66.684 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16582 | 0 | 3315.623 | 1.436 | 2.05 | 2.539 | 66.879 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13475 | 0 | 2694.319 | 1.79 | 2.367 | 2.899 | 83.527 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6721 | 0 | 1343.507 | 3.661 | 4.506 | 5.01 | 74.348 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13566 | 0 | 2712.401 | 1.785 | 2.31 | 2.658 | 81.641 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.035 | 2.008 | 13233 | 0 | 2627.988 | 1.299 | 2.062 | 41.254 | 70.668 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9238 | 0 | 1846.963 | 2.344 | 4.327 | 7.952 | 110.844 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3584 | 0 | 715.999 | 6.952 | 8.261 | 9.086 | 80.035 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9475 | 0 | 1894.324 | 2.292 | 4.0 | 8.023 | 76.949 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9394 | 0 | 1877.923 | 2.314 | 4.007 | 7.22 | 76.949 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.017 | 6951 | 0 | 1389.522 | 3.095 | 5.563 | 17.854 | 137.883 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.443 | 2037 | 0 | 406.496 | 12.302 | 14.241 | 15.588 | 83.438 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6989 | 0 | 1397.157 | 3.037 | 5.938 | 18.119 | 85.875 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 6922 | 0 | 1383.232 | 3.098 | 5.98 | 18.103 | 85.879 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.004 | 4214 | 0 | 841.525 | 5.286 | 9.579 | 23.19 | 151.066 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 4.364 | 1090 | 0 | 217.083 | 23.101 | 26.64 | 28.008 | 113.355 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.025 | 4549 | 0 | 909.194 | 4.872 | 8.39 | 23.128 | 88.234 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4526 | 0 | 904.444 | 4.865 | 8.901 | 22.623 | 88.297 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2635 | 0 | 526.198 | 9.233 | 11.633 | 17.047 | 127.957 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.994 | 8.738 | 1000 | 0 | 111.189 | 44.927 | 50.869 | 54.572 | 91.395 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2815 | 0 | 562.192 | 8.68 | 10.726 | 12.231 | 90.797 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2808 | 0 | 560.756 | 8.645 | 10.759 | 12.404 | 90.859 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.008 | 51.1 | 360 | 0 | 7.058 | 2560.527 | 2616.971 | 2636.344 | 108.371 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.999 | 34.012 | 240 | 0 | 7.059 | 1705.085 | 1754.706 | 1764.894 | 115.418 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.487 | 25.505 | 180 | 0 | 7.062 | 1275.35 | 1320.593 | 1331.211 | 115.422 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.995 | 17.014 | 120 | 0 | 7.061 | 849.981 | 896.034 | 899.572 | 115.488 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.216 | 14.212 | 100 | 0 | 7.034 | 742.758 | 870.822 | 875.962 | 115.492 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.504 | 8.502 | 60 | 0 | 7.056 | 426.191 | 441.734 | 446.097 | 115.492 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.67 | 5.669 | 40 | 0 | 7.055 | 283.175 | 290.899 | 298.893 | 115.496 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3679 | 0 | 735.638 | 1.325 | 1.447 | 1.716 | 127.137 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.0 | 944 | 0 | 188.619 | 5.271 | 5.348 | 5.657 | 129.512 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.01 | 483 | 0 | 96.501 | 10.304 | 10.667 | 10.916 | 129.512 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.022 | 99 | 0 | 19.784 | 50.466 | 50.681 | 51.44 | 129.512 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.014 | 50 | 0 | 9.934 | 100.604 | 100.688 | 100.817 | 129.512 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.008 | 25 | 0 | 4.981 | 200.634 | 201.029 | 201.382 | 129.512 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.124 | 1000 | 0 | 62.049 | 40.986 | 41.973 | 42.247 | 30.965 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.091 | 1000 | 0 | 62.001 | 40.989 | 42.007 | 42.372 | 31.277 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.092 | 1000 | 0 | 62.084 | 40.982 | 41.943 | 42.277 | 31.629 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.086 | 1000 | 0 | 62.043 | 40.982 | 41.98 | 42.271 | 31.785 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.086 | 1000 | 0 | 62.034 | 40.985 | 41.976 | 42.271 | 31.824 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.087 | 1000 | 0 | 61.977 | 40.987 | 41.999 | 42.605 | 31.824 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.086 | 1000 | 0 | 62.077 | 40.982 | 41.944 | 42.305 | 31.852 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.084 | 1000 | 0 | 61.985 | 40.986 | 41.984 | 42.34 | 32.879 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.944 | 14.349 | 1000 | 0 | 66.919 | 40.975 | 41.975 | 42.918 | 33.039 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.986 | 13.619 | 1000 | 0 | 66.73 | 40.976 | 41.975 | 42.559 | 33.039 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12937 | 0 | 2586.547 | 1.077 | 1.864 | 6.255 | 33.395 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.949 | 12.56 | 1000 | 0 | 77.226 | 40.996 | 42.184 | 43.202 | 39.543 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.062 | 14.906 | 1000 | 0 | 66.393 | 41.938 | 42.816 | 43.406 | 39.543 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.265 | 14.311 | 1000 | 0 | 70.1 | 41.929 | 42.869 | 43.969 | 39.555 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.015 | 9402 | 0 | 1879.154 | 1.392 | 2.504 | 34.57 | 39.555 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.356 | 15.501 | 1000 | 0 | 65.122 | 41.967 | 42.95 | 43.234 | 48.082 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.806 | 14.786 | 1000 | 0 | 67.538 | 41.986 | 43.212 | 44.177 | 46.168 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.421 | 14.626 | 1000 | 0 | 69.343 | 42.017 | 43.24 | 45.261 | 46.168 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6760 | 0 | 1351.211 | 1.905 | 3.459 | 20.832 | 47.043 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.974 | 15.81 | 1000 | 0 | 66.782 | 42.946 | 44.087 | 47.942 | 55.25 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.795 | 15.609 | 1000 | 0 | 67.591 | 43.683 | 44.962 | 46.086 | 55.25 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.89 | 16.278 | 1000 | 0 | 62.933 | 43.914 | 45.019 | 47.01 | 55.25 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 4648 | 0 | 928.427 | 2.83 | 5.204 | 22.355 | 55.766 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.595 | 16.478 | 1000 | 0 | 60.26 | 44.342 | 46.265 | 50.69 | 65.313 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.912 | 16.86 | 1000 | 0 | 59.129 | 46.042 | 48.0 | 51.061 | 61.91 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.553 | 17.12 | 1000 | 0 | 60.412 | 46.852 | 48.788 | 50.63 | 61.91 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.056 | 2787 | 0 | 556.574 | 5.254 | 7.141 | 19.059 | 67.922 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.076 | 18.205 | 1000 | 0 | 55.321 | 47.99 | 51.41 | 61.306 | 78.109 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.012 | 28.775 | 363 | 0 | 12.512 | 241.866 | 242.951 | 19609.638 | 78.582 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.423 | 19.182 | 243 | 0 | 12.511 | 241.817 | 242.838 | 12805.759 | 78.625 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.627 | 14.388 | 183 | 0 | 12.511 | 241.774 | 242.791 | 10031.258 | 78.625 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.591 | 123 | 0 | 12.509 | 241.775 | 242.555 | 5238.579 | 78.629 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.59 | 103 | 0 | 10.475 | 241.836 | 242.559 | 5135.553 | 78.629 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.798 | 63 | 0 | 12.506 | 241.695 | 242.509 | 242.709 | 78.629 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.796 | 42 | 0 | 8.34 | 241.784 | 242.247 | 242.344 | 78.629 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.019 | 122 | 0 | 24.333 | 41.968 | 42.909 | 42.998 | 78.645 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.026 | 2.029 | 112 | 0 | 22.282 | 45.953 | 46.068 | 46.825 | 78.648 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.028 | 2.009 | 99 | 0 | 19.691 | 50.974 | 51.922 | 52.009 | 78.652 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.081 | 2.059 | 56 | 0 | 11.022 | 91.019 | 92.011 | 92.027 | 78.66 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.09 | 36 | 0 | 7.098 | 141.947 | 142.098 | 142.652 | 78.66 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.38 | 21 | 0 | 4.167 | 241.928 | 242.869 | 242.885 | 78.66 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.138 | 16.147 | 1000 | 0 | 61.966 | 40.988 | 41.99 | 42.412 | 29.387 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.102 | 1000 | 0 | 62.019 | 40.982 | 41.975 | 42.386 | 29.738 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.108 | 1000 | 0 | 61.993 | 40.984 | 41.981 | 42.309 | 29.816 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.11 | 1000 | 0 | 62.052 | 40.98 | 41.964 | 42.302 | 29.938 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.104 | 1000 | 0 | 62.028 | 40.982 | 41.977 | 42.283 | 30.035 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.136 | 1000 | 0 | 62.0 | 40.983 | 41.992 | 42.439 | 30.043 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.086 | 1000 | 0 | 62.034 | 40.981 | 41.958 | 42.275 | 30.066 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.092 | 1000 | 0 | 61.978 | 40.985 | 41.996 | 42.405 | 30.652 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.366 | 14.563 | 1000 | 0 | 69.607 | 40.977 | 41.974 | 42.989 | 30.691 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.881 | 14.978 | 1000 | 0 | 67.199 | 40.975 | 41.973 | 42.491 | 30.711 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12702 | 0 | 2539.302 | 1.105 | 1.895 | 12.794 | 31.031 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.756 | 14.324 | 1000 | 0 | 67.769 | 40.985 | 41.993 | 42.978 | 35.074 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.695 | 15.17 | 1000 | 0 | 68.05 | 41.949 | 42.93 | 44.907 | 35.074 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.951 | 15.041 | 1000 | 0 | 66.885 | 41.947 | 42.919 | 43.841 | 35.074 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9786 | 0 | 1956.475 | 1.352 | 2.314 | 39.244 | 35.73 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.547 | 15.661 | 1000 | 0 | 64.319 | 41.967 | 42.942 | 45.292 | 42.215 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.843 | 15.86 | 1000 | 0 | 63.12 | 41.979 | 42.994 | 44.036 | 42.215 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.576 | 15.941 | 1000 | 0 | 64.2 | 41.989 | 43.142 | 44.327 | 42.215 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6813 | 0 | 1361.834 | 1.873 | 3.354 | 44.64 | 43.125 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.178 | 15.868 | 1000 | 0 | 65.886 | 42.952 | 44.039 | 45.32 | 45.066 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.101 | 15.878 | 1000 | 0 | 66.22 | 43.897 | 44.978 | 52.792 | 43.16 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.138 | 15.77 | 1000 | 0 | 70.734 | 43.932 | 45.395 | 48.507 | 43.16 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4572 | 0 | 913.652 | 2.87 | 5.156 | 23.563 | 46.266 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.291 | 16.679 | 1000 | 0 | 61.385 | 44.817 | 46.264 | 50.576 | 54.113 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.615 | 17.013 | 1000 | 0 | 60.185 | 46.008 | 48.08 | 57.828 | 54.113 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.803 | 17.353 | 1000 | 0 | 59.515 | 45.995 | 48.223 | 49.917 | 54.113 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 2912 | 0 | 581.585 | 4.965 | 6.96 | 18.604 | 60.125 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.5 | 18.145 | 1000 | 0 | 57.142 | 48.638 | 51.713 | 60.218 | 64.172 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.01 | 28.784 | 363 | 0 | 12.513 | 241.816 | 242.809 | 19608.487 | 64.59 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.427 | 19.177 | 243 | 0 | 12.509 | 241.849 | 242.783 | 12810.162 | 64.609 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.391 | 183 | 0 | 12.512 | 241.783 | 242.721 | 10028.747 | 64.629 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.594 | 123 | 0 | 12.505 | 241.832 | 242.773 | 5235.603 | 64.633 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.592 | 103 | 0 | 10.477 | 241.851 | 242.584 | 5132.876 | 64.633 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.797 | 63 | 0 | 12.51 | 241.674 | 242.368 | 242.448 | 64.633 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.799 | 42 | 0 | 8.335 | 241.897 | 242.345 | 242.827 | 64.633 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.019 | 122 | 0 | 24.348 | 41.962 | 42.884 | 42.978 | 64.66 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 2.029 | 112 | 0 | 22.267 | 45.946 | 46.462 | 46.952 | 64.676 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 2.011 | 99 | 0 | 19.694 | 50.964 | 51.969 | 52.015 | 64.676 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.074 | 56 | 0 | 11.039 | 90.989 | 91.979 | 92.018 | 64.691 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.087 | 36 | 0 | 7.099 | 141.96 | 142.099 | 142.269 | 64.691 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.376 | 21 | 0 | 4.172 | 241.36 | 242.596 | 242.764 | 64.691 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.144 | 1000 | 0 | 62.006 | 40.984 | 41.972 | 42.229 | 29.43 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.111 | 1000 | 0 | 61.991 | 40.984 | 41.969 | 42.198 | 29.605 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.105 | 1000 | 0 | 62.011 | 40.987 | 41.98 | 42.358 | 29.641 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.129 | 1000 | 0 | 61.982 | 40.985 | 41.988 | 42.364 | 29.855 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.097 | 1000 | 0 | 62.015 | 40.982 | 41.978 | 42.418 | 29.949 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.13 | 1000 | 0 | 61.953 | 40.992 | 41.984 | 42.484 | 29.961 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.117 | 1000 | 0 | 62.032 | 40.976 | 41.965 | 42.269 | 29.996 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.152 | 16.137 | 1000 | 0 | 61.91 | 40.998 | 42.021 | 42.728 | 30.531 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.04 | 11.458 | 1000 | 0 | 76.689 | 40.98 | 41.995 | 42.89 | 30.605 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.662 | 11.858 | 1000 | 0 | 68.205 | 40.979 | 41.986 | 42.698 | 30.641 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 12472 | 0 | 2492.951 | 1.12 | 1.908 | 9.213 | 30.98 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.71 | 12.906 | 1000 | 0 | 72.94 | 41.041 | 42.159 | 43.179 | 34.746 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.66 | 14.087 | 1000 | 0 | 68.212 | 41.929 | 42.911 | 44.228 | 34.746 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.444 | 14.346 | 1000 | 0 | 69.231 | 41.941 | 42.938 | 43.93 | 34.746 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.033 | 9160 | 0 | 1831.22 | 1.423 | 2.498 | 42.685 | 35.012 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.803 | 14.794 | 1000 | 0 | 67.554 | 41.954 | 42.962 | 43.949 | 39.766 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.883 | 14.368 | 1000 | 0 | 67.191 | 42.046 | 43.316 | 44.382 | 39.75 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.64 | 14.621 | 1000 | 0 | 63.938 | 41.998 | 43.232 | 44.513 | 39.75 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6426 | 0 | 1284.345 | 1.938 | 3.434 | 93.553 | 40.484 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.54 | 15.793 | 1000 | 0 | 64.35 | 42.952 | 43.998 | 44.953 | 45.449 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.532 | 15.662 | 1000 | 0 | 64.382 | 43.925 | 45.072 | 47.306 | 43.48 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.291 | 16.02 | 1000 | 0 | 65.397 | 43.943 | 45.241 | 46.499 | 43.48 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 4476 | 0 | 894.379 | 2.903 | 5.459 | 25.661 | 47.98 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.394 | 16.767 | 1000 | 0 | 60.996 | 44.885 | 46.129 | 48.184 | 53.652 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.649 | 17.655 | 1000 | 0 | 60.065 | 46.13 | 48.444 | 52.89 | 53.652 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.335 | 17.039 | 1000 | 0 | 61.22 | 46.886 | 48.529 | 50.227 | 53.652 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.014 | 2897 | 0 | 578.621 | 5.063 | 6.765 | 26.659 | 59.664 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.747 | 18.15 | 1000 | 0 | 56.348 | 48.039 | 51.392 | 59.73 | 80.629 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.009 | 28.772 | 363 | 0 | 12.513 | 241.862 | 243.014 | 19614.879 | 81.113 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.422 | 19.187 | 243 | 0 | 12.512 | 241.859 | 242.861 | 12811.008 | 81.121 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.384 | 183 | 0 | 12.512 | 241.79 | 242.831 | 10027.712 | 81.133 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.586 | 123 | 0 | 12.508 | 241.857 | 242.763 | 5237.765 | 81.133 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.593 | 103 | 0 | 10.478 | 241.784 | 242.439 | 5136.1 | 81.133 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.798 | 63 | 0 | 12.508 | 241.848 | 242.458 | 243.266 | 81.145 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.794 | 42 | 0 | 8.343 | 241.475 | 242.26 | 242.63 | 81.145 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.019 | 122 | 0 | 24.366 | 41.969 | 42.061 | 42.968 | 81.148 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.029 | 112 | 0 | 22.339 | 45.935 | 46.056 | 46.493 | 81.184 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.001 | 99 | 0 | 19.722 | 50.973 | 51.939 | 51.986 | 81.199 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.075 | 2.056 | 56 | 0 | 11.035 | 90.985 | 92.004 | 92.672 | 81.211 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.09 | 36 | 0 | 7.098 | 141.959 | 142.011 | 142.517 | 81.211 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.026 | 2.375 | 21 | 0 | 4.178 | 240.972 | 241.962 | 241.964 | 81.211 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17602 | 0 | 3519.703 | 1.363 | 1.787 | 2.108 | 70.563 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17088 | 0 | 3416.838 | 1.409 | 1.84 | 2.175 | 71.742 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17609 | 0 | 3520.631 | 1.364 | 1.804 | 2.171 | 71.395 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17304 | 0 | 3460.04 | 1.389 | 1.868 | 2.328 | 71.512 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17362 | 0 | 3471.797 | 1.385 | 1.858 | 2.207 | 73.508 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14929 | 0 | 2985.099 | 1.616 | 2.109 | 2.502 | 72.992 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17220 | 0 | 3442.868 | 1.387 | 1.892 | 2.341 | 73.727 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17152 | 0 | 3429.393 | 1.4 | 1.894 | 2.31 | 74.086 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13938 | 0 | 2786.868 | 1.734 | 2.248 | 2.733 | 83.887 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6814 | 0 | 1362.053 | 3.614 | 4.363 | 4.831 | 78.766 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13837 | 0 | 2766.641 | 1.742 | 2.296 | 2.794 | 83.676 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.001 | 13593 | 0 | 2707.185 | 1.086 | 1.942 | 41.217 | 74.719 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9774 | 0 | 1954.181 | 2.243 | 3.743 | 6.643 | 120.363 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3639 | 0 | 726.861 | 6.838 | 8.051 | 8.559 | 85.129 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10134 | 0 | 2026.158 | 2.185 | 3.512 | 5.336 | 82.605 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9756 | 0 | 1950.234 | 2.253 | 3.647 | 5.973 | 82.793 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7003 | 0 | 1399.942 | 3.059 | 5.376 | 22.187 | 138.258 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.377 | 2033 | 0 | 405.847 | 12.269 | 14.143 | 15.614 | 87.684 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6780 | 0 | 1355.435 | 3.062 | 5.966 | 22.401 | 87.797 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6816 | 0 | 1362.505 | 3.151 | 5.5 | 22.249 | 87.879 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4287 | 0 | 856.541 | 5.203 | 7.497 | 27.033 | 145.625 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.472 | 1107 | 0 | 220.614 | 22.496 | 26.037 | 28.512 | 91.801 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.004 | 4427 | 0 | 881.676 | 4.934 | 8.229 | 27.107 | 93.223 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4644 | 0 | 927.745 | 4.732 | 7.201 | 25.486 | 93.223 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2534 | 0 | 505.934 | 9.672 | 11.473 | 15.309 | 123.816 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.637 | 8.46 | 1000 | 0 | 115.778 | 42.743 | 49.487 | 51.822 | 99.418 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.01 | 2758 | 0 | 550.738 | 8.977 | 10.45 | 11.151 | 98.914 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2824 | 0 | 564.064 | 8.669 | 10.25 | 12.123 | 98.914 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.135 | 51.139 | 360 | 0 | 7.04 | 2555.055 | 2581.008 | 2589.095 | 120.887 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.089 | 34.09 | 240 | 0 | 7.04 | 1703.119 | 1728.312 | 1734.235 | 124.504 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.564 | 25.562 | 180 | 0 | 7.041 | 1278.08 | 1299.486 | 1304.72 | 124.504 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.058 | 17.037 | 120 | 0 | 7.035 | 852.77 | 868.519 | 872.272 | 124.566 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.221 | 14.246 | 100 | 0 | 7.032 | 782.051 | 854.322 | 863.55 | 124.57 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.524 | 8.52 | 60 | 0 | 7.039 | 425.808 | 438.31 | 438.812 | 124.57 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.682 | 5.678 | 40 | 0 | 7.04 | 283.89 | 287.355 | 288.957 | 124.57 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1633 | 0 | 326.447 | 3.054 | 3.181 | 3.511 | 128.863 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.01 | 484 | 0 | 96.607 | 10.436 | 10.529 | 10.684 | 128.285 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.009 | 363 | 0 | 72.476 | 13.804 | 13.907 | 14.069 | 129.41 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.018 | 100 | 0 | 19.808 | 50.42 | 50.619 | 50.922 | 129.41 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.013 | 50 | 0 | 9.942 | 100.513 | 100.588 | 100.755 | 129.41 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.547 | 200.645 | 200.792 | 129.41 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17597 | 0 | 3518.51 | 1.364 | 1.804 | 2.15 | 68.723 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17038 | 0 | 3406.834 | 1.413 | 1.857 | 2.224 | 69.023 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17456 | 0 | 3490.623 | 1.376 | 1.825 | 2.179 | 69.141 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17331 | 0 | 3465.274 | 1.386 | 1.855 | 2.295 | 69.426 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17333 | 0 | 3465.991 | 1.385 | 1.84 | 2.218 | 70.82 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14921 | 0 | 2983.399 | 1.614 | 2.106 | 2.483 | 71.043 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17345 | 0 | 3468.413 | 1.383 | 1.838 | 2.221 | 71.367 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17066 | 0 | 3412.321 | 1.411 | 1.879 | 2.32 | 71.973 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13800 | 0 | 2759.19 | 1.762 | 2.221 | 2.55 | 80.359 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6785 | 0 | 1356.203 | 3.63 | 4.373 | 4.839 | 76.375 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13872 | 0 | 2773.709 | 1.747 | 2.207 | 2.526 | 80.309 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13598 | 0 | 2718.455 | 1.648 | 2.131 | 2.956 | 72.559 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 9402 | 0 | 1879.366 | 2.281 | 4.131 | 7.347 | 105.883 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3676 | 0 | 734.422 | 6.761 | 7.999 | 8.598 | 82.844 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9641 | 0 | 1927.371 | 2.223 | 3.978 | 7.139 | 78.418 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9661 | 0 | 1931.487 | 2.257 | 4.009 | 6.003 | 77.98 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6814 | 0 | 1362.202 | 3.095 | 5.903 | 23.509 | 122.641 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.378 | 2060 | 0 | 411.12 | 12.129 | 14.091 | 15.359 | 85.531 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.013 | 6974 | 0 | 1393.868 | 3.025 | 5.776 | 23.521 | 84.594 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 6809 | 0 | 1360.547 | 3.104 | 5.904 | 23.579 | 84.688 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4297 | 0 | 858.726 | 5.033 | 9.175 | 27.981 | 124.734 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 4.389 | 1108 | 0 | 220.84 | 22.406 | 25.932 | 27.097 | 89.879 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4374 | 0 | 873.955 | 4.873 | 9.03 | 28.072 | 87.0 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4399 | 0 | 879.094 | 4.764 | 9.703 | 28.563 | 87.0 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.01 | 2505 | 0 | 500.14 | 9.816 | 11.815 | 14.311 | 102.965 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.662 | 8.287 | 1000 | 0 | 115.45 | 42.651 | 49.888 | 53.331 | 90.813 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2638 | 0 | 526.698 | 9.444 | 10.568 | 11.181 | 89.965 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2680 | 0 | 535.099 | 9.243 | 10.717 | 11.415 | 89.965 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.16 | 51.165 | 360 | 0 | 7.037 | 2557.823 | 2588.57 | 2596.272 | 111.508 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.112 | 34.1 | 240 | 0 | 7.036 | 1703.473 | 1732.012 | 1738.396 | 113.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.582 | 25.573 | 180 | 0 | 7.036 | 1277.868 | 1300.938 | 1305.194 | 113.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.053 | 17.039 | 120 | 0 | 7.037 | 852.161 | 871.205 | 876.46 | 113.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.221 | 14.256 | 100 | 0 | 7.032 | 755.382 | 857.426 | 863.91 | 113.633 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.524 | 8.525 | 60 | 0 | 7.039 | 427.854 | 437.498 | 438.353 | 113.633 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.683 | 5.683 | 40 | 0 | 7.038 | 284.071 | 287.776 | 288.305 | 113.633 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.0 | 1635 | 0 | 326.846 | 3.047 | 3.138 | 3.451 | 113.633 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.009 | 482 | 0 | 96.254 | 10.444 | 10.583 | 10.769 | 113.633 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.006 | 361 | 0 | 72.17 | 13.851 | 14.03 | 14.321 | 113.656 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.024 | 99 | 0 | 19.761 | 50.555 | 50.621 | 50.641 | 116.855 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.034 | 2.016 | 50 | 0 | 9.933 | 100.577 | 100.877 | 101.07 | 118.25 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.574 | 200.847 | 201.046 | 118.25 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17357 | 0 | 3470.212 | 1.38 | 1.843 | 2.218 | 68.492 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16740 | 0 | 3347.11 | 1.425 | 1.952 | 2.416 | 68.824 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17133 | 0 | 3425.976 | 1.389 | 1.925 | 2.419 | 68.688 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16961 | 0 | 3391.297 | 1.409 | 1.953 | 2.429 | 68.68 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17154 | 0 | 3430.191 | 1.393 | 1.913 | 2.308 | 70.52 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14712 | 0 | 2941.678 | 1.636 | 2.184 | 2.581 | 70.426 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16992 | 0 | 3397.142 | 1.401 | 1.957 | 2.409 | 70.66 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16662 | 0 | 3331.724 | 1.429 | 2.005 | 2.546 | 71.348 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13606 | 0 | 2720.403 | 1.783 | 2.274 | 2.584 | 83.926 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6626 | 0 | 1324.277 | 3.707 | 4.502 | 5.033 | 76.945 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13419 | 0 | 2683.132 | 1.777 | 2.389 | 3.455 | 83.637 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.035 | 2.015 | 13472 | 0 | 2675.487 | 1.304 | 2.035 | 40.989 | 73.277 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 9696 | 0 | 1938.645 | 2.267 | 3.635 | 5.108 | 110.738 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3513 | 0 | 701.819 | 7.041 | 8.338 | 9.454 | 81.711 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9795 | 0 | 1958.35 | 2.239 | 3.658 | 5.507 | 77.934 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 9994 | 0 | 1998.217 | 2.225 | 3.295 | 4.393 | 77.934 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 2.002 | 6603 | 0 | 1316.358 | 3.258 | 5.377 | 26.8 | 123.0 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.453 | 1971 | 0 | 393.442 | 12.668 | 14.655 | 15.84 | 85.203 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6907 | 0 | 1380.45 | 3.111 | 5.132 | 26.114 | 82.297 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6983 | 0 | 1395.811 | 3.127 | 4.614 | 25.701 | 82.402 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4178 | 0 | 834.737 | 5.296 | 7.922 | 30.256 | 136.824 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.373 | 1080 | 0 | 215.149 | 22.918 | 26.964 | 29.362 | 87.816 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4399 | 0 | 879.168 | 5.01 | 7.315 | 29.529 | 82.781 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4447 | 0 | 888.488 | 4.982 | 6.949 | 29.789 | 82.781 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.118 | 2461 | 0 | 491.3 | 10.105 | 11.567 | 12.358 | 110.105 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.841 | 8.506 | 1000 | 0 | 113.107 | 44.308 | 49.6 | 51.387 | 91.137 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2650 | 0 | 529.237 | 9.411 | 10.529 | 11.1 | 87.219 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2730 | 0 | 545.233 | 9.113 | 10.214 | 11.349 | 87.219 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.174 | 51.164 | 360 | 0 | 7.035 | 2554.624 | 2590.307 | 2599.775 | 105.504 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.096 | 34.092 | 240 | 0 | 7.039 | 1705.159 | 1723.319 | 1729.452 | 111.723 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.573 | 25.573 | 180 | 0 | 7.039 | 1277.898 | 1298.955 | 1305.704 | 111.723 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.044 | 17.052 | 120 | 0 | 7.041 | 852.292 | 868.017 | 870.385 | 111.785 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.224 | 14.264 | 100 | 0 | 7.031 | 792.245 | 851.497 | 858.453 | 111.785 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.524 | 8.521 | 60 | 0 | 7.039 | 425.947 | 436.902 | 439.037 | 111.785 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.685 | 5.681 | 40 | 0 | 7.036 | 284.135 | 288.003 | 292.037 | 111.785 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1636 | 0 | 327.066 | 3.053 | 3.138 | 3.371 | 111.785 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.0 | 482 | 0 | 96.306 | 10.435 | 10.559 | 10.784 | 111.785 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.004 | 362 | 0 | 72.261 | 13.838 | 14.001 | 14.215 | 111.785 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.024 | 99 | 0 | 19.772 | 50.503 | 50.639 | 51.067 | 111.785 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.014 | 50 | 0 | 9.938 | 100.547 | 100.671 | 100.773 | 111.785 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.587 | 200.778 | 200.929 | 111.785 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

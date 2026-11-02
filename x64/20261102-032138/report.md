# Puma vs Raptor Simulation

Run ID: `20261102-032138`

## Environment

- Ruby: `ruby 4.0.9 (2026-10-23 revision 3e93b23afc) +PRISM [x86_64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.104 | 1000 | 0 | 61.964 | 40.991 | 41.987 | 42.479 | 28.664 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.107 | 1000 | 0 | 62.014 | 40.981 | 41.986 | 42.416 | 28.664 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.094 | 1000 | 0 | 62.063 | 40.982 | 41.965 | 42.107 | 28.664 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.091 | 1000 | 0 | 61.998 | 40.987 | 41.984 | 42.116 | 28.672 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.087 | 1000 | 0 | 62.08 | 40.983 | 41.967 | 42.137 | 28.672 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.105 | 1000 | 0 | 62.054 | 40.985 | 41.974 | 42.257 | 28.672 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.085 | 1000 | 0 | 62.034 | 40.983 | 41.977 | 42.145 | 28.672 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.09 | 1000 | 0 | 62.03 | 40.985 | 41.991 | 42.161 | 29.105 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.337 | 14.764 | 1000 | 0 | 65.201 | 40.977 | 41.985 | 42.411 | 29.137 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.413 | 15.37 | 1000 | 0 | 64.882 | 40.977 | 41.985 | 42.291 | 29.137 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 16437 | 0 | 3286.512 | 0.85 | 1.484 | 4.033 | 29.465 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.628 | 14.283 | 1000 | 0 | 68.361 | 40.982 | 41.994 | 42.925 | 35.621 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.002 | 13.561 | 1000 | 0 | 71.419 | 41.846 | 42.724 | 43.225 | 35.621 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.256 | 14.381 | 1000 | 0 | 70.145 | 41.888 | 42.628 | 43.245 | 35.621 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13024 | 0 | 2603.679 | 1.06 | 1.768 | 40.601 | 35.621 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.467 | 15.539 | 1000 | 0 | 64.653 | 41.942 | 42.835 | 43.294 | 42.527 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.805 | 15.78 | 1000 | 0 | 63.271 | 41.975 | 42.976 | 43.318 | 42.527 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.081 | 15.639 | 1000 | 0 | 62.186 | 41.978 | 42.984 | 43.986 | 42.527 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9539 | 0 | 1906.911 | 1.372 | 2.831 | 10.238 | 42.695 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.577 | 15.901 | 1000 | 0 | 64.199 | 41.994 | 43.15 | 44.582 | 48.078 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.024 | 16.28 | 1000 | 0 | 62.406 | 42.979 | 44.009 | 45.812 | 48.078 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.825 | 16.396 | 1000 | 0 | 63.189 | 42.981 | 44.021 | 44.967 | 48.078 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.006 | 6111 | 0 | 1221.174 | 2.172 | 4.352 | 11.874 | 49.48 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.047 | 16.523 | 1000 | 0 | 62.317 | 43.958 | 45.0 | 46.817 | 57.539 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.967 | 16.986 | 1000 | 0 | 58.938 | 44.988 | 46.808 | 48.508 | 57.539 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.868 | 17.458 | 1000 | 0 | 59.285 | 45.003 | 47.01 | 48.449 | 57.539 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3717 | 0 | 742.543 | 3.86 | 5.494 | 16.591 | 62.828 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.448 | 17.949 | 1000 | 0 | 57.312 | 46.9 | 48.967 | 52.257 | 83.426 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.013 | 28.751 | 363 | 0 | 12.512 | 241.919 | 242.757 | 19615.319 | 79.418 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.422 | 19.185 | 243 | 0 | 12.512 | 241.873 | 242.836 | 12809.558 | 79.508 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.627 | 14.385 | 183 | 0 | 12.511 | 241.818 | 242.658 | 10022.412 | 79.527 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.593 | 123 | 0 | 12.511 | 241.887 | 242.512 | 5234.163 | 79.547 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.837 | 9.587 | 103 | 0 | 10.471 | 241.922 | 242.51 | 5137.001 | 79.609 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.795 | 63 | 0 | 12.506 | 241.85 | 242.397 | 242.455 | 79.621 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.796 | 42 | 0 | 8.34 | 241.836 | 242.169 | 242.203 | 79.621 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.017 | 122 | 0 | 24.375 | 41.957 | 42.051 | 42.942 | 79.648 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.028 | 109 | 0 | 21.766 | 46.953 | 47.714 | 47.986 | 79.66 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.033 | 98 | 0 | 19.565 | 51.337 | 52.078 | 52.93 | 79.676 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.075 | 55 | 0 | 10.965 | 91.95 | 92.219 | 92.653 | 79.68 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.086 | 36 | 0 | 7.104 | 141.956 | 141.994 | 142.007 | 79.68 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.379 | 21 | 0 | 4.167 | 241.975 | 242.352 | 242.824 | 79.68 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.092 | 1000 | 0 | 62.06 | 40.985 | 41.974 | 42.127 | 29.309 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.09 | 1000 | 0 | 62.054 | 40.978 | 41.979 | 42.099 | 29.863 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.088 | 1000 | 0 | 62.072 | 40.986 | 41.97 | 42.149 | 29.902 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.086 | 1000 | 0 | 62.057 | 40.986 | 41.968 | 42.254 | 30.012 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.084 | 1000 | 0 | 62.088 | 40.985 | 41.946 | 42.223 | 30.035 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.088 | 1000 | 0 | 62.057 | 40.986 | 41.976 | 42.158 | 30.035 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.086 | 1000 | 0 | 62.062 | 40.985 | 41.98 | 42.066 | 30.043 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.084 | 1000 | 0 | 62.054 | 40.987 | 41.979 | 42.241 | 30.688 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.838 | 15.506 | 1000 | 0 | 63.139 | 40.978 | 41.973 | 42.026 | 30.844 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.883 | 15.931 | 1000 | 0 | 62.962 | 40.979 | 41.971 | 42.006 | 30.965 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 17130 | 0 | 3425.304 | 0.81 | 1.403 | 6.381 | 31.336 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.766 | 15.499 | 1000 | 0 | 63.428 | 40.98 | 41.971 | 42.072 | 41.641 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.181 | 14.575 | 1000 | 0 | 65.871 | 41.009 | 42.09 | 43.039 | 41.641 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.115 | 15.478 | 1000 | 0 | 66.158 | 41.01 | 42.087 | 42.973 | 41.641 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 13675 | 0 | 2733.53 | 1.01 | 1.676 | 30.855 | 41.641 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.38 | 15.701 | 1000 | 0 | 65.018 | 41.943 | 42.829 | 43.102 | 48.891 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.805 | 15.992 | 1000 | 0 | 63.27 | 41.977 | 42.969 | 43.451 | 48.891 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.083 | 16.07 | 1000 | 0 | 62.179 | 41.977 | 42.967 | 43.762 | 48.891 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9612 | 0 | 1921.431 | 1.38 | 2.685 | 11.042 | 48.891 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.969 | 15.909 | 1000 | 0 | 62.623 | 41.986 | 43.057 | 44.972 | 58.445 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.736 | 16.514 | 1000 | 0 | 63.549 | 42.983 | 44.063 | 46.102 | 58.445 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.91 | 15.472 | 1000 | 0 | 62.855 | 42.989 | 44.137 | 46.126 | 58.445 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 6175 | 0 | 1234.202 | 2.177 | 3.834 | 12.873 | 58.98 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.439 | 16.574 | 1000 | 0 | 64.769 | 43.963 | 45.189 | 46.176 | 67.867 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.926 | 17.109 | 1000 | 0 | 59.081 | 44.995 | 46.943 | 48.016 | 61.938 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.651 | 17.335 | 1000 | 0 | 60.055 | 45.859 | 47.126 | 48.84 | 58.875 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3513 | 0 | 701.605 | 4.075 | 6.021 | 15.883 | 64.887 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.666 | 17.774 | 1000 | 0 | 56.605 | 46.94 | 48.639 | 50.035 | 76.75 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.0 | 28.777 | 363 | 0 | 12.517 | 241.808 | 242.985 | 19604.5 | 74.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.418 | 19.176 | 243 | 0 | 12.514 | 241.816 | 242.958 | 12799.323 | 75.023 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.382 | 183 | 0 | 12.512 | 241.93 | 242.966 | 10027.354 | 75.035 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.587 | 123 | 0 | 12.517 | 241.804 | 242.763 | 5230.488 | 75.035 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.588 | 103 | 0 | 10.476 | 241.932 | 242.309 | 5131.526 | 75.043 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.792 | 63 | 0 | 12.512 | 241.776 | 242.383 | 242.801 | 75.043 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.792 | 42 | 0 | 8.342 | 241.774 | 242.14 | 242.182 | 75.043 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.018 | 122 | 0 | 24.385 | 41.971 | 42.055 | 42.493 | 75.047 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.027 | 109 | 0 | 21.77 | 46.975 | 47.634 | 47.973 | 75.051 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.001 | 99 | 0 | 19.733 | 50.97 | 51.96 | 51.989 | 75.094 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.073 | 55 | 0 | 10.978 | 91.965 | 92.033 | 92.045 | 75.094 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.054 | 2.082 | 36 | 0 | 7.123 | 141.466 | 141.989 | 142.0 | 75.094 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.375 | 21 | 0 | 4.166 | 241.958 | 242.941 | 242.952 | 75.094 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.086 | 1000 | 0 | 62.035 | 40.989 | 41.978 | 42.316 | 28.172 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.081 | 1000 | 0 | 62.084 | 40.985 | 41.96 | 42.228 | 28.191 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.079 | 1000 | 0 | 62.107 | 40.984 | 41.972 | 42.227 | 28.199 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.081 | 1000 | 0 | 62.088 | 40.986 | 41.968 | 42.343 | 28.238 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.079 | 1000 | 0 | 62.079 | 40.985 | 41.97 | 42.146 | 28.238 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.085 | 1000 | 0 | 62.097 | 40.985 | 41.976 | 42.159 | 28.258 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.083 | 1000 | 0 | 62.076 | 40.985 | 41.976 | 42.143 | 28.277 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.085 | 1000 | 0 | 62.08 | 40.985 | 41.966 | 42.133 | 28.559 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.396 | 15.311 | 1000 | 0 | 64.95 | 40.978 | 41.978 | 42.167 | 28.672 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.527 | 15.86 | 1000 | 0 | 64.403 | 40.979 | 41.979 | 42.168 | 28.691 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16861 | 0 | 3371.45 | 0.83 | 1.43 | 4.408 | 29.18 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.526 | 15.143 | 1000 | 0 | 64.407 | 40.981 | 41.981 | 42.621 | 32.855 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.201 | 15.069 | 1000 | 0 | 65.785 | 41.128 | 42.135 | 43.008 | 32.855 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.405 | 15.419 | 1000 | 0 | 64.914 | 41.014 | 42.087 | 42.986 | 32.855 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.005 | 12418 | 0 | 2482.542 | 1.062 | 1.865 | 40.125 | 32.965 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.481 | 15.421 | 1000 | 0 | 64.594 | 41.954 | 42.945 | 43.789 | 37.91 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.543 | 15.765 | 1000 | 0 | 64.339 | 41.978 | 42.984 | 44.659 | 37.605 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.018 | 15.848 | 1000 | 0 | 62.432 | 41.974 | 42.97 | 43.405 | 37.605 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9528 | 0 | 1904.782 | 1.382 | 2.64 | 12.289 | 38.375 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.797 | 15.388 | 1000 | 0 | 63.304 | 41.998 | 43.163 | 48.984 | 44.617 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.555 | 16.021 | 1000 | 0 | 64.288 | 42.986 | 44.025 | 45.822 | 44.617 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.757 | 16.165 | 1000 | 0 | 63.466 | 42.979 | 44.018 | 44.928 | 44.617 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 5768 | 0 | 1152.818 | 2.231 | 4.75 | 15.773 | 47.492 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.043 | 16.638 | 1000 | 0 | 62.333 | 43.963 | 45.367 | 51.071 | 52.754 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.534 | 17.206 | 1000 | 0 | 60.483 | 45.014 | 47.064 | 49.472 | 50.199 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.669 | 16.904 | 1000 | 0 | 59.99 | 44.999 | 46.975 | 49.008 | 50.199 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.008 | 3795 | 0 | 758.128 | 3.844 | 5.337 | 12.363 | 56.211 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.789 | 17.789 | 1000 | 0 | 56.216 | 46.948 | 49.204 | 56.943 | 63.68 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.015 | 28.765 | 363 | 0 | 12.511 | 241.882 | 243.014 | 19620.365 | 63.875 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.416 | 19.182 | 243 | 0 | 12.516 | 241.772 | 242.694 | 12803.88 | 63.902 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.623 | 14.386 | 183 | 0 | 12.515 | 241.793 | 242.791 | 10022.473 | 63.914 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.591 | 123 | 0 | 12.513 | 241.75 | 242.835 | 5230.335 | 63.934 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.586 | 103 | 0 | 10.482 | 241.615 | 242.375 | 5129.455 | 63.941 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.791 | 63 | 0 | 12.512 | 241.656 | 242.58 | 242.85 | 63.941 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.793 | 42 | 0 | 8.342 | 241.762 | 242.211 | 242.589 | 63.945 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.366 | 41.963 | 42.248 | 42.971 | 63.949 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.027 | 109 | 0 | 21.766 | 46.947 | 47.932 | 47.991 | 63.957 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.048 | 2.031 | 99 | 0 | 19.612 | 51.014 | 51.99 | 52.375 | 63.961 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.073 | 55 | 0 | 10.952 | 91.974 | 92.772 | 92.981 | 63.965 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.059 | 2.087 | 36 | 0 | 7.116 | 141.936 | 142.017 | 142.647 | 63.969 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.376 | 21 | 0 | 4.167 | 241.948 | 242.043 | 242.733 | 64.008 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22647 | 0 | 4528.613 | 1.053 | 1.512 | 1.798 | 65.641 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21930 | 0 | 4385.276 | 1.087 | 1.573 | 1.885 | 67.695 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22285 | 0 | 4456.307 | 1.059 | 1.582 | 1.947 | 67.492 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21678 | 0 | 4334.851 | 1.091 | 1.66 | 2.021 | 67.547 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21953 | 0 | 4389.787 | 1.075 | 1.594 | 1.949 | 69.418 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18946 | 0 | 3788.538 | 1.261 | 1.805 | 2.19 | 68.438 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21850 | 0 | 4369.351 | 1.074 | 1.642 | 2.049 | 69.121 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21213 | 0 | 4241.864 | 1.108 | 1.748 | 2.187 | 70.047 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16865 | 0 | 3371.92 | 1.423 | 1.935 | 2.425 | 78.941 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8305 | 0 | 1660.18 | 2.933 | 3.68 | 4.444 | 74.719 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17266 | 0 | 3452.471 | 1.394 | 1.873 | 2.305 | 78.816 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.04 | 2.034 | 16515 | 0 | 3276.523 | 0.863 | 1.569 | 40.982 | 70.555 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 12596 | 0 | 2518.141 | 1.796 | 2.849 | 4.776 | 114.398 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4514 | 0 | 901.851 | 5.502 | 6.526 | 7.034 | 91.0 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12517 | 0 | 2502.763 | 1.798 | 2.847 | 4.549 | 86.859 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 11699 | 0 | 2339.117 | 1.903 | 3.075 | 6.421 | 86.734 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 8506 | 0 | 1700.222 | 2.546 | 4.694 | 13.396 | 134.117 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2478 | 0 | 494.768 | 10.136 | 11.615 | 12.306 | 86.656 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9105 | 0 | 1820.417 | 2.401 | 4.03 | 14.101 | 78.441 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 8434 | 0 | 1684.951 | 2.552 | 4.567 | 14.429 | 78.445 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5097 | 0 | 1018.731 | 4.356 | 8.377 | 17.77 | 181.758 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.86 | 1274 | 0 | 253.959 | 19.697 | 22.325 | 23.234 | 91.34 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5472 | 0 | 1093.456 | 4.128 | 6.041 | 17.946 | 89.316 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.007 | 5628 | 0 | 1124.873 | 4.005 | 6.158 | 17.417 | 89.316 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3029 | 0 | 604.777 | 7.928 | 14.015 | 16.224 | 127.57 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.444 | 7.054 | 1000 | 0 | 134.338 | 37.221 | 41.656 | 43.74 | 105.043 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3545 | 0 | 707.933 | 6.913 | 8.012 | 8.812 | 99.922 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3524 | 0 | 703.794 | 6.945 | 8.35 | 9.549 | 99.984 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.881 | 50.909 | 360 | 0 | 7.075 | 2543.351 | 2564.391 | 2566.06 | 115.793 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.924 | 33.925 | 240 | 0 | 7.075 | 1695.764 | 1715.031 | 1716.974 | 121.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.446 | 25.441 | 180 | 0 | 7.074 | 1272.418 | 1291.555 | 1293.392 | 121.777 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.936 | 16.961 | 120 | 0 | 7.085 | 846.316 | 865.938 | 866.23 | 121.785 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.198 | 14.132 | 100 | 0 | 7.043 | 810.146 | 849.926 | 852.014 | 121.789 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.483 | 8.478 | 60 | 0 | 7.073 | 423.972 | 433.483 | 433.938 | 121.852 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.655 | 5.655 | 40 | 0 | 7.073 | 282.487 | 284.684 | 287.139 | 121.855 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3987 | 0 | 797.308 | 1.227 | 1.339 | 1.61 | 133.891 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.004 | 945 | 0 | 188.92 | 5.258 | 5.352 | 5.527 | 132.078 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.005 | 485 | 0 | 96.847 | 10.286 | 10.401 | 10.644 | 134.328 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.049 | 2.019 | 100 | 0 | 19.807 | 50.459 | 50.537 | 50.587 | 128.078 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.012 | 50 | 0 | 9.945 | 100.5 | 100.572 | 100.584 | 128.078 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.577 | 200.732 | 200.8 | 129.516 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23058 | 0 | 4610.903 | 1.038 | 1.453 | 1.737 | 66.246 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22214 | 0 | 4442.191 | 1.073 | 1.545 | 1.927 | 72.965 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22781 | 0 | 4555.5 | 1.045 | 1.495 | 1.81 | 72.48 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22475 | 0 | 4493.878 | 1.06 | 1.547 | 1.894 | 72.527 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22343 | 0 | 4467.832 | 1.058 | 1.535 | 1.937 | 79.375 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19569 | 0 | 3913.079 | 1.228 | 1.72 | 2.116 | 78.008 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22584 | 0 | 4516.153 | 1.051 | 1.513 | 1.872 | 79.473 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22193 | 0 | 4437.881 | 1.074 | 1.566 | 1.995 | 80.836 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17419 | 0 | 3483.204 | 1.389 | 1.841 | 2.289 | 107.934 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8443 | 0 | 1687.89 | 2.923 | 3.523 | 3.904 | 94.613 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17300 | 0 | 3459.25 | 1.398 | 1.838 | 2.252 | 109.418 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 2.032 | 15552 | 0 | 3101.29 | 0.769 | 1.473 | 41.104 | 85.133 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12282 | 0 | 2455.371 | 1.804 | 3.103 | 5.45 | 120.73 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4556 | 0 | 910.532 | 5.446 | 6.444 | 7.072 | 97.973 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12785 | 0 | 2556.226 | 1.755 | 2.87 | 4.335 | 86.93 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11943 | 0 | 2387.77 | 1.862 | 3.107 | 5.601 | 87.18 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8705 | 0 | 1740.298 | 2.45 | 4.549 | 14.506 | 168.02 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2556 | 0 | 510.52 | 9.791 | 11.399 | 12.126 | 102.148 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9163 | 0 | 1831.93 | 2.3 | 4.693 | 13.642 | 98.48 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.002 | 8538 | 0 | 1701.868 | 2.499 | 5.039 | 14.311 | 100.18 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5301 | 0 | 1059.297 | 4.157 | 8.007 | 17.642 | 197.844 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.741 | 1311 | 0 | 261.248 | 19.168 | 21.675 | 22.734 | 127.043 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5822 | 0 | 1163.779 | 3.813 | 6.215 | 18.148 | 115.496 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5717 | 0 | 1142.66 | 3.88 | 6.534 | 18.044 | 116.508 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3162 | 0 | 631.69 | 7.499 | 13.616 | 16.596 | 153.313 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.198 | 6.951 | 1000 | 0 | 138.93 | 36.097 | 40.799 | 45.397 | 145.363 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3254 | 0 | 649.858 | 7.539 | 9.127 | 9.986 | 137.273 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3523 | 0 | 703.477 | 6.974 | 8.51 | 9.331 | 124.129 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.865 | 50.939 | 360 | 0 | 7.078 | 2542.513 | 2563.953 | 2565.418 | 138.383 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.903 | 33.949 | 240 | 0 | 7.079 | 1694.412 | 1715.828 | 1717.984 | 138.391 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.456 | 25.465 | 180 | 0 | 7.071 | 1272.288 | 1293.024 | 1295.152 | 139.086 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.966 | 16.996 | 120 | 0 | 7.073 | 847.798 | 868.201 | 869.402 | 145.527 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.197 | 14.163 | 100 | 0 | 7.044 | 828.04 | 849.256 | 851.187 | 151.371 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.483 | 8.489 | 60 | 0 | 7.073 | 424.218 | 434.183 | 434.931 | 151.371 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.655 | 5.653 | 40 | 0 | 7.073 | 282.657 | 284.021 | 284.773 | 151.438 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3967 | 0 | 793.319 | 1.229 | 1.338 | 1.59 | 156.594 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.003 | 942 | 0 | 188.334 | 5.262 | 5.409 | 5.77 | 156.594 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.009 | 483 | 0 | 96.44 | 10.324 | 10.459 | 10.792 | 156.594 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.026 | 99 | 0 | 19.758 | 50.554 | 50.687 | 50.817 | 156.594 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.013 | 50 | 0 | 9.937 | 100.58 | 100.637 | 100.7 | 156.594 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.577 | 200.646 | 200.683 | 156.598 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22428 | 0 | 4484.958 | 1.063 | 1.507 | 1.78 | 66.875 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21843 | 0 | 4367.799 | 1.091 | 1.554 | 1.895 | 67.055 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22428 | 0 | 4484.93 | 1.059 | 1.528 | 1.837 | 67.098 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22078 | 0 | 4414.473 | 1.076 | 1.596 | 1.976 | 67.059 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22168 | 0 | 4432.989 | 1.07 | 1.542 | 1.874 | 68.547 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18861 | 0 | 3771.52 | 1.273 | 1.776 | 2.136 | 67.961 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22081 | 0 | 4415.348 | 1.068 | 1.586 | 1.949 | 68.309 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21441 | 0 | 4287.421 | 1.098 | 1.691 | 2.217 | 69.184 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17124 | 0 | 3423.811 | 1.419 | 1.846 | 2.188 | 93.859 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8222 | 0 | 1643.406 | 2.999 | 3.672 | 4.033 | 82.27 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17070 | 0 | 3413.15 | 1.421 | 1.848 | 2.103 | 92.707 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.041 | 2.025 | 16540 | 0 | 3281.218 | 0.961 | 1.651 | 40.867 | 78.93 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12174 | 0 | 2434.199 | 1.828 | 3.034 | 5.649 | 115.543 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4317 | 0 | 862.37 | 5.749 | 6.824 | 7.348 | 84.449 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12149 | 0 | 2429.143 | 1.844 | 2.888 | 5.112 | 77.289 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 11519 | 0 | 2303.157 | 1.906 | 3.283 | 6.253 | 77.477 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 8788 | 0 | 1756.192 | 2.434 | 4.569 | 16.424 | 146.645 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2437 | 0 | 486.596 | 10.265 | 12.014 | 12.678 | 106.656 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9083 | 0 | 1815.985 | 2.36 | 4.209 | 16.611 | 109.852 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 8409 | 0 | 1680.917 | 2.563 | 4.605 | 16.472 | 109.852 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5295 | 0 | 1058.323 | 4.27 | 6.647 | 20.108 | 134.426 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.713 | 1327 | 0 | 264.6 | 18.84 | 21.776 | 22.86 | 90.395 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5595 | 0 | 1118.218 | 4.027 | 5.913 | 19.332 | 89.152 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5720 | 0 | 1143.182 | 3.9 | 5.772 | 19.667 | 89.152 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3183 | 0 | 635.733 | 7.359 | 14.033 | 16.449 | 136.867 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.285 | 7.072 | 1000 | 0 | 137.27 | 36.489 | 41.182 | 46.109 | 92.676 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3418 | 0 | 682.722 | 7.171 | 8.335 | 9.1 | 91.941 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3504 | 0 | 699.905 | 6.902 | 8.579 | 9.572 | 91.941 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.896 | 50.886 | 360 | 0 | 7.073 | 2544.151 | 2556.133 | 2569.517 | 116.023 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.948 | 33.907 | 240 | 0 | 7.07 | 1696.863 | 1709.261 | 1717.26 | 116.223 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.413 | 25.43 | 180 | 0 | 7.083 | 1269.813 | 1290.673 | 1291.793 | 116.293 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.954 | 16.949 | 120 | 0 | 7.078 | 847.328 | 866.153 | 866.88 | 123.133 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.173 | 14.118 | 100 | 0 | 7.055 | 825.318 | 848.467 | 849.767 | 123.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.479 | 8.487 | 60 | 0 | 7.076 | 423.918 | 432.559 | 437.993 | 123.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.658 | 5.657 | 40 | 0 | 7.07 | 282.785 | 285.741 | 286.344 | 123.395 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 3923 | 0 | 784.5 | 1.235 | 1.391 | 1.76 | 136.668 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.001 | 945 | 0 | 188.893 | 5.251 | 5.42 | 5.647 | 136.98 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.008 | 483 | 0 | 96.45 | 10.319 | 10.479 | 10.693 | 136.98 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.024 | 99 | 0 | 19.76 | 50.55 | 50.627 | 50.794 | 136.98 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.013 | 50 | 0 | 9.936 | 100.577 | 100.637 | 100.962 | 136.984 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.592 | 200.666 | 200.708 | 136.984 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.122 | 1000 | 0 | 62.038 | 40.985 | 41.976 | 42.191 | 29.449 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.096 | 1000 | 0 | 62.042 | 40.983 | 41.98 | 42.735 | 29.633 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.086 | 1000 | 0 | 62.061 | 40.984 | 41.978 | 42.224 | 29.746 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.091 | 1000 | 0 | 62.014 | 40.987 | 41.988 | 42.317 | 30.074 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.085 | 1000 | 0 | 62.084 | 40.984 | 41.959 | 42.141 | 30.125 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.084 | 1000 | 0 | 62.018 | 40.986 | 41.986 | 42.15 | 30.133 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.083 | 1000 | 0 | 62.061 | 40.984 | 41.984 | 42.27 | 30.141 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.129 | 1000 | 0 | 62.048 | 40.986 | 41.984 | 42.191 | 30.41 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.687 | 15.859 | 1000 | 0 | 63.745 | 40.979 | 41.983 | 42.138 | 30.473 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.572 | 15.63 | 1000 | 0 | 64.217 | 40.973 | 41.974 | 42.116 | 30.516 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 16400 | 0 | 3279.034 | 0.849 | 1.471 | 7.666 | 31.074 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.108 | 15.171 | 1000 | 0 | 66.191 | 40.98 | 41.989 | 42.611 | 35.063 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.433 | 14.635 | 1000 | 0 | 69.286 | 41.123 | 42.466 | 43.884 | 35.063 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.202 | 14.405 | 1000 | 0 | 65.781 | 40.998 | 42.137 | 43.023 | 35.074 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 12748 | 0 | 2548.593 | 1.027 | 1.808 | 31.417 | 35.594 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.149 | 15.377 | 1000 | 0 | 66.009 | 41.901 | 42.717 | 43.69 | 39.406 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.909 | 15.911 | 1000 | 0 | 62.858 | 41.975 | 42.958 | 43.604 | 39.406 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.539 | 16.014 | 1000 | 0 | 64.352 | 41.971 | 42.955 | 43.817 | 39.406 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9411 | 0 | 1881.211 | 1.38 | 2.481 | 16.985 | 39.977 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.514 | 15.997 | 1000 | 0 | 64.458 | 41.984 | 43.018 | 44.186 | 46.602 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.885 | 16.062 | 1000 | 0 | 62.951 | 42.975 | 43.986 | 44.736 | 46.602 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.884 | 15.908 | 1000 | 0 | 62.958 | 42.977 | 43.988 | 46.141 | 46.602 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5985 | 0 | 1195.955 | 2.171 | 3.734 | 18.001 | 46.504 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.98 | 16.352 | 1000 | 0 | 62.58 | 43.888 | 45.13 | 48.368 | 51.766 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.383 | 16.805 | 1000 | 0 | 61.038 | 44.982 | 46.9 | 55.554 | 51.461 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.734 | 16.721 | 1000 | 0 | 59.76 | 44.984 | 46.448 | 48.104 | 51.461 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3602 | 0 | 719.574 | 4.066 | 5.464 | 11.434 | 57.473 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.142 | 17.518 | 1000 | 0 | 58.336 | 46.856 | 49.197 | 54.419 | 65.652 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.997 | 28.768 | 363 | 0 | 12.519 | 241.734 | 242.955 | 19603.386 | 66.07 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.419 | 19.169 | 243 | 0 | 12.514 | 241.82 | 242.844 | 12808.027 | 66.074 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.384 | 183 | 0 | 12.51 | 241.83 | 242.812 | 10027.007 | 66.109 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.582 | 123 | 0 | 12.508 | 241.918 | 242.705 | 5237.055 | 66.117 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.597 | 103 | 0 | 10.476 | 241.856 | 242.669 | 5135.155 | 66.125 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.798 | 63 | 0 | 12.515 | 241.631 | 242.347 | 242.501 | 66.125 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.796 | 42 | 0 | 8.338 | 241.885 | 242.186 | 242.365 | 66.125 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.019 | 122 | 0 | 24.341 | 41.965 | 42.903 | 42.951 | 66.164 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.027 | 113 | 0 | 22.421 | 45.907 | 46.045 | 46.931 | 66.184 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 2.001 | 99 | 0 | 19.694 | 50.957 | 51.988 | 52.026 | 66.191 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.023 | 2.075 | 55 | 0 | 10.95 | 91.97 | 92.606 | 93.051 | 66.191 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.089 | 36 | 0 | 7.098 | 141.96 | 142.03 | 142.656 | 66.191 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.379 | 21 | 0 | 4.165 | 241.987 | 242.032 | 242.834 | 66.191 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.115 | 1000 | 0 | 62.04 | 40.984 | 41.971 | 42.205 | 29.547 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.094 | 1000 | 0 | 62.069 | 40.984 | 41.97 | 42.188 | 29.727 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.085 | 1000 | 0 | 62.049 | 40.986 | 41.984 | 42.185 | 29.848 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.084 | 1000 | 0 | 62.017 | 40.989 | 41.984 | 42.241 | 29.953 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.087 | 1000 | 0 | 62.003 | 40.987 | 41.994 | 42.288 | 30.0 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.082 | 1000 | 0 | 62.053 | 40.985 | 41.985 | 42.37 | 30.023 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.082 | 1000 | 0 | 62.015 | 40.989 | 41.98 | 42.243 | 30.051 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.085 | 1000 | 0 | 62.034 | 40.985 | 41.982 | 42.248 | 30.359 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.692 | 15.576 | 1000 | 0 | 63.725 | 40.973 | 41.97 | 42.117 | 30.391 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.523 | 15.275 | 1000 | 0 | 64.418 | 40.979 | 41.982 | 42.128 | 30.391 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16106 | 0 | 3220.398 | 0.871 | 1.478 | 6.045 | 30.832 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.347 | 15.772 | 1000 | 0 | 65.157 | 40.98 | 41.989 | 42.924 | 34.453 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.045 | 14.695 | 1000 | 0 | 66.467 | 41.003 | 42.117 | 42.961 | 34.453 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.098 | 15.167 | 1000 | 0 | 66.232 | 41.025 | 42.147 | 43.22 | 34.453 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 12445 | 0 | 2488.188 | 1.051 | 1.896 | 18.171 | 34.539 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.285 | 15.536 | 1000 | 0 | 65.424 | 41.944 | 42.903 | 43.811 | 38.535 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.5 | 15.685 | 1000 | 0 | 64.518 | 41.977 | 42.958 | 43.308 | 37.938 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.279 | 15.615 | 1000 | 0 | 65.448 | 41.978 | 42.982 | 44.151 | 37.938 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9396 | 0 | 1878.156 | 1.377 | 2.53 | 17.635 | 38.684 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.096 | 15.783 | 1000 | 0 | 66.241 | 41.993 | 43.159 | 44.124 | 44.75 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.639 | 15.181 | 1000 | 0 | 63.941 | 42.977 | 43.982 | 44.448 | 44.75 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.428 | 15.816 | 1000 | 0 | 64.816 | 42.977 | 44.013 | 49.044 | 44.75 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5434 | 0 | 1085.973 | 2.333 | 4.879 | 21.607 | 46.949 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.702 | 16.177 | 1000 | 0 | 63.687 | 43.939 | 45.099 | 47.682 | 52.719 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.323 | 16.298 | 1000 | 0 | 61.264 | 44.973 | 46.676 | 48.577 | 51.586 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.357 | 17.178 | 1000 | 0 | 61.137 | 44.995 | 46.879 | 48.101 | 51.586 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3626 | 0 | 724.33 | 4.014 | 5.809 | 12.671 | 57.598 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.196 | 17.764 | 1000 | 0 | 58.154 | 46.018 | 48.601 | 50.505 | 80.453 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.993 | 28.761 | 363 | 0 | 12.52 | 241.741 | 242.815 | 19610.867 | 80.02 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.411 | 19.169 | 243 | 0 | 12.519 | 241.756 | 242.661 | 12805.077 | 80.047 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.617 | 14.378 | 183 | 0 | 12.52 | 241.722 | 242.559 | 10020.937 | 80.051 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.585 | 123 | 0 | 12.516 | 241.76 | 242.517 | 5233.994 | 80.051 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.591 | 103 | 0 | 10.477 | 241.839 | 242.294 | 5135.87 | 80.051 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.794 | 63 | 0 | 12.515 | 241.789 | 242.24 | 242.406 | 80.051 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.799 | 42 | 0 | 8.344 | 241.776 | 242.184 | 242.474 | 80.051 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.019 | 122 | 0 | 24.351 | 41.967 | 42.183 | 42.965 | 80.074 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.036 | 114 | 0 | 22.61 | 45.002 | 45.974 | 46.911 | 80.121 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.051 | 99 | 0 | 19.705 | 50.967 | 51.984 | 52.055 | 80.152 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.075 | 2.065 | 56 | 0 | 11.034 | 90.999 | 91.979 | 92.005 | 80.16 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.089 | 36 | 0 | 7.099 | 141.965 | 141.986 | 141.991 | 80.168 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.374 | 21 | 0 | 4.171 | 241.927 | 242.02 | 242.797 | 80.168 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.121 | 1000 | 0 | 62.062 | 40.986 | 41.949 | 42.204 | 29.359 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.095 | 1000 | 0 | 62.048 | 40.986 | 41.979 | 42.193 | 29.695 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.088 | 1000 | 0 | 62.068 | 40.984 | 41.983 | 42.17 | 29.949 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.087 | 1000 | 0 | 62.057 | 40.984 | 41.979 | 42.098 | 30.07 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.092 | 1000 | 0 | 62.072 | 40.985 | 41.976 | 42.245 | 30.121 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.091 | 1000 | 0 | 62.042 | 40.984 | 41.974 | 42.212 | 30.121 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.084 | 1000 | 0 | 62.058 | 40.984 | 41.979 | 42.392 | 30.129 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.085 | 1000 | 0 | 62.068 | 40.985 | 41.971 | 42.2 | 30.699 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.482 | 15.023 | 1000 | 0 | 64.59 | 40.977 | 41.974 | 42.255 | 30.699 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.604 | 15.659 | 1000 | 0 | 64.084 | 40.979 | 41.981 | 42.522 | 30.699 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16729 | 0 | 3344.818 | 0.843 | 1.416 | 6.566 | 31.047 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.588 | 15.207 | 1000 | 0 | 64.151 | 40.98 | 41.991 | 42.338 | 34.871 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.253 | 13.698 | 1000 | 0 | 70.162 | 41.504 | 42.667 | 43.294 | 34.883 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.884 | 13.979 | 1000 | 0 | 72.024 | 41.643 | 42.786 | 43.322 | 34.883 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 11832 | 0 | 2365.536 | 1.095 | 2.003 | 40.455 | 35.117 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.63 | 14.861 | 1000 | 0 | 68.355 | 41.937 | 42.928 | 43.607 | 39.809 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.354 | 15.283 | 1000 | 0 | 65.13 | 41.967 | 42.972 | 43.904 | 39.789 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.108 | 15.344 | 1000 | 0 | 66.19 | 41.957 | 42.971 | 43.937 | 39.789 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8972 | 0 | 1793.532 | 1.403 | 2.73 | 20.098 | 40.008 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.235 | 15.947 | 1000 | 0 | 65.637 | 42.01 | 43.507 | 44.918 | 43.027 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.841 | 15.083 | 1000 | 0 | 67.381 | 42.97 | 43.992 | 45.279 | 43.004 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.669 | 16.096 | 1000 | 0 | 63.819 | 42.979 | 44.21 | 45.642 | 43.004 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 5090 | 0 | 1017.624 | 2.451 | 5.147 | 24.277 | 45.988 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.031 | 16.023 | 1000 | 0 | 66.527 | 43.939 | 45.371 | 49.512 | 53.109 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.618 | 16.62 | 1000 | 0 | 64.029 | 44.966 | 46.859 | 49.037 | 53.109 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.149 | 16.382 | 1000 | 0 | 61.925 | 44.983 | 46.956 | 49.864 | 53.109 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3268 | 0 | 652.717 | 4.338 | 6.311 | 25.173 | 59.121 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.051 | 17.26 | 1000 | 0 | 58.647 | 46.916 | 48.969 | 54.491 | 85.629 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.996 | 28.779 | 363 | 0 | 12.519 | 241.739 | 242.792 | 19606.079 | 86.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.415 | 19.181 | 243 | 0 | 12.516 | 241.774 | 242.594 | 12802.193 | 86.113 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.614 | 14.374 | 183 | 0 | 12.522 | 241.651 | 242.583 | 10017.664 | 86.117 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.582 | 123 | 0 | 12.514 | 241.805 | 242.417 | 5234.858 | 86.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.593 | 103 | 0 | 10.479 | 241.809 | 242.599 | 5132.834 | 86.164 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.791 | 63 | 0 | 12.515 | 241.601 | 242.503 | 242.768 | 86.164 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.798 | 42 | 0 | 8.34 | 241.876 | 242.206 | 242.232 | 86.164 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.018 | 122 | 0 | 24.355 | 41.971 | 42.198 | 42.996 | 86.164 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.042 | 114 | 0 | 22.659 | 44.98 | 45.979 | 46.054 | 86.184 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.025 | 2.051 | 99 | 0 | 19.702 | 50.958 | 52.0 | 52.04 | 86.191 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.074 | 2.053 | 56 | 0 | 11.037 | 90.989 | 91.999 | 92.094 | 86.223 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.09 | 36 | 0 | 7.099 | 141.955 | 142.004 | 142.121 | 86.23 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.377 | 21 | 0 | 4.172 | 241.652 | 241.987 | 241.989 | 86.23 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23091 | 0 | 4617.542 | 1.036 | 1.413 | 1.685 | 70.441 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22275 | 0 | 4454.212 | 1.07 | 1.491 | 1.792 | 70.535 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22941 | 0 | 4587.383 | 1.039 | 1.458 | 1.782 | 70.277 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22381 | 0 | 4475.496 | 1.057 | 1.538 | 2.005 | 70.137 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22449 | 0 | 4489.133 | 1.061 | 1.503 | 1.843 | 71.918 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19190 | 0 | 3837.144 | 1.247 | 1.732 | 2.115 | 72.316 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22475 | 0 | 4494.15 | 1.056 | 1.518 | 1.902 | 72.367 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21931 | 0 | 4385.58 | 1.075 | 1.588 | 1.975 | 73.133 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17336 | 0 | 3466.359 | 1.39 | 1.83 | 2.211 | 87.262 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8421 | 0 | 1683.395 | 2.913 | 3.586 | 3.955 | 80.113 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17256 | 0 | 3450.594 | 1.388 | 1.867 | 2.475 | 87.668 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.014 | 2.001 | 17038 | 0 | 3398.198 | 1.317 | 1.73 | 2.162 | 75.477 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11591 | 0 | 2317.124 | 1.863 | 3.203 | 5.657 | 106.613 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4379 | 0 | 875.064 | 5.672 | 6.697 | 7.119 | 83.977 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.01 | 12250 | 0 | 2449.442 | 1.821 | 2.704 | 4.927 | 80.141 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11735 | 0 | 2346.168 | 1.867 | 3.079 | 4.969 | 80.391 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 2.002 | 8517 | 0 | 1698.164 | 2.519 | 4.22 | 21.132 | 119.012 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2499 | 0 | 499.019 | 9.929 | 11.512 | 15.966 | 87.801 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9055 | 0 | 1810.398 | 2.313 | 3.96 | 20.097 | 84.82 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.002 | 8550 | 0 | 1707.932 | 2.475 | 4.166 | 20.043 | 85.105 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5382 | 0 | 1075.783 | 4.007 | 6.486 | 23.365 | 124.598 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.587 | 1377 | 0 | 274.487 | 18.14 | 20.497 | 21.487 | 90.379 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5558 | 0 | 1110.955 | 3.93 | 6.137 | 23.336 | 89.164 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5655 | 0 | 1130.218 | 3.845 | 6.017 | 23.208 | 89.164 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3154 | 0 | 629.886 | 7.853 | 9.343 | 10.152 | 101.637 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.066 | 6.87 | 1000 | 0 | 141.524 | 35.137 | 39.509 | 41.211 | 93.715 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3340 | 0 | 667.184 | 7.319 | 8.93 | 9.745 | 95.684 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.005 | 3392 | 0 | 677.382 | 7.253 | 8.915 | 9.742 | 95.684 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.125 | 51.127 | 360 | 0 | 7.042 | 2553.964 | 2580.802 | 2588.914 | 117.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.086 | 34.085 | 240 | 0 | 7.041 | 1703.84 | 1723.879 | 1728.025 | 117.5 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.563 | 25.548 | 180 | 0 | 7.041 | 1278.008 | 1291.687 | 1297.637 | 120.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.037 | 17.031 | 120 | 0 | 7.044 | 850.9 | 861.435 | 866.581 | 120.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.231 | 14.239 | 100 | 0 | 7.027 | 817.363 | 846.426 | 852.717 | 120.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.523 | 8.517 | 60 | 0 | 7.04 | 425.949 | 434.604 | 438.123 | 121.523 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.68 | 5.677 | 40 | 0 | 7.042 | 283.991 | 288.369 | 290.039 | 121.523 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.003 | 1404 | 0 | 280.707 | 3.576 | 3.692 | 4.029 | 123.363 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.0 | 424 | 0 | 84.643 | 11.851 | 12.025 | 12.183 | 123.551 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.009 | 328 | 0 | 65.431 | 15.29 | 15.477 | 15.573 | 123.551 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.029 | 99 | 0 | 19.753 | 50.469 | 50.981 | 51.192 | 126.113 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.027 | 2.012 | 50 | 0 | 9.946 | 100.486 | 100.546 | 100.659 | 126.113 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.467 | 200.526 | 200.725 | 126.113 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23229 | 0 | 4645.111 | 1.033 | 1.36 | 1.625 | 70.168 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22521 | 0 | 4503.43 | 1.065 | 1.445 | 1.722 | 71.504 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23305 | 0 | 4660.321 | 1.027 | 1.388 | 1.707 | 71.148 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23103 | 0 | 4619.77 | 1.036 | 1.428 | 1.767 | 71.313 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22461 | 0 | 4491.622 | 1.058 | 1.495 | 1.867 | 72.945 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19602 | 0 | 3919.722 | 1.226 | 1.652 | 1.97 | 73.246 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22750 | 0 | 4549.216 | 1.049 | 1.471 | 1.829 | 73.313 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22518 | 0 | 4502.937 | 1.056 | 1.502 | 1.914 | 74.238 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17652 | 0 | 3529.68 | 1.368 | 1.814 | 2.154 | 83.598 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8548 | 0 | 1708.91 | 2.869 | 3.5 | 3.853 | 78.391 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17699 | 0 | 3539.004 | 1.364 | 1.809 | 2.118 | 83.09 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17435 | 0 | 3486.297 | 1.356 | 1.715 | 2.093 | 75.215 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12100 | 0 | 2419.184 | 1.761 | 3.166 | 5.299 | 109.082 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4567 | 0 | 912.631 | 5.412 | 6.425 | 6.968 | 87.066 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12226 | 0 | 2444.349 | 1.784 | 2.9 | 5.351 | 79.734 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11693 | 0 | 2337.893 | 1.857 | 3.082 | 5.457 | 79.734 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8377 | 0 | 1674.733 | 2.473 | 4.628 | 22.405 | 129.07 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.01 | 2547 | 0 | 508.457 | 9.806 | 11.385 | 12.234 | 89.309 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.019 | 8777 | 0 | 1754.814 | 2.346 | 4.326 | 21.487 | 87.422 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8450 | 0 | 1689.381 | 2.49 | 4.357 | 22.393 | 87.496 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5120 | 0 | 1023.398 | 4.291 | 6.584 | 25.921 | 125.215 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.014 | 3.648 | 1349 | 0 | 269.039 | 18.449 | 21.245 | 22.425 | 92.734 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5447 | 0 | 1088.529 | 3.946 | 6.771 | 25.147 | 88.055 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5497 | 0 | 1098.72 | 3.978 | 5.935 | 24.991 | 88.055 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3196 | 0 | 638.462 | 7.363 | 13.26 | 15.346 | 141.922 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.021 | 6.634 | 1000 | 0 | 142.428 | 34.368 | 40.433 | 52.194 | 93.938 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3330 | 0 | 665.141 | 7.472 | 8.504 | 9.17 | 89.754 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3477 | 0 | 694.542 | 7.168 | 8.231 | 8.986 | 89.754 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.133 | 51.125 | 360 | 0 | 7.04 | 2554.302 | 2578.349 | 2585.494 | 108.488 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.084 | 34.071 | 240 | 0 | 7.041 | 1703.669 | 1720.891 | 1725.386 | 116.012 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.569 | 25.557 | 180 | 0 | 7.04 | 1278.56 | 1296.898 | 1302.136 | 116.012 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.042 | 17.043 | 120 | 0 | 7.041 | 851.629 | 863.702 | 867.93 | 117.398 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.237 | 14.212 | 100 | 0 | 7.024 | 823.21 | 853.401 | 862.031 | 117.465 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.519 | 8.515 | 60 | 0 | 7.043 | 426.433 | 433.241 | 434.918 | 117.465 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.676 | 5.673 | 40 | 0 | 7.047 | 283.509 | 287.305 | 288.442 | 117.465 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.0 | 1419 | 0 | 283.594 | 3.569 | 3.622 | 3.792 | 119.656 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 425 | 0 | 84.974 | 11.737 | 12.079 | 12.246 | 119.656 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.013 | 329 | 0 | 65.706 | 15.213 | 15.437 | 15.745 | 119.656 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.047 | 2.019 | 100 | 0 | 19.814 | 50.423 | 50.552 | 50.653 | 119.656 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.011 | 50 | 0 | 9.949 | 100.461 | 100.53 | 100.679 | 119.656 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.493 | 200.532 | 200.539 | 119.656 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 23353 | 0 | 4669.746 | 1.029 | 1.352 | 1.672 | 70.301 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22605 | 0 | 4520.312 | 1.059 | 1.432 | 1.768 | 70.418 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 23157 | 0 | 4630.685 | 1.033 | 1.391 | 1.739 | 70.164 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22949 | 0 | 4588.927 | 1.039 | 1.434 | 1.832 | 70.105 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22889 | 0 | 4577.079 | 1.045 | 1.451 | 1.778 | 71.836 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19480 | 0 | 3895.343 | 1.235 | 1.669 | 2.011 | 72.0 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22707 | 0 | 4540.649 | 1.052 | 1.468 | 1.827 | 72.023 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22775 | 0 | 4554.173 | 1.045 | 1.475 | 1.861 | 72.875 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17633 | 0 | 3525.843 | 1.372 | 1.775 | 2.08 | 86.906 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8487 | 0 | 1696.718 | 2.874 | 3.53 | 4.181 | 79.879 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17599 | 0 | 3518.926 | 1.372 | 1.78 | 2.066 | 86.676 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.025 | 2.001 | 17019 | 0 | 3386.959 | 1.04 | 1.579 | 40.539 | 73.969 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12366 | 0 | 2472.444 | 1.745 | 3.145 | 4.557 | 103.906 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4564 | 0 | 912.026 | 5.44 | 6.389 | 6.779 | 92.164 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.001 | 11698 | 0 | 2337.54 | 1.785 | 3.378 | 6.261 | 80.961 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11206 | 0 | 2240.478 | 1.86 | 3.669 | 6.608 | 81.211 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 8445 | 0 | 1688.358 | 2.418 | 4.862 | 22.759 | 118.883 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2556 | 0 | 510.323 | 9.753 | 11.237 | 11.874 | 87.043 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8748 | 0 | 1748.804 | 2.355 | 4.697 | 22.094 | 84.898 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 8294 | 0 | 1657.505 | 2.485 | 5.0 | 22.359 | 84.996 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5245 | 0 | 1048.293 | 4.087 | 7.265 | 26.348 | 122.68 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.639 | 1345 | 0 | 268.164 | 18.627 | 21.162 | 22.183 | 88.41 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 5554 | 0 | 1109.507 | 3.87 | 6.459 | 25.746 | 90.563 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5448 | 0 | 1088.859 | 3.886 | 6.951 | 26.638 | 90.688 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3105 | 0 | 620.229 | 7.925 | 9.632 | 10.939 | 109.598 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.079 | 6.85 | 1000 | 0 | 141.254 | 35.361 | 39.417 | 41.671 | 91.324 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3362 | 0 | 671.532 | 7.378 | 8.449 | 9.085 | 92.535 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3441 | 0 | 687.301 | 7.249 | 8.18 | 8.821 | 92.785 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.11 | 51.111 | 360 | 0 | 7.044 | 2556.025 | 2574.368 | 2578.42 | 111.918 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.073 | 34.066 | 240 | 0 | 7.044 | 1702.381 | 1720.414 | 1727.729 | 115.355 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.557 | 25.559 | 180 | 0 | 7.043 | 1276.226 | 1293.014 | 1300.195 | 115.418 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.036 | 17.033 | 120 | 0 | 7.044 | 851.394 | 866.022 | 868.246 | 115.418 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.229 | 14.227 | 100 | 0 | 7.028 | 820.318 | 843.996 | 849.031 | 120.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.519 | 8.515 | 60 | 0 | 7.043 | 425.806 | 433.032 | 434.942 | 120.578 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.681 | 5.677 | 40 | 0 | 7.041 | 283.966 | 287.304 | 288.309 | 120.578 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1401 | 0 | 280.081 | 3.584 | 3.708 | 4.034 | 121.141 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.006 | 424 | 0 | 84.671 | 11.858 | 12.056 | 12.212 | 123.641 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.012 | 327 | 0 | 65.257 | 15.31 | 15.512 | 15.718 | 123.641 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.021 | 99 | 0 | 19.787 | 50.44 | 50.835 | 51.028 | 123.961 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.027 | 2.01 | 50 | 0 | 9.946 | 100.449 | 100.518 | 101.098 | 123.961 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.495 | 200.549 | 200.665 | 123.961 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

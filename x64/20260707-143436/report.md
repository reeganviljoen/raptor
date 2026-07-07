# Puma vs Raptor Simulation

Run ID: `20260707-143436`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.195 | 16.224 | 1000 | 0 | 61.748 | 41.027 | 42.238 | 43.143 | 30.313 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.178 | 1000 | 0 | 61.995 | 40.986 | 42.024 | 42.414 | 30.656 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.144 | 16.161 | 1000 | 0 | 61.941 | 40.99 | 42.067 | 42.527 | 30.684 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.152 | 16.115 | 1000 | 0 | 61.914 | 40.999 | 42.138 | 42.773 | 30.766 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.169 | 16.117 | 1000 | 0 | 61.848 | 41.004 | 42.19 | 42.637 | 30.766 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.227 | 16.159 | 1000 | 0 | 61.626 | 41.042 | 42.42 | 42.959 | 30.766 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.147 | 16.102 | 1000 | 0 | 61.932 | 40.988 | 42.079 | 42.657 | 30.766 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.169 | 16.104 | 1000 | 0 | 61.846 | 41.004 | 42.211 | 42.92 | 31.875 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.63 | 14.496 | 1000 | 0 | 63.98 | 40.978 | 41.972 | 42.285 | 31.875 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.107 | 15.692 | 1000 | 0 | 66.196 | 40.976 | 41.972 | 42.808 | 31.875 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 10709 | 0 | 2141.163 | 1.348 | 1.962 | 3.393 | 32.055 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.014 | 15.052 | 1000 | 0 | 66.605 | 40.985 | 42.01 | 42.955 | 40.727 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.385 | 15.482 | 1000 | 0 | 64.996 | 41.955 | 42.926 | 43.167 | 40.727 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.037 | 14.642 | 1000 | 0 | 66.501 | 41.965 | 42.988 | 44.302 | 40.727 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 8088 | 0 | 1616.683 | 1.647 | 2.598 | 42.256 | 40.727 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.537 | 15.951 | 1000 | 0 | 64.361 | 41.971 | 42.912 | 43.118 | 51.074 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.632 | 16.012 | 1000 | 0 | 63.971 | 42.291 | 43.37 | 44.188 | 51.074 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.736 | 16.126 | 1000 | 0 | 63.55 | 42.605 | 43.526 | 44.47 | 51.074 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 6548 | 0 | 1308.454 | 2.101 | 3.395 | 10.933 | 51.074 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.045 | 16.278 | 1000 | 0 | 62.323 | 42.972 | 44.023 | 45.426 | 56.977 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.308 | 16.863 | 1000 | 0 | 61.318 | 43.973 | 45.245 | 49.311 | 56.977 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.54 | 16.855 | 1000 | 0 | 60.461 | 43.977 | 45.029 | 49.137 | 56.977 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 4564 | 0 | 911.838 | 3.021 | 5.067 | 14.144 | 56.977 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.865 | 17.345 | 1000 | 0 | 59.295 | 44.953 | 46.111 | 47.928 | 68.504 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.405 | 17.728 | 1000 | 0 | 57.456 | 46.962 | 48.967 | 51.104 | 68.504 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.6 | 17.876 | 1000 | 0 | 56.818 | 46.971 | 49.217 | 53.507 | 68.504 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.009 | 3100 | 0 | 619.126 | 4.716 | 6.3 | 12.502 | 71.426 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.566 | 18.731 | 1000 | 0 | 53.863 | 48.917 | 51.353 | 53.303 | 77.715 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.041 | 28.805 | 363 | 0 | 12.5 | 241.98 | 242.994 | 19625.06 | 77.578 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.434 | 19.206 | 243 | 0 | 12.504 | 241.944 | 243.61 | 12818.999 | 77.59 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.644 | 14.403 | 183 | 0 | 12.497 | 241.989 | 243.042 | 10036.822 | 77.594 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.844 | 9.605 | 123 | 0 | 12.495 | 241.968 | 242.813 | 5240.348 | 77.605 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.841 | 9.602 | 103 | 0 | 10.467 | 241.951 | 242.701 | 5136.798 | 77.605 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 4.803 | 63 | 0 | 12.494 | 241.962 | 242.705 | 243.254 | 77.625 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 4.799 | 42 | 0 | 8.329 | 241.977 | 242.875 | 243.028 | 77.625 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.018 | 122 | 0 | 24.377 | 41.967 | 42.077 | 42.792 | 77.625 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.025 | 109 | 0 | 21.788 | 46.96 | 47.063 | 47.881 | 77.648 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.051 | 2.026 | 99 | 0 | 19.6 | 51.034 | 52.007 | 52.123 | 77.676 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.067 | 55 | 0 | 10.994 | 91.887 | 92.762 | 92.904 | 77.699 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.062 | 2.086 | 36 | 0 | 7.112 | 141.927 | 142.088 | 142.726 | 77.699 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.379 | 21 | 0 | 4.167 | 241.948 | 242.805 | 242.872 | 77.699 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.091 | 1000 | 0 | 61.974 | 40.985 | 41.981 | 42.635 | 29.652 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.178 | 16.143 | 1000 | 0 | 61.814 | 41.009 | 42.193 | 42.564 | 29.84 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.178 | 16.094 | 1000 | 0 | 61.813 | 41.004 | 42.212 | 42.7 | 29.848 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.169 | 16.104 | 1000 | 0 | 61.847 | 40.998 | 42.195 | 42.779 | 29.93 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.17 | 16.135 | 1000 | 0 | 61.842 | 40.986 | 41.966 | 42.163 | 29.93 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.149 | 16.136 | 1000 | 0 | 61.925 | 40.993 | 42.079 | 42.839 | 30.004 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.085 | 1000 | 0 | 61.973 | 40.987 | 41.982 | 42.564 | 30.039 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.165 | 16.113 | 1000 | 0 | 61.863 | 40.994 | 42.154 | 42.67 | 31.039 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.592 | 15.652 | 1000 | 0 | 64.137 | 40.98 | 41.976 | 42.402 | 31.109 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.006 | 15.346 | 1000 | 0 | 66.642 | 40.979 | 41.998 | 42.942 | 31.133 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10932 | 0 | 2185.543 | 1.322 | 1.91 | 3.009 | 31.375 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.056 | 13.919 | 1000 | 0 | 71.144 | 41.205 | 42.55 | 43.222 | 36.922 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.113 | 15.442 | 1000 | 0 | 66.169 | 41.959 | 42.951 | 44.786 | 36.922 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.52 | 15.455 | 1000 | 0 | 68.871 | 41.952 | 43.014 | 44.17 | 36.922 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 7196 | 0 | 1438.499 | 1.772 | 3.696 | 42.718 | 36.922 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.097 | 15.403 | 1000 | 0 | 66.237 | 41.971 | 43.369 | 45.547 | 48.266 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.162 | 16.115 | 1000 | 0 | 65.954 | 42.907 | 43.936 | 45.987 | 48.266 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.166 | 15.866 | 1000 | 0 | 70.59 | 42.924 | 44.353 | 46.025 | 48.266 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 5041 | 0 | 1007.173 | 2.619 | 5.244 | 17.295 | 48.266 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.528 | 16.191 | 1000 | 0 | 64.399 | 43.001 | 44.935 | 47.335 | 52.297 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.029 | 15.912 | 1000 | 0 | 62.387 | 44.13 | 46.213 | 49.03 | 52.297 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.316 | 16.127 | 1000 | 0 | 61.291 | 43.985 | 45.891 | 48.306 | 52.297 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 3458 | 0 | 690.935 | 3.866 | 7.409 | 24.764 | 52.578 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.678 | 16.801 | 1000 | 0 | 59.96 | 45.343 | 47.949 | 50.994 | 66.531 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.915 | 17.299 | 1000 | 0 | 59.118 | 47.826 | 50.24 | 52.094 | 66.531 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.4 | 17.259 | 1000 | 0 | 57.471 | 47.912 | 50.566 | 52.915 | 66.531 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.195 | 2370 | 0 | 473.152 | 6.078 | 9.766 | 16.689 | 72.543 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.033 | 18.721 | 1000 | 0 | 55.455 | 49.878 | 52.989 | 56.098 | 76.035 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.07 | 28.834 | 363 | 0 | 12.487 | 242.085 | 244.497 | 19652.265 | 76.281 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.441 | 19.225 | 243 | 0 | 12.5 | 241.972 | 243.381 | 12815.494 | 76.301 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.646 | 14.407 | 183 | 0 | 12.495 | 242.018 | 243.053 | 10038.472 | 76.32 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.841 | 9.604 | 123 | 0 | 12.499 | 241.957 | 242.927 | 5234.625 | 76.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.841 | 9.602 | 103 | 0 | 10.467 | 241.935 | 242.958 | 5139.231 | 76.332 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.803 | 63 | 0 | 12.499 | 241.896 | 242.658 | 242.858 | 76.34 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.799 | 42 | 0 | 8.335 | 241.921 | 242.217 | 242.558 | 76.34 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.017 | 122 | 0 | 24.318 | 41.973 | 42.967 | 42.991 | 76.34 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.021 | 109 | 0 | 21.762 | 46.96 | 47.919 | 48.111 | 76.367 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.034 | 98 | 0 | 19.546 | 51.888 | 52.061 | 52.975 | 76.367 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.064 | 55 | 0 | 10.998 | 91.879 | 92.057 | 92.913 | 76.371 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.086 | 36 | 0 | 7.108 | 141.939 | 142.01 | 142.62 | 76.383 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.376 | 21 | 0 | 4.169 | 241.951 | 242.066 | 242.708 | 76.383 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.216 | 16.09 | 1000 | 0 | 61.668 | 41.063 | 42.367 | 42.99 | 29.703 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.146 | 16.131 | 1000 | 0 | 61.935 | 40.997 | 42.136 | 42.732 | 29.719 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.159 | 16.102 | 1000 | 0 | 61.884 | 41.016 | 42.203 | 42.836 | 29.719 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.352 | 16.392 | 1000 | 0 | 61.154 | 41.842 | 42.677 | 43.163 | 30.016 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.351 | 16.299 | 1000 | 0 | 61.158 | 41.469 | 42.916 | 44.886 | 30.016 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.317 | 16.392 | 1000 | 0 | 61.286 | 41.644 | 42.805 | 43.841 | 30.027 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.317 | 1000 | 0 | 61.962 | 40.986 | 42.05 | 42.955 | 30.063 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.264 | 16.287 | 1000 | 0 | 61.484 | 41.394 | 42.435 | 43.013 | 30.543 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.72 | 14.324 | 1000 | 0 | 67.934 | 40.979 | 41.988 | 43.053 | 30.625 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.787 | 15.179 | 1000 | 0 | 67.628 | 40.982 | 41.998 | 42.946 | 30.668 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 10465 | 0 | 2092.092 | 1.372 | 2.053 | 3.398 | 31.219 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.87 | 14.289 | 1000 | 0 | 72.099 | 40.99 | 42.002 | 43.005 | 39.629 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.085 | 15.52 | 1000 | 0 | 66.29 | 41.961 | 42.954 | 43.573 | 39.629 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.868 | 15.836 | 1000 | 0 | 67.257 | 41.961 | 42.698 | 43.319 | 39.629 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.011 | 2.001 | 7993 | 0 | 1594.986 | 1.65 | 2.636 | 41.88 | 39.629 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.048 | 16.083 | 1000 | 0 | 62.312 | 41.971 | 42.941 | 43.412 | 50.094 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.612 | 15.784 | 1000 | 0 | 64.055 | 42.011 | 43.255 | 44.838 | 50.094 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.415 | 15.971 | 1000 | 0 | 64.872 | 42.868 | 43.897 | 44.623 | 50.094 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.014 | 2.003 | 6573 | 0 | 1310.98 | 2.086 | 3.197 | 14.445 | 50.094 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.844 | 16.563 | 1000 | 0 | 63.116 | 42.97 | 43.989 | 44.951 | 57.703 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.491 | 16.688 | 1000 | 0 | 60.64 | 43.971 | 44.989 | 47.084 | 57.703 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.555 | 1000 | 0 | 62.099 | 43.977 | 45.12 | 49.18 | 52.582 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4424 | 0 | 884.035 | 3.031 | 5.418 | 16.118 | 54.453 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.615 | 17.216 | 1000 | 0 | 60.188 | 44.95 | 46.274 | 48.689 | 63.621 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.655 | 17.876 | 1000 | 0 | 56.643 | 46.963 | 48.955 | 51.856 | 63.574 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.161 | 17.787 | 1000 | 0 | 58.271 | 46.975 | 49.193 | 52.176 | 63.574 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.008 | 3093 | 0 | 617.681 | 4.754 | 6.479 | 12.862 | 69.586 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.796 | 18.571 | 1000 | 0 | 53.203 | 48.945 | 52.016 | 61.941 | 72.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.039 | 28.803 | 363 | 0 | 12.5 | 241.974 | 243.381 | 19633.614 | 73.215 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.444 | 19.206 | 243 | 0 | 12.498 | 241.976 | 242.979 | 12817.216 | 73.25 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.643 | 14.398 | 183 | 0 | 12.497 | 241.995 | 242.964 | 10038.837 | 73.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.844 | 9.603 | 123 | 0 | 12.495 | 241.966 | 242.839 | 5240.21 | 73.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.841 | 9.601 | 103 | 0 | 10.467 | 241.956 | 242.663 | 5139.469 | 73.273 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 4.797 | 63 | 0 | 12.493 | 241.964 | 242.582 | 242.829 | 73.273 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.798 | 42 | 0 | 8.335 | 241.896 | 242.168 | 242.435 | 73.277 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.017 | 122 | 0 | 24.347 | 41.969 | 42.877 | 42.968 | 73.277 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.027 | 109 | 0 | 21.788 | 46.966 | 47.53 | 47.999 | 73.313 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.014 | 98 | 0 | 19.515 | 51.932 | 52.014 | 52.38 | 73.32 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.071 | 55 | 0 | 10.994 | 91.942 | 91.99 | 92.186 | 73.32 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.089 | 36 | 0 | 7.108 | 141.953 | 141.985 | 142.605 | 73.324 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.376 | 21 | 0 | 4.173 | 241.477 | 241.986 | 241.992 | 73.324 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15152 | 0 | 3029.638 | 1.564 | 2.171 | 2.766 | 91.98 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14866 | 0 | 2972.464 | 1.6 | 2.176 | 2.707 | 95.59 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15310 | 0 | 3061.09 | 1.564 | 2.1 | 2.547 | 94.852 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14694 | 0 | 2937.974 | 1.623 | 2.223 | 2.686 | 93.07 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15176 | 0 | 3034.258 | 1.578 | 2.13 | 2.481 | 102.266 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13283 | 0 | 2655.809 | 1.816 | 2.373 | 2.696 | 99.953 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15198 | 0 | 3038.84 | 1.576 | 2.134 | 2.49 | 102.262 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14471 | 0 | 2893.188 | 1.645 | 2.251 | 2.796 | 108.34 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12175 | 0 | 2434.257 | 1.983 | 2.565 | 2.989 | 131.566 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 6080 | 0 | 1215.099 | 4.007 | 5.024 | 6.415 | 125.867 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12230 | 0 | 2445.235 | 1.979 | 2.537 | 2.975 | 123.113 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12192 | 0 | 2437.803 | 1.978 | 2.526 | 2.824 | 104.293 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9073 | 0 | 1813.956 | 2.508 | 3.941 | 5.202 | 129.258 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3312 | 0 | 661.483 | 7.481 | 8.971 | 9.806 | 132.305 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9490 | 0 | 1897.29 | 2.391 | 3.839 | 4.67 | 108.738 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9364 | 0 | 1872.09 | 2.431 | 3.685 | 5.461 | 107.227 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6864 | 0 | 1371.92 | 3.275 | 5.304 | 15.364 | 162.539 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.552 | 1811 | 0 | 361.387 | 13.634 | 16.084 | 19.669 | 139.547 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7438 | 0 | 1486.8 | 3.012 | 4.869 | 14.836 | 135.156 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7061 | 0 | 1411.386 | 3.097 | 5.442 | 15.371 | 116.277 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4448 | 0 | 888.892 | 5.309 | 7.785 | 19.525 | 164.855 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.63 | 1017 | 0 | 202.578 | 24.606 | 28.014 | 29.527 | 167.813 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4923 | 0 | 983.736 | 4.64 | 6.394 | 18.727 | 155.125 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4414 | 0 | 881.988 | 5.109 | 7.555 | 20.5 | 149.32 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2675 | 0 | 534.074 | 9.153 | 11.082 | 14.022 | 160.156 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.38 | 8.668 | 1000 | 0 | 106.613 | 46.401 | 52.379 | 54.885 | 178.941 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 2911 | 0 | 581.494 | 8.4 | 9.512 | 10.571 | 161.895 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 2900 | 0 | 579.324 | 8.425 | 10.063 | 10.958 | 161.895 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.105 | 51.069 | 360 | 0 | 7.044 | 2554.827 | 2570.856 | 2580.701 | 182.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.014 | 34.043 | 240 | 0 | 7.056 | 1700.519 | 1706.198 | 1709.618 | 190.41 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.514 | 25.515 | 180 | 0 | 7.055 | 1275.567 | 1280.113 | 1288.646 | 190.414 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.037 | 16.999 | 120 | 0 | 7.044 | 851.632 | 865.197 | 868.378 | 190.414 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.212 | 14.225 | 100 | 0 | 7.036 | 766.633 | 838.63 | 848.457 | 198.977 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.508 | 8.51 | 60 | 0 | 7.053 | 425.18 | 430.423 | 441.427 | 207.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.668 | 5.672 | 40 | 0 | 7.057 | 283.345 | 286.715 | 288.342 | 208.109 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3566 | 0 | 713.143 | 1.376 | 1.466 | 1.672 | 210.109 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.005 | 939 | 0 | 187.706 | 5.286 | 5.398 | 5.812 | 210.109 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.008 | 483 | 0 | 96.482 | 10.318 | 10.483 | 10.703 | 210.109 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.024 | 99 | 0 | 19.772 | 50.507 | 50.783 | 51.071 | 210.109 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.034 | 2.014 | 50 | 0 | 9.933 | 100.614 | 100.685 | 100.744 | 210.109 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.007 | 25 | 0 | 4.982 | 200.652 | 200.726 | 200.878 | 210.109 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15508 | 0 | 3100.783 | 1.553 | 2.047 | 2.332 | 75.051 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15084 | 0 | 3016.048 | 1.595 | 2.102 | 2.431 | 74.641 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15438 | 0 | 3086.743 | 1.557 | 2.052 | 2.365 | 74.266 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14706 | 0 | 2940.297 | 1.628 | 2.21 | 2.589 | 74.461 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15204 | 0 | 3040.042 | 1.579 | 2.109 | 2.488 | 77.613 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13258 | 0 | 2650.557 | 1.818 | 2.376 | 2.765 | 77.688 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15228 | 0 | 3044.821 | 1.577 | 2.117 | 2.476 | 78.172 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14514 | 0 | 2902.031 | 1.641 | 2.288 | 2.747 | 79.777 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12099 | 0 | 2418.898 | 1.984 | 2.62 | 3.104 | 103.16 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6037 | 0 | 1206.686 | 4.067 | 4.978 | 5.542 | 91.176 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12311 | 0 | 2461.075 | 1.97 | 2.507 | 2.822 | 104.023 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12234 | 0 | 2446.051 | 1.974 | 2.538 | 2.921 | 78.879 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9053 | 0 | 1809.859 | 2.511 | 3.977 | 5.316 | 109.887 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3266 | 0 | 652.271 | 7.614 | 9.061 | 10.056 | 98.07 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9553 | 0 | 1909.8 | 2.412 | 3.374 | 4.283 | 84.465 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9137 | 0 | 1826.426 | 2.502 | 3.723 | 5.231 | 84.402 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.002 | 6671 | 0 | 1329.256 | 3.356 | 5.573 | 17.165 | 144.352 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.666 | 1828 | 0 | 364.768 | 13.758 | 15.494 | 16.492 | 102.965 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.002 | 7104 | 0 | 1419.22 | 3.078 | 5.442 | 17.257 | 86.059 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6968 | 0 | 1392.651 | 3.142 | 5.495 | 17.156 | 85.684 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4282 | 0 | 855.447 | 5.396 | 8.069 | 21.931 | 138.91 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.023 | 4.649 | 1006 | 0 | 200.26 | 24.938 | 28.388 | 29.893 | 105.051 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.022 | 4752 | 0 | 949.681 | 4.733 | 7.121 | 21.365 | 95.5 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4369 | 0 | 872.903 | 5.127 | 7.757 | 22.241 | 95.5 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.085 | 2305 | 0 | 460.038 | 11.004 | 14.257 | 15.819 | 107.219 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.369 | 8.716 | 1000 | 0 | 106.736 | 46.485 | 52.469 | 54.785 | 107.969 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.008 | 2788 | 0 | 556.401 | 8.764 | 10.806 | 11.929 | 100.598 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 2834 | 0 | 566.088 | 8.614 | 10.816 | 12.101 | 100.66 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.06 | 51.022 | 360 | 0 | 7.05 | 2552.587 | 2563.946 | 2568.994 | 115.027 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.047 | 33.995 | 240 | 0 | 7.049 | 1701.906 | 1715.411 | 1722.071 | 113.254 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.538 | 25.508 | 180 | 0 | 7.048 | 1276.269 | 1281.225 | 1283.091 | 114.195 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.013 | 16.99 | 120 | 0 | 7.054 | 850.222 | 854.04 | 861.858 | 120.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.21 | 14.218 | 100 | 0 | 7.037 | 815.412 | 846.939 | 849.41 | 121.074 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.507 | 8.518 | 60 | 0 | 7.053 | 424.891 | 428.231 | 429.774 | 121.074 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.674 | 5.672 | 40 | 0 | 7.049 | 283.616 | 286.632 | 294.337 | 121.074 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3563 | 0 | 712.454 | 1.376 | 1.473 | 1.677 | 134.18 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.0 | 940 | 0 | 187.899 | 5.286 | 5.381 | 5.74 | 134.18 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.008 | 482 | 0 | 96.201 | 10.319 | 10.578 | 11.319 | 134.18 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.023 | 99 | 0 | 19.765 | 50.514 | 50.738 | 51.555 | 134.18 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.014 | 50 | 0 | 9.931 | 100.627 | 100.735 | 100.933 | 134.18 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.652 | 200.702 | 200.74 | 134.18 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15130 | 0 | 3025.102 | 1.57 | 2.162 | 2.717 | 94.887 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14994 | 0 | 2998.009 | 1.599 | 2.119 | 2.567 | 98.191 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15429 | 0 | 3085.017 | 1.555 | 2.061 | 2.395 | 98.211 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14741 | 0 | 2947.527 | 1.626 | 2.195 | 2.682 | 97.348 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15148 | 0 | 3028.849 | 1.584 | 2.116 | 2.451 | 104.039 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13214 | 0 | 2641.818 | 1.823 | 2.387 | 2.757 | 104.164 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15146 | 0 | 3027.832 | 1.584 | 2.112 | 2.492 | 104.504 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14474 | 0 | 2893.907 | 1.649 | 2.247 | 2.757 | 110.676 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 12193 | 0 | 2437.203 | 1.979 | 2.581 | 3.036 | 132.18 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6081 | 0 | 1215.454 | 4.037 | 4.978 | 5.676 | 132.957 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12442 | 0 | 2487.772 | 1.94 | 2.517 | 2.967 | 128.574 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12224 | 0 | 2444.083 | 1.974 | 2.533 | 2.867 | 104.254 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 8700 | 0 | 1738.887 | 2.564 | 4.336 | 6.065 | 136.281 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3315 | 0 | 661.932 | 7.509 | 8.967 | 9.923 | 135.816 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9074 | 0 | 1814.16 | 2.427 | 4.322 | 5.621 | 112.797 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8923 | 0 | 1783.812 | 2.471 | 4.269 | 5.673 | 112.039 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6545 | 0 | 1308.319 | 3.396 | 6.055 | 18.366 | 176.402 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.632 | 1806 | 0 | 360.259 | 13.791 | 16.015 | 17.302 | 146.113 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 6654 | 0 | 1330.096 | 3.146 | 6.639 | 18.697 | 140.195 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6646 | 0 | 1328.604 | 3.186 | 6.626 | 18.641 | 140.07 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4256 | 0 | 850.309 | 5.393 | 8.516 | 24.04 | 175.047 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.05 | 4.628 | 1000 | 0 | 198.009 | 25.162 | 28.537 | 30.037 | 155.93 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.009 | 4482 | 0 | 895.762 | 4.973 | 7.921 | 23.682 | 149.715 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4380 | 0 | 875.328 | 5.071 | 8.219 | 23.263 | 137.125 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.011 | 2416 | 0 | 482.518 | 10.356 | 14.206 | 16.229 | 149.742 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.663 | 9.0 | 1000 | 0 | 103.489 | 47.951 | 54.187 | 56.859 | 168.023 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2751 | 0 | 549.214 | 8.785 | 11.143 | 13.469 | 155.93 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2828 | 0 | 564.822 | 8.716 | 10.582 | 11.728 | 134.602 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.13 | 51.073 | 360 | 0 | 7.041 | 2582.938 | 2634.758 | 2638.656 | 157.664 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.061 | 34.067 | 240 | 0 | 7.046 | 1717.3 | 1761.843 | 1763.237 | 181.559 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.537 | 25.532 | 180 | 0 | 7.049 | 1291.334 | 1318.882 | 1321.688 | 181.559 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.019 | 17.023 | 120 | 0 | 7.051 | 864.062 | 880.509 | 881.041 | 181.625 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.19 | 14.181 | 100 | 0 | 7.047 | 716.991 | 857.727 | 860.851 | 181.625 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.501 | 8.517 | 60 | 0 | 7.058 | 425.08 | 439.537 | 441.699 | 181.625 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.679 | 5.676 | 40 | 0 | 7.043 | 283.928 | 291.036 | 302.734 | 181.625 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3559 | 0 | 711.735 | 1.378 | 1.491 | 1.723 | 199.086 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 941 | 0 | 188.129 | 5.278 | 5.391 | 5.707 | 199.148 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.0 | 484 | 0 | 96.616 | 10.313 | 10.425 | 10.614 | 199.148 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.021 | 99 | 0 | 19.787 | 50.489 | 50.567 | 50.714 | 199.148 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.034 | 2.014 | 50 | 0 | 9.933 | 100.606 | 100.786 | 100.845 | 199.148 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.008 | 25 | 0 | 4.981 | 200.676 | 200.72 | 200.74 | 199.148 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.129 | 1000 | 0 | 61.986 | 40.985 | 42.003 | 42.47 | 31.074 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.16 | 16.1 | 1000 | 0 | 61.882 | 40.992 | 42.175 | 42.839 | 31.359 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.144 | 16.091 | 1000 | 0 | 61.943 | 40.985 | 42.005 | 42.367 | 31.5 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.154 | 16.095 | 1000 | 0 | 61.904 | 40.988 | 42.078 | 42.968 | 31.629 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.154 | 16.086 | 1000 | 0 | 61.904 | 40.99 | 42.003 | 42.804 | 31.668 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.159 | 16.08 | 1000 | 0 | 61.885 | 40.987 | 42.119 | 42.757 | 31.738 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.095 | 1000 | 0 | 61.954 | 40.987 | 42.05 | 42.515 | 31.746 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.174 | 16.098 | 1000 | 0 | 61.828 | 40.997 | 42.208 | 42.817 | 32.168 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.34 | 15.656 | 1000 | 0 | 65.189 | 40.974 | 41.983 | 42.291 | 32.227 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.1 | 15.781 | 1000 | 0 | 66.225 | 40.974 | 41.976 | 42.401 | 32.27 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10369 | 0 | 2073.024 | 1.377 | 2.062 | 4.782 | 32.738 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.219 | 15.383 | 1000 | 0 | 65.708 | 40.978 | 41.987 | 42.878 | 37.211 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.761 | 15.033 | 1000 | 0 | 67.747 | 41.95 | 42.94 | 43.431 | 37.211 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.748 | 15.27 | 1000 | 0 | 67.806 | 41.948 | 42.937 | 44.128 | 37.211 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.039 | 7984 | 0 | 1595.762 | 1.614 | 2.73 | 41.885 | 37.383 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.44 | 15.627 | 1000 | 0 | 64.768 | 41.969 | 42.976 | 43.96 | 42.059 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.487 | 15.756 | 1000 | 0 | 64.568 | 41.993 | 43.164 | 45.437 | 41.922 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.472 | 15.985 | 1000 | 0 | 64.633 | 41.979 | 43.071 | 45.915 | 41.922 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.003 | 5900 | 0 | 1178.93 | 2.232 | 3.925 | 20.39 | 42.848 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.65 | 16.532 | 1000 | 0 | 63.899 | 42.958 | 44.163 | 46.029 | 50.473 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.7 | 16.437 | 1000 | 0 | 63.696 | 43.931 | 45.423 | 48.504 | 50.473 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.309 | 16.196 | 1000 | 0 | 65.321 | 43.944 | 45.195 | 47.811 | 50.473 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4007 | 0 | 800.657 | 3.277 | 6.103 | 22.729 | 51.684 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.528 | 16.961 | 1000 | 0 | 60.502 | 44.015 | 45.987 | 47.875 | 60.043 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.63 | 17.219 | 1000 | 0 | 60.132 | 46.026 | 48.781 | 52.677 | 59.344 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.254 | 17.398 | 1000 | 0 | 57.959 | 46.064 | 48.171 | 49.981 | 59.344 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.008 | 2873 | 0 | 573.834 | 5.121 | 6.936 | 11.02 | 65.355 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.051 | 18.305 | 1000 | 0 | 55.397 | 47.967 | 50.944 | 54.172 | 74.914 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.039 | 28.801 | 363 | 0 | 12.501 | 241.976 | 243.076 | 19631.861 | 75.301 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.434 | 19.202 | 243 | 0 | 12.504 | 241.944 | 242.881 | 12816.731 | 75.355 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.635 | 14.398 | 183 | 0 | 12.504 | 241.944 | 243.064 | 10033.208 | 75.359 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.839 | 9.599 | 123 | 0 | 12.501 | 241.956 | 242.819 | 5237.933 | 75.363 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.601 | 103 | 0 | 10.472 | 241.949 | 242.782 | 5139.242 | 75.379 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 4.802 | 63 | 0 | 12.49 | 241.981 | 242.762 | 242.796 | 75.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.795 | 42 | 0 | 8.337 | 241.897 | 242.132 | 242.58 | 75.383 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.36 | 41.971 | 42.181 | 42.965 | 75.418 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.025 | 112 | 0 | 22.36 | 45.955 | 46.019 | 46.941 | 75.449 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.0 | 99 | 0 | 19.741 | 50.971 | 51.122 | 51.982 | 75.457 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.08 | 2.058 | 56 | 0 | 11.024 | 90.99 | 91.993 | 92.622 | 75.465 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.089 | 36 | 0 | 7.097 | 141.955 | 141.994 | 142.843 | 75.469 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.026 | 2.378 | 21 | 0 | 4.178 | 240.964 | 241.979 | 241.981 | 75.469 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.126 | 1000 | 0 | 62.005 | 40.982 | 41.983 | 42.308 | 31.004 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.215 | 16.112 | 1000 | 0 | 61.673 | 41.089 | 42.332 | 42.717 | 31.445 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.169 | 16.125 | 1000 | 0 | 61.847 | 40.991 | 42.162 | 42.679 | 31.613 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.098 | 1000 | 0 | 62.008 | 40.982 | 41.984 | 42.428 | 31.758 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.203 | 16.129 | 1000 | 0 | 61.718 | 41.016 | 42.266 | 42.623 | 32.063 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.228 | 16.091 | 1000 | 0 | 61.622 | 41.002 | 42.247 | 42.877 | 32.063 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.142 | 16.085 | 1000 | 0 | 61.95 | 40.986 | 42.017 | 42.417 | 32.09 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.191 | 16.081 | 1000 | 0 | 61.762 | 41.001 | 42.257 | 42.879 | 32.957 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.651 | 15.657 | 1000 | 0 | 68.254 | 40.974 | 41.972 | 42.12 | 33.055 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.023 | 15.937 | 1000 | 0 | 66.564 | 40.976 | 41.971 | 42.569 | 33.055 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 10833 | 0 | 2165.496 | 1.321 | 1.963 | 7.482 | 33.41 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.182 | 15.492 | 1000 | 0 | 65.867 | 40.979 | 41.985 | 42.982 | 40.574 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.902 | 14.962 | 1000 | 0 | 67.105 | 41.948 | 42.922 | 43.684 | 40.574 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.766 | 15.396 | 1000 | 0 | 67.723 | 41.957 | 42.849 | 43.682 | 40.574 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.01 | 2.002 | 8193 | 0 | 1635.247 | 1.546 | 2.518 | 42.574 | 40.973 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.69 | 15.902 | 1000 | 0 | 63.733 | 41.97 | 42.978 | 44.025 | 45.574 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.689 | 16.024 | 1000 | 0 | 63.739 | 41.981 | 43.068 | 44.279 | 45.574 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.667 | 15.946 | 1000 | 0 | 63.83 | 41.985 | 43.067 | 45.369 | 45.574 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 5743 | 0 | 1147.875 | 2.279 | 3.993 | 21.335 | 45.816 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.068 | 16.275 | 1000 | 0 | 62.234 | 42.95 | 43.982 | 48.089 | 49.48 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.073 | 16.38 | 1000 | 0 | 62.218 | 43.927 | 44.971 | 50.367 | 49.48 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.634 | 15.878 | 1000 | 0 | 63.963 | 43.932 | 45.2 | 46.94 | 49.48 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.005 | 4250 | 0 | 848.744 | 3.178 | 5.265 | 22.407 | 53.004 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.376 | 16.745 | 1000 | 0 | 61.065 | 44.002 | 46.475 | 55.114 | 63.758 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.716 | 17.573 | 1000 | 0 | 59.822 | 46.148 | 48.775 | 50.852 | 59.41 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.041 | 16.623 | 1000 | 0 | 58.683 | 46.07 | 48.868 | 51.452 | 59.41 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.042 | 2850 | 0 | 569.216 | 5.149 | 7.373 | 11.012 | 65.422 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.239 | 18.301 | 1000 | 0 | 54.829 | 47.972 | 50.971 | 63.042 | 74.797 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.035 | 28.8 | 363 | 0 | 12.502 | 241.972 | 242.983 | 19626.212 | 75.219 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.438 | 19.195 | 243 | 0 | 12.502 | 241.962 | 242.957 | 12819.262 | 75.234 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.64 | 14.4 | 183 | 0 | 12.5 | 241.975 | 242.786 | 10033.778 | 75.238 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.841 | 9.599 | 123 | 0 | 12.498 | 241.95 | 242.962 | 5241.01 | 75.246 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.841 | 9.593 | 103 | 0 | 10.467 | 241.969 | 242.243 | 5141.278 | 75.25 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.797 | 63 | 0 | 12.5 | 241.922 | 242.727 | 242.905 | 75.258 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.798 | 42 | 0 | 8.337 | 241.944 | 242.133 | 242.559 | 75.258 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.018 | 122 | 0 | 24.352 | 41.973 | 42.843 | 42.973 | 75.293 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.008 | 113 | 0 | 22.551 | 44.992 | 45.999 | 46.142 | 75.316 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.007 | 99 | 0 | 19.727 | 50.969 | 51.958 | 51.98 | 75.32 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.079 | 2.064 | 56 | 0 | 11.026 | 90.98 | 91.992 | 92.06 | 75.32 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.088 | 36 | 0 | 7.096 | 141.955 | 141.996 | 142.629 | 75.32 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.374 | 21 | 0 | 4.174 | 240.977 | 242.006 | 242.178 | 75.32 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.129 | 1000 | 0 | 61.968 | 40.985 | 42.013 | 42.494 | 31.082 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.151 | 16.097 | 1000 | 0 | 61.916 | 40.989 | 42.117 | 42.625 | 31.277 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.151 | 16.128 | 1000 | 0 | 61.916 | 40.988 | 42.087 | 42.543 | 31.605 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.15 | 16.092 | 1000 | 0 | 61.919 | 40.987 | 42.067 | 42.666 | 31.758 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.096 | 1000 | 0 | 62.033 | 40.981 | 41.975 | 42.539 | 31.801 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.16 | 16.089 | 1000 | 0 | 61.881 | 40.99 | 42.146 | 42.646 | 31.801 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.228 | 16.091 | 1000 | 0 | 61.623 | 41.132 | 42.308 | 42.924 | 31.813 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.163 | 16.092 | 1000 | 0 | 61.871 | 40.993 | 42.113 | 42.863 | 32.621 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.181 | 15.856 | 1000 | 0 | 65.871 | 40.974 | 41.976 | 42.112 | 32.633 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.46 | 15.746 | 1000 | 0 | 64.681 | 40.975 | 41.978 | 42.462 | 32.633 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10766 | 0 | 2152.181 | 1.334 | 1.965 | 3.47 | 32.926 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.343 | 15.337 | 1000 | 0 | 65.177 | 40.98 | 41.983 | 42.949 | 39.547 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.456 | 15.162 | 1000 | 0 | 69.175 | 41.954 | 42.91 | 43.956 | 39.547 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.484 | 15.246 | 1000 | 0 | 69.041 | 41.954 | 42.958 | 43.919 | 39.547 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.04 | 8074 | 0 | 1614.196 | 1.577 | 2.695 | 42.224 | 39.547 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.078 | 15.757 | 1000 | 0 | 66.324 | 41.97 | 42.979 | 43.965 | 43.367 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.304 | 15.37 | 1000 | 0 | 65.34 | 41.984 | 43.224 | 53.661 | 43.367 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.467 | 16.024 | 1000 | 0 | 64.655 | 41.984 | 43.214 | 45.073 | 43.367 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.079 | 6135 | 0 | 1226.357 | 2.158 | 3.641 | 20.693 | 43.57 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.207 | 16.392 | 1000 | 0 | 61.704 | 42.965 | 43.996 | 44.764 | 46.637 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.866 | 16.318 | 1000 | 0 | 63.027 | 43.943 | 45.158 | 48.007 | 46.637 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.315 | 1000 | 0 | 62.033 | 43.936 | 45.094 | 47.732 | 46.637 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 4218 | 0 | 842.774 | 3.163 | 5.289 | 26.059 | 50.656 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.478 | 16.876 | 1000 | 0 | 60.686 | 44.032 | 46.018 | 49.023 | 60.676 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.858 | 17.839 | 1000 | 0 | 59.319 | 46.011 | 48.478 | 52.55 | 57.414 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.952 | 17.659 | 1000 | 0 | 58.989 | 46.737 | 48.945 | 51.798 | 57.414 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.039 | 2822 | 0 | 563.507 | 5.144 | 7.618 | 14.175 | 63.426 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.553 | 18.312 | 1000 | 0 | 56.972 | 47.98 | 51.218 | 63.206 | 73.551 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.038 | 28.789 | 363 | 0 | 12.501 | 241.972 | 242.98 | 19628.942 | 73.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.437 | 19.197 | 243 | 0 | 12.502 | 241.967 | 243.023 | 12817.853 | 73.996 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.634 | 14.399 | 183 | 0 | 12.505 | 241.945 | 242.866 | 10032.375 | 74.0 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.84 | 9.601 | 123 | 0 | 12.5 | 241.966 | 242.812 | 5239.908 | 74.008 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.595 | 103 | 0 | 10.47 | 241.969 | 242.632 | 5139.72 | 74.012 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 4.8 | 63 | 0 | 12.495 | 241.942 | 242.367 | 242.675 | 74.016 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.797 | 42 | 0 | 8.333 | 241.942 | 242.149 | 242.783 | 74.016 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.019 | 122 | 0 | 24.347 | 41.969 | 42.479 | 42.977 | 74.051 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.029 | 112 | 0 | 22.355 | 45.95 | 46.02 | 46.931 | 74.074 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.051 | 99 | 0 | 19.714 | 50.97 | 51.981 | 51.995 | 74.098 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.075 | 2.064 | 56 | 0 | 11.035 | 90.98 | 91.987 | 92.424 | 74.105 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.088 | 36 | 0 | 7.098 | 141.952 | 142.01 | 142.036 | 74.109 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 2.379 | 21 | 0 | 4.174 | 241.217 | 242.014 | 242.154 | 74.109 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15662 | 0 | 3131.618 | 1.519 | 2.083 | 2.624 | 99.262 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15512 | 0 | 3101.556 | 1.55 | 2.086 | 2.392 | 102.043 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15851 | 0 | 3169.335 | 1.515 | 2.021 | 2.319 | 100.434 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15344 | 0 | 3067.957 | 1.556 | 2.08 | 2.526 | 102.441 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15631 | 0 | 3125.344 | 1.539 | 2.034 | 2.305 | 109.676 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13523 | 0 | 2703.622 | 1.784 | 2.332 | 2.634 | 109.027 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15621 | 0 | 3123.364 | 1.542 | 2.03 | 2.335 | 110.188 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15158 | 0 | 3030.554 | 1.577 | 2.104 | 2.501 | 115.273 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.003 | 12699 | 0 | 2539.105 | 1.904 | 2.442 | 2.731 | 143.277 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6196 | 0 | 1238.32 | 3.972 | 4.676 | 5.148 | 137.227 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12715 | 0 | 2542.093 | 1.902 | 2.443 | 2.799 | 140.535 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12481 | 0 | 2495.352 | 1.93 | 2.438 | 2.714 | 118.383 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9239 | 0 | 1847.079 | 2.435 | 3.738 | 5.055 | 153.566 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3352 | 0 | 669.554 | 7.398 | 8.769 | 9.423 | 144.602 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 9222 | 0 | 1843.135 | 2.426 | 3.697 | 5.098 | 123.734 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.023 | 9203 | 0 | 1839.737 | 2.446 | 3.709 | 5.157 | 122.898 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6710 | 0 | 1341.313 | 3.183 | 5.285 | 22.581 | 178.668 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.625 | 1818 | 0 | 362.788 | 13.705 | 15.681 | 17.034 | 161.668 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7166 | 0 | 1432.486 | 3.034 | 4.932 | 22.897 | 125.27 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 7107 | 0 | 1420.345 | 3.08 | 4.562 | 22.324 | 124.891 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4283 | 0 | 855.889 | 5.222 | 7.612 | 28.166 | 160.949 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.025 | 4.856 | 1004 | 0 | 199.805 | 25.017 | 28.233 | 29.416 | 162.66 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.027 | 2.004 | 4442 | 0 | 883.68 | 4.954 | 7.298 | 28.162 | 138.617 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4408 | 0 | 880.735 | 5.049 | 6.928 | 26.963 | 138.863 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 2591 | 0 | 517.555 | 9.473 | 13.574 | 15.563 | 184.637 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.536 | 8.771 | 1000 | 0 | 104.861 | 47.658 | 52.791 | 56.242 | 189.852 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2723 | 0 | 543.716 | 9.059 | 10.743 | 11.602 | 152.902 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2832 | 0 | 565.443 | 8.704 | 10.315 | 11.261 | 144.246 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.213 | 51.212 | 360 | 0 | 7.029 | 2559.544 | 2584.099 | 2587.552 | 160.738 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.161 | 34.123 | 240 | 0 | 7.026 | 1707.787 | 1732.202 | 1737.715 | 169.496 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.577 | 25.644 | 180 | 0 | 7.037 | 1277.336 | 1299.949 | 1307.618 | 169.5 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.053 | 17.049 | 120 | 0 | 7.037 | 851.985 | 864.745 | 870.302 | 169.563 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.217 | 14.235 | 100 | 0 | 7.034 | 807.615 | 852.439 | 859.997 | 176.125 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.526 | 8.528 | 60 | 0 | 7.037 | 425.881 | 433.327 | 437.267 | 182.438 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.681 | 5.681 | 40 | 0 | 7.041 | 284.07 | 289.88 | 292.156 | 186.449 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.003 | 1638 | 0 | 327.545 | 3.054 | 3.172 | 3.413 | 202.492 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.011 | 485 | 0 | 96.843 | 10.436 | 10.649 | 10.909 | 202.492 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.003 | 363 | 0 | 72.472 | 13.814 | 13.946 | 14.053 | 202.492 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.019 | 100 | 0 | 19.809 | 50.412 | 50.558 | 51.336 | 202.492 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.013 | 50 | 0 | 9.939 | 100.524 | 100.647 | 101.304 | 202.492 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.564 | 200.64 | 200.643 | 202.492 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16225 | 0 | 3244.223 | 1.468 | 2.011 | 2.584 | 99.32 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16081 | 0 | 3215.39 | 1.499 | 1.979 | 2.252 | 102.406 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16403 | 0 | 3279.747 | 1.467 | 1.943 | 2.234 | 102.504 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15918 | 0 | 3182.907 | 1.502 | 2.003 | 2.399 | 103.27 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16158 | 0 | 3230.914 | 1.492 | 1.965 | 2.257 | 110.211 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13937 | 0 | 2786.49 | 1.73 | 2.271 | 2.582 | 110.836 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16160 | 0 | 3231.274 | 1.483 | 2.003 | 2.471 | 111.074 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15721 | 0 | 3143.398 | 1.524 | 2.016 | 2.372 | 115.926 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13088 | 0 | 2616.772 | 1.849 | 2.37 | 2.711 | 139.719 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 6424 | 0 | 1283.795 | 3.806 | 4.644 | 5.051 | 142.004 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13328 | 0 | 2664.548 | 1.814 | 2.338 | 2.659 | 141.902 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12864 | 0 | 2572.115 | 1.884 | 2.375 | 2.67 | 112.242 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 9172 | 0 | 1833.602 | 2.381 | 4.181 | 5.507 | 145.457 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3450 | 0 | 689.253 | 7.182 | 8.474 | 9.211 | 146.477 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9346 | 0 | 1868.267 | 2.319 | 4.118 | 5.518 | 125.332 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9145 | 0 | 1828.237 | 2.381 | 4.023 | 6.439 | 125.094 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.006 | 6924 | 0 | 1383.986 | 3.12 | 5.334 | 22.863 | 180.902 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.538 | 1922 | 0 | 383.599 | 12.983 | 14.82 | 15.678 | 161.254 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7069 | 0 | 1413.14 | 2.978 | 5.309 | 22.896 | 130.055 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7072 | 0 | 1413.788 | 2.994 | 5.406 | 23.332 | 129.32 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4386 | 0 | 876.578 | 5.098 | 7.668 | 28.291 | 165.734 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 4.866 | 1016 | 0 | 202.338 | 24.422 | 27.466 | 38.826 | 167.988 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.004 | 4543 | 0 | 906.938 | 4.798 | 7.638 | 27.473 | 149.02 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 4436 | 0 | 886.035 | 4.886 | 8.047 | 28.566 | 149.379 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2633 | 0 | 525.779 | 9.342 | 11.865 | 13.219 | 150.516 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.304 | 8.762 | 1000 | 0 | 107.477 | 46.191 | 51.693 | 59.557 | 170.094 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 2772 | 0 | 553.735 | 8.839 | 10.963 | 12.269 | 151.496 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2759 | 0 | 550.918 | 8.895 | 10.926 | 12.418 | 153.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.173 | 51.151 | 360 | 0 | 7.035 | 2557.081 | 2592.101 | 2603.64 | 182.734 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.109 | 34.089 | 240 | 0 | 7.036 | 1703.565 | 1728.769 | 1737.761 | 183.047 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.58 | 25.577 | 180 | 0 | 7.037 | 1277.762 | 1298.978 | 1303.535 | 183.047 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.054 | 17.045 | 120 | 0 | 7.036 | 851.922 | 870.188 | 873.943 | 183.109 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.256 | 14.223 | 100 | 0 | 7.015 | 805.982 | 850.156 | 855.067 | 183.113 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.529 | 8.521 | 60 | 0 | 7.034 | 426.191 | 436.328 | 437.986 | 183.113 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.687 | 5.68 | 40 | 0 | 7.033 | 283.898 | 289.58 | 291.192 | 183.113 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1634 | 0 | 326.688 | 3.058 | 3.154 | 3.423 | 183.113 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.007 | 482 | 0 | 96.395 | 10.447 | 10.571 | 10.701 | 183.113 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.011 | 361 | 0 | 72.116 | 13.862 | 14.094 | 14.373 | 183.113 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.025 | 99 | 0 | 19.756 | 50.532 | 50.737 | 51.305 | 183.113 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.014 | 50 | 0 | 9.934 | 100.572 | 100.693 | 101.169 | 183.113 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.007 | 25 | 0 | 4.982 | 200.61 | 200.902 | 200.919 | 183.113 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16029 | 0 | 3204.847 | 1.478 | 2.074 | 2.778 | 99.551 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15801 | 0 | 3159.298 | 1.517 | 2.046 | 2.49 | 101.363 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16314 | 0 | 3262.023 | 1.473 | 1.994 | 2.323 | 100.727 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15812 | 0 | 3161.515 | 1.51 | 2.032 | 2.404 | 100.293 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15967 | 0 | 3192.447 | 1.497 | 2.037 | 2.459 | 107.594 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13819 | 0 | 2762.531 | 1.74 | 2.287 | 2.79 | 107.598 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16124 | 0 | 3223.853 | 1.488 | 2.009 | 2.382 | 112.57 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15552 | 0 | 3109.528 | 1.537 | 2.058 | 2.486 | 118.961 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13010 | 0 | 2601.328 | 1.858 | 2.398 | 2.747 | 165.535 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6310 | 0 | 1261.098 | 3.876 | 4.76 | 5.288 | 137.695 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13074 | 0 | 2613.809 | 1.848 | 2.396 | 2.706 | 141.707 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12871 | 0 | 2573.394 | 1.861 | 2.386 | 2.644 | 118.648 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9457 | 0 | 1890.703 | 2.348 | 3.665 | 4.774 | 150.48 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3425 | 0 | 684.112 | 7.192 | 8.594 | 9.394 | 142.84 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9399 | 0 | 1879.141 | 2.358 | 3.688 | 4.855 | 142.078 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 9354 | 0 | 1869.438 | 2.362 | 3.666 | 5.07 | 140.91 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 6688 | 0 | 1336.46 | 3.197 | 5.017 | 25.082 | 190.531 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.551 | 1884 | 0 | 375.98 | 13.23 | 15.188 | 16.262 | 151.898 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7074 | 0 | 1414.004 | 3.029 | 4.976 | 24.971 | 146.219 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6970 | 0 | 1393.138 | 2.982 | 4.874 | 25.102 | 141.098 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4265 | 0 | 852.09 | 5.187 | 7.567 | 30.125 | 181.77 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 4.759 | 1024 | 0 | 203.958 | 24.405 | 27.659 | 28.638 | 175.984 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4334 | 0 | 866.139 | 5.044 | 7.328 | 29.927 | 147.02 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.013 | 4282 | 0 | 855.69 | 5.105 | 7.7 | 30.339 | 147.207 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2457 | 0 | 490.544 | 9.898 | 12.453 | 14.12 | 153.109 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.369 | 8.849 | 1000 | 0 | 106.731 | 46.797 | 51.515 | 55.079 | 182.301 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2847 | 0 | 568.51 | 8.596 | 10.547 | 11.374 | 158.602 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2843 | 0 | 567.659 | 8.554 | 10.628 | 11.972 | 158.676 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.17 | 51.153 | 360 | 0 | 7.035 | 2556.647 | 2582.783 | 2591.659 | 180.941 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.114 | 34.089 | 240 | 0 | 7.035 | 1705.489 | 1727.399 | 1732.164 | 182.168 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.58 | 25.574 | 180 | 0 | 7.037 | 1278.146 | 1299.119 | 1307.864 | 182.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.055 | 17.048 | 120 | 0 | 7.036 | 852.461 | 867.843 | 873.301 | 186.43 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.24 | 14.238 | 100 | 0 | 7.023 | 783.117 | 855.031 | 858.706 | 199.875 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.526 | 8.525 | 60 | 0 | 7.038 | 426.582 | 438.379 | 440.916 | 200.941 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.683 | 5.679 | 40 | 0 | 7.038 | 284.008 | 289.55 | 292.696 | 200.941 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 1638 | 0 | 327.588 | 3.058 | 3.174 | 3.57 | 206.441 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.008 | 482 | 0 | 96.34 | 10.443 | 10.562 | 10.847 | 206.504 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.009 | 362 | 0 | 72.229 | 13.845 | 14.042 | 14.215 | 206.504 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.026 | 99 | 0 | 19.752 | 50.542 | 50.959 | 51.129 | 206.504 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.034 | 2.014 | 50 | 0 | 9.933 | 100.586 | 100.733 | 101.315 | 206.504 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.594 | 200.688 | 200.791 | 206.504 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

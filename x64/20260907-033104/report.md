# Puma vs Raptor Simulation

Run ID: `20260907-033104`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.113 | 1000 | 0 | 62.004 | 40.993 | 41.977 | 42.466 | 28.723 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.099 | 1000 | 0 | 61.97 | 40.999 | 41.98 | 42.545 | 28.738 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.102 | 1000 | 0 | 62.003 | 40.995 | 41.995 | 42.553 | 28.75 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.107 | 1000 | 0 | 62.003 | 40.996 | 41.981 | 42.476 | 28.789 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.159 | 16.143 | 1000 | 0 | 61.887 | 41.007 | 41.987 | 42.66 | 28.789 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.181 | 16.202 | 1000 | 0 | 61.801 | 41.036 | 42.212 | 42.882 | 28.789 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.129 | 1000 | 0 | 61.961 | 40.995 | 41.974 | 42.408 | 28.801 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.116 | 1000 | 0 | 61.989 | 40.997 | 41.989 | 42.521 | 28.801 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.045 | 14.904 | 1000 | 0 | 66.466 | 40.983 | 41.991 | 42.948 | 28.801 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.282 | 15.134 | 1000 | 0 | 65.438 | 40.984 | 41.982 | 42.943 | 28.816 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12046 | 0 | 2408.343 | 1.153 | 1.959 | 5.935 | 29.191 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.625 | 14.696 | 1000 | 0 | 68.378 | 41.004 | 42.064 | 42.991 | 35.047 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.495 | 11.581 | 1000 | 0 | 68.991 | 41.935 | 42.699 | 43.164 | 35.047 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.273 | 13.02 | 1000 | 0 | 70.061 | 41.936 | 42.283 | 43.064 | 35.047 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9595 | 0 | 1918.094 | 1.476 | 2.325 | 36.548 | 35.047 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.677 | 13.487 | 1000 | 0 | 68.136 | 41.97 | 42.626 | 43.24 | 41.977 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.051 | 15.272 | 1000 | 0 | 71.171 | 42.014 | 43.256 | 44.258 | 41.977 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.571 | 14.438 | 1000 | 0 | 68.627 | 42.183 | 43.401 | 44.545 | 41.977 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.003 | 6784 | 0 | 1355.506 | 2.039 | 3.35 | 13.396 | 42.375 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.388 | 15.583 | 1000 | 0 | 64.985 | 42.958 | 43.988 | 44.459 | 46.594 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.598 | 15.614 | 1000 | 0 | 64.112 | 43.85 | 44.998 | 47.951 | 45.363 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.305 | 16.045 | 1000 | 0 | 69.905 | 43.905 | 44.97 | 47.131 | 45.363 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4608 | 0 | 920.81 | 2.991 | 5.328 | 13.497 | 46.473 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.861 | 16.813 | 1000 | 0 | 63.046 | 44.121 | 45.993 | 48.811 | 56.016 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.317 | 16.808 | 1000 | 0 | 61.284 | 46.133 | 48.061 | 49.585 | 56.016 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.781 | 15.938 | 1000 | 0 | 63.365 | 46.482 | 48.496 | 50.453 | 56.016 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.036 | 2876 | 0 | 574.327 | 5.051 | 6.868 | 14.683 | 60.191 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.616 | 17.712 | 1000 | 0 | 56.766 | 47.969 | 50.925 | 54.904 | 64.785 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.998 | 28.742 | 363 | 0 | 12.518 | 241.679 | 242.99 | 19601.676 | 64.969 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.428 | 19.164 | 243 | 0 | 12.508 | 241.902 | 243.234 | 12811.312 | 65.0 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.384 | 183 | 0 | 12.513 | 241.746 | 243.522 | 10028.08 | 65.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.584 | 123 | 0 | 12.507 | 241.784 | 242.715 | 5232.012 | 65.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.588 | 103 | 0 | 10.48 | 241.699 | 242.686 | 5132.25 | 65.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.795 | 63 | 0 | 12.506 | 241.712 | 242.611 | 242.889 | 65.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.797 | 42 | 0 | 8.338 | 241.865 | 242.278 | 242.652 | 65.02 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.02 | 122 | 0 | 24.354 | 41.954 | 42.849 | 42.943 | 65.02 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.045 | 110 | 0 | 21.834 | 46.969 | 47.049 | 47.153 | 65.035 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.015 | 99 | 0 | 19.719 | 50.988 | 51.927 | 52.119 | 65.051 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.085 | 2.061 | 56 | 0 | 11.014 | 91.477 | 92.011 | 92.052 | 65.055 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.06 | 2.086 | 36 | 0 | 7.115 | 141.921 | 142.02 | 142.613 | 65.063 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.378 | 21 | 0 | 4.169 | 241.95 | 242.014 | 242.022 | 65.063 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.091 | 1000 | 0 | 62.053 | 40.992 | 41.96 | 42.248 | 29.574 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.085 | 1000 | 0 | 62.06 | 40.996 | 41.949 | 42.334 | 29.762 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.085 | 1000 | 0 | 62.027 | 40.994 | 41.967 | 42.315 | 29.934 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.086 | 1000 | 0 | 62.026 | 40.996 | 41.97 | 42.378 | 30.125 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.097 | 1000 | 0 | 61.982 | 40.997 | 41.973 | 42.371 | 30.148 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.09 | 1000 | 0 | 61.997 | 40.993 | 41.971 | 42.369 | 30.156 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.1 | 1000 | 0 | 61.995 | 40.991 | 41.959 | 42.349 | 30.176 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.108 | 1000 | 0 | 62.021 | 40.991 | 41.983 | 42.258 | 30.746 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.197 | 15.234 | 1000 | 0 | 70.438 | 40.979 | 41.966 | 42.11 | 30.797 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.256 | 15.122 | 1000 | 0 | 65.546 | 40.985 | 41.971 | 42.432 | 30.797 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12443 | 0 | 2487.566 | 1.112 | 1.879 | 5.54 | 31.051 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.37 | 14.749 | 1000 | 0 | 65.063 | 40.99 | 41.985 | 42.915 | 42.48 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.269 | 13.878 | 1000 | 0 | 70.081 | 41.933 | 42.178 | 43.053 | 42.48 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.693 | 12.542 | 1000 | 0 | 68.057 | 41.95 | 42.563 | 43.07 | 42.48 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9257 | 0 | 1850.557 | 1.538 | 2.422 | 41.684 | 42.48 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.681 | 13.125 | 1000 | 0 | 68.115 | 41.973 | 42.926 | 43.317 | 46.285 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.332 | 15.827 | 1000 | 0 | 65.224 | 41.993 | 43.04 | 44.074 | 46.238 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.528 | 15.701 | 1000 | 0 | 64.401 | 41.992 | 43.056 | 43.985 | 46.238 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 6934 | 0 | 1385.899 | 2.036 | 3.17 | 15.959 | 46.238 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.723 | 15.842 | 1000 | 0 | 67.921 | 42.936 | 43.985 | 44.959 | 64.453 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.204 | 15.428 | 1000 | 0 | 65.771 | 43.902 | 44.983 | 47.98 | 62.789 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.033 | 15.975 | 1000 | 0 | 66.52 | 43.878 | 45.028 | 47.313 | 62.789 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.004 | 4649 | 0 | 928.725 | 2.949 | 4.962 | 14.501 | 62.789 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.698 | 1000 | 0 | 61.956 | 44.002 | 45.876 | 47.237 | 66.836 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.371 | 17.023 | 1000 | 0 | 65.059 | 46.089 | 48.195 | 50.007 | 66.836 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.185 | 15.995 | 1000 | 0 | 65.856 | 46.655 | 48.442 | 49.903 | 66.836 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.024 | 2899 | 0 | 578.927 | 5.033 | 6.806 | 16.862 | 70.844 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.217 | 17.709 | 1000 | 0 | 58.081 | 47.91 | 50.903 | 52.976 | 79.984 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.982 | 28.744 | 363 | 0 | 12.525 | 241.455 | 243.006 | 19595.963 | 80.297 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.402 | 19.164 | 243 | 0 | 12.524 | 241.094 | 242.963 | 12791.938 | 80.316 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.618 | 14.371 | 183 | 0 | 12.519 | 241.623 | 242.538 | 10012.907 | 80.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.579 | 123 | 0 | 12.513 | 241.717 | 242.778 | 5230.768 | 80.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.818 | 9.584 | 103 | 0 | 10.491 | 241.156 | 242.619 | 5126.59 | 80.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.792 | 63 | 0 | 12.52 | 241.319 | 242.339 | 242.566 | 80.344 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 4.789 | 42 | 0 | 8.35 | 241.19 | 242.029 | 242.124 | 80.344 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.017 | 122 | 0 | 24.337 | 41.985 | 42.965 | 43.009 | 80.387 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 2.045 | 110 | 0 | 21.805 | 46.975 | 47.108 | 47.945 | 80.391 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.006 | 99 | 0 | 19.742 | 50.98 | 51.325 | 51.951 | 80.391 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.085 | 2.063 | 56 | 0 | 11.013 | 91.432 | 92.027 | 92.051 | 80.398 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.051 | 2.079 | 36 | 0 | 7.127 | 141.003 | 141.992 | 142.02 | 80.41 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.376 | 21 | 0 | 4.169 | 241.953 | 242.034 | 242.771 | 80.426 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.089 | 1000 | 0 | 62.042 | 40.993 | 41.979 | 42.271 | 29.629 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.089 | 1000 | 0 | 62.057 | 40.986 | 41.949 | 42.324 | 29.648 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.089 | 1000 | 0 | 62.035 | 40.99 | 41.964 | 42.324 | 29.859 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.085 | 1000 | 0 | 62.098 | 40.991 | 41.947 | 42.246 | 29.934 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.086 | 1000 | 0 | 61.991 | 40.994 | 41.974 | 42.323 | 30.039 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.086 | 1000 | 0 | 61.991 | 40.988 | 41.957 | 42.166 | 30.066 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.086 | 1000 | 0 | 62.012 | 40.993 | 41.98 | 42.499 | 30.07 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.085 | 1000 | 0 | 62.006 | 40.997 | 41.975 | 42.468 | 30.676 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.698 | 14.01 | 1000 | 0 | 63.703 | 40.982 | 41.967 | 42.923 | 30.848 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.445 | 13.01 | 1000 | 0 | 64.745 | 40.981 | 41.966 | 42.173 | 30.887 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12191 | 0 | 2437.419 | 1.122 | 1.968 | 9.056 | 31.238 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.194 | 13.576 | 1000 | 0 | 65.816 | 40.987 | 41.985 | 42.938 | 41.711 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.752 | 13.77 | 1000 | 0 | 67.785 | 41.942 | 42.185 | 43.061 | 41.711 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.305 | 12.428 | 1000 | 0 | 69.905 | 41.937 | 42.223 | 43.124 | 41.711 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.024 | 9461 | 0 | 1891.508 | 1.493 | 2.401 | 17.245 | 41.711 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.263 | 12.129 | 1000 | 0 | 70.11 | 41.972 | 42.823 | 43.722 | 49.617 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.207 | 15.709 | 1000 | 0 | 65.761 | 41.993 | 43.121 | 45.692 | 49.617 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.336 | 14.928 | 1000 | 0 | 65.206 | 41.998 | 43.093 | 44.015 | 49.617 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 6738 | 0 | 1346.714 | 2.049 | 3.379 | 13.931 | 49.617 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.312 | 15.229 | 1000 | 0 | 65.307 | 42.947 | 43.934 | 45.25 | 63.43 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.651 | 15.813 | 1000 | 0 | 68.254 | 43.08 | 44.935 | 46.338 | 59.273 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.312 | 15.148 | 1000 | 0 | 65.31 | 43.399 | 44.846 | 46.218 | 59.273 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 4510 | 0 | 901.327 | 2.987 | 5.727 | 16.139 | 59.273 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.531 | 16.453 | 1000 | 0 | 64.386 | 44.42 | 46.217 | 48.173 | 69.461 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.214 | 16.615 | 1000 | 0 | 65.727 | 46.017 | 48.095 | 49.886 | 68.547 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.792 | 16.278 | 1000 | 0 | 63.325 | 46.802 | 48.128 | 49.959 | 68.547 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.089 | 2861 | 0 | 571.289 | 5.115 | 6.981 | 13.156 | 72.555 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.435 | 17.692 | 1000 | 0 | 57.355 | 47.993 | 51.011 | 53.762 | 81.422 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.018 | 28.769 | 363 | 0 | 12.509 | 241.905 | 243.028 | 19611.027 | 81.727 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.418 | 19.18 | 243 | 0 | 12.514 | 241.761 | 242.843 | 12806.965 | 79.785 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.629 | 14.378 | 183 | 0 | 12.51 | 241.82 | 242.994 | 10018.589 | 79.793 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.581 | 123 | 0 | 12.506 | 241.871 | 242.979 | 5230.342 | 79.809 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.579 | 103 | 0 | 10.475 | 241.895 | 242.555 | 5137.539 | 79.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.793 | 63 | 0 | 12.51 | 241.674 | 242.443 | 242.666 | 79.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.794 | 42 | 0 | 8.342 | 241.692 | 242.235 | 242.623 | 79.813 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.017 | 122 | 0 | 24.362 | 41.982 | 42.392 | 42.991 | 79.813 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.043 | 110 | 0 | 21.84 | 46.973 | 47.162 | 47.977 | 79.832 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.017 | 98 | 0 | 19.53 | 51.904 | 52.05 | 52.181 | 79.891 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.066 | 55 | 0 | 10.983 | 91.928 | 92.908 | 93.026 | 79.891 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.058 | 2.086 | 36 | 0 | 7.118 | 141.904 | 142.063 | 142.142 | 79.891 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.376 | 21 | 0 | 4.172 | 241.88 | 242.014 | 242.047 | 79.891 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16209 | 0 | 3241.065 | 1.479 | 1.985 | 2.392 | 66.234 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15690 | 0 | 3137.302 | 1.522 | 2.076 | 2.529 | 66.41 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16224 | 0 | 3244.095 | 1.476 | 1.986 | 2.426 | 66.457 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15769 | 0 | 3153.245 | 1.515 | 2.082 | 2.532 | 66.703 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15915 | 0 | 3182.312 | 1.502 | 2.053 | 2.545 | 68.27 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13887 | 0 | 2776.242 | 1.732 | 2.308 | 2.791 | 68.617 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15548 | 0 | 3108.946 | 1.532 | 2.149 | 2.622 | 68.703 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15434 | 0 | 3086.152 | 1.546 | 2.181 | 2.655 | 69.379 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12610 | 0 | 2521.301 | 1.929 | 2.479 | 2.963 | 77.078 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6468 | 0 | 1292.909 | 3.815 | 4.723 | 5.2 | 73.43 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12552 | 0 | 2509.735 | 1.933 | 2.486 | 2.928 | 77.426 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 12606 | 0 | 2520.221 | 1.528 | 2.269 | 40.98 | 70.0 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9451 | 0 | 1889.32 | 2.413 | 3.965 | 6.287 | 109.957 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3500 | 0 | 699.167 | 7.108 | 8.548 | 9.291 | 81.594 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9564 | 0 | 1911.934 | 2.405 | 3.66 | 6.392 | 75.113 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9216 | 0 | 1842.564 | 2.484 | 3.911 | 6.86 | 74.988 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 6623 | 0 | 1323.284 | 3.392 | 5.77 | 14.048 | 117.176 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.474 | 2026 | 0 | 404.357 | 12.344 | 14.909 | 15.832 | 89.758 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7013 | 0 | 1401.906 | 3.236 | 5.073 | 14.409 | 81.984 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.007 | 6557 | 0 | 1310.534 | 3.347 | 5.905 | 14.517 | 81.988 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 4239 | 0 | 846.936 | 5.446 | 8.414 | 18.368 | 137.094 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.022 | 4.116 | 1088 | 0 | 216.644 | 23.036 | 27.662 | 29.299 | 105.598 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.021 | 4480 | 0 | 895.27 | 5.072 | 8.06 | 18.39 | 108.902 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.007 | 4572 | 0 | 913.792 | 4.955 | 7.222 | 18.271 | 108.902 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2419 | 0 | 482.948 | 10.286 | 11.696 | 12.306 | 122.043 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.217 | 8.616 | 1000 | 0 | 108.497 | 46.052 | 54.263 | 56.459 | 113.281 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2702 | 0 | 539.39 | 9.156 | 10.426 | 11.133 | 114.961 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2817 | 0 | 562.644 | 8.711 | 10.226 | 11.031 | 114.965 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.984 | 50.944 | 360 | 0 | 7.061 | 2542.509 | 2618.026 | 2649.572 | 134.891 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.973 | 33.981 | 240 | 0 | 7.064 | 1694.476 | 1749.558 | 1768.893 | 140.184 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.508 | 25.481 | 180 | 0 | 7.057 | 1269.532 | 1323.598 | 1341.075 | 140.25 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.987 | 16.994 | 120 | 0 | 7.064 | 847.556 | 893.245 | 911.488 | 140.316 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.176 | 14.155 | 100 | 0 | 7.054 | 787.067 | 860.447 | 874.538 | 114.102 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.491 | 8.5 | 60 | 0 | 7.066 | 423.526 | 438.907 | 446.034 | 114.102 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.665 | 5.658 | 40 | 0 | 7.062 | 282.758 | 291.216 | 292.807 | 114.105 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.002 | 3606 | 0 | 721.157 | 1.353 | 1.476 | 1.806 | 127.219 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.001 | 944 | 0 | 188.658 | 5.27 | 5.342 | 5.515 | 127.344 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.007 | 483 | 0 | 96.466 | 10.316 | 10.501 | 10.846 | 127.406 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.027 | 99 | 0 | 19.774 | 50.53 | 50.674 | 50.717 | 127.406 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.015 | 50 | 0 | 9.944 | 100.539 | 100.652 | 100.713 | 127.406 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.005 | 25 | 0 | 4.986 | 200.476 | 200.565 | 200.655 | 127.41 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16196 | 0 | 3238.406 | 1.479 | 1.978 | 2.446 | 65.543 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15725 | 0 | 3144.294 | 1.524 | 2.032 | 2.514 | 71.051 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16135 | 0 | 3226.383 | 1.487 | 2.015 | 2.423 | 70.977 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15842 | 0 | 3167.7 | 1.512 | 2.064 | 2.535 | 71.512 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15713 | 0 | 3141.948 | 1.527 | 2.073 | 2.465 | 73.52 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13595 | 0 | 2718.116 | 1.772 | 2.378 | 2.827 | 73.625 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15482 | 0 | 3095.192 | 1.538 | 2.144 | 2.628 | 73.723 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15314 | 0 | 3062.122 | 1.55 | 2.224 | 2.732 | 75.148 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12339 | 0 | 2467.091 | 1.969 | 2.521 | 2.919 | 94.699 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6507 | 0 | 1300.783 | 3.784 | 4.686 | 5.24 | 84.285 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12599 | 0 | 2519.2 | 1.933 | 2.446 | 2.792 | 91.977 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.026 | 12431 | 0 | 2476.702 | 1.698 | 2.34 | 3.658 | 77.891 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9576 | 0 | 1914.604 | 2.394 | 3.617 | 5.165 | 114.594 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3505 | 0 | 700.3 | 7.072 | 8.671 | 9.549 | 111.215 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9889 | 0 | 1977.02 | 2.355 | 3.291 | 4.289 | 103.984 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9457 | 0 | 1890.599 | 2.414 | 3.693 | 5.711 | 104.172 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6792 | 0 | 1357.818 | 3.384 | 4.987 | 15.758 | 149.586 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.383 | 1977 | 0 | 394.641 | 12.628 | 15.182 | 16.199 | 111.855 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7257 | 0 | 1450.676 | 3.141 | 4.633 | 15.38 | 109.367 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6836 | 0 | 1366.304 | 3.237 | 5.119 | 15.618 | 110.863 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4231 | 0 | 845.467 | 5.571 | 7.49 | 19.218 | 134.742 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.575 | 1081 | 0 | 215.355 | 23.136 | 28.0 | 29.763 | 117.324 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 4354 | 0 | 870.194 | 5.289 | 7.614 | 20.334 | 121.566 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4470 | 0 | 893.151 | 5.114 | 7.784 | 20.188 | 121.566 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.007 | 2526 | 0 | 504.223 | 9.844 | 11.417 | 12.228 | 128.898 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.229 | 8.436 | 1000 | 0 | 108.357 | 45.765 | 55.226 | 60.602 | 120.527 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2698 | 0 | 538.877 | 9.167 | 10.754 | 12.094 | 123.641 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.006 | 2508 | 0 | 500.739 | 9.389 | 14.379 | 16.83 | 123.648 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.017 | 50.998 | 360 | 0 | 7.057 | 2542.806 | 2613.094 | 2661.567 | 143.789 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.008 | 33.98 | 240 | 0 | 7.057 | 1691.856 | 1762.515 | 1784.161 | 145.859 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.512 | 25.569 | 180 | 0 | 7.056 | 1268.889 | 1323.601 | 1347.366 | 153.867 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.989 | 17.006 | 120 | 0 | 7.063 | 839.203 | 896.445 | 908.324 | 153.934 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.17 | 14.172 | 100 | 0 | 7.057 | 712.555 | 848.025 | 863.156 | 154.754 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.5 | 8.508 | 60 | 0 | 7.059 | 422.32 | 450.59 | 456.233 | 159.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.671 | 5.674 | 40 | 0 | 7.054 | 283.604 | 293.707 | 295.911 | 159.324 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3601 | 0 | 720.032 | 1.358 | 1.478 | 1.708 | 159.324 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.001 | 926 | 0 | 185.107 | 5.307 | 5.68 | 5.843 | 159.324 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.008 | 481 | 0 | 96.19 | 10.333 | 10.595 | 10.782 | 159.324 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.044 | 2.027 | 100 | 0 | 19.826 | 50.368 | 50.55 | 50.622 | 159.324 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.011 | 50 | 0 | 9.93 | 100.636 | 100.797 | 100.834 | 159.328 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.637 | 200.698 | 201.201 | 159.328 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15718 | 0 | 3142.801 | 1.522 | 2.071 | 2.513 | 66.297 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15547 | 0 | 3108.565 | 1.542 | 2.069 | 2.506 | 66.5 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15424 | 0 | 3084.123 | 1.546 | 2.137 | 2.62 | 66.246 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15647 | 0 | 3128.561 | 1.528 | 2.1 | 2.539 | 66.352 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15468 | 0 | 3092.989 | 1.536 | 2.134 | 2.72 | 68.113 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13839 | 0 | 2767.108 | 1.739 | 2.33 | 2.808 | 67.453 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15744 | 0 | 3148.116 | 1.518 | 2.072 | 2.54 | 67.969 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15283 | 0 | 3055.845 | 1.561 | 2.194 | 2.746 | 68.25 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12734 | 0 | 2546.005 | 1.914 | 2.474 | 2.953 | 76.391 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6432 | 0 | 1285.718 | 3.845 | 4.691 | 5.181 | 72.07 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12549 | 0 | 2509.148 | 1.93 | 2.503 | 3.018 | 75.633 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.029 | 2.002 | 12536 | 0 | 2492.523 | 1.698 | 2.322 | 3.635 | 70.395 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9335 | 0 | 1866.298 | 2.431 | 3.8 | 6.132 | 106.16 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3482 | 0 | 695.765 | 7.181 | 8.723 | 9.527 | 78.813 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9341 | 0 | 1867.538 | 2.434 | 3.876 | 6.209 | 72.969 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9218 | 0 | 1842.789 | 2.458 | 3.922 | 5.829 | 73.219 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.015 | 6622 | 0 | 1323.681 | 3.397 | 5.435 | 17.446 | 130.383 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.413 | 1920 | 0 | 383.201 | 13.055 | 15.751 | 17.296 | 84.219 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6820 | 0 | 1362.85 | 3.229 | 5.55 | 17.53 | 75.723 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.005 | 6516 | 0 | 1302.64 | 3.307 | 5.858 | 18.439 | 75.723 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4063 | 0 | 811.714 | 5.661 | 8.479 | 21.858 | 115.008 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.589 | 1040 | 0 | 207.229 | 24.243 | 28.764 | 30.665 | 84.82 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.007 | 4219 | 0 | 842.011 | 5.365 | 8.358 | 21.715 | 85.406 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4428 | 0 | 884.879 | 5.049 | 8.411 | 20.916 | 85.406 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2426 | 0 | 484.333 | 10.155 | 12.232 | 13.599 | 114.477 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.126 | 8.263 | 1000 | 0 | 109.576 | 45.977 | 52.875 | 57.286 | 89.395 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2648 | 0 | 528.771 | 9.22 | 11.216 | 12.595 | 84.992 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.01 | 2744 | 0 | 547.925 | 8.931 | 10.915 | 12.168 | 85.309 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.015 | 50.986 | 360 | 0 | 7.057 | 2547.039 | 2613.741 | 2632.374 | 106.891 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.023 | 33.984 | 240 | 0 | 7.054 | 1692.508 | 1758.369 | 1777.06 | 110.848 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.508 | 25.498 | 180 | 0 | 7.057 | 1267.109 | 1334.612 | 1347.291 | 110.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.984 | 16.998 | 120 | 0 | 7.065 | 846.798 | 893.838 | 903.472 | 111.047 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.176 | 14.223 | 100 | 0 | 7.054 | 762.174 | 841.499 | 848.358 | 111.363 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.503 | 8.492 | 60 | 0 | 7.056 | 423.962 | 444.357 | 449.889 | 111.363 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.667 | 5.669 | 40 | 0 | 7.058 | 283.315 | 294.715 | 302.663 | 111.367 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3627 | 0 | 725.293 | 1.346 | 1.468 | 1.73 | 117.285 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.003 | 939 | 0 | 187.596 | 5.288 | 5.438 | 5.632 | 117.348 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.009 | 482 | 0 | 96.254 | 10.334 | 10.541 | 10.878 | 117.348 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.023 | 99 | 0 | 19.752 | 50.583 | 50.739 | 50.901 | 117.348 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.015 | 50 | 0 | 9.931 | 100.603 | 101.055 | 101.424 | 117.348 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.02 | 2.009 | 25 | 0 | 4.98 | 200.699 | 201.063 | 201.149 | 117.348 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.14 | 16.165 | 1000 | 0 | 61.958 | 40.997 | 41.983 | 42.394 | 29.574 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.119 | 1000 | 0 | 62.017 | 40.991 | 41.975 | 42.258 | 29.77 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.101 | 1000 | 0 | 62.028 | 40.985 | 41.978 | 42.208 | 29.941 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.132 | 1000 | 0 | 61.984 | 41.001 | 41.982 | 42.415 | 30.234 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.093 | 1000 | 0 | 61.971 | 40.992 | 41.996 | 42.416 | 30.27 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.166 | 16.12 | 1000 | 0 | 61.857 | 40.991 | 41.948 | 42.39 | 30.273 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.118 | 1000 | 0 | 62.012 | 40.993 | 41.961 | 42.388 | 30.293 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.158 | 16.148 | 1000 | 0 | 61.89 | 41.009 | 42.098 | 42.85 | 30.902 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.784 | 11.924 | 1000 | 0 | 78.225 | 40.983 | 41.984 | 42.844 | 30.941 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.189 | 11.933 | 1000 | 0 | 75.821 | 40.983 | 42.036 | 42.909 | 30.965 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 11580 | 0 | 2315.153 | 1.228 | 2.07 | 9.555 | 31.34 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.159 | 12.105 | 1000 | 0 | 70.625 | 41.004 | 42.132 | 43.006 | 36.031 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.367 | 12.884 | 1000 | 0 | 74.809 | 41.773 | 42.375 | 43.026 | 36.031 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.062 | 12.176 | 1000 | 0 | 76.558 | 41.916 | 42.882 | 43.959 | 36.031 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9020 | 0 | 1802.972 | 1.495 | 2.525 | 41.672 | 36.031 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.751 | 12.595 | 1000 | 0 | 72.723 | 41.95 | 42.938 | 43.496 | 44.602 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.859 | 14.098 | 1000 | 0 | 72.157 | 41.978 | 43.062 | 44.465 | 41.133 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.151 | 13.868 | 1000 | 0 | 70.665 | 42.013 | 43.256 | 44.443 | 41.133 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 6137 | 0 | 1226.494 | 2.122 | 3.741 | 29.161 | 42.008 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.363 | 13.778 | 1000 | 0 | 69.624 | 42.936 | 44.101 | 48.702 | 47.758 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.787 | 14.734 | 1000 | 0 | 67.627 | 43.35 | 44.87 | 46.228 | 47.758 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.524 | 15.127 | 1000 | 0 | 73.943 | 43.246 | 45.112 | 47.31 | 47.758 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 4285 | 0 | 856.05 | 3.113 | 5.461 | 22.628 | 48.664 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.101 | 15.482 | 1000 | 0 | 70.916 | 44.041 | 46.086 | 50.013 | 54.582 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.06 | 16.16 | 1000 | 0 | 66.403 | 45.915 | 47.534 | 49.191 | 54.582 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.2 | 15.179 | 1000 | 0 | 65.788 | 45.982 | 48.236 | 49.998 | 54.582 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.07 | 2747 | 0 | 548.414 | 5.353 | 7.291 | 13.965 | 60.594 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.693 | 17.527 | 1000 | 0 | 59.906 | 47.252 | 50.121 | 52.485 | 67.867 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.014 | 28.778 | 363 | 0 | 12.511 | 241.842 | 243.712 | 19622.555 | 68.289 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.413 | 19.178 | 243 | 0 | 12.518 | 241.742 | 242.618 | 12798.356 | 68.297 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.622 | 14.381 | 183 | 0 | 12.516 | 241.729 | 242.688 | 10021.682 | 68.309 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.588 | 123 | 0 | 12.512 | 241.659 | 242.678 | 5232.078 | 68.313 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.586 | 103 | 0 | 10.482 | 241.643 | 242.602 | 5134.327 | 68.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.795 | 63 | 0 | 12.498 | 241.844 | 242.818 | 243.124 | 68.324 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.791 | 42 | 0 | 8.341 | 241.723 | 242.294 | 242.517 | 68.328 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.019 | 122 | 0 | 24.387 | 41.956 | 42.072 | 42.348 | 68.34 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.019 | 113 | 0 | 22.528 | 45.039 | 46.018 | 46.059 | 68.367 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.0 | 99 | 0 | 19.631 | 50.987 | 52.014 | 52.041 | 68.387 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.073 | 55 | 0 | 10.978 | 91.944 | 92.03 | 92.045 | 68.387 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.083 | 36 | 0 | 7.103 | 141.958 | 142.093 | 142.483 | 68.387 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.376 | 21 | 0 | 4.18 | 240.96 | 241.962 | 241.973 | 68.387 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.15 | 1000 | 0 | 62.028 | 40.992 | 41.951 | 42.388 | 29.793 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.122 | 1000 | 0 | 62.037 | 40.989 | 41.966 | 42.382 | 30.117 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.108 | 1000 | 0 | 62.047 | 40.991 | 41.957 | 42.257 | 30.172 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.097 | 1000 | 0 | 62.001 | 40.991 | 41.984 | 42.337 | 30.477 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.105 | 1000 | 0 | 61.977 | 40.994 | 41.978 | 42.377 | 30.512 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.121 | 1000 | 0 | 62.009 | 40.991 | 41.96 | 42.426 | 30.516 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.093 | 1000 | 0 | 62.015 | 40.992 | 41.982 | 42.42 | 30.523 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.097 | 1000 | 0 | 61.96 | 41.001 | 41.973 | 42.44 | 31.145 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.21 | 14.561 | 1000 | 0 | 70.373 | 40.98 | 41.999 | 42.889 | 31.184 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.81 | 12.901 | 1000 | 0 | 67.523 | 40.986 | 41.977 | 42.835 | 31.195 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11988 | 0 | 2396.834 | 1.188 | 1.961 | 4.577 | 31.488 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.082 | 14.273 | 1000 | 0 | 66.306 | 40.991 | 41.991 | 42.9 | 36.16 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.828 | 11.308 | 1000 | 0 | 101.745 | 41.329 | 42.581 | 43.413 | 36.16 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.155 | 11.81 | 1000 | 0 | 89.65 | 41.897 | 42.73 | 43.491 | 36.16 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.201 | 2.002 | 8762 | 0 | 1684.816 | 1.493 | 2.645 | 41.659 | 36.387 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.54 | 11.971 | 1000 | 0 | 73.853 | 41.953 | 42.908 | 43.345 | 44.414 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.512 | 13.892 | 1000 | 0 | 74.008 | 41.976 | 43.015 | 46.734 | 41.457 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.116 | 14.905 | 1000 | 0 | 70.844 | 41.985 | 43.028 | 44.496 | 41.457 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.004 | 6505 | 0 | 1299.257 | 2.044 | 3.638 | 20.158 | 42.328 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.267 | 15.456 | 1000 | 0 | 65.499 | 42.937 | 44.017 | 48.061 | 46.211 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.525 | 14.776 | 1000 | 0 | 68.847 | 43.02 | 44.886 | 47.819 | 43.852 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.623 | 14.376 | 1000 | 0 | 68.386 | 43.368 | 44.96 | 48.002 | 43.852 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4378 | 0 | 874.864 | 3.048 | 5.615 | 21.635 | 48.434 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.411 | 15.39 | 1000 | 0 | 64.889 | 44.598 | 46.332 | 60.36 | 56.578 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.299 | 15.234 | 1000 | 0 | 81.304 | 44.979 | 47.841 | 50.591 | 52.82 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.969 | 15.797 | 1000 | 0 | 77.108 | 45.401 | 47.96 | 50.48 | 52.82 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.019 | 2680 | 0 | 535.036 | 5.444 | 7.541 | 13.093 | 58.832 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.57 | 17.351 | 1000 | 0 | 60.352 | 47.806 | 50.943 | 53.345 | 65.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.001 | 28.784 | 363 | 0 | 12.517 | 241.719 | 243.148 | 19613.133 | 65.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.415 | 19.173 | 243 | 0 | 12.516 | 241.664 | 242.933 | 12805.021 | 65.402 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.379 | 183 | 0 | 12.512 | 241.804 | 242.896 | 10025.18 | 65.406 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.6 | 123 | 0 | 12.513 | 241.692 | 242.89 | 5231.565 | 65.41 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.594 | 103 | 0 | 10.476 | 241.782 | 242.696 | 5137.588 | 65.418 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.791 | 63 | 0 | 12.501 | 241.71 | 242.445 | 242.931 | 65.418 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.793 | 42 | 0 | 8.345 | 241.595 | 242.339 | 242.666 | 65.418 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.359 | 41.97 | 42.879 | 42.991 | 65.426 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.007 | 114 | 0 | 22.706 | 44.968 | 45.843 | 45.98 | 65.441 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.008 | 98 | 0 | 19.442 | 51.943 | 52.089 | 52.939 | 65.445 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.082 | 2.065 | 56 | 0 | 11.019 | 91.068 | 91.994 | 92.053 | 65.457 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.074 | 2.088 | 36 | 0 | 7.095 | 141.944 | 142.165 | 142.732 | 65.457 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.372 | 21 | 0 | 4.173 | 241.859 | 242.003 | 242.068 | 65.457 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.127 | 1000 | 0 | 61.993 | 40.994 | 41.971 | 42.288 | 29.742 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.16 | 16.123 | 1000 | 0 | 61.88 | 41.005 | 42.031 | 42.642 | 30.086 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.126 | 1000 | 0 | 62.026 | 40.988 | 41.964 | 42.3 | 30.211 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.106 | 1000 | 0 | 61.962 | 41.0 | 41.978 | 42.36 | 30.324 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.112 | 1000 | 0 | 61.973 | 40.99 | 41.976 | 42.39 | 30.406 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.112 | 1000 | 0 | 62.005 | 40.998 | 41.99 | 42.419 | 30.406 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.089 | 1000 | 0 | 62.009 | 40.989 | 41.955 | 42.359 | 30.422 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.108 | 1000 | 0 | 62.025 | 40.988 | 41.98 | 42.322 | 30.754 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.945 | 13.269 | 1000 | 0 | 66.914 | 40.982 | 41.982 | 42.962 | 30.793 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.449 | 13.199 | 1000 | 0 | 69.207 | 40.982 | 41.984 | 42.919 | 30.91 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12144 | 0 | 2428.028 | 1.178 | 1.932 | 5.346 | 31.457 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.069 | 14.175 | 1000 | 0 | 66.36 | 40.991 | 41.994 | 42.967 | 35.875 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.377 | 12.817 | 1000 | 0 | 80.794 | 41.81 | 42.413 | 43.29 | 35.875 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.718 | 12.25 | 1000 | 0 | 85.341 | 41.748 | 42.769 | 43.738 | 35.875 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8467 | 0 | 1692.712 | 1.564 | 2.689 | 42.072 | 36.543 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.522 | 13.296 | 1000 | 0 | 73.955 | 41.959 | 42.972 | 43.964 | 41.965 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.483 | 15.504 | 1000 | 0 | 69.047 | 41.98 | 43.023 | 44.018 | 41.301 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.466 | 13.596 | 1000 | 0 | 64.656 | 41.98 | 42.996 | 44.213 | 41.301 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6387 | 0 | 1276.552 | 2.082 | 3.456 | 55.625 | 41.652 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.042 | 15.268 | 1000 | 0 | 66.48 | 42.9 | 43.925 | 44.824 | 45.738 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.266 | 14.798 | 1000 | 0 | 75.38 | 43.009 | 44.664 | 48.131 | 43.316 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.422 | 13.827 | 1000 | 0 | 69.341 | 43.025 | 44.859 | 46.418 | 43.316 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 4281 | 0 | 855.473 | 3.059 | 6.032 | 23.272 | 47.527 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.526 | 16.108 | 1000 | 0 | 64.409 | 43.991 | 45.957 | 54.681 | 56.934 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.891 | 15.508 | 1000 | 0 | 67.154 | 45.877 | 47.63 | 50.209 | 52.945 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.612 | 15.557 | 1000 | 0 | 64.054 | 45.947 | 48.013 | 53.906 | 52.945 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.097 | 2794 | 0 | 557.933 | 5.259 | 7.062 | 12.95 | 58.957 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.819 | 17.58 | 1000 | 0 | 59.458 | 47.782 | 50.161 | 52.431 | 65.348 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.006 | 28.776 | 363 | 0 | 12.515 | 241.807 | 242.94 | 19613.332 | 65.742 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.409 | 19.174 | 243 | 0 | 12.52 | 241.625 | 242.773 | 12795.783 | 65.754 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.38 | 183 | 0 | 12.516 | 241.676 | 242.849 | 10024.798 | 65.754 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.839 | 9.59 | 123 | 0 | 12.501 | 241.757 | 243.117 | 5236.707 | 65.754 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.584 | 103 | 0 | 10.478 | 241.633 | 242.79 | 5137.597 | 65.758 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.795 | 63 | 0 | 12.504 | 241.677 | 242.584 | 243.111 | 65.762 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.797 | 42 | 0 | 8.334 | 241.876 | 242.724 | 243.151 | 65.762 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.02 | 122 | 0 | 24.333 | 41.967 | 42.949 | 42.989 | 65.813 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.012 | 114 | 0 | 22.62 | 44.979 | 46.017 | 46.274 | 65.836 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.003 | 98 | 0 | 19.589 | 51.034 | 52.097 | 52.913 | 65.836 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.087 | 2.065 | 56 | 0 | 11.009 | 91.24 | 92.036 | 93.03 | 65.848 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.07 | 2.09 | 36 | 0 | 7.101 | 141.965 | 142.025 | 142.634 | 65.848 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.375 | 21 | 0 | 4.172 | 241.876 | 242.047 | 242.386 | 65.848 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16292 | 0 | 3257.521 | 1.477 | 1.923 | 2.291 | 69.266 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15765 | 0 | 3152.074 | 1.535 | 1.974 | 2.34 | 74.219 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16218 | 0 | 3243.013 | 1.485 | 1.944 | 2.402 | 74.398 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15796 | 0 | 3158.517 | 1.524 | 2.016 | 2.504 | 74.695 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15828 | 0 | 3164.826 | 1.511 | 2.051 | 2.738 | 77.07 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13739 | 0 | 2747.007 | 1.763 | 2.266 | 2.668 | 77.34 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15897 | 0 | 3178.385 | 1.51 | 2.008 | 2.454 | 77.719 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15656 | 0 | 3130.578 | 1.538 | 2.048 | 2.531 | 79.313 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12748 | 0 | 2548.787 | 1.912 | 2.364 | 2.699 | 100.25 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6509 | 0 | 1301.023 | 3.807 | 4.589 | 5.029 | 89.258 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12937 | 0 | 2586.699 | 1.883 | 2.337 | 2.643 | 101.129 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.031 | 2.038 | 12939 | 0 | 2571.68 | 1.364 | 2.081 | 41.271 | 82.492 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9447 | 0 | 1888.81 | 2.375 | 3.901 | 5.627 | 117.414 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3515 | 0 | 702.055 | 7.087 | 8.391 | 9.417 | 94.777 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9662 | 0 | 1931.674 | 2.338 | 3.725 | 5.161 | 84.383 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9389 | 0 | 1877.227 | 2.369 | 4.141 | 5.691 | 84.383 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.007 | 6645 | 0 | 1328.423 | 3.368 | 5.261 | 21.724 | 138.113 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.375 | 1995 | 0 | 398.215 | 12.533 | 14.907 | 16.249 | 110.84 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.008 | 6855 | 0 | 1370.347 | 3.17 | 5.608 | 22.496 | 101.031 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.002 | 6602 | 0 | 1318.942 | 3.328 | 5.434 | 21.828 | 101.152 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3978 | 0 | 794.815 | 5.686 | 8.133 | 27.715 | 133.551 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.522 | 1077 | 0 | 214.644 | 23.111 | 27.614 | 29.027 | 111.422 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4303 | 0 | 859.92 | 5.19 | 7.681 | 26.11 | 108.973 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.025 | 2.004 | 4228 | 0 | 841.423 | 5.304 | 7.499 | 27.709 | 108.973 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.059 | 2456 | 0 | 490.303 | 10.108 | 11.802 | 12.489 | 119.949 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.919 | 8.695 | 1000 | 0 | 112.116 | 44.311 | 51.468 | 54.38 | 118.465 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2745 | 0 | 548.169 | 8.976 | 10.691 | 12.052 | 114.891 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2705 | 0 | 540.148 | 9.137 | 10.483 | 11.441 | 114.891 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.117 | 51.132 | 360 | 0 | 7.043 | 2554.252 | 2619.705 | 2650.521 | 140.398 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.084 | 34.079 | 240 | 0 | 7.042 | 1702.391 | 1737.619 | 1748.112 | 140.398 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.554 | 25.554 | 180 | 0 | 7.044 | 1276.191 | 1334.754 | 1346.224 | 140.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.043 | 17.037 | 120 | 0 | 7.041 | 850.967 | 888.023 | 902.497 | 140.527 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.209 | 14.204 | 100 | 0 | 7.038 | 748.798 | 853.453 | 859.732 | 140.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.521 | 8.53 | 60 | 0 | 7.042 | 425.042 | 457.752 | 462.7 | 140.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.681 | 5.674 | 40 | 0 | 7.041 | 283.619 | 291.052 | 298.534 | 140.531 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 2117 | 0 | 423.264 | 2.313 | 2.632 | 2.91 | 140.559 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.005 | 578 | 0 | 115.41 | 8.696 | 9.476 | 10.041 | 128.832 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.007 | 383 | 0 | 76.565 | 13.106 | 13.591 | 13.85 | 128.832 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.02 | 100 | 0 | 19.808 | 50.387 | 50.627 | 50.912 | 128.832 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.013 | 50 | 0 | 9.949 | 100.423 | 100.605 | 100.742 | 128.832 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.53 | 200.67 | 200.721 | 128.832 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15951 | 0 | 3189.323 | 1.501 | 1.981 | 2.406 | 70.156 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15527 | 0 | 3104.848 | 1.551 | 2.016 | 2.446 | 70.512 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16087 | 0 | 3216.639 | 1.493 | 1.974 | 2.412 | 70.313 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15789 | 0 | 3157.028 | 1.529 | 2.017 | 2.385 | 70.602 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15720 | 0 | 3143.331 | 1.528 | 2.034 | 2.434 | 72.281 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13700 | 0 | 2739.401 | 1.76 | 2.3 | 2.761 | 72.488 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15825 | 0 | 3163.59 | 1.518 | 2.02 | 2.471 | 72.582 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15433 | 0 | 3085.841 | 1.553 | 2.11 | 2.609 | 73.449 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12541 | 0 | 2507.206 | 1.941 | 2.462 | 2.855 | 81.797 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6372 | 0 | 1273.332 | 3.879 | 4.734 | 5.289 | 77.75 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12639 | 0 | 2526.901 | 1.92 | 2.418 | 2.8 | 93.504 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.026 | 12545 | 0 | 2508.343 | 1.796 | 2.309 | 3.001 | 76.461 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8845 | 0 | 1768.412 | 2.491 | 4.263 | 7.41 | 108.758 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3449 | 0 | 689.002 | 7.184 | 8.757 | 9.588 | 88.246 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9083 | 0 | 1815.927 | 2.435 | 4.064 | 6.135 | 80.609 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 8823 | 0 | 1763.838 | 2.511 | 4.033 | 7.132 | 80.234 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6512 | 0 | 1301.786 | 3.328 | 5.909 | 23.509 | 119.176 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.387 | 1909 | 0 | 381.024 | 13.177 | 15.383 | 16.553 | 109.031 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6540 | 0 | 1307.43 | 3.304 | 5.757 | 23.774 | 107.297 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6472 | 0 | 1293.683 | 3.355 | 5.606 | 22.909 | 107.395 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4010 | 0 | 801.339 | 5.597 | 8.588 | 27.845 | 133.086 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 4.546 | 1077 | 0 | 214.673 | 22.934 | 27.719 | 29.033 | 111.211 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4188 | 0 | 836.873 | 5.278 | 8.488 | 27.636 | 113.871 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4249 | 0 | 848.969 | 5.107 | 8.348 | 27.378 | 113.809 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.007 | 2341 | 0 | 467.145 | 10.481 | 13.007 | 14.107 | 126.391 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.984 | 8.84 | 1000 | 0 | 111.311 | 44.732 | 51.733 | 54.199 | 117.527 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.026 | 2427 | 0 | 484.538 | 10.182 | 12.152 | 13.226 | 117.066 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.008 | 2544 | 0 | 507.768 | 9.728 | 11.454 | 12.467 | 117.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.133 | 51.142 | 360 | 0 | 7.04 | 2553.861 | 2618.952 | 2642.582 | 138.441 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.082 | 34.072 | 240 | 0 | 7.042 | 1702.921 | 1749.801 | 1766.651 | 142.195 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.564 | 25.57 | 180 | 0 | 7.041 | 1276.416 | 1322.952 | 1347.425 | 142.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.043 | 17.036 | 120 | 0 | 7.041 | 850.595 | 895.455 | 911.461 | 142.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.226 | 14.198 | 100 | 0 | 7.029 | 785.983 | 865.087 | 866.482 | 142.508 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.521 | 8.527 | 60 | 0 | 7.042 | 428.934 | 444.283 | 452.119 | 142.945 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.684 | 5.68 | 40 | 0 | 7.038 | 283.818 | 289.819 | 293.167 | 123.613 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 2029 | 0 | 405.703 | 2.442 | 2.775 | 3.109 | 130.98 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.001 | 575 | 0 | 114.818 | 8.782 | 9.455 | 10.039 | 127.516 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.001 | 391 | 0 | 78.125 | 12.868 | 13.574 | 13.767 | 127.516 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.019 | 99 | 0 | 19.782 | 50.54 | 50.666 | 51.03 | 127.516 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.011 | 50 | 0 | 9.937 | 100.556 | 100.818 | 100.976 | 127.516 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.007 | 25 | 0 | 4.982 | 200.581 | 200.945 | 201.182 | 127.516 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15934 | 0 | 3186.188 | 1.505 | 1.986 | 2.427 | 68.949 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15440 | 0 | 3086.894 | 1.553 | 2.073 | 2.556 | 70.121 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15943 | 0 | 3187.965 | 1.504 | 2.002 | 2.421 | 69.715 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15808 | 0 | 3160.566 | 1.525 | 2.011 | 2.404 | 69.707 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16012 | 0 | 3201.515 | 1.503 | 1.973 | 2.396 | 71.316 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13844 | 0 | 2768.077 | 1.749 | 2.245 | 2.656 | 71.496 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15946 | 0 | 3188.379 | 1.501 | 2.006 | 2.49 | 71.551 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15653 | 0 | 3129.893 | 1.537 | 2.047 | 2.485 | 72.551 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12763 | 0 | 2551.807 | 1.904 | 2.38 | 2.706 | 87.145 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6458 | 0 | 1290.739 | 3.822 | 4.663 | 5.183 | 79.266 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12832 | 0 | 2565.544 | 1.898 | 2.36 | 2.683 | 86.949 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.026 | 2.025 | 12619 | 0 | 2510.907 | 1.728 | 2.352 | 3.378 | 77.703 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.002 | 9094 | 0 | 1816.455 | 2.446 | 3.92 | 5.942 | 109.395 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3418 | 0 | 682.915 | 7.291 | 8.785 | 9.673 | 83.434 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9352 | 0 | 1869.663 | 2.389 | 3.689 | 6.224 | 79.137 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8998 | 0 | 1798.768 | 2.457 | 4.06 | 6.187 | 79.387 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6516 | 0 | 1302.596 | 3.318 | 5.704 | 24.158 | 129.176 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.43 | 1953 | 0 | 390.002 | 12.859 | 15.515 | 16.651 | 86.652 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6440 | 0 | 1287.365 | 3.335 | 5.699 | 24.473 | 83.809 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6421 | 0 | 1283.529 | 3.388 | 5.279 | 24.256 | 83.887 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4019 | 0 | 803.169 | 5.594 | 8.589 | 28.557 | 126.121 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.234 | 1054 | 0 | 210.022 | 23.803 | 28.149 | 30.171 | 87.707 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4252 | 0 | 849.796 | 5.249 | 7.766 | 27.752 | 87.199 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4331 | 0 | 865.372 | 5.154 | 7.6 | 27.813 | 87.199 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.108 | 2397 | 0 | 478.736 | 10.349 | 12.011 | 13.043 | 106.242 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.057 | 8.369 | 1000 | 0 | 110.407 | 45.075 | 52.425 | 56.785 | 90.637 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.007 | 2482 | 0 | 495.354 | 9.997 | 11.718 | 12.673 | 92.313 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2506 | 0 | 500.426 | 9.941 | 11.548 | 12.442 | 92.313 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.136 | 51.114 | 360 | 0 | 7.04 | 2557.71 | 2600.84 | 2617.332 | 114.008 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.093 | 34.086 | 240 | 0 | 7.039 | 1701.378 | 1761.42 | 1788.566 | 114.195 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.57 | 25.56 | 180 | 0 | 7.04 | 1277.928 | 1313.83 | 1323.447 | 120.711 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.042 | 17.041 | 120 | 0 | 7.042 | 848.844 | 882.787 | 886.187 | 120.711 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.254 | 14.197 | 100 | 0 | 7.016 | 760.109 | 859.085 | 878.95 | 120.836 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.521 | 8.525 | 60 | 0 | 7.041 | 424.87 | 455.191 | 461.626 | 120.895 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.679 | 5.678 | 40 | 0 | 7.043 | 284.096 | 286.656 | 288.737 | 120.898 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1993 | 0 | 398.443 | 2.468 | 2.816 | 3.143 | 123.68 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.004 | 560 | 0 | 111.898 | 8.934 | 9.822 | 10.374 | 128.133 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.003 | 381 | 0 | 76.082 | 13.201 | 13.643 | 13.843 | 128.133 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.043 | 2.028 | 100 | 0 | 19.831 | 50.335 | 50.554 | 51.614 | 128.195 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.025 | 2.013 | 50 | 0 | 9.949 | 100.426 | 100.655 | 100.814 | 128.195 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.504 | 200.606 | 200.692 | 128.195 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

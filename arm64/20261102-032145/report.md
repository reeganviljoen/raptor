# Puma vs Raptor Simulation

Run ID: `20261102-032145`

## Environment

- Ruby: `ruby 4.0.9 (2026-10-23 revision 3e93b23afc) +PRISM [aarch64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.12 | 1000 | 0 | 62.017 | 40.973 | 41.972 | 42.575 | 29.523 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.102 | 1000 | 0 | 62.03 | 40.973 | 41.979 | 42.277 | 29.559 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.118 | 1000 | 0 | 62.001 | 40.971 | 41.976 | 42.443 | 29.563 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.12 | 1000 | 0 | 62.046 | 40.969 | 41.96 | 42.135 | 29.813 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.122 | 1000 | 0 | 61.981 | 40.977 | 41.987 | 42.522 | 29.813 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.113 | 1000 | 0 | 62.001 | 40.974 | 41.978 | 42.276 | 29.828 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.115 | 1000 | 0 | 62.076 | 40.97 | 41.967 | 42.325 | 29.898 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.15 | 1000 | 0 | 62.046 | 40.97 | 41.96 | 42.317 | 30.352 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.352 | 13.633 | 1000 | 0 | 65.139 | 40.955 | 41.952 | 42.089 | 30.438 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.553 | 14.666 | 1000 | 0 | 68.716 | 40.959 | 41.969 | 42.973 | 30.488 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 11766 | 0 | 2351.975 | 1.139 | 2.273 | 7.988 | 30.785 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.968 | 14.504 | 1000 | 0 | 66.81 | 40.975 | 42.003 | 43.06 | 42.762 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.062 | 11.31 | 1000 | 0 | 90.4 | 41.612 | 42.712 | 44.127 | 42.762 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.88 | 11.989 | 1000 | 0 | 77.642 | 41.798 | 42.638 | 43.448 | 42.762 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8922 | 0 | 1783.535 | 1.438 | 2.911 | 42.635 | 42.762 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.489 | 14.031 | 1000 | 0 | 69.019 | 41.936 | 42.862 | 43.204 | 56.844 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.026 | 13.666 | 1000 | 0 | 76.768 | 41.934 | 42.97 | 44.113 | 49.551 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.785 | 14.732 | 1000 | 0 | 72.545 | 41.943 | 43.204 | 44.364 | 49.551 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 7050 | 0 | 1409.177 | 1.855 | 3.747 | 13.507 | 49.551 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.69 | 15.222 | 1000 | 0 | 68.073 | 41.977 | 43.401 | 44.887 | 66.918 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.384 | 15.479 | 1000 | 0 | 69.521 | 42.927 | 44.687 | 52.341 | 61.906 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.359 | 15.019 | 1000 | 0 | 69.642 | 42.94 | 44.528 | 47.846 | 61.906 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4818 | 0 | 962.763 | 2.755 | 5.509 | 18.599 | 61.906 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.929 | 16.28 | 1000 | 0 | 62.777 | 43.882 | 45.722 | 47.942 | 78.391 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.839 | 16.292 | 1000 | 0 | 63.135 | 43.972 | 47.024 | 49.853 | 78.391 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.916 | 16.334 | 1000 | 0 | 62.83 | 44.06 | 47.967 | 50.445 | 78.391 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 3017 | 0 | 602.761 | 4.602 | 8.943 | 15.623 | 81.609 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.102 | 17.76 | 1000 | 0 | 58.472 | 45.944 | 49.176 | 51.812 | 88.762 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.017 | 28.764 | 363 | 0 | 12.51 | 241.836 | 243.078 | 19615.533 | 89.051 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.427 | 19.169 | 243 | 0 | 12.509 | 241.8 | 243.13 | 12812.428 | 89.07 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.367 | 183 | 0 | 12.513 | 241.757 | 242.968 | 10018.839 | 89.086 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.586 | 123 | 0 | 12.507 | 241.847 | 242.81 | 5233.308 | 89.086 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.585 | 103 | 0 | 10.474 | 241.93 | 242.584 | 5135.703 | 89.086 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.79 | 63 | 0 | 12.505 | 241.916 | 242.61 | 242.889 | 89.094 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.793 | 42 | 0 | 8.335 | 241.892 | 242.313 | 242.501 | 89.102 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.019 | 122 | 0 | 24.352 | 41.968 | 42.857 | 42.972 | 89.18 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.001 | 109 | 0 | 21.779 | 46.963 | 47.137 | 47.951 | 89.246 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 2.004 | 99 | 0 | 19.675 | 50.972 | 51.981 | 52.038 | 89.352 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.072 | 55 | 0 | 10.959 | 91.955 | 92.132 | 93.021 | 89.367 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.09 | 36 | 0 | 7.097 | 141.953 | 142.015 | 142.171 | 89.379 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.379 | 21 | 0 | 4.169 | 241.921 | 242.002 | 242.111 | 89.387 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.115 | 1000 | 0 | 62.071 | 40.974 | 41.961 | 42.243 | 27.785 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.126 | 1000 | 0 | 62.025 | 40.973 | 41.951 | 42.458 | 27.832 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.117 | 1000 | 0 | 62.04 | 40.974 | 41.969 | 42.307 | 27.84 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.126 | 1000 | 0 | 62.024 | 40.974 | 41.977 | 42.536 | 27.902 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.122 | 1000 | 0 | 62.017 | 40.973 | 41.967 | 42.441 | 27.906 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.116 | 1000 | 0 | 62.016 | 40.973 | 41.97 | 42.236 | 27.918 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.101 | 1000 | 0 | 62.035 | 40.972 | 41.962 | 42.221 | 27.938 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.122 | 1000 | 0 | 62.025 | 40.971 | 41.963 | 42.541 | 28.66 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.795 | 15.025 | 1000 | 0 | 67.592 | 40.955 | 41.96 | 42.884 | 28.66 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.1 | 15.118 | 1000 | 0 | 66.227 | 40.954 | 41.958 | 42.956 | 28.676 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 11098 | 0 | 2218.607 | 1.183 | 2.479 | 7.549 | 29.051 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.115 | 14.802 | 1000 | 0 | 66.161 | 40.98 | 42.014 | 42.955 | 35.227 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.348 | 11.218 | 1000 | 0 | 74.92 | 41.864 | 42.644 | 43.509 | 35.227 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.675 | 11.681 | 1000 | 0 | 78.894 | 41.844 | 42.717 | 43.714 | 35.227 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.003 | 8110 | 0 | 1619.113 | 1.527 | 3.246 | 42.601 | 35.227 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.077 | 12.988 | 1000 | 0 | 71.038 | 41.93 | 42.924 | 43.441 | 41.813 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.131 | 13.501 | 1000 | 0 | 76.153 | 41.951 | 43.304 | 44.944 | 41.813 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.696 | 12.867 | 1000 | 0 | 78.764 | 41.929 | 43.108 | 44.339 | 41.813 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 6385 | 0 | 1275.909 | 2.001 | 4.379 | 19.459 | 41.813 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.349 | 15.274 | 1000 | 0 | 69.692 | 42.06 | 43.843 | 44.502 | 45.938 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.301 | 14.639 | 1000 | 0 | 69.926 | 42.937 | 44.306 | 48.149 | 42.512 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.613 | 14.979 | 1000 | 0 | 68.43 | 42.928 | 44.186 | 46.284 | 42.512 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 4548 | 0 | 909.112 | 2.82 | 6.204 | 20.634 | 45.727 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.801 | 16.224 | 1000 | 0 | 63.288 | 43.896 | 45.633 | 48.545 | 52.594 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.261 | 15.54 | 1000 | 0 | 65.526 | 44.012 | 47.996 | 50.644 | 52.594 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.331 | 15.389 | 1000 | 0 | 61.234 | 44.006 | 47.825 | 49.964 | 52.594 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.062 | 2960 | 0 | 591.032 | 4.73 | 8.854 | 14.896 | 58.605 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.885 | 17.312 | 1000 | 0 | 59.223 | 45.975 | 50.098 | 52.829 | 85.953 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.009 | 28.771 | 363 | 0 | 12.513 | 241.773 | 243.671 | 19609.2 | 86.164 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.422 | 19.167 | 243 | 0 | 12.512 | 241.778 | 242.897 | 12808.166 | 86.195 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.383 | 183 | 0 | 12.513 | 241.726 | 242.827 | 10025.532 | 86.215 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.586 | 123 | 0 | 12.514 | 241.681 | 242.843 | 5230.42 | 86.219 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.588 | 103 | 0 | 10.479 | 241.739 | 242.866 | 5133.277 | 86.223 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.792 | 63 | 0 | 12.503 | 241.804 | 242.572 | 242.911 | 86.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.795 | 42 | 0 | 8.337 | 241.882 | 242.244 | 242.46 | 86.238 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.018 | 122 | 0 | 24.346 | 41.962 | 42.913 | 43.013 | 86.27 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.007 | 109 | 0 | 21.758 | 46.968 | 47.738 | 47.988 | 86.293 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 2.026 | 98 | 0 | 19.495 | 51.934 | 52.143 | 52.982 | 86.359 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.071 | 55 | 0 | 10.952 | 91.967 | 92.027 | 92.949 | 86.363 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.069 | 2.089 | 36 | 0 | 7.102 | 141.95 | 142.18 | 142.754 | 86.363 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.381 | 21 | 0 | 4.167 | 241.935 | 242.161 | 242.762 | 86.363 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.118 | 1000 | 0 | 62.059 | 40.969 | 41.968 | 42.329 | 27.727 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.118 | 1000 | 0 | 62.005 | 40.973 | 41.97 | 42.323 | 27.813 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.111 | 1000 | 0 | 62.085 | 40.97 | 41.974 | 42.372 | 27.832 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.113 | 1000 | 0 | 62.066 | 40.97 | 41.971 | 42.432 | 27.891 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.107 | 1000 | 0 | 62.08 | 40.97 | 41.972 | 42.26 | 27.914 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.112 | 1000 | 0 | 62.052 | 40.973 | 41.968 | 42.293 | 27.934 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.115 | 1000 | 0 | 62.075 | 40.968 | 41.95 | 42.185 | 27.949 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.137 | 1000 | 0 | 62.055 | 40.97 | 41.978 | 42.445 | 28.645 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.786 | 14.778 | 1000 | 0 | 67.634 | 40.961 | 41.969 | 42.752 | 28.664 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.066 | 14.393 | 1000 | 0 | 66.375 | 40.96 | 41.951 | 42.248 | 28.664 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11646 | 0 | 2328.446 | 1.124 | 2.329 | 7.82 | 29.086 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.293 | 14.328 | 1000 | 0 | 65.391 | 40.963 | 41.991 | 42.986 | 35.098 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.784 | 12.043 | 1000 | 0 | 84.858 | 41.555 | 42.66 | 43.308 | 35.098 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.562 | 12.616 | 1000 | 0 | 79.608 | 41.676 | 42.728 | 43.245 | 35.098 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.007 | 8403 | 0 | 1679.872 | 1.485 | 3.188 | 41.445 | 35.445 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.588 | 13.329 | 1000 | 0 | 68.551 | 41.938 | 42.939 | 43.543 | 40.344 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.744 | 13.186 | 1000 | 0 | 78.471 | 41.93 | 42.989 | 45.157 | 39.242 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.421 | 13.256 | 1000 | 0 | 74.511 | 41.94 | 43.029 | 44.058 | 39.242 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 6848 | 0 | 1368.425 | 1.877 | 3.951 | 15.967 | 39.898 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.812 | 14.603 | 1000 | 0 | 67.514 | 41.985 | 43.774 | 45.36 | 46.352 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.334 | 14.803 | 1000 | 0 | 69.766 | 42.902 | 44.348 | 45.655 | 46.352 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.047 | 15.217 | 1000 | 0 | 71.189 | 42.94 | 44.596 | 46.866 | 44.152 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.004 | 4630 | 0 | 924.764 | 2.803 | 5.889 | 24.637 | 46.508 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.011 | 16.353 | 1000 | 0 | 62.458 | 43.796 | 45.514 | 47.342 | 52.145 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.39 | 15.771 | 1000 | 0 | 64.975 | 43.949 | 46.922 | 51.254 | 52.145 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.988 | 16.297 | 1000 | 0 | 62.546 | 44.008 | 47.15 | 50.014 | 52.145 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3056 | 0 | 610.34 | 4.576 | 8.715 | 19.044 | 58.156 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.724 | 17.315 | 1000 | 0 | 59.793 | 45.79 | 49.825 | 52.133 | 83.883 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.014 | 28.752 | 363 | 0 | 12.511 | 241.896 | 242.998 | 19603.399 | 84.133 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.175 | 243 | 0 | 12.512 | 241.841 | 243.081 | 12808.229 | 84.172 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.375 | 183 | 0 | 12.51 | 241.727 | 242.997 | 10021.178 | 84.18 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.844 | 9.585 | 123 | 0 | 12.494 | 241.962 | 243.04 | 5235.295 | 84.184 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.59 | 103 | 0 | 10.476 | 241.774 | 242.777 | 5130.355 | 84.191 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.791 | 63 | 0 | 12.499 | 241.916 | 242.972 | 243.004 | 84.199 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.789 | 42 | 0 | 8.347 | 241.268 | 242.267 | 242.594 | 84.203 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.017 | 122 | 0 | 24.333 | 41.967 | 42.927 | 42.986 | 84.211 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.004 | 109 | 0 | 21.758 | 46.968 | 47.947 | 47.976 | 84.215 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.013 | 98 | 0 | 19.578 | 51.052 | 52.155 | 52.95 | 84.289 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.07 | 55 | 0 | 10.968 | 91.945 | 92.244 | 92.637 | 84.293 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.09 | 36 | 0 | 7.096 | 141.954 | 142.295 | 143.058 | 84.293 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.379 | 21 | 0 | 4.168 | 241.944 | 242.027 | 242.162 | 84.293 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16019 | 0 | 3203.029 | 1.462 | 2.136 | 2.711 | 64.285 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15970 | 0 | 3193.258 | 1.476 | 2.161 | 2.616 | 64.617 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16376 | 0 | 3274.184 | 1.437 | 2.117 | 2.604 | 64.66 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15522 | 0 | 3103.097 | 1.529 | 2.417 | 2.896 | 64.953 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15924 | 0 | 3183.836 | 1.47 | 2.221 | 2.758 | 66.527 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14096 | 0 | 2818.463 | 1.673 | 2.518 | 3.117 | 66.793 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16078 | 0 | 3214.414 | 1.452 | 2.195 | 2.7 | 66.926 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14986 | 0 | 2996.329 | 1.558 | 2.54 | 3.188 | 68.5 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12326 | 0 | 2464.388 | 1.918 | 2.845 | 3.526 | 78.617 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6662 | 0 | 1331.619 | 3.648 | 4.651 | 6.836 | 72.305 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11813 | 0 | 2361.695 | 1.983 | 3.103 | 3.822 | 77.18 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.035 | 2.016 | 12220 | 0 | 2426.894 | 1.84 | 2.972 | 3.781 | 67.168 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9136 | 0 | 1826.552 | 2.432 | 4.138 | 6.899 | 100.375 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3854 | 0 | 770.05 | 6.391 | 9.128 | 11.963 | 77.563 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9066 | 0 | 1812.38 | 2.436 | 4.418 | 6.196 | 72.414 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 8906 | 0 | 1780.466 | 2.438 | 4.555 | 6.922 | 73.289 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7279 | 0 | 1455.081 | 3.077 | 5.15 | 15.394 | 125.492 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.192 | 2252 | 0 | 449.469 | 11.1 | 12.189 | 19.67 | 82.938 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6929 | 0 | 1385.049 | 3.098 | 5.868 | 15.601 | 77.809 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6801 | 0 | 1359.598 | 3.172 | 5.963 | 15.903 | 77.813 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 4541 | 0 | 907.485 | 5.081 | 8.704 | 19.448 | 122.875 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.92 | 1213 | 0 | 241.754 | 20.525 | 22.424 | 36.857 | 84.598 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4653 | 0 | 929.747 | 4.706 | 8.874 | 19.394 | 81.805 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4736 | 0 | 946.331 | 4.628 | 8.626 | 19.001 | 81.809 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.006 | 2532 | 0 | 505.105 | 9.754 | 15.777 | 17.856 | 117.016 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.575 | 7.821 | 1000 | 0 | 132.005 | 37.62 | 38.863 | 67.65 | 85.758 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2922 | 0 | 583.57 | 8.143 | 13.515 | 16.528 | 85.754 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3083 | 0 | 615.7 | 7.815 | 10.112 | 15.006 | 85.754 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.796 | 50.893 | 360 | 0 | 7.087 | 2539.244 | 2560.697 | 2574.01 | 102.129 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.892 | 33.926 | 240 | 0 | 7.081 | 1694.47 | 1707.709 | 1718.055 | 109.148 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.405 | 25.431 | 180 | 0 | 7.085 | 1270.238 | 1282.444 | 1284.584 | 110.844 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.946 | 16.971 | 120 | 0 | 7.082 | 846.916 | 860.577 | 861.536 | 110.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.121 | 14.121 | 100 | 0 | 7.082 | 789.15 | 847.702 | 848.785 | 110.977 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.472 | 8.482 | 60 | 0 | 7.082 | 423.413 | 431.608 | 433.843 | 110.977 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.643 | 5.647 | 40 | 0 | 7.088 | 281.777 | 284.372 | 292.277 | 110.977 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3415 | 0 | 682.908 | 1.413 | 1.6 | 1.926 | 123.293 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.003 | 927 | 0 | 185.301 | 5.349 | 5.483 | 5.67 | 125.809 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.009 | 479 | 0 | 95.743 | 10.398 | 10.55 | 10.726 | 126.949 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.026 | 99 | 0 | 19.782 | 50.505 | 50.576 | 50.612 | 126.949 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.016 | 50 | 0 | 9.934 | 100.606 | 100.734 | 100.811 | 126.949 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.631 | 200.729 | 201.122 | 128.277 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16585 | 0 | 3315.756 | 1.422 | 2.046 | 2.562 | 63.973 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15878 | 0 | 3174.6 | 1.485 | 2.149 | 2.631 | 64.074 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16329 | 0 | 3265.17 | 1.436 | 2.123 | 2.657 | 64.266 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15216 | 0 | 3042.067 | 1.557 | 2.477 | 2.97 | 64.574 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16016 | 0 | 3202.439 | 1.465 | 2.211 | 2.655 | 66.238 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14286 | 0 | 2856.361 | 1.66 | 2.426 | 3.016 | 66.441 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15999 | 0 | 3198.847 | 1.463 | 2.18 | 2.667 | 66.539 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14288 | 0 | 2856.592 | 1.628 | 2.7 | 3.379 | 68.691 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11605 | 0 | 2320.154 | 2.023 | 3.104 | 3.771 | 77.832 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 6548 | 0 | 1308.678 | 3.673 | 5.803 | 7.108 | 72.406 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12086 | 0 | 2416.405 | 1.926 | 3.154 | 3.793 | 77.441 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11780 | 0 | 2355.144 | 1.97 | 3.098 | 3.831 | 67.328 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8725 | 0 | 1744.297 | 2.513 | 4.393 | 7.371 | 102.641 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3840 | 0 | 767.156 | 6.356 | 10.527 | 12.226 | 79.816 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8387 | 0 | 1676.674 | 2.544 | 4.844 | 7.72 | 71.676 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8978 | 0 | 1794.903 | 2.411 | 4.516 | 6.82 | 71.613 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7160 | 0 | 1431.173 | 3.095 | 5.126 | 16.5 | 136.41 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.119 | 2271 | 0 | 453.389 | 10.924 | 12.599 | 20.082 | 83.496 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6962 | 0 | 1391.599 | 3.074 | 5.89 | 16.973 | 75.387 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6768 | 0 | 1352.947 | 3.156 | 6.004 | 16.604 | 75.387 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4673 | 0 | 933.914 | 4.904 | 8.249 | 20.289 | 150.492 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 4.055 | 1219 | 0 | 242.796 | 20.444 | 22.198 | 36.433 | 105.566 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4666 | 0 | 932.397 | 4.693 | 8.751 | 20.452 | 103.094 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4526 | 0 | 904.187 | 4.77 | 9.042 | 20.986 | 103.094 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.007 | 2630 | 0 | 524.795 | 9.366 | 15.181 | 17.515 | 145.719 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.775 | 7.534 | 1000 | 0 | 128.613 | 38.703 | 40.146 | 41.425 | 119.863 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2968 | 0 | 592.617 | 8.189 | 10.436 | 15.412 | 118.762 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3078 | 0 | 614.772 | 7.76 | 11.206 | 15.312 | 118.762 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.832 | 50.935 | 360 | 0 | 7.082 | 2540.98 | 2561.419 | 2584.367 | 139.273 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.888 | 33.959 | 240 | 0 | 7.082 | 1693.864 | 1711.049 | 1715.823 | 143.594 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.426 | 25.46 | 180 | 0 | 7.079 | 1270.166 | 1285.474 | 1292.533 | 145.723 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.957 | 16.983 | 120 | 0 | 7.077 | 847.887 | 861.439 | 869.812 | 145.855 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.134 | 14.218 | 100 | 0 | 7.075 | 815.617 | 849.551 | 850.772 | 145.855 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.478 | 8.482 | 60 | 0 | 7.077 | 423.263 | 430.155 | 435.344 | 145.859 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.663 | 40 | 0 | 7.076 | 282.639 | 284.531 | 288.488 | 114.352 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.002 | 3466 | 0 | 693.171 | 1.394 | 1.55 | 1.877 | 123.844 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.004 | 920 | 0 | 183.859 | 5.39 | 5.578 | 5.894 | 124.344 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.001 | 478 | 0 | 95.443 | 10.417 | 10.587 | 10.848 | 126.301 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.027 | 99 | 0 | 19.737 | 50.566 | 50.719 | 51.604 | 129.031 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.015 | 50 | 0 | 9.935 | 100.579 | 100.74 | 100.969 | 129.031 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.009 | 25 | 0 | 4.981 | 200.632 | 200.782 | 201.354 | 129.031 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16105 | 0 | 3220.388 | 1.461 | 2.142 | 2.634 | 63.98 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16221 | 0 | 3243.287 | 1.456 | 2.109 | 2.628 | 64.445 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16158 | 0 | 3230.995 | 1.457 | 2.116 | 2.545 | 64.367 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15497 | 0 | 3098.537 | 1.53 | 2.406 | 2.909 | 64.508 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16125 | 0 | 3223.85 | 1.452 | 2.177 | 2.648 | 66.195 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13957 | 0 | 2790.451 | 1.689 | 2.502 | 3.116 | 66.238 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15711 | 0 | 3141.418 | 1.485 | 2.273 | 2.762 | 66.375 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 15017 | 0 | 3001.84 | 1.553 | 2.547 | 3.127 | 68.152 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12135 | 0 | 2426.22 | 1.928 | 3.058 | 3.688 | 78.125 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6467 | 0 | 1292.777 | 3.695 | 6.121 | 7.262 | 71.988 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12327 | 0 | 2464.767 | 1.878 | 3.158 | 3.744 | 77.086 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12374 | 0 | 2474.169 | 1.877 | 3.011 | 3.644 | 68.305 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8206 | 0 | 1640.528 | 2.599 | 4.818 | 8.203 | 100.387 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3896 | 0 | 778.268 | 6.199 | 10.654 | 11.852 | 81.551 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8972 | 0 | 1793.296 | 2.368 | 4.434 | 7.22 | 72.098 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8723 | 0 | 1743.951 | 2.433 | 4.555 | 7.92 | 71.973 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7149 | 0 | 1428.988 | 3.053 | 5.367 | 18.168 | 120.754 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.148 | 2323 | 0 | 463.689 | 10.607 | 13.827 | 19.779 | 80.348 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6736 | 0 | 1346.287 | 3.096 | 6.045 | 18.678 | 75.258 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6676 | 0 | 1334.5 | 3.165 | 6.136 | 18.286 | 75.258 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4599 | 0 | 919.057 | 4.971 | 8.387 | 22.003 | 138.594 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.973 | 1202 | 0 | 239.539 | 20.687 | 22.588 | 37.059 | 80.957 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4341 | 0 | 867.14 | 4.893 | 9.702 | 22.676 | 78.75 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4728 | 0 | 944.791 | 4.51 | 8.642 | 21.602 | 78.754 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.043 | 2452 | 0 | 489.608 | 10.128 | 15.865 | 17.945 | 103.102 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.719 | 7.79 | 1000 | 0 | 129.545 | 38.146 | 41.023 | 69.929 | 83.625 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2779 | 0 | 554.952 | 8.609 | 14.735 | 17.053 | 83.059 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3013 | 0 | 601.615 | 7.894 | 11.923 | 16.151 | 83.059 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.819 | 50.79 | 360 | 0 | 7.084 | 2540.208 | 2568.918 | 2580.75 | 104.141 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.88 | 33.866 | 240 | 0 | 7.084 | 1693.042 | 1717.986 | 1732.063 | 105.039 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.437 | 25.389 | 180 | 0 | 7.076 | 1271.275 | 1300.158 | 1307.797 | 103.418 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.934 | 16.917 | 120 | 0 | 7.086 | 846.335 | 859.738 | 872.631 | 103.484 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.12 | 14.102 | 100 | 0 | 7.082 | 797.457 | 846.97 | 855.36 | 106.426 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.469 | 8.469 | 60 | 0 | 7.085 | 423.275 | 425.231 | 429.009 | 109.051 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.643 | 5.644 | 40 | 0 | 7.088 | 282.004 | 283.375 | 288.826 | 109.051 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3456 | 0 | 691.145 | 1.4 | 1.557 | 1.877 | 116.184 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.005 | 930 | 0 | 185.924 | 5.324 | 5.502 | 5.788 | 118.832 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.001 | 480 | 0 | 95.817 | 10.39 | 10.509 | 10.718 | 118.832 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.024 | 99 | 0 | 19.762 | 50.53 | 50.728 | 50.85 | 118.836 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.013 | 50 | 0 | 9.934 | 100.585 | 100.747 | 100.849 | 118.836 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.591 | 200.695 | 200.753 | 118.836 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.15 | 1000 | 0 | 62.033 | 40.971 | 41.977 | 42.189 | 29.102 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.118 | 1000 | 0 | 62.046 | 40.97 | 41.974 | 42.143 | 29.527 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.109 | 1000 | 0 | 62.036 | 40.97 | 41.967 | 42.195 | 29.738 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.115 | 1000 | 0 | 62.045 | 40.974 | 41.957 | 42.294 | 29.855 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.105 | 1000 | 0 | 62.059 | 40.975 | 41.966 | 42.328 | 29.895 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.112 | 1000 | 0 | 62.052 | 40.972 | 41.96 | 42.257 | 29.906 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.101 | 1000 | 0 | 62.047 | 40.972 | 41.985 | 42.388 | 29.914 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.101 | 1000 | 0 | 62.059 | 40.971 | 41.965 | 42.231 | 30.57 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.969 | 14.73 | 1000 | 0 | 66.805 | 40.954 | 41.963 | 42.957 | 30.617 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.522 | 15.518 | 1000 | 0 | 64.426 | 40.955 | 41.96 | 42.904 | 30.645 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11394 | 0 | 2278.009 | 1.159 | 2.355 | 8.139 | 30.98 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.837 | 14.529 | 1000 | 0 | 67.398 | 40.967 | 42.01 | 42.958 | 36.359 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.117 | 10.378 | 1000 | 0 | 89.955 | 41.046 | 42.701 | 43.619 | 36.359 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.373 | 10.857 | 1001 | 0 | 96.501 | 41.009 | 42.734 | 50.165 | 36.359 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8140 | 0 | 1627.332 | 1.541 | 3.253 | 42.372 | 36.758 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.709 | 12.31 | 1000 | 0 | 72.944 | 41.926 | 42.951 | 43.949 | 41.863 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.331 | 13.919 | 1000 | 0 | 81.094 | 41.907 | 42.98 | 44.316 | 41.863 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.679 | 13.077 | 1000 | 0 | 85.627 | 41.92 | 43.087 | 45.681 | 41.863 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 6527 | 0 | 1304.304 | 1.937 | 4.137 | 23.54 | 41.863 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.609 | 15.085 | 1000 | 0 | 68.449 | 41.974 | 43.343 | 44.229 | 47.801 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.151 | 14.652 | 1000 | 0 | 70.665 | 41.979 | 43.975 | 46.012 | 46.648 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.787 | 14.934 | 1000 | 0 | 72.534 | 42.598 | 44.72 | 47.864 | 46.648 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 4346 | 0 | 868.519 | 2.917 | 6.241 | 27.212 | 49.063 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.583 | 15.974 | 1000 | 0 | 64.173 | 43.208 | 45.993 | 52.304 | 56.586 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.64 | 15.089 | 1000 | 0 | 68.306 | 43.935 | 47.627 | 52.248 | 54.41 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.8 | 15.502 | 1000 | 0 | 67.565 | 44.023 | 47.104 | 49.466 | 54.41 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3100 | 0 | 619.193 | 4.476 | 8.48 | 30.598 | 60.422 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.61 | 17.139 | 1000 | 0 | 60.204 | 45.967 | 50.36 | 59.447 | 85.703 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.009 | 28.76 | 363 | 0 | 12.514 | 241.802 | 243.098 | 19606.792 | 86.227 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.412 | 19.165 | 243 | 0 | 12.518 | 241.662 | 242.853 | 12802.01 | 86.238 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.618 | 14.38 | 183 | 0 | 12.519 | 241.626 | 242.875 | 10022.348 | 86.258 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.582 | 123 | 0 | 12.515 | 241.656 | 242.79 | 5234.979 | 86.258 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.586 | 103 | 0 | 10.485 | 241.514 | 242.671 | 5130.257 | 86.289 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.792 | 63 | 0 | 12.507 | 241.658 | 242.387 | 243.123 | 86.297 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.79 | 42 | 0 | 8.346 | 241.381 | 242.243 | 242.583 | 86.297 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.019 | 122 | 0 | 24.381 | 41.962 | 42.036 | 42.132 | 86.32 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.031 | 114 | 0 | 22.714 | 44.967 | 45.78 | 45.945 | 86.363 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.04 | 97 | 0 | 19.378 | 51.963 | 52.11 | 52.955 | 86.379 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.077 | 2.061 | 56 | 0 | 11.03 | 90.994 | 91.97 | 92.442 | 86.402 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.078 | 36 | 0 | 7.134 | 140.971 | 141.962 | 141.979 | 86.41 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.383 | 21 | 0 | 4.17 | 241.942 | 241.999 | 242.223 | 86.418 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.156 | 1000 | 0 | 62.066 | 40.974 | 41.951 | 42.29 | 29.137 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.121 | 1000 | 0 | 62.059 | 40.971 | 41.976 | 42.289 | 29.535 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.104 | 1000 | 0 | 62.078 | 40.971 | 41.96 | 42.184 | 29.594 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.117 | 1000 | 0 | 62.078 | 40.973 | 41.954 | 42.243 | 29.785 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.113 | 1000 | 0 | 62.062 | 40.971 | 41.974 | 42.317 | 29.832 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.112 | 1000 | 0 | 62.06 | 40.971 | 41.97 | 42.337 | 29.832 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.099 | 1000 | 0 | 62.055 | 40.972 | 41.945 | 42.117 | 29.875 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.121 | 1000 | 0 | 62.059 | 40.971 | 41.955 | 42.168 | 30.5 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.327 | 14.931 | 1000 | 0 | 65.244 | 40.957 | 41.963 | 42.466 | 30.5 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.697 | 15.197 | 1000 | 0 | 68.041 | 40.957 | 41.968 | 42.92 | 30.52 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11580 | 0 | 2314.882 | 1.153 | 2.282 | 7.831 | 30.844 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.113 | 14.822 | 1000 | 0 | 66.168 | 40.967 | 41.992 | 42.951 | 35.621 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.449 | 11.482 | 1000 | 0 | 105.829 | 40.992 | 42.68 | 44.086 | 35.621 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.762 | 11.064 | 1000 | 0 | 85.019 | 41.024 | 42.714 | 43.648 | 35.621 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 8543 | 0 | 1707.19 | 1.466 | 3.115 | 38.344 | 35.727 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.959 | 13.472 | 1000 | 0 | 77.168 | 41.923 | 42.419 | 43.05 | 41.363 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.295 | 12.921 | 1000 | 0 | 75.218 | 41.921 | 42.955 | 44.254 | 41.121 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.305 | 12.016 | 1000 | 0 | 81.271 | 41.925 | 42.958 | 44.646 | 41.121 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.003 | 6668 | 0 | 1332.333 | 1.866 | 4.147 | 22.739 | 41.832 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.327 | 14.204 | 1000 | 0 | 69.797 | 41.974 | 43.706 | 47.777 | 46.719 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.767 | 15.038 | 1000 | 0 | 72.639 | 41.969 | 44.064 | 46.586 | 46.715 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.274 | 15.07 | 1000 | 0 | 70.058 | 42.053 | 44.039 | 46.884 | 46.715 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.007 | 4540 | 0 | 907.319 | 2.803 | 5.886 | 30.169 | 47.621 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.794 | 15.601 | 1000 | 0 | 63.313 | 43.019 | 46.104 | 59.125 | 53.039 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.919 | 15.441 | 1000 | 0 | 67.027 | 43.934 | 47.027 | 58.331 | 53.039 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.8 | 15.422 | 1000 | 0 | 67.568 | 44.031 | 48.373 | 51.834 | 53.039 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.008 | 3028 | 0 | 604.596 | 4.643 | 8.545 | 22.06 | 59.051 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.633 | 17.39 | 1000 | 0 | 60.122 | 45.936 | 50.255 | 63.094 | 69.25 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.032 | 28.775 | 363 | 0 | 12.504 | 241.915 | 243.137 | 19626.084 | 69.625 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.424 | 19.184 | 243 | 0 | 12.511 | 241.772 | 242.763 | 12804.766 | 69.645 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.627 | 14.381 | 183 | 0 | 12.511 | 241.84 | 242.532 | 10029.107 | 69.668 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.584 | 123 | 0 | 12.511 | 241.819 | 242.506 | 5236.319 | 69.672 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.59 | 103 | 0 | 10.477 | 241.787 | 242.651 | 5138.364 | 69.676 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.794 | 63 | 0 | 12.51 | 241.738 | 242.46 | 242.88 | 69.676 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.792 | 42 | 0 | 8.337 | 241.866 | 242.34 | 242.475 | 69.676 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.019 | 122 | 0 | 24.366 | 41.963 | 42.14 | 42.954 | 69.684 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.031 | 114 | 0 | 22.718 | 44.963 | 45.941 | 45.965 | 69.754 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.039 | 97 | 0 | 19.376 | 51.962 | 52.101 | 52.967 | 69.793 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.077 | 2.062 | 56 | 0 | 11.03 | 90.99 | 92.0 | 92.592 | 69.82 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.045 | 2.081 | 36 | 0 | 7.136 | 140.973 | 141.983 | 142.033 | 69.82 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.377 | 21 | 0 | 4.164 | 241.961 | 242.218 | 242.787 | 69.82 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.17 | 1000 | 0 | 62.07 | 40.973 | 41.946 | 42.179 | 29.086 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.115 | 1000 | 0 | 62.028 | 40.973 | 41.995 | 42.489 | 29.395 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.116 | 1000 | 0 | 62.053 | 40.973 | 41.972 | 42.361 | 29.523 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.113 | 1000 | 0 | 62.067 | 40.972 | 41.957 | 42.196 | 29.828 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.107 | 1000 | 0 | 62.062 | 40.971 | 41.969 | 42.35 | 29.879 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.117 | 1000 | 0 | 62.112 | 40.967 | 41.947 | 42.253 | 29.895 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.107 | 1000 | 0 | 62.074 | 40.971 | 41.943 | 42.307 | 29.898 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.124 | 1000 | 0 | 62.055 | 40.97 | 41.957 | 42.161 | 30.473 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.563 | 14.919 | 1000 | 0 | 64.257 | 40.956 | 41.961 | 42.637 | 30.504 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.42 | 14.997 | 1000 | 0 | 64.851 | 40.955 | 41.96 | 42.571 | 30.559 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11658 | 0 | 2330.51 | 1.145 | 2.29 | 8.117 | 30.969 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.841 | 14.866 | 1000 | 0 | 67.379 | 40.973 | 42.005 | 43.073 | 34.094 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.626 | 11.981 | 1000 | 0 | 86.014 | 41.025 | 42.326 | 43.227 | 34.094 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.55 | 11.427 | 1000 | 0 | 86.582 | 41.031 | 42.809 | 44.523 | 34.094 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.012 | 8517 | 0 | 1700.544 | 1.432 | 3.106 | 42.272 | 34.426 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.933 | 13.819 | 1000 | 0 | 83.798 | 41.918 | 43.084 | 45.495 | 39.859 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.54 | 13.451 | 1000 | 0 | 73.855 | 41.923 | 42.968 | 45.172 | 39.867 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.735 | 12.773 | 1000 | 0 | 78.522 | 41.93 | 42.992 | 44.406 | 39.867 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6733 | 0 | 1345.829 | 1.863 | 4.036 | 24.155 | 40.191 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.138 | 14.767 | 1000 | 0 | 70.73 | 41.955 | 43.197 | 44.617 | 46.836 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.164 | 14.601 | 1000 | 0 | 70.602 | 42.016 | 44.412 | 60.762 | 46.578 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.513 | 14.907 | 1000 | 0 | 68.906 | 42.887 | 44.507 | 51.217 | 46.578 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4472 | 0 | 893.605 | 2.797 | 6.034 | 26.302 | 47.594 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.717 | 15.931 | 1000 | 0 | 63.625 | 43.703 | 46.652 | 48.599 | 53.738 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.241 | 15.598 | 1000 | 0 | 65.611 | 43.94 | 46.922 | 49.139 | 50.738 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.445 | 16.1 | 1000 | 0 | 64.747 | 43.962 | 47.069 | 50.297 | 50.738 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.007 | 3109 | 0 | 620.838 | 4.547 | 8.274 | 25.476 | 56.75 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.218 | 17.295 | 1000 | 0 | 58.08 | 45.979 | 51.92 | 56.951 | 64.336 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.013 | 28.782 | 363 | 0 | 12.512 | 241.783 | 242.992 | 19617.123 | 64.797 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.423 | 19.174 | 243 | 0 | 12.511 | 241.824 | 242.857 | 12804.834 | 64.801 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.381 | 183 | 0 | 12.51 | 241.755 | 242.893 | 10029.047 | 64.801 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.586 | 123 | 0 | 12.511 | 241.749 | 242.407 | 5233.653 | 64.801 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.589 | 103 | 0 | 10.485 | 241.548 | 242.655 | 5134.869 | 64.805 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.791 | 63 | 0 | 12.515 | 241.531 | 242.352 | 242.456 | 64.805 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.79 | 42 | 0 | 8.345 | 241.662 | 242.196 | 242.248 | 64.805 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.02 | 122 | 0 | 24.358 | 41.962 | 42.099 | 42.971 | 64.852 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.033 | 114 | 0 | 22.724 | 44.959 | 45.871 | 46.008 | 64.867 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.04 | 97 | 0 | 19.375 | 51.963 | 52.022 | 52.942 | 64.934 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.059 | 56 | 0 | 11.041 | 90.983 | 91.943 | 91.96 | 64.941 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.081 | 36 | 0 | 7.133 | 140.989 | 141.951 | 142.085 | 64.941 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.38 | 21 | 0 | 4.164 | 241.964 | 242.005 | 242.77 | 64.945 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16609 | 0 | 3321.189 | 1.411 | 2.177 | 2.636 | 68.199 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16385 | 0 | 3276.172 | 1.433 | 2.231 | 2.731 | 68.461 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15973 | 0 | 3193.987 | 1.45 | 2.292 | 2.871 | 68.617 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16562 | 0 | 3311.285 | 1.421 | 2.133 | 2.628 | 68.945 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16566 | 0 | 3312.491 | 1.411 | 2.225 | 2.665 | 70.625 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14381 | 0 | 2875.529 | 1.626 | 2.6 | 3.165 | 70.801 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16520 | 0 | 3303.067 | 1.415 | 2.253 | 2.69 | 70.867 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16430 | 0 | 3285.132 | 1.423 | 2.217 | 2.7 | 72.813 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12109 | 0 | 2421.064 | 1.93 | 3.152 | 3.824 | 82.121 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6810 | 0 | 1361.236 | 3.535 | 5.57 | 6.843 | 76.668 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12245 | 0 | 2448.29 | 1.909 | 3.132 | 3.752 | 82.488 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.041 | 12089 | 0 | 2417.198 | 1.92 | 3.229 | 3.818 | 74.656 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8555 | 0 | 1709.855 | 2.479 | 4.613 | 8.004 | 109.105 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3905 | 0 | 780.247 | 6.283 | 9.547 | 11.894 | 83.059 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8474 | 0 | 1693.949 | 2.493 | 4.692 | 7.771 | 78.441 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8599 | 0 | 1719.137 | 2.485 | 4.6 | 7.611 | 78.691 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6716 | 0 | 1342.332 | 3.082 | 5.983 | 23.2 | 123.004 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.207 | 2316 | 0 | 462.222 | 10.782 | 12.109 | 19.658 | 85.301 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6674 | 0 | 1333.957 | 3.107 | 6.018 | 23.033 | 81.195 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6595 | 0 | 1318.27 | 3.174 | 6.052 | 23.593 | 81.277 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4580 | 0 | 915.231 | 4.708 | 8.856 | 26.324 | 125.031 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.05 | 1201 | 0 | 239.359 | 20.794 | 22.813 | 35.944 | 89.648 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.003 | 4550 | 0 | 908.808 | 4.709 | 8.901 | 26.88 | 89.559 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 4556 | 0 | 909.774 | 4.683 | 8.705 | 26.937 | 89.621 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2943 | 0 | 587.693 | 8.089 | 13.041 | 16.187 | 97.828 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.67 | 7.59 | 1000 | 0 | 130.382 | 38.024 | 40.443 | 69.08 | 91.656 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2769 | 0 | 552.873 | 8.794 | 11.075 | 16.507 | 92.555 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 2990 | 0 | 597.292 | 8.061 | 10.678 | 15.455 | 92.93 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.883 | 50.895 | 360 | 0 | 7.075 | 2543.685 | 2547.418 | 2549.429 | 110.844 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.933 | 33.917 | 240 | 0 | 7.073 | 1696.376 | 1700.049 | 1700.619 | 117.605 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.443 | 25.435 | 180 | 0 | 7.075 | 1271.875 | 1275.819 | 1276.007 | 117.605 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.963 | 16.955 | 120 | 0 | 7.074 | 847.873 | 851.745 | 851.969 | 117.984 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.259 | 14.132 | 100 | 0 | 7.013 | 844.153 | 848.564 | 848.962 | 117.988 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.486 | 8.481 | 60 | 0 | 7.071 | 424.107 | 426.044 | 427.008 | 117.988 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.651 | 40 | 0 | 7.076 | 282.489 | 282.859 | 283.05 | 117.992 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 1928 | 0 | 385.503 | 2.543 | 2.704 | 3.039 | 122.711 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 572 | 0 | 114.381 | 8.669 | 8.937 | 9.337 | 122.773 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.008 | 408 | 0 | 81.581 | 12.212 | 12.359 | 12.626 | 122.773 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.024 | 99 | 0 | 19.785 | 50.49 | 50.628 | 50.695 | 122.773 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.015 | 50 | 0 | 9.937 | 100.543 | 100.677 | 101.091 | 122.773 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.596 | 200.759 | 200.776 | 122.773 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16495 | 0 | 3297.856 | 1.42 | 2.186 | 2.68 | 67.777 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15896 | 0 | 3178.257 | 1.476 | 2.264 | 2.789 | 68.063 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16367 | 0 | 3272.628 | 1.432 | 2.21 | 2.705 | 68.359 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16212 | 0 | 3241.354 | 1.449 | 2.228 | 2.712 | 68.031 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16050 | 0 | 3209.333 | 1.456 | 2.279 | 2.743 | 69.879 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14148 | 0 | 2828.822 | 1.652 | 2.589 | 3.192 | 69.648 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16184 | 0 | 3235.877 | 1.443 | 2.302 | 2.751 | 70.141 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15761 | 0 | 3150.805 | 1.487 | 2.307 | 2.881 | 72.781 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11955 | 0 | 2390.154 | 1.964 | 2.922 | 3.804 | 83.227 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6664 | 0 | 1332.052 | 3.667 | 4.589 | 6.859 | 75.957 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12065 | 0 | 2411.908 | 1.961 | 2.711 | 3.75 | 82.027 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12228 | 0 | 2444.978 | 1.67 | 2.609 | 3.964 | 74.059 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8469 | 0 | 1692.983 | 2.522 | 4.609 | 7.28 | 105.191 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3927 | 0 | 784.422 | 6.258 | 7.784 | 11.832 | 79.168 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8415 | 0 | 1682.097 | 2.552 | 4.668 | 7.997 | 75.398 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8586 | 0 | 1716.495 | 2.516 | 4.469 | 7.513 | 75.398 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 6695 | 0 | 1338.018 | 3.076 | 5.931 | 24.336 | 122.133 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.215 | 2290 | 0 | 457.116 | 10.888 | 12.159 | 19.532 | 82.434 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6683 | 0 | 1335.814 | 3.102 | 5.936 | 24.716 | 80.129 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6643 | 0 | 1327.613 | 3.163 | 6.025 | 24.58 | 80.223 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 4490 | 0 | 896.935 | 4.755 | 8.896 | 28.549 | 126.289 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.076 | 1237 | 0 | 246.491 | 20.218 | 21.945 | 36.482 | 83.645 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4439 | 0 | 887.185 | 4.777 | 8.934 | 28.687 | 80.973 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4468 | 0 | 892.638 | 4.772 | 8.972 | 28.382 | 81.035 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2953 | 0 | 589.787 | 8.243 | 13.43 | 15.56 | 131.383 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.729 | 7.709 | 1000 | 0 | 129.387 | 38.423 | 40.633 | 47.365 | 84.129 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 2970 | 0 | 593.308 | 8.152 | 10.616 | 15.68 | 86.602 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2781 | 0 | 555.381 | 8.654 | 11.659 | 17.321 | 86.602 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.904 | 50.88 | 360 | 0 | 7.072 | 2544.686 | 2548.227 | 2549.676 | 104.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.931 | 33.919 | 240 | 0 | 7.073 | 1696.02 | 1700.349 | 1701.367 | 104.566 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.459 | 25.434 | 180 | 0 | 7.07 | 1272.679 | 1276.776 | 1279.307 | 104.656 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.968 | 16.957 | 120 | 0 | 7.072 | 848.203 | 852.383 | 852.503 | 104.723 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.141 | 14.134 | 100 | 0 | 7.071 | 844.119 | 848.813 | 849.046 | 110.477 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.482 | 8.478 | 60 | 0 | 7.074 | 424.0 | 425.93 | 426.194 | 110.477 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.654 | 5.654 | 40 | 0 | 7.075 | 282.579 | 283.054 | 283.26 | 110.477 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.002 | 1946 | 0 | 389.173 | 2.532 | 2.672 | 2.866 | 111.227 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.007 | 577 | 0 | 115.386 | 8.62 | 8.775 | 8.911 | 111.289 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.007 | 408 | 0 | 81.529 | 12.216 | 12.346 | 12.55 | 111.289 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.023 | 99 | 0 | 19.78 | 50.484 | 50.584 | 50.749 | 111.289 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.014 | 50 | 0 | 9.937 | 100.545 | 100.709 | 101.178 | 111.289 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.56 | 200.67 | 200.718 | 111.289 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16334 | 0 | 3266.198 | 1.437 | 2.167 | 2.728 | 68.188 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16843 | 0 | 3367.97 | 1.401 | 2.095 | 2.574 | 68.559 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16699 | 0 | 3339.043 | 1.403 | 2.159 | 2.655 | 68.664 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16229 | 0 | 3245.228 | 1.451 | 2.173 | 2.693 | 68.969 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16780 | 0 | 3355.28 | 1.392 | 2.185 | 2.613 | 70.395 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14332 | 0 | 2865.507 | 1.632 | 2.589 | 3.173 | 70.891 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16149 | 0 | 3229.007 | 1.443 | 2.278 | 2.774 | 70.891 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16517 | 0 | 3302.716 | 1.427 | 2.116 | 2.644 | 72.0 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12165 | 0 | 2432.307 | 1.927 | 2.947 | 3.806 | 80.02 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6589 | 0 | 1316.993 | 3.687 | 4.877 | 6.986 | 76.008 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12326 | 0 | 2464.241 | 1.899 | 3.025 | 3.754 | 79.945 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.038 | 2.002 | 12920 | 0 | 2564.526 | 1.557 | 2.489 | 3.733 | 72.0 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8193 | 0 | 1637.961 | 2.582 | 4.799 | 7.856 | 104.191 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 3908 | 0 | 780.913 | 6.267 | 8.745 | 11.87 | 79.816 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8841 | 0 | 1767.028 | 2.424 | 4.42 | 7.182 | 77.453 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8471 | 0 | 1693.493 | 2.517 | 4.583 | 7.89 | 77.453 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6702 | 0 | 1339.701 | 3.082 | 5.933 | 25.325 | 117.566 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.096 | 2361 | 0 | 471.251 | 10.552 | 11.966 | 19.283 | 84.051 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6623 | 0 | 1323.9 | 3.119 | 6.019 | 25.701 | 79.668 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6747 | 0 | 1348.671 | 3.113 | 5.728 | 25.476 | 79.746 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4324 | 0 | 864.143 | 4.941 | 9.224 | 29.141 | 121.043 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.85 | 1227 | 0 | 244.56 | 20.452 | 22.317 | 34.635 | 85.902 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4308 | 0 | 860.808 | 4.996 | 9.15 | 30.519 | 82.18 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.004 | 4649 | 0 | 928.532 | 4.617 | 8.152 | 28.645 | 82.18 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.007 | 2911 | 0 | 580.992 | 8.331 | 13.117 | 16.093 | 102.52 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.778 | 7.659 | 1000 | 0 | 128.564 | 38.466 | 41.674 | 69.86 | 84.785 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2924 | 0 | 583.903 | 8.425 | 10.179 | 15.447 | 86.445 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 2926 | 0 | 584.405 | 8.262 | 10.689 | 16.096 | 86.445 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.916 | 50.915 | 360 | 0 | 7.07 | 2545.233 | 2550.486 | 2551.776 | 105.559 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.938 | 33.927 | 240 | 0 | 7.072 | 1696.441 | 1701.425 | 1704.86 | 106.0 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.455 | 25.437 | 180 | 0 | 7.071 | 1272.366 | 1276.489 | 1276.89 | 106.0 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.967 | 16.957 | 120 | 0 | 7.073 | 848.145 | 852.793 | 854.559 | 106.063 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.142 | 14.135 | 100 | 0 | 7.071 | 840.211 | 848.699 | 848.811 | 106.125 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.484 | 8.484 | 60 | 0 | 7.072 | 424.148 | 426.085 | 426.516 | 106.125 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.656 | 5.654 | 40 | 0 | 7.073 | 282.641 | 283.019 | 283.951 | 106.125 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1911 | 0 | 382.063 | 2.554 | 2.778 | 3.058 | 115.09 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.006 | 563 | 0 | 112.44 | 8.832 | 9.108 | 9.472 | 115.09 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.005 | 407 | 0 | 81.375 | 12.257 | 12.441 | 12.581 | 115.281 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.02 | 99 | 0 | 19.788 | 50.469 | 50.586 | 50.705 | 115.281 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.014 | 50 | 0 | 9.941 | 100.523 | 100.669 | 100.757 | 115.281 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.613 | 200.789 | 201.053 | 115.406 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

# Puma vs Raptor Simulation

Run ID: `20261019-033213`

## Environment

- Ruby: `ruby 4.0.7 (2026-09-15 revision 229531a6cf) +PRISM [aarch64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.145 | 1000 | 0 | 62.009 | 40.981 | 41.973 | 42.745 | 27.969 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.117 | 1000 | 0 | 62.026 | 40.982 | 41.974 | 42.56 | 27.984 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.156 | 1000 | 0 | 62.032 | 40.981 | 41.971 | 42.609 | 28.0 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.159 | 1000 | 0 | 62.027 | 40.981 | 41.953 | 42.352 | 28.043 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.157 | 1000 | 0 | 62.059 | 40.978 | 41.985 | 42.332 | 28.047 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.143 | 1000 | 0 | 62.042 | 40.979 | 41.952 | 42.346 | 28.047 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.164 | 1000 | 0 | 62.062 | 40.98 | 41.951 | 42.276 | 28.047 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.151 | 1000 | 0 | 62.035 | 40.982 | 41.954 | 42.658 | 28.527 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.283 | 13.313 | 1000 | 0 | 70.011 | 40.961 | 41.961 | 42.348 | 28.563 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.925 | 14.271 | 1000 | 0 | 67.004 | 40.966 | 41.953 | 42.112 | 28.563 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 12467 | 0 | 2492.219 | 1.055 | 2.133 | 8.419 | 28.875 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.595 | 13.557 | 1000 | 0 | 68.518 | 40.976 | 42.0 | 42.787 | 35.84 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.491 | 4.624 | 1000 | 0 | 95.323 | 40.972 | 42.467 | 43.275 | 35.84 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.261 | 9.654 | 1000 | 0 | 107.985 | 40.987 | 42.452 | 43.545 | 35.84 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.028 | 10174 | 0 | 2034.124 | 1.293 | 2.615 | 12.405 | 35.992 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.988 | 13.761 | 1000 | 0 | 76.993 | 41.917 | 42.836 | 43.661 | 44.043 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.888 | 12.388 | 1000 | 0 | 77.591 | 41.938 | 42.998 | 43.877 | 44.043 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.665 | 13.608 | 1000 | 0 | 73.18 | 41.942 | 42.917 | 44.183 | 44.043 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7318 | 0 | 1462.722 | 1.687 | 3.482 | 50.945 | 44.043 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.753 | 14.466 | 1000 | 0 | 67.782 | 41.969 | 43.292 | 44.534 | 49.559 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.679 | 15.515 | 1000 | 0 | 68.124 | 42.198 | 44.233 | 45.837 | 49.559 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.357 | 15.522 | 1000 | 0 | 69.653 | 42.616 | 44.926 | 47.354 | 49.559 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5117 | 0 | 1022.678 | 2.566 | 5.126 | 15.186 | 49.559 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.661 | 16.319 | 1000 | 0 | 63.854 | 42.988 | 45.705 | 47.564 | 55.699 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.387 | 16.043 | 1000 | 0 | 64.992 | 43.969 | 47.25 | 49.883 | 55.699 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.726 | 15.995 | 1000 | 0 | 63.591 | 43.994 | 48.033 | 50.349 | 55.699 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3521 | 0 | 703.423 | 3.896 | 7.392 | 15.616 | 60.906 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.203 | 16.938 | 1000 | 0 | 58.13 | 45.803 | 50.207 | 52.2 | 68.164 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.013 | 28.772 | 363 | 0 | 12.512 | 241.779 | 243.175 | 19609.908 | 68.371 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.414 | 19.186 | 243 | 0 | 12.517 | 241.665 | 242.472 | 12800.933 | 68.402 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.616 | 14.389 | 183 | 0 | 12.521 | 241.595 | 242.634 | 10014.097 | 68.41 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.592 | 123 | 0 | 12.517 | 241.757 | 242.485 | 5230.617 | 68.414 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.587 | 103 | 0 | 10.473 | 241.943 | 242.74 | 5136.628 | 68.422 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.797 | 63 | 0 | 12.51 | 241.727 | 242.367 | 243.28 | 68.422 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.794 | 42 | 0 | 8.334 | 241.935 | 242.36 | 242.695 | 68.43 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.017 | 122 | 0 | 24.339 | 41.967 | 42.907 | 42.996 | 68.445 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.006 | 110 | 0 | 21.835 | 46.957 | 47.13 | 48.001 | 68.484 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.024 | 99 | 0 | 19.714 | 50.967 | 51.973 | 52.032 | 68.484 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.076 | 55 | 0 | 10.963 | 91.965 | 92.1 | 92.953 | 68.484 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.069 | 2.093 | 36 | 0 | 7.101 | 141.96 | 142.099 | 142.681 | 68.492 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.38 | 21 | 0 | 4.166 | 241.954 | 242.927 | 242.944 | 68.496 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.14 | 1000 | 0 | 62.06 | 40.979 | 41.963 | 42.304 | 27.199 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.158 | 1000 | 0 | 62.052 | 40.975 | 41.957 | 42.26 | 27.227 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.148 | 1000 | 0 | 62.031 | 40.978 | 41.959 | 42.367 | 27.457 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.179 | 1000 | 0 | 61.982 | 40.98 | 42.011 | 42.814 | 27.559 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.175 | 1000 | 0 | 62.008 | 40.98 | 41.967 | 42.384 | 27.559 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.163 | 1000 | 0 | 62.066 | 40.975 | 41.937 | 42.617 | 27.559 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.147 | 1000 | 0 | 62.082 | 40.977 | 41.941 | 42.267 | 27.582 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.143 | 1000 | 0 | 62.061 | 40.979 | 41.916 | 42.435 | 27.973 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.638 | 14.552 | 1000 | 0 | 73.327 | 40.963 | 41.958 | 42.421 | 28.043 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.399 | 13.479 | 1000 | 0 | 69.447 | 40.962 | 41.958 | 42.901 | 28.184 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12628 | 0 | 2524.592 | 1.044 | 2.161 | 6.648 | 28.723 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.092 | 13.235 | 1000 | 0 | 66.261 | 40.975 | 41.996 | 42.956 | 32.926 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.181 | 6.495 | 1000 | 0 | 98.221 | 41.132 | 42.37 | 43.293 | 32.926 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.274 | 10.226 | 1000 | 0 | 120.856 | 40.94 | 42.612 | 43.349 | 32.926 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8746 | 0 | 1748.355 | 1.456 | 3.129 | 12.844 | 33.234 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.97 | 12.462 | 1000 | 0 | 77.103 | 41.899 | 42.918 | 43.773 | 41.672 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.113 | 13.365 | 1000 | 0 | 82.558 | 41.94 | 42.996 | 44.949 | 41.672 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.809 | 13.195 | 1000 | 0 | 78.073 | 41.938 | 43.159 | 44.255 | 41.672 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6644 | 0 | 1328.009 | 1.83 | 3.789 | 60.039 | 41.691 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.306 | 14.593 | 1000 | 0 | 69.901 | 41.976 | 43.899 | 45.694 | 46.5 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.052 | 15.474 | 1000 | 0 | 71.165 | 42.56 | 44.381 | 54.435 | 46.5 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.459 | 14.987 | 1000 | 0 | 69.163 | 42.642 | 44.349 | 45.848 | 46.5 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5171 | 0 | 1033.421 | 2.512 | 5.219 | 15.689 | 47.375 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.677 | 16.308 | 1000 | 0 | 63.788 | 43.154 | 45.875 | 49.016 | 52.621 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.583 | 15.822 | 1000 | 0 | 64.173 | 43.956 | 47.727 | 49.227 | 47.293 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.536 | 15.544 | 1000 | 0 | 64.365 | 43.963 | 47.721 | 53.076 | 47.293 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3320 | 0 | 663.189 | 3.987 | 7.767 | 48.031 | 53.305 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.904 | 16.974 | 1000 | 0 | 59.158 | 45.967 | 50.888 | 52.768 | 82.688 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.011 | 28.764 | 363 | 0 | 12.512 | 241.851 | 243.12 | 19610.0 | 79.008 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.173 | 243 | 0 | 12.512 | 241.731 | 242.968 | 12803.506 | 79.055 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.383 | 183 | 0 | 12.512 | 241.748 | 242.635 | 10020.643 | 79.078 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.588 | 123 | 0 | 12.51 | 241.813 | 242.927 | 5235.601 | 79.086 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.595 | 103 | 0 | 10.479 | 241.886 | 242.394 | 5132.545 | 79.094 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.796 | 63 | 0 | 12.51 | 241.535 | 242.555 | 243.335 | 79.098 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.8 | 42 | 0 | 8.345 | 241.399 | 242.217 | 242.62 | 79.098 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.019 | 122 | 0 | 24.367 | 41.967 | 42.136 | 42.95 | 79.105 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.019 | 109 | 0 | 21.771 | 46.966 | 47.148 | 47.992 | 79.117 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.038 | 98 | 0 | 19.597 | 51.043 | 52.025 | 52.144 | 79.117 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.065 | 55 | 0 | 10.97 | 91.956 | 92.961 | 92.974 | 79.121 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.093 | 36 | 0 | 7.107 | 141.936 | 142.088 | 142.427 | 79.121 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.382 | 21 | 0 | 4.17 | 241.826 | 242.103 | 242.151 | 79.121 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.141 | 1000 | 0 | 62.004 | 40.983 | 41.969 | 42.337 | 27.207 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.149 | 1000 | 0 | 61.985 | 40.982 | 41.973 | 42.457 | 27.438 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.141 | 1000 | 0 | 62.071 | 40.979 | 41.956 | 42.311 | 27.449 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.162 | 1000 | 0 | 62.051 | 40.979 | 41.95 | 42.257 | 27.504 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.143 | 1000 | 0 | 62.059 | 40.981 | 41.944 | 42.296 | 27.504 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.142 | 1000 | 0 | 62.031 | 40.981 | 41.955 | 42.351 | 27.531 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.16 | 1000 | 0 | 62.026 | 40.975 | 41.964 | 42.422 | 27.543 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.15 | 1000 | 0 | 62.035 | 40.978 | 41.925 | 42.191 | 28.234 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.652 | 14.627 | 1000 | 0 | 68.25 | 40.963 | 41.973 | 42.994 | 28.313 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.09 | 12.729 | 1000 | 0 | 66.268 | 40.964 | 41.958 | 42.694 | 28.313 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 12179 | 0 | 2435.083 | 1.075 | 2.213 | 7.962 | 28.668 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.473 | 13.677 | 1000 | 0 | 74.225 | 40.969 | 41.987 | 42.978 | 34.758 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.548 | 9.557 | 1000 | 0 | 116.991 | 40.941 | 42.34 | 43.394 | 34.758 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.675 | 10.764 | 1000 | 0 | 85.654 | 41.126 | 42.384 | 43.277 | 34.758 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9360 | 0 | 1870.992 | 1.331 | 2.8 | 23.346 | 34.758 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.241 | 12.243 | 1000 | 0 | 81.692 | 41.902 | 42.943 | 43.968 | 39.246 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.866 | 12.911 | 1000 | 0 | 84.276 | 41.93 | 42.984 | 43.953 | 39.246 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.748 | 13.224 | 1000 | 0 | 78.445 | 41.943 | 42.985 | 44.343 | 39.246 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.101 | 2.092 | 7197 | 0 | 1410.976 | 1.695 | 3.465 | 51.145 | 39.246 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.38 | 15.118 | 1000 | 0 | 69.54 | 41.963 | 43.208 | 43.999 | 46.227 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.3 | 15.085 | 1000 | 0 | 69.93 | 42.013 | 44.12 | 46.044 | 46.227 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.35 | 15.38 | 1000 | 0 | 69.688 | 42.888 | 44.489 | 46.034 | 46.227 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.015 | 2.004 | 5379 | 0 | 1072.572 | 2.42 | 4.929 | 19.917 | 48.012 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.231 | 15.907 | 1000 | 0 | 65.655 | 43.165 | 46.197 | 52.366 | 52.738 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.001 | 15.955 | 1000 | 0 | 66.663 | 43.994 | 48.042 | 51.278 | 50.809 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.866 | 16.328 | 1000 | 0 | 72.12 | 43.973 | 47.376 | 49.626 | 50.809 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3530 | 0 | 705.059 | 3.91 | 7.246 | 18.112 | 56.82 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.395 | 17.523 | 1000 | 0 | 60.995 | 45.076 | 50.23 | 53.389 | 82.895 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.996 | 28.77 | 363 | 0 | 12.519 | 241.708 | 242.97 | 19605.101 | 83.188 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.417 | 19.176 | 243 | 0 | 12.515 | 241.761 | 242.939 | 12806.956 | 83.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.631 | 14.385 | 183 | 0 | 12.508 | 241.882 | 243.191 | 10031.548 | 83.238 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.592 | 123 | 0 | 12.516 | 241.555 | 243.018 | 5232.649 | 83.246 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.591 | 103 | 0 | 10.484 | 241.711 | 242.498 | 5131.679 | 83.258 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.793 | 63 | 0 | 12.513 | 241.477 | 242.741 | 243.375 | 83.258 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.797 | 42 | 0 | 8.347 | 241.313 | 242.226 | 242.603 | 83.258 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.019 | 122 | 0 | 24.358 | 41.961 | 42.901 | 43.004 | 83.258 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.006 | 110 | 0 | 21.835 | 46.966 | 47.919 | 47.961 | 83.258 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.029 | 98 | 0 | 19.515 | 51.91 | 52.061 | 52.983 | 83.258 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.091 | 2.068 | 56 | 0 | 11.0 | 91.929 | 92.021 | 92.971 | 83.258 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.088 | 36 | 0 | 7.108 | 141.91 | 142.095 | 142.253 | 83.258 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.382 | 21 | 0 | 4.17 | 241.947 | 242.795 | 242.854 | 83.258 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17970 | 0 | 3593.269 | 1.314 | 1.916 | 2.3 | 63.48 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16607 | 0 | 3320.673 | 1.405 | 2.178 | 2.679 | 63.594 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18166 | 0 | 3632.53 | 1.295 | 1.936 | 2.36 | 63.707 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16522 | 0 | 3303.759 | 1.435 | 2.301 | 2.724 | 63.852 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18040 | 0 | 3607.034 | 1.301 | 1.963 | 2.44 | 65.188 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15846 | 0 | 3168.3 | 1.496 | 2.185 | 2.734 | 65.73 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18322 | 0 | 3663.467 | 1.29 | 1.839 | 2.259 | 66.688 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 17034 | 0 | 3405.362 | 1.392 | 2.161 | 2.688 | 69.68 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13810 | 0 | 2761.22 | 1.698 | 2.617 | 3.161 | 81.07 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7762 | 0 | 1551.768 | 3.085 | 5.11 | 5.954 | 73.254 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13652 | 0 | 2729.659 | 1.694 | 2.837 | 3.358 | 80.609 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13605 | 0 | 2719.759 | 1.691 | 2.667 | 3.31 | 69.598 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9452 | 0 | 1889.356 | 2.353 | 3.978 | 6.104 | 112.559 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3889 | 0 | 776.979 | 6.161 | 10.778 | 12.094 | 79.738 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9552 | 0 | 1909.602 | 2.24 | 4.191 | 6.314 | 73.027 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.031 | 2.002 | 10066 | 0 | 2000.716 | 2.133 | 4.021 | 5.908 | 72.594 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8001 | 0 | 1599.435 | 2.804 | 4.582 | 14.049 | 126.066 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.228 | 2202 | 0 | 439.573 | 11.169 | 18.378 | 20.99 | 81.738 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7288 | 0 | 1456.856 | 2.889 | 5.652 | 15.03 | 77.891 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7706 | 0 | 1540.381 | 2.734 | 5.342 | 14.354 | 77.891 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4979 | 0 | 994.965 | 4.592 | 7.816 | 18.336 | 161.578 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.958 | 1224 | 0 | 243.895 | 20.108 | 29.832 | 36.539 | 85.926 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5073 | 0 | 1013.754 | 4.201 | 8.166 | 18.768 | 85.184 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4883 | 0 | 975.576 | 4.392 | 8.599 | 17.734 | 85.184 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2966 | 0 | 592.363 | 8.33 | 13.437 | 15.34 | 114.609 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.345 | 7.278 | 1000 | 0 | 136.141 | 36.449 | 58.463 | 66.32 | 90.727 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3538 | 0 | 706.712 | 6.532 | 11.897 | 13.363 | 89.875 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3455 | 0 | 690.248 | 6.837 | 12.256 | 13.632 | 89.875 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.815 | 51.12 | 360 | 0 | 7.084 | 2540.023 | 2561.944 | 2564.486 | 106.133 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.841 | 33.986 | 240 | 0 | 7.092 | 1691.358 | 1703.602 | 1709.505 | 113.789 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.408 | 25.526 | 180 | 0 | 7.084 | 1269.982 | 1283.198 | 1292.293 | 113.797 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.935 | 17.014 | 120 | 0 | 7.086 | 846.517 | 859.413 | 859.952 | 113.863 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.228 | 14.172 | 100 | 0 | 7.028 | 805.194 | 847.749 | 856.313 | 113.863 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.473 | 8.494 | 60 | 0 | 7.082 | 423.597 | 426.797 | 433.683 | 113.867 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.641 | 5.642 | 40 | 0 | 7.091 | 281.777 | 283.856 | 288.531 | 113.871 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 3493 | 0 | 698.489 | 1.394 | 1.514 | 1.707 | 121.012 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.001 | 935 | 0 | 186.808 | 5.301 | 5.506 | 5.857 | 121.137 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.009 | 480 | 0 | 95.924 | 10.373 | 10.509 | 10.645 | 122.262 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.029 | 99 | 0 | 19.77 | 50.525 | 50.686 | 50.713 | 122.262 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.014 | 50 | 0 | 9.943 | 100.501 | 100.649 | 100.867 | 122.262 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.527 | 200.633 | 200.783 | 122.266 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17256 | 0 | 3450.42 | 1.368 | 1.992 | 2.427 | 63.656 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17063 | 0 | 3411.861 | 1.378 | 2.031 | 2.503 | 64.02 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17315 | 0 | 3462.186 | 1.354 | 2.037 | 2.474 | 64.246 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17357 | 0 | 3470.31 | 1.371 | 2.128 | 2.572 | 64.461 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17808 | 0 | 3560.176 | 1.321 | 1.974 | 2.4 | 65.977 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15537 | 0 | 3106.69 | 1.519 | 2.288 | 2.769 | 66.277 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 17907 | 0 | 3580.645 | 1.309 | 1.974 | 2.418 | 66.34 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15453 | 0 | 3089.723 | 1.52 | 2.425 | 3.005 | 68.059 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12070 | 0 | 2413.041 | 1.927 | 3.113 | 3.747 | 77.227 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7045 | 0 | 1408.059 | 3.37 | 5.694 | 6.703 | 71.836 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12377 | 0 | 2474.536 | 1.86 | 3.156 | 3.743 | 76.41 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12962 | 0 | 2591.66 | 1.727 | 2.772 | 3.485 | 67.68 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.007 | 10135 | 0 | 2026.24 | 2.194 | 3.681 | 5.67 | 110.09 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.004 | 4015 | 0 | 801.93 | 5.87 | 10.345 | 11.579 | 84.625 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10201 | 0 | 2039.386 | 2.111 | 3.938 | 6.322 | 81.688 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10216 | 0 | 2042.379 | 2.12 | 3.949 | 6.186 | 81.563 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.005 | 8077 | 0 | 1614.699 | 2.727 | 4.56 | 14.609 | 123.23 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.032 | 2385 | 0 | 476.205 | 10.153 | 17.659 | 19.472 | 81.293 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 8144 | 0 | 1627.942 | 2.569 | 5.026 | 14.756 | 77.84 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.006 | 7693 | 0 | 1537.984 | 2.716 | 5.42 | 14.733 | 77.84 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5236 | 0 | 1046.255 | 4.358 | 7.231 | 18.585 | 161.73 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.927 | 1282 | 0 | 255.631 | 19.019 | 31.75 | 35.613 | 84.875 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.016 | 5119 | 0 | 1022.998 | 4.128 | 8.141 | 19.659 | 79.59 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.003 | 5156 | 0 | 1029.982 | 4.162 | 8.055 | 18.577 | 79.777 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2990 | 0 | 596.881 | 8.302 | 12.75 | 14.585 | 123.313 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.395 | 7.308 | 1000 | 0 | 135.234 | 36.576 | 39.261 | 67.833 | 85.039 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3198 | 0 | 638.818 | 7.187 | 13.185 | 14.815 | 82.027 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3452 | 0 | 689.676 | 6.808 | 12.182 | 13.624 | 82.09 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.931 | 50.993 | 360 | 0 | 7.068 | 2545.027 | 2574.962 | 2580.273 | 98.836 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.978 | 34.034 | 240 | 0 | 7.063 | 1699.164 | 1726.763 | 1737.727 | 105.836 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.47 | 25.495 | 180 | 0 | 7.067 | 1273.501 | 1294.618 | 1304.565 | 105.84 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.981 | 17.015 | 120 | 0 | 7.067 | 848.956 | 861.83 | 873.9 | 106.094 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.199 | 14.173 | 100 | 0 | 7.043 | 799.725 | 848.523 | 849.891 | 108.406 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.492 | 8.506 | 60 | 0 | 7.065 | 424.696 | 433.678 | 441.076 | 108.41 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.656 | 5.655 | 40 | 0 | 7.072 | 282.759 | 283.545 | 288.99 | 108.41 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3519 | 0 | 703.65 | 1.375 | 1.53 | 1.846 | 114.422 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.001 | 935 | 0 | 186.835 | 5.309 | 5.46 | 5.62 | 116.887 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.001 | 481 | 0 | 96.123 | 10.357 | 10.478 | 10.629 | 119.043 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.025 | 99 | 0 | 19.773 | 50.501 | 50.712 | 51.011 | 119.043 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.016 | 50 | 0 | 9.935 | 100.53 | 100.961 | 101.092 | 119.109 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.009 | 25 | 0 | 4.982 | 200.564 | 201.022 | 201.541 | 119.109 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17876 | 0 | 3574.376 | 1.314 | 1.947 | 2.454 | 63.648 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17537 | 0 | 3506.611 | 1.342 | 1.963 | 2.45 | 63.902 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17689 | 0 | 3537.056 | 1.329 | 1.957 | 2.415 | 64.113 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17009 | 0 | 3400.876 | 1.389 | 2.176 | 2.678 | 64.445 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17622 | 0 | 3523.75 | 1.334 | 1.978 | 2.45 | 65.93 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15165 | 0 | 3032.398 | 1.547 | 2.386 | 2.93 | 66.402 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17668 | 0 | 3532.818 | 1.334 | 1.951 | 2.421 | 67.137 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17116 | 0 | 3422.357 | 1.38 | 2.162 | 2.665 | 68.445 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13626 | 0 | 2724.446 | 1.721 | 2.65 | 3.226 | 77.621 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 7459 | 0 | 1490.679 | 3.189 | 5.356 | 6.282 | 72.148 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13199 | 0 | 2638.985 | 1.756 | 2.917 | 3.491 | 76.98 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.002 | 13350 | 0 | 2661.113 | 1.444 | 2.468 | 3.567 | 68.168 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10133 | 0 | 2025.695 | 2.194 | 3.675 | 5.437 | 103.648 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4144 | 0 | 827.863 | 5.788 | 10.11 | 11.373 | 80.121 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10207 | 0 | 2040.736 | 2.108 | 3.928 | 5.771 | 70.926 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10420 | 0 | 2083.23 | 2.082 | 3.799 | 5.276 | 70.738 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7820 | 0 | 1563.089 | 2.827 | 4.717 | 16.12 | 121.965 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.155 | 2411 | 0 | 481.201 | 10.108 | 17.38 | 19.478 | 82.34 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8209 | 0 | 1640.801 | 2.595 | 4.885 | 15.607 | 74.293 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8010 | 0 | 1601.276 | 2.638 | 5.021 | 16.294 | 74.293 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5156 | 0 | 1030.108 | 4.51 | 7.308 | 19.459 | 126.977 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.84 | 1292 | 0 | 257.572 | 19.055 | 31.638 | 35.345 | 85.719 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5483 | 0 | 1095.663 | 3.872 | 7.512 | 19.807 | 80.074 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.005 | 5251 | 0 | 1046.268 | 4.11 | 7.859 | 19.086 | 80.078 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 2843 | 0 | 567.892 | 8.747 | 13.945 | 15.708 | 101.398 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.337 | 7.289 | 1000 | 0 | 136.296 | 36.238 | 59.322 | 67.054 | 89.973 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3354 | 0 | 669.933 | 6.816 | 12.376 | 14.278 | 81.75 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3492 | 0 | 697.758 | 6.715 | 12.093 | 13.209 | 81.75 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.94 | 51.0 | 360 | 0 | 7.067 | 2546.915 | 2569.11 | 2592.631 | 103.906 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.964 | 34.005 | 240 | 0 | 7.066 | 1698.73 | 1718.356 | 1728.069 | 105.941 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.451 | 25.499 | 180 | 0 | 7.072 | 1272.319 | 1285.51 | 1292.522 | 105.945 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.978 | 16.986 | 120 | 0 | 7.068 | 849.295 | 867.574 | 870.759 | 112.086 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.32 | 14.158 | 100 | 0 | 6.983 | 790.64 | 849.159 | 856.048 | 112.086 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.484 | 8.491 | 60 | 0 | 7.072 | 424.135 | 428.021 | 436.796 | 112.086 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.655 | 5.656 | 40 | 0 | 7.073 | 282.657 | 283.469 | 288.896 | 112.09 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3603 | 0 | 720.416 | 1.347 | 1.492 | 1.712 | 121.449 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.005 | 944 | 0 | 188.654 | 5.261 | 5.409 | 5.627 | 121.449 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.008 | 483 | 0 | 96.414 | 10.325 | 10.455 | 10.743 | 122.074 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.027 | 99 | 0 | 19.785 | 50.478 | 50.614 | 50.734 | 122.074 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.014 | 50 | 0 | 9.936 | 100.591 | 100.731 | 100.86 | 122.074 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.555 | 200.684 | 200.73 | 122.074 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.171 | 1000 | 0 | 62.05 | 40.98 | 41.972 | 42.435 | 28.914 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.142 | 1000 | 0 | 62.072 | 40.977 | 41.973 | 42.253 | 29.09 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.153 | 1000 | 0 | 62.027 | 40.984 | 41.985 | 42.454 | 29.172 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.15 | 1000 | 0 | 62.08 | 40.977 | 41.938 | 42.198 | 29.48 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.136 | 1000 | 0 | 62.082 | 40.976 | 41.919 | 42.112 | 29.602 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.134 | 1000 | 0 | 62.067 | 40.977 | 41.969 | 42.441 | 29.613 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.121 | 1000 | 0 | 62.058 | 40.98 | 41.968 | 42.27 | 29.613 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.142 | 1000 | 0 | 62.08 | 40.975 | 41.892 | 42.282 | 30.242 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.682 | 14.045 | 1000 | 0 | 68.109 | 40.967 | 41.955 | 42.135 | 30.242 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.718 | 13.689 | 1000 | 0 | 67.943 | 40.966 | 41.96 | 42.016 | 30.242 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 12822 | 0 | 2563.637 | 1.044 | 2.031 | 7.138 | 30.676 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.147 | 14.691 | 1000 | 0 | 66.02 | 40.97 | 41.985 | 42.943 | 34.031 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.263 | 8.353 | 1002 | 0 | 137.968 | 1.671 | 42.147 | 57.578 | 34.031 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.227 | 7.022 | 1000 | 0 | 108.379 | 40.949 | 42.055 | 42.861 | 34.031 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 9262 | 0 | 1851.509 | 1.362 | 2.842 | 17.428 | 34.332 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.939 | 9.345 | 1000 | 0 | 100.615 | 41.307 | 42.498 | 43.674 | 43.535 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.101 | 12.723 | 1000 | 0 | 82.639 | 41.918 | 42.995 | 44.268 | 40.945 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.985 | 12.433 | 1000 | 0 | 83.436 | 41.923 | 42.975 | 44.784 | 40.945 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6928 | 0 | 1384.794 | 1.715 | 3.551 | 69.32 | 40.945 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.433 | 14.442 | 1000 | 0 | 69.285 | 41.96 | 43.111 | 44.951 | 46.484 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.158 | 14.993 | 1000 | 0 | 70.63 | 41.971 | 43.945 | 45.896 | 41.887 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.804 | 15.124 | 1000 | 0 | 72.442 | 42.003 | 44.128 | 46.892 | 41.887 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 4662 | 0 | 931.574 | 2.754 | 5.753 | 22.955 | 44.785 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.706 | 16.216 | 1000 | 0 | 63.672 | 42.983 | 45.447 | 51.982 | 53.422 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.672 | 15.65 | 1000 | 0 | 68.155 | 43.08 | 46.666 | 48.754 | 53.422 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.068 | 15.587 | 1000 | 0 | 66.368 | 43.936 | 46.224 | 48.829 | 53.422 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.006 | 3319 | 0 | 662.656 | 4.097 | 7.788 | 31.237 | 59.434 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.607 | 17.251 | 1000 | 0 | 60.216 | 45.309 | 50.913 | 60.205 | 67.402 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.004 | 28.771 | 363 | 0 | 12.516 | 241.755 | 242.979 | 19610.61 | 67.824 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.418 | 19.171 | 243 | 0 | 12.514 | 241.794 | 242.499 | 12805.99 | 67.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.627 | 14.38 | 183 | 0 | 12.511 | 241.724 | 242.964 | 10023.985 | 67.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.821 | 9.586 | 123 | 0 | 12.524 | 241.398 | 242.385 | 5232.006 | 67.848 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.822 | 9.588 | 103 | 0 | 10.487 | 241.407 | 242.233 | 5127.752 | 67.852 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.79 | 63 | 0 | 12.515 | 241.588 | 242.385 | 242.629 | 67.855 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.803 | 42 | 0 | 8.341 | 241.733 | 242.289 | 242.684 | 67.855 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.018 | 122 | 0 | 24.349 | 41.971 | 42.943 | 42.968 | 67.863 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.031 | 114 | 0 | 22.737 | 44.969 | 45.318 | 45.95 | 67.895 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.04 | 97 | 0 | 19.358 | 51.969 | 52.947 | 52.973 | 67.973 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.074 | 2.065 | 56 | 0 | 11.037 | 90.99 | 92.015 | 92.479 | 67.984 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.051 | 2.088 | 36 | 0 | 7.128 | 141.088 | 141.978 | 141.996 | 67.984 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.379 | 21 | 0 | 4.168 | 241.965 | 242.092 | 242.198 | 67.992 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.177 | 1000 | 0 | 62.088 | 40.977 | 41.946 | 42.334 | 28.969 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.169 | 1000 | 0 | 62.042 | 40.979 | 41.978 | 42.564 | 29.301 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.142 | 1000 | 0 | 62.07 | 40.972 | 41.964 | 42.349 | 29.414 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.168 | 1000 | 0 | 62.05 | 40.979 | 41.962 | 42.45 | 29.598 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.169 | 1000 | 0 | 62.061 | 40.973 | 41.964 | 42.384 | 29.656 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.168 | 1000 | 0 | 62.035 | 40.975 | 41.978 | 42.381 | 29.656 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.156 | 1000 | 0 | 62.052 | 40.968 | 41.967 | 42.243 | 29.664 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.172 | 1000 | 0 | 62.055 | 40.974 | 41.945 | 42.578 | 30.328 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.717 | 13.946 | 1000 | 0 | 67.947 | 40.965 | 41.966 | 42.188 | 30.367 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.158 | 13.927 | 1000 | 0 | 65.972 | 40.959 | 41.959 | 42.158 | 30.367 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 12744 | 0 | 2548.105 | 1.04 | 2.06 | 8.072 | 30.707 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.252 | 11.717 | 1000 | 0 | 70.167 | 40.97 | 41.988 | 42.949 | 35.395 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 6.652 | 8.543 | 1001 | 0 | 150.472 | 1.726 | 42.334 | 44.038 | 35.395 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.189 | 7.179 | 1000 | 0 | 139.105 | 1.906 | 42.163 | 43.491 | 35.395 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 8932 | 0 | 1785.195 | 1.388 | 2.92 | 24.337 | 35.699 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.591 | 8.104 | 1000 | 0 | 104.261 | 41.783 | 42.942 | 44.096 | 40.391 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.176 | 11.58 | 1000 | 0 | 89.476 | 41.903 | 42.936 | 44.285 | 40.008 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.004 | 12.262 | 1000 | 0 | 83.305 | 41.908 | 42.941 | 44.101 | 40.008 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 6455 | 0 | 1290.215 | 1.932 | 4.051 | 21.906 | 40.727 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.736 | 14.257 | 1000 | 0 | 72.803 | 41.946 | 43.115 | 45.254 | 51.688 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.043 | 15.089 | 1000 | 0 | 71.211 | 41.96 | 43.934 | 58.546 | 46.406 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.102 | 14.837 | 1000 | 0 | 76.324 | 42.006 | 44.193 | 45.967 | 46.406 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4896 | 0 | 978.26 | 2.533 | 5.284 | 40.308 | 48.855 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.346 | 15.864 | 1000 | 0 | 65.163 | 42.98 | 45.171 | 46.37 | 56.215 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.019 | 14.912 | 1000 | 0 | 66.581 | 43.918 | 46.797 | 50.148 | 56.215 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.889 | 15.195 | 1000 | 0 | 67.163 | 43.951 | 46.903 | 49.361 | 56.215 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.008 | 3328 | 0 | 664.644 | 4.173 | 7.771 | 23.167 | 62.227 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.98 | 1000 | 0 | 62.102 | 45.78 | 50.127 | 52.903 | 85.285 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.0 | 28.765 | 363 | 0 | 12.517 | 241.742 | 243.299 | 19613.581 | 83.051 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.422 | 19.179 | 243 | 0 | 12.511 | 241.797 | 242.719 | 12809.89 | 83.066 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.62 | 14.385 | 183 | 0 | 12.517 | 241.732 | 242.672 | 10026.267 | 83.07 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.585 | 123 | 0 | 12.512 | 241.801 | 242.519 | 5230.168 | 83.074 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.591 | 103 | 0 | 10.476 | 241.79 | 242.495 | 5133.174 | 83.082 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.796 | 63 | 0 | 12.52 | 241.296 | 242.316 | 242.421 | 83.082 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.798 | 42 | 0 | 8.344 | 241.288 | 242.291 | 242.628 | 83.082 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.021 | 122 | 0 | 24.347 | 41.97 | 42.944 | 43.001 | 83.105 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.03 | 114 | 0 | 22.728 | 44.962 | 45.756 | 45.994 | 83.105 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.038 | 97 | 0 | 19.365 | 51.966 | 52.354 | 53.14 | 83.113 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.068 | 56 | 0 | 11.05 | 90.977 | 91.984 | 92.103 | 83.121 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.069 | 2.085 | 36 | 0 | 7.102 | 141.958 | 142.949 | 142.981 | 83.121 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.381 | 21 | 0 | 4.167 | 241.955 | 242.125 | 242.217 | 83.121 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.167 | 1000 | 0 | 62.05 | 40.975 | 41.983 | 42.419 | 29.02 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.148 | 1000 | 0 | 62.07 | 40.972 | 41.959 | 42.257 | 29.246 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.147 | 1000 | 0 | 62.055 | 40.978 | 41.97 | 42.269 | 29.387 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.154 | 1000 | 0 | 62.004 | 40.98 | 41.978 | 42.637 | 29.516 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.142 | 1000 | 0 | 62.008 | 40.976 | 41.982 | 42.409 | 29.559 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.155 | 1000 | 0 | 62.044 | 40.977 | 41.957 | 42.418 | 29.559 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.125 | 1000 | 0 | 62.075 | 40.975 | 41.962 | 42.125 | 29.57 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.154 | 1000 | 0 | 62.048 | 40.98 | 41.967 | 42.236 | 30.18 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.214 | 13.892 | 1000 | 0 | 65.728 | 40.96 | 41.964 | 42.736 | 30.246 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.97 | 14.519 | 1000 | 0 | 66.798 | 40.964 | 41.962 | 42.262 | 30.246 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12775 | 0 | 2553.914 | 1.042 | 2.048 | 7.119 | 30.688 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.605 | 14.719 | 1000 | 0 | 68.47 | 40.967 | 41.987 | 43.015 | 35.133 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.419 | 7.129 | 1000 | 0 | 134.793 | 40.897 | 42.32 | 43.268 | 35.133 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.953 | 7.471 | 1001 | 0 | 125.864 | 40.854 | 42.418 | 43.736 | 35.133 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.01 | 2.002 | 9023 | 0 | 1801.085 | 1.397 | 2.931 | 21.155 | 35.613 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.968 | 10.251 | 1000 | 0 | 111.514 | 41.652 | 42.803 | 43.201 | 40.727 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.549 | 10.879 | 1000 | 0 | 79.688 | 41.917 | 42.942 | 44.463 | 39.754 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.624 | 12.902 | 1000 | 0 | 94.127 | 41.907 | 42.94 | 44.01 | 39.754 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 6253 | 0 | 1249.862 | 1.902 | 4.024 | 37.814 | 40.152 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.172 | 14.146 | 1000 | 0 | 75.917 | 41.957 | 43.355 | 44.811 | 45.543 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.406 | 14.625 | 1000 | 0 | 74.595 | 41.974 | 44.157 | 58.881 | 41.016 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.775 | 14.48 | 1000 | 0 | 72.597 | 42.128 | 44.138 | 46.081 | 41.016 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 4558 | 0 | 910.774 | 2.748 | 5.879 | 40.633 | 45.438 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.257 | 15.796 | 1000 | 0 | 65.545 | 42.987 | 45.361 | 50.009 | 54.066 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.465 | 15.773 | 1000 | 0 | 69.133 | 43.913 | 48.002 | 50.096 | 54.027 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.93 | 14.875 | 1000 | 0 | 66.978 | 43.934 | 46.994 | 49.944 | 54.027 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.036 | 2898 | 0 | 578.655 | 4.76 | 8.991 | 30.737 | 60.039 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.325 | 16.756 | 1000 | 0 | 61.254 | 45.91 | 50.993 | 60.39 | 83.059 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.01 | 28.766 | 363 | 0 | 12.513 | 241.821 | 242.961 | 19609.894 | 83.535 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.418 | 19.188 | 243 | 0 | 12.514 | 241.76 | 242.821 | 12804.525 | 83.586 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.387 | 183 | 0 | 12.512 | 241.791 | 242.635 | 10022.799 | 83.586 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.586 | 123 | 0 | 12.511 | 241.77 | 242.834 | 5237.21 | 83.598 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.59 | 103 | 0 | 10.477 | 241.772 | 242.433 | 5133.788 | 83.598 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.794 | 63 | 0 | 12.513 | 241.519 | 242.405 | 242.556 | 83.598 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.791 | 42 | 0 | 8.345 | 241.193 | 242.613 | 242.987 | 83.613 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.018 | 122 | 0 | 24.377 | 41.963 | 42.131 | 42.817 | 83.688 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.031 | 114 | 0 | 22.728 | 44.963 | 45.227 | 46.029 | 83.758 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.04 | 97 | 0 | 19.358 | 51.961 | 52.943 | 52.993 | 83.773 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.057 | 56 | 0 | 11.044 | 90.975 | 91.975 | 91.99 | 83.789 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.051 | 2.083 | 36 | 0 | 7.128 | 141.043 | 142.037 | 142.205 | 83.789 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.377 | 21 | 0 | 4.168 | 241.892 | 242.129 | 242.816 | 83.789 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17593 | 0 | 3517.948 | 1.327 | 2.081 | 2.551 | 67.605 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17561 | 0 | 3511.481 | 1.325 | 2.128 | 2.567 | 68.285 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17688 | 0 | 3536.862 | 1.323 | 2.072 | 2.567 | 68.016 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17066 | 0 | 3412.597 | 1.38 | 2.078 | 2.552 | 68.238 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16658 | 0 | 3330.643 | 1.401 | 2.261 | 2.749 | 69.641 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15545 | 0 | 3108.22 | 1.492 | 2.488 | 2.984 | 70.184 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17652 | 0 | 3529.398 | 1.323 | 2.122 | 2.593 | 70.406 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17866 | 0 | 3572.269 | 1.312 | 2.016 | 2.524 | 72.566 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13770 | 0 | 2753.192 | 1.674 | 2.903 | 3.451 | 81.816 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7581 | 0 | 1515.439 | 3.125 | 5.353 | 6.264 | 76.566 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13952 | 0 | 2789.554 | 1.669 | 2.835 | 3.296 | 81.617 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.036 | 2.021 | 13960 | 0 | 2771.877 | 1.448 | 2.43 | 3.576 | 71.098 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10118 | 0 | 2022.856 | 2.103 | 3.899 | 6.016 | 98.949 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4059 | 0 | 810.862 | 5.907 | 10.276 | 11.559 | 80.043 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9460 | 0 | 1891.402 | 2.2 | 4.215 | 7.457 | 73.324 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9132 | 0 | 1825.776 | 2.289 | 4.402 | 7.079 | 73.574 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7152 | 0 | 1429.595 | 2.895 | 5.567 | 22.478 | 121.609 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.25 | 2206 | 0 | 440.327 | 11.11 | 18.754 | 21.033 | 82.781 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6763 | 0 | 1351.894 | 3.002 | 6.044 | 22.995 | 78.219 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6562 | 0 | 1311.669 | 3.064 | 6.259 | 23.933 | 78.359 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 4788 | 0 | 956.884 | 4.474 | 8.396 | 26.57 | 126.723 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.018 | 1241 | 0 | 247.317 | 19.983 | 32.377 | 36.412 | 84.551 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 4994 | 0 | 997.996 | 4.148 | 8.221 | 25.295 | 82.441 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4857 | 0 | 970.386 | 4.351 | 8.447 | 24.759 | 82.441 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.01 | 3078 | 0 | 614.881 | 7.862 | 12.485 | 14.487 | 109.223 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.764 | 7.695 | 1000 | 0 | 128.793 | 38.319 | 62.359 | 70.752 | 89.371 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2899 | 0 | 578.86 | 7.977 | 14.698 | 16.493 | 87.871 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3236 | 0 | 646.241 | 7.177 | 13.068 | 14.399 | 87.871 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.896 | 50.916 | 360 | 0 | 7.073 | 2544.335 | 2547.843 | 2548.606 | 104.711 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.93 | 33.918 | 240 | 0 | 7.073 | 1696.159 | 1699.405 | 1700.059 | 110.113 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.442 | 25.444 | 180 | 0 | 7.075 | 1271.693 | 1274.297 | 1274.573 | 110.113 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.96 | 16.958 | 120 | 0 | 7.076 | 847.831 | 850.901 | 851.171 | 111.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.196 | 14.132 | 100 | 0 | 7.044 | 836.489 | 848.296 | 848.505 | 111.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.479 | 8.482 | 60 | 0 | 7.076 | 423.851 | 424.892 | 425.186 | 111.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.652 | 5.652 | 40 | 0 | 7.078 | 282.463 | 282.826 | 283.091 | 111.375 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1888 | 0 | 377.413 | 2.634 | 2.812 | 3.093 | 116.273 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.005 | 565 | 0 | 112.849 | 8.814 | 8.955 | 9.098 | 118.336 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.002 | 404 | 0 | 80.62 | 12.336 | 12.671 | 12.971 | 118.336 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.024 | 99 | 0 | 19.785 | 50.483 | 50.624 | 50.88 | 118.336 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.011 | 50 | 0 | 9.941 | 100.491 | 100.623 | 100.773 | 118.336 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.493 | 200.554 | 200.767 | 118.336 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18192 | 0 | 3637.515 | 1.288 | 1.98 | 2.451 | 67.723 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17746 | 0 | 3548.524 | 1.32 | 2.024 | 2.503 | 67.871 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17758 | 0 | 3551.05 | 1.317 | 2.035 | 2.525 | 67.723 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18045 | 0 | 3608.074 | 1.299 | 1.974 | 2.454 | 67.82 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17853 | 0 | 3569.788 | 1.306 | 2.067 | 2.532 | 69.684 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15569 | 0 | 3113.212 | 1.496 | 2.431 | 3.022 | 69.57 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17740 | 0 | 3547.177 | 1.316 | 2.105 | 2.557 | 69.98 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17218 | 0 | 3442.914 | 1.359 | 2.109 | 2.632 | 72.809 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13744 | 0 | 2748.154 | 1.689 | 2.875 | 3.389 | 81.977 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 7476 | 0 | 1494.07 | 3.192 | 5.311 | 6.319 | 74.715 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13946 | 0 | 2788.405 | 1.664 | 2.843 | 3.348 | 81.109 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.026 | 2.001 | 13862 | 0 | 2758.234 | 1.539 | 2.479 | 3.409 | 71.871 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9878 | 0 | 1974.86 | 2.149 | 3.979 | 6.326 | 100.547 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 4224 | 0 | 844.014 | 5.601 | 9.98 | 11.141 | 78.82 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10091 | 0 | 2017.401 | 2.057 | 3.946 | 5.896 | 75.422 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9774 | 0 | 1953.998 | 2.159 | 4.122 | 6.226 | 75.547 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7486 | 0 | 1496.156 | 2.766 | 5.281 | 22.051 | 118.086 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.091 | 2350 | 0 | 469.164 | 10.418 | 17.925 | 20.072 | 82.379 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7779 | 0 | 1555.221 | 2.613 | 5.174 | 21.848 | 80.727 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7640 | 0 | 1527.278 | 2.676 | 5.1 | 21.863 | 80.789 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5258 | 0 | 1050.871 | 4.002 | 7.669 | 24.975 | 122.426 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.845 | 1263 | 0 | 251.711 | 19.392 | 33.479 | 36.568 | 81.867 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4858 | 0 | 970.542 | 4.279 | 8.311 | 25.87 | 82.227 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.003 | 4760 | 0 | 950.798 | 4.383 | 8.608 | 27.175 | 82.477 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3153 | 0 | 629.732 | 7.507 | 12.525 | 14.149 | 99.813 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.608 | 7.568 | 1000 | 0 | 131.444 | 37.562 | 40.259 | 69.429 | 86.297 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2910 | 0 | 581.074 | 7.872 | 14.625 | 16.392 | 85.793 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2974 | 0 | 593.912 | 7.913 | 14.338 | 15.611 | 85.793 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.882 | 50.898 | 360 | 0 | 7.075 | 2543.558 | 2547.708 | 2550.794 | 102.391 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.925 | 33.914 | 240 | 0 | 7.074 | 1695.979 | 1698.402 | 1698.717 | 102.391 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.439 | 25.441 | 180 | 0 | 7.076 | 1271.704 | 1275.999 | 1276.54 | 102.457 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.963 | 16.96 | 120 | 0 | 7.074 | 848.003 | 851.486 | 852.114 | 104.914 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.145 | 14.132 | 100 | 0 | 7.07 | 840.244 | 848.747 | 849.31 | 105.0 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.483 | 8.479 | 60 | 0 | 7.073 | 424.042 | 425.925 | 426.002 | 105.0 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.652 | 5.651 | 40 | 0 | 7.077 | 282.52 | 282.913 | 283.057 | 105.0 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1953 | 0 | 390.411 | 2.517 | 2.661 | 2.908 | 113.375 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.003 | 576 | 0 | 115.055 | 8.646 | 8.815 | 8.92 | 113.375 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.002 | 410 | 0 | 81.816 | 12.182 | 12.294 | 12.546 | 113.375 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.05 | 2.025 | 100 | 0 | 19.801 | 50.443 | 50.589 | 50.715 | 108.75 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.011 | 50 | 0 | 9.944 | 100.481 | 100.65 | 100.878 | 110.375 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.984 | 200.555 | 200.794 | 200.829 | 112.938 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18246 | 0 | 3648.557 | 1.284 | 1.97 | 2.447 | 68.191 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17627 | 0 | 3524.425 | 1.323 | 2.11 | 2.585 | 68.434 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18067 | 0 | 3612.6 | 1.291 | 2.05 | 2.494 | 68.496 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17358 | 0 | 3470.858 | 1.353 | 2.044 | 2.523 | 68.84 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17571 | 0 | 3513.479 | 1.326 | 2.138 | 2.561 | 70.027 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15512 | 0 | 3101.333 | 1.492 | 2.497 | 2.977 | 70.504 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17695 | 0 | 3538.166 | 1.317 | 2.12 | 2.564 | 71.168 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17228 | 0 | 3444.702 | 1.357 | 2.105 | 2.56 | 74.801 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13555 | 0 | 2710.289 | 1.714 | 2.903 | 3.398 | 85.699 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7343 | 0 | 1467.952 | 3.234 | 5.386 | 6.466 | 78.262 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13466 | 0 | 2692.383 | 1.723 | 2.952 | 3.445 | 85.828 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.041 | 13564 | 0 | 2701.584 | 1.421 | 2.414 | 3.556 | 74.262 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9661 | 0 | 1931.497 | 2.166 | 4.078 | 6.431 | 106.191 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4147 | 0 | 828.554 | 5.73 | 10.125 | 11.293 | 89.035 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9680 | 0 | 1935.317 | 2.155 | 4.122 | 7.5 | 84.352 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.003 | 9525 | 0 | 1897.75 | 2.213 | 4.2 | 6.587 | 84.289 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7480 | 0 | 1495.168 | 2.738 | 5.298 | 23.012 | 122.051 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.055 | 2417 | 0 | 482.578 | 10.012 | 17.459 | 19.591 | 91.301 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7867 | 0 | 1572.38 | 2.582 | 5.153 | 22.854 | 90.086 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7091 | 0 | 1417.313 | 2.883 | 5.747 | 24.499 | 90.172 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.028 | 5224 | 0 | 1043.712 | 3.96 | 7.842 | 26.0 | 159.395 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.728 | 1323 | 0 | 263.711 | 18.501 | 31.34 | 35.4 | 131.473 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5354 | 0 | 1069.93 | 3.859 | 7.738 | 25.057 | 135.523 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.163 | 2.003 | 5215 | 0 | 1009.983 | 4.022 | 7.816 | 25.78 | 135.523 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3086 | 0 | 616.202 | 7.525 | 13.778 | 15.777 | 155.125 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.295 | 7.318 | 1000 | 0 | 137.084 | 35.911 | 56.849 | 64.685 | 144.293 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3313 | 0 | 661.945 | 7.059 | 12.803 | 14.411 | 150.441 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2941 | 0 | 587.149 | 8.097 | 14.162 | 16.221 | 150.441 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.887 | 50.888 | 360 | 0 | 7.075 | 2544.007 | 2546.082 | 2548.092 | 171.617 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.914 | 33.922 | 240 | 0 | 7.077 | 1695.416 | 1697.583 | 1698.646 | 174.242 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.434 | 25.435 | 180 | 0 | 7.077 | 1271.371 | 1273.886 | 1274.244 | 174.242 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.959 | 16.952 | 120 | 0 | 7.076 | 847.822 | 850.83 | 851.045 | 174.309 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.25 | 14.136 | 100 | 0 | 7.018 | 835.672 | 848.142 | 848.608 | 174.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.479 | 8.481 | 60 | 0 | 7.076 | 423.835 | 424.828 | 425.797 | 174.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.651 | 40 | 0 | 7.078 | 282.488 | 282.725 | 282.732 | 174.375 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1903 | 0 | 380.499 | 2.617 | 2.771 | 2.915 | 176.188 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.005 | 567 | 0 | 113.319 | 8.782 | 8.918 | 9.122 | 176.188 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.011 | 404 | 0 | 80.767 | 12.334 | 12.475 | 12.676 | 176.188 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.05 | 2.026 | 100 | 0 | 19.8 | 50.449 | 50.576 | 50.744 | 176.188 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.014 | 50 | 0 | 9.941 | 100.517 | 100.676 | 100.808 | 176.188 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.536 | 200.634 | 200.772 | 176.188 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

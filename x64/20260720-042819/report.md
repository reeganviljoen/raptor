# Puma vs Raptor Simulation

Run ID: `20260720-042819`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.101 | 1000 | 0 | 61.96 | 40.998 | 41.995 | 42.428 | 30.172 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.152 | 16.101 | 1000 | 0 | 61.911 | 41.003 | 42.013 | 42.568 | 30.238 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.095 | 1000 | 0 | 62.015 | 40.99 | 41.976 | 42.444 | 30.293 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.101 | 1000 | 0 | 61.978 | 40.997 | 41.976 | 42.189 | 30.293 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.144 | 16.096 | 1000 | 0 | 61.944 | 40.998 | 42.011 | 42.441 | 30.336 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.118 | 1000 | 0 | 61.987 | 40.995 | 41.969 | 42.317 | 30.336 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.095 | 1000 | 0 | 61.973 | 40.996 | 41.992 | 42.374 | 30.367 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.111 | 1000 | 0 | 61.994 | 40.993 | 41.958 | 42.259 | 31.082 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.963 | 13.452 | 1000 | 0 | 66.829 | 40.978 | 41.982 | 42.749 | 31.082 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.682 | 14.443 | 1000 | 0 | 68.111 | 40.979 | 41.978 | 42.221 | 31.082 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12312 | 0 | 2461.558 | 1.126 | 1.887 | 5.893 | 31.355 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.92 | 14.233 | 1000 | 0 | 67.025 | 40.991 | 41.996 | 42.774 | 40.121 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.855 | 12.369 | 1000 | 0 | 77.791 | 41.911 | 42.725 | 43.239 | 40.121 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.568 | 13.238 | 1000 | 0 | 68.645 | 41.943 | 42.375 | 43.255 | 40.121 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9323 | 0 | 1863.734 | 1.535 | 2.406 | 41.635 | 40.121 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.443 | 14.012 | 1000 | 0 | 69.238 | 41.956 | 42.94 | 43.23 | 50.117 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.888 | 14.895 | 1000 | 0 | 67.167 | 42.009 | 43.308 | 44.004 | 50.117 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.86 | 15.57 | 1000 | 0 | 67.294 | 42.043 | 43.24 | 44.16 | 50.117 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 6686 | 0 | 1336.525 | 2.061 | 3.487 | 14.52 | 50.117 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.643 | 15.631 | 1000 | 0 | 63.927 | 42.949 | 43.984 | 44.352 | 65.906 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.743 | 15.184 | 1000 | 0 | 67.827 | 43.903 | 45.007 | 48.064 | 61.301 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.804 | 16.081 | 1000 | 0 | 67.547 | 43.766 | 45.019 | 47.947 | 61.301 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4504 | 0 | 900.165 | 3.06 | 5.329 | 15.148 | 61.301 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.526 | 16.394 | 1000 | 0 | 64.408 | 44.791 | 46.068 | 47.867 | 73.848 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.982 | 15.862 | 1000 | 0 | 62.57 | 46.579 | 48.105 | 51.35 | 65.227 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.269 | 16.614 | 1000 | 0 | 65.494 | 46.898 | 48.99 | 51.999 | 65.227 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.041 | 2744 | 0 | 547.979 | 5.303 | 7.473 | 20.598 | 73.762 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.117 | 17.965 | 1000 | 0 | 58.42 | 47.96 | 51.094 | 53.224 | 86.188 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.019 | 28.782 | 363 | 0 | 12.509 | 241.866 | 243.61 | 19618.277 | 86.621 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.406 | 19.185 | 243 | 0 | 12.522 | 241.474 | 243.03 | 12799.663 | 86.652 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.629 | 14.375 | 183 | 0 | 12.51 | 241.786 | 242.985 | 10018.949 | 86.66 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.583 | 123 | 0 | 12.518 | 241.666 | 242.251 | 5228.123 | 86.684 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.578 | 103 | 0 | 10.48 | 241.775 | 242.875 | 5128.745 | 86.75 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.795 | 63 | 0 | 12.503 | 241.771 | 242.817 | 243.108 | 86.762 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.796 | 42 | 0 | 8.34 | 241.823 | 242.248 | 242.676 | 86.762 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.017 | 122 | 0 | 24.381 | 41.974 | 42.038 | 42.792 | 86.789 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.038 | 109 | 0 | 21.754 | 46.968 | 47.916 | 47.991 | 86.789 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.029 | 98 | 0 | 19.544 | 51.876 | 52.004 | 52.677 | 86.789 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.067 | 55 | 0 | 10.994 | 91.898 | 92.085 | 92.948 | 86.793 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.086 | 36 | 0 | 7.104 | 141.951 | 142.972 | 142.991 | 86.793 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.379 | 21 | 0 | 4.169 | 241.915 | 242.05 | 242.1 | 86.793 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.127 | 1000 | 0 | 61.979 | 40.995 | 41.981 | 42.261 | 28.184 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.108 | 1000 | 0 | 62.028 | 40.986 | 41.963 | 42.35 | 28.184 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.105 | 1000 | 0 | 61.969 | 40.992 | 41.984 | 42.44 | 28.383 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.11 | 1000 | 0 | 62.044 | 40.987 | 41.961 | 42.187 | 28.422 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.15 | 1000 | 0 | 61.981 | 40.993 | 41.949 | 42.296 | 28.422 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.14 | 16.117 | 1000 | 0 | 61.958 | 40.993 | 41.974 | 42.383 | 28.422 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.091 | 1000 | 0 | 62.014 | 41.002 | 41.986 | 42.378 | 28.426 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.099 | 1000 | 0 | 62.025 | 40.995 | 41.986 | 42.286 | 29.078 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.506 | 14.275 | 1000 | 0 | 64.492 | 40.982 | 41.979 | 42.124 | 29.078 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.19 | 14.048 | 1000 | 0 | 65.834 | 40.981 | 41.984 | 42.662 | 29.078 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 12192 | 0 | 2437.377 | 1.152 | 1.896 | 5.022 | 29.43 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.335 | 15.195 | 1000 | 0 | 65.209 | 40.985 | 41.982 | 42.908 | 35.031 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.585 | 12.476 | 1000 | 0 | 68.565 | 41.943 | 42.596 | 43.222 | 35.031 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.713 | 12.579 | 1000 | 0 | 67.968 | 41.941 | 42.469 | 43.268 | 35.031 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 9265 | 0 | 1852.488 | 1.547 | 2.428 | 5.253 | 35.031 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.441 | 14.618 | 1000 | 0 | 64.763 | 41.97 | 42.96 | 43.482 | 38.535 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.403 | 15.789 | 1000 | 0 | 64.922 | 41.991 | 43.053 | 44.215 | 38.215 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.826 | 15.234 | 1000 | 0 | 72.325 | 41.996 | 43.385 | 44.241 | 38.215 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6841 | 0 | 1367.441 | 1.999 | 3.278 | 13.486 | 39.09 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.705 | 15.942 | 1000 | 0 | 63.673 | 42.946 | 43.977 | 45.204 | 44.168 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.42 | 14.765 | 1000 | 0 | 69.349 | 43.778 | 44.939 | 46.484 | 43.113 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.014 | 15.258 | 1000 | 0 | 71.359 | 43.88 | 44.993 | 48.53 | 43.113 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.148 | 4533 | 0 | 905.951 | 3.02 | 5.214 | 14.842 | 46.203 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.243 | 15.579 | 1000 | 0 | 65.604 | 44.857 | 46.239 | 49.699 | 51.973 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.172 | 16.658 | 1000 | 0 | 61.834 | 46.861 | 48.241 | 49.969 | 49.906 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.144 | 16.112 | 1000 | 0 | 58.331 | 46.815 | 48.024 | 49.57 | 49.906 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.009 | 2723 | 0 | 543.686 | 5.378 | 7.389 | 13.763 | 55.918 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.248 | 17.609 | 1000 | 0 | 57.979 | 47.973 | 51.087 | 54.215 | 82.063 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.009 | 28.788 | 363 | 0 | 12.514 | 241.815 | 243.97 | 19614.835 | 82.313 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.432 | 19.183 | 243 | 0 | 12.505 | 241.897 | 244.315 | 12813.049 | 82.355 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.383 | 183 | 0 | 12.51 | 241.876 | 243.097 | 10031.72 | 82.383 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.597 | 123 | 0 | 12.51 | 241.908 | 242.481 | 5238.031 | 82.406 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.591 | 103 | 0 | 10.479 | 241.704 | 242.534 | 5135.378 | 82.418 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.797 | 63 | 0 | 12.518 | 241.394 | 242.251 | 243.09 | 82.426 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.794 | 42 | 0 | 8.337 | 241.741 | 242.355 | 242.906 | 82.43 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.018 | 122 | 0 | 24.381 | 41.955 | 42.047 | 42.797 | 82.445 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.042 | 109 | 0 | 21.783 | 46.949 | 47.097 | 47.934 | 82.449 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.033 | 98 | 0 | 19.582 | 51.057 | 51.999 | 52.054 | 82.457 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.003 | 2.068 | 55 | 0 | 10.994 | 91.908 | 91.997 | 92.902 | 82.457 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.085 | 36 | 0 | 7.107 | 141.943 | 142.53 | 142.944 | 82.457 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.375 | 21 | 0 | 4.17 | 241.909 | 242.038 | 242.047 | 82.461 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.128 | 1000 | 0 | 61.987 | 40.993 | 41.946 | 42.277 | 28.277 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.104 | 1000 | 0 | 61.978 | 40.993 | 41.982 | 42.457 | 28.301 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.105 | 1000 | 0 | 61.978 | 40.992 | 41.972 | 42.31 | 28.309 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.121 | 1000 | 0 | 61.987 | 40.993 | 41.969 | 42.704 | 28.34 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.169 | 16.121 | 1000 | 0 | 61.847 | 40.988 | 41.982 | 42.429 | 28.34 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.09 | 1000 | 0 | 62.082 | 40.983 | 41.949 | 42.086 | 28.367 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.106 | 1000 | 0 | 62.031 | 40.992 | 41.98 | 42.383 | 28.383 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.111 | 1000 | 0 | 61.976 | 40.992 | 41.995 | 42.408 | 28.926 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.501 | 14.637 | 1000 | 0 | 64.513 | 40.982 | 41.985 | 42.959 | 28.926 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.627 | 13.969 | 1000 | 0 | 63.992 | 40.983 | 41.983 | 42.181 | 29.023 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12219 | 0 | 2442.984 | 1.129 | 1.933 | 6.052 | 29.387 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.428 | 10.651 | 1000 | 0 | 74.473 | 41.053 | 42.12 | 43.149 | 34.703 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.67 | 12.009 | 1000 | 0 | 68.168 | 41.948 | 42.834 | 43.279 | 34.703 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.271 | 12.727 | 1000 | 0 | 70.074 | 41.938 | 42.62 | 43.411 | 34.703 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.029 | 8969 | 0 | 1792.739 | 1.553 | 2.533 | 13.487 | 34.805 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.657 | 14.669 | 1000 | 0 | 63.87 | 41.975 | 42.953 | 43.299 | 38.246 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.628 | 15.643 | 1000 | 0 | 63.986 | 41.988 | 43.054 | 44.817 | 37.758 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.373 | 15.592 | 1000 | 0 | 65.049 | 41.989 | 43.07 | 44.066 | 37.758 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 6776 | 0 | 1354.426 | 2.037 | 3.308 | 13.846 | 39.125 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.745 | 14.805 | 1000 | 0 | 63.514 | 42.941 | 43.928 | 44.915 | 44.129 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.139 | 15.828 | 1000 | 0 | 66.055 | 43.857 | 44.966 | 48.716 | 44.129 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.719 | 16.297 | 1000 | 0 | 67.941 | 43.617 | 44.991 | 45.915 | 44.129 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4595 | 0 | 918.116 | 3.014 | 4.972 | 18.174 | 46.574 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.392 | 16.598 | 1000 | 0 | 64.967 | 44.511 | 46.574 | 49.016 | 50.016 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.141 | 16.529 | 1000 | 0 | 66.044 | 46.0 | 48.428 | 50.923 | 49.566 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.433 | 16.212 | 1000 | 0 | 60.854 | 46.893 | 48.379 | 50.569 | 49.566 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.083 | 2815 | 0 | 562.068 | 5.237 | 6.942 | 13.371 | 55.578 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.669 | 17.818 | 1000 | 0 | 56.597 | 47.963 | 50.928 | 53.0 | 83.695 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.027 | 28.774 | 363 | 0 | 12.505 | 241.907 | 244.51 | 19628.708 | 83.961 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.429 | 19.187 | 243 | 0 | 12.507 | 241.927 | 242.897 | 12805.511 | 84.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.383 | 183 | 0 | 12.514 | 241.864 | 243.259 | 10025.312 | 84.027 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.584 | 123 | 0 | 12.512 | 241.728 | 242.874 | 5229.731 | 84.031 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.578 | 103 | 0 | 10.486 | 241.642 | 242.837 | 5130.487 | 84.043 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.792 | 63 | 0 | 12.499 | 241.745 | 242.558 | 243.385 | 84.051 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.795 | 42 | 0 | 8.34 | 241.78 | 242.459 | 242.745 | 84.066 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.018 | 122 | 0 | 24.382 | 41.973 | 42.06 | 42.821 | 84.074 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.037 | 110 | 0 | 21.801 | 46.968 | 47.223 | 47.979 | 84.074 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.006 | 99 | 0 | 19.729 | 50.984 | 51.958 | 51.977 | 84.102 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.0 | 2.067 | 55 | 0 | 11.0 | 91.956 | 92.13 | 92.982 | 84.109 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.05 | 2.083 | 36 | 0 | 7.129 | 141.002 | 142.239 | 142.985 | 84.109 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.373 | 21 | 0 | 4.17 | 241.942 | 242.051 | 242.172 | 84.109 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16106 | 0 | 3220.597 | 1.49 | 1.977 | 2.381 | 65.953 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15637 | 0 | 3126.768 | 1.537 | 2.048 | 2.469 | 66.035 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15919 | 0 | 3183.087 | 1.504 | 2.028 | 2.447 | 66.262 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15712 | 0 | 3141.726 | 1.525 | 2.088 | 2.533 | 66.539 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15792 | 0 | 3157.823 | 1.516 | 2.059 | 2.5 | 68.129 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13760 | 0 | 2751.358 | 1.748 | 2.353 | 2.82 | 68.121 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15870 | 0 | 3173.323 | 1.509 | 2.041 | 2.436 | 68.246 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15495 | 0 | 3098.142 | 1.543 | 2.163 | 2.653 | 69.133 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12733 | 0 | 2545.842 | 1.903 | 2.416 | 2.836 | 80.023 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6488 | 0 | 1296.685 | 3.819 | 4.631 | 5.072 | 74.223 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12694 | 0 | 2537.798 | 1.918 | 2.394 | 2.862 | 78.965 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 2.001 | 12664 | 0 | 2524.846 | 1.48 | 2.216 | 41.095 | 68.641 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9286 | 0 | 1856.441 | 2.453 | 3.771 | 6.617 | 95.746 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3496 | 0 | 698.539 | 7.141 | 8.579 | 9.396 | 77.781 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9565 | 0 | 1912.146 | 2.403 | 3.59 | 6.055 | 72.176 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9132 | 0 | 1825.785 | 2.489 | 3.812 | 7.108 | 72.176 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6501 | 0 | 1299.611 | 3.468 | 5.732 | 14.765 | 115.949 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.516 | 1920 | 0 | 383.355 | 13.124 | 15.436 | 16.295 | 79.551 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.015 | 6868 | 0 | 1372.529 | 3.246 | 5.502 | 14.512 | 76.52 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6824 | 0 | 1364.064 | 3.3 | 5.564 | 14.575 | 76.52 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4256 | 0 | 850.438 | 5.524 | 8.577 | 18.559 | 144.324 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.346 | 1071 | 0 | 213.415 | 23.546 | 27.846 | 29.475 | 78.859 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4356 | 0 | 870.584 | 5.254 | 7.937 | 18.797 | 78.926 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4401 | 0 | 879.501 | 5.157 | 8.291 | 18.283 | 78.926 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.1 | 2475 | 0 | 494.084 | 10.012 | 14.9 | 17.589 | 129.211 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.02 | 8.336 | 1000 | 0 | 110.869 | 45.13 | 53.087 | 57.486 | 81.195 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.008 | 2632 | 0 | 525.364 | 9.364 | 10.946 | 11.937 | 83.219 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2645 | 0 | 528.179 | 9.243 | 11.289 | 12.869 | 83.219 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.023 | 50.973 | 360 | 0 | 7.056 | 2548.222 | 2579.861 | 2601.847 | 100.93 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.986 | 33.986 | 240 | 0 | 7.062 | 1697.626 | 1727.71 | 1736.252 | 106.715 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.496 | 25.485 | 180 | 0 | 7.06 | 1274.989 | 1300.491 | 1310.344 | 108.297 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.985 | 16.987 | 120 | 0 | 7.065 | 848.647 | 875.604 | 898.146 | 108.363 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.152 | 14.152 | 100 | 0 | 7.066 | 800.889 | 852.649 | 857.038 | 108.371 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.501 | 8.494 | 60 | 0 | 7.058 | 424.735 | 443.067 | 446.155 | 110.078 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.663 | 5.662 | 40 | 0 | 7.063 | 283.149 | 287.306 | 287.871 | 110.078 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3629 | 0 | 725.645 | 1.347 | 1.466 | 1.702 | 117.02 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.001 | 936 | 0 | 187.093 | 5.307 | 5.429 | 5.625 | 119.488 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.007 | 483 | 0 | 96.425 | 10.331 | 10.487 | 10.655 | 120.059 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.027 | 99 | 0 | 19.743 | 50.597 | 50.673 | 50.857 | 120.059 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.014 | 50 | 0 | 9.931 | 100.636 | 100.71 | 100.738 | 120.059 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.642 | 200.717 | 200.875 | 120.059 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15719 | 0 | 3143.153 | 1.526 | 2.034 | 2.479 | 64.977 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15282 | 0 | 3055.661 | 1.57 | 2.101 | 2.568 | 65.375 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15631 | 0 | 3125.507 | 1.532 | 2.074 | 2.501 | 65.086 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15345 | 0 | 3068.305 | 1.555 | 2.165 | 2.639 | 65.715 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15519 | 0 | 3103.185 | 1.542 | 2.111 | 2.529 | 67.156 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13476 | 0 | 2694.368 | 1.784 | 2.377 | 2.909 | 67.301 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15492 | 0 | 3097.64 | 1.545 | 2.117 | 2.554 | 67.531 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15088 | 0 | 3017.076 | 1.577 | 2.231 | 2.767 | 67.926 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12626 | 0 | 2524.572 | 1.918 | 2.477 | 2.919 | 79.766 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6487 | 0 | 1296.581 | 3.817 | 4.67 | 5.099 | 74.004 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12526 | 0 | 2504.486 | 1.948 | 2.427 | 2.898 | 79.27 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.024 | 2.001 | 12398 | 0 | 2467.575 | 1.799 | 2.374 | 3.295 | 67.945 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8869 | 0 | 1773.142 | 2.526 | 4.249 | 7.383 | 96.609 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3405 | 0 | 680.013 | 7.321 | 8.861 | 9.785 | 77.746 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9058 | 0 | 1810.972 | 2.474 | 4.148 | 7.666 | 73.246 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8853 | 0 | 1769.842 | 2.534 | 4.093 | 8.037 | 73.246 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6716 | 0 | 1342.388 | 3.298 | 5.774 | 15.142 | 123.582 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.451 | 1971 | 0 | 393.32 | 12.719 | 15.294 | 16.558 | 79.926 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 6622 | 0 | 1323.178 | 3.299 | 6.039 | 16.216 | 76.215 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 6673 | 0 | 1333.154 | 3.261 | 5.59 | 15.755 | 76.215 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4084 | 0 | 816.162 | 5.691 | 8.343 | 20.265 | 136.961 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.711 | 1066 | 0 | 212.443 | 23.349 | 28.063 | 30.328 | 80.5 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4172 | 0 | 833.518 | 5.396 | 8.933 | 20.884 | 77.523 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.003 | 4209 | 0 | 840.26 | 5.311 | 8.844 | 20.218 | 77.586 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.142 | 2411 | 0 | 481.547 | 10.245 | 12.477 | 13.671 | 95.016 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.954 | 8.442 | 1000 | 0 | 111.681 | 44.162 | 52.486 | 55.181 | 83.789 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 2690 | 0 | 537.311 | 9.104 | 10.899 | 12.382 | 83.555 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2709 | 0 | 540.815 | 8.933 | 11.108 | 12.634 | 83.555 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.011 | 51.001 | 360 | 0 | 7.057 | 2544.657 | 2621.532 | 2660.798 | 103.398 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.018 | 34.006 | 240 | 0 | 7.055 | 1699.976 | 1759.07 | 1785.889 | 103.844 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.502 | 25.507 | 180 | 0 | 7.058 | 1274.766 | 1323.658 | 1339.358 | 103.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.009 | 16.998 | 120 | 0 | 7.055 | 846.627 | 887.313 | 897.114 | 104.039 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.202 | 14.226 | 100 | 0 | 7.041 | 738.125 | 836.569 | 854.3 | 106.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.509 | 8.496 | 60 | 0 | 7.051 | 424.54 | 448.097 | 459.006 | 106.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.667 | 5.664 | 40 | 0 | 7.059 | 282.436 | 295.1 | 295.654 | 106.703 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3584 | 0 | 716.642 | 1.361 | 1.497 | 1.793 | 114.852 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.003 | 938 | 0 | 187.57 | 5.296 | 5.389 | 5.613 | 117.445 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 481 | 0 | 96.174 | 10.346 | 10.602 | 10.833 | 118.078 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.023 | 99 | 0 | 19.789 | 50.488 | 50.596 | 50.673 | 118.078 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.013 | 50 | 0 | 9.939 | 100.548 | 100.63 | 100.735 | 118.078 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.588 | 200.615 | 200.631 | 118.078 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15848 | 0 | 3168.787 | 1.515 | 2.012 | 2.461 | 65.199 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15475 | 0 | 3094.322 | 1.551 | 2.064 | 2.482 | 69.184 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15873 | 0 | 3174.051 | 1.512 | 2.028 | 2.455 | 68.449 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15558 | 0 | 3110.925 | 1.535 | 2.122 | 2.63 | 68.918 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15678 | 0 | 3134.92 | 1.53 | 2.064 | 2.47 | 70.379 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13587 | 0 | 2716.674 | 1.772 | 2.384 | 2.88 | 69.52 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15581 | 0 | 3115.397 | 1.535 | 2.091 | 2.53 | 70.344 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15273 | 0 | 3053.995 | 1.561 | 2.183 | 2.713 | 71.07 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12608 | 0 | 2520.789 | 1.924 | 2.479 | 2.935 | 81.148 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6435 | 0 | 1286.076 | 3.838 | 4.734 | 5.233 | 74.563 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12584 | 0 | 2516.014 | 1.932 | 2.464 | 2.97 | 81.777 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.034 | 2.041 | 12479 | 0 | 2479.004 | 1.523 | 2.329 | 40.982 | 69.805 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 9404 | 0 | 1880.145 | 2.434 | 3.661 | 5.683 | 121.984 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3482 | 0 | 695.43 | 7.157 | 8.596 | 9.456 | 82.699 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9502 | 0 | 1899.74 | 2.441 | 3.339 | 5.855 | 80.043 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9389 | 0 | 1876.548 | 2.47 | 3.53 | 5.875 | 79.918 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6817 | 0 | 1362.762 | 3.388 | 4.837 | 16.624 | 147.723 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.432 | 1993 | 0 | 397.648 | 12.683 | 14.797 | 15.546 | 85.125 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6979 | 0 | 1395.017 | 3.233 | 4.98 | 16.29 | 82.363 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.11 | 6930 | 0 | 1384.983 | 3.278 | 4.808 | 15.916 | 82.363 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 4385 | 0 | 876.151 | 5.256 | 7.686 | 19.996 | 141.684 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.398 | 1085 | 0 | 216.217 | 23.26 | 27.497 | 29.634 | 85.582 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4412 | 0 | 881.657 | 5.171 | 7.502 | 19.829 | 82.914 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4452 | 0 | 889.734 | 5.105 | 7.76 | 20.265 | 82.914 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.01 | 2490 | 0 | 497.217 | 9.885 | 12.048 | 13.864 | 99.957 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.059 | 8.51 | 1000 | 0 | 110.389 | 45.626 | 52.968 | 55.389 | 92.184 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2718 | 0 | 542.804 | 9.033 | 10.905 | 12.093 | 87.465 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2842 | 0 | 567.544 | 8.586 | 10.283 | 11.408 | 87.527 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.996 | 50.963 | 360 | 0 | 7.059 | 2558.983 | 2648.318 | 2681.667 | 106.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.972 | 33.973 | 240 | 0 | 7.065 | 1703.128 | 1762.737 | 1791.811 | 113.117 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.488 | 25.472 | 180 | 0 | 7.062 | 1270.82 | 1333.394 | 1362.26 | 113.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.999 | 16.977 | 120 | 0 | 7.059 | 856.193 | 905.487 | 922.44 | 113.188 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.161 | 14.214 | 100 | 0 | 7.061 | 746.717 | 879.322 | 890.369 | 113.258 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.491 | 8.504 | 60 | 0 | 7.066 | 423.805 | 446.667 | 449.085 | 113.262 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.658 | 5.653 | 40 | 0 | 7.07 | 283.352 | 296.914 | 303.864 | 113.262 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3602 | 0 | 720.209 | 1.357 | 1.482 | 1.723 | 122.824 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.0 | 943 | 0 | 188.489 | 5.269 | 5.365 | 5.682 | 127.289 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.006 | 482 | 0 | 96.363 | 10.321 | 10.621 | 10.89 | 127.352 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.02 | 99 | 0 | 19.772 | 50.535 | 50.685 | 50.883 | 127.352 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.015 | 50 | 0 | 9.935 | 100.613 | 100.687 | 100.811 | 127.355 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.612 | 200.656 | 200.731 | 127.355 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.146 | 1000 | 0 | 62.004 | 40.993 | 41.968 | 42.323 | 29.441 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.103 | 1000 | 0 | 61.993 | 41.001 | 41.978 | 42.31 | 29.586 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.09 | 1000 | 0 | 62.011 | 40.996 | 41.95 | 42.213 | 29.727 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.101 | 1000 | 0 | 61.968 | 40.994 | 41.982 | 42.359 | 30.035 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.103 | 1000 | 0 | 62.012 | 40.992 | 41.966 | 42.327 | 30.09 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.11 | 1000 | 0 | 61.978 | 40.988 | 41.977 | 42.415 | 30.117 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.117 | 1000 | 0 | 61.979 | 40.988 | 41.95 | 42.386 | 30.133 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.099 | 1000 | 0 | 61.97 | 40.995 | 41.982 | 42.451 | 30.668 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.191 | 13.053 | 1000 | 0 | 70.47 | 40.975 | 41.969 | 42.915 | 30.668 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.986 | 14.892 | 1000 | 0 | 66.729 | 40.978 | 41.98 | 42.578 | 30.723 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11700 | 0 | 2339.237 | 1.219 | 1.977 | 5.685 | 31.07 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.95 | 12.539 | 1000 | 0 | 71.683 | 41.005 | 42.044 | 43.106 | 33.965 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.016 | 12.089 | 1000 | 0 | 71.347 | 41.71 | 42.328 | 43.165 | 33.965 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.904 | 10.416 | 1000 | 0 | 71.92 | 41.909 | 42.691 | 43.244 | 33.965 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.015 | 2.003 | 8780 | 0 | 1750.901 | 1.52 | 2.57 | 59.279 | 34.598 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.954 | 14.239 | 1000 | 0 | 71.664 | 41.956 | 42.94 | 43.527 | 40.359 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.284 | 15.126 | 1000 | 0 | 70.01 | 41.977 | 43.001 | 43.83 | 40.359 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.585 | 14.906 | 1000 | 0 | 64.165 | 41.984 | 43.026 | 44.51 | 40.359 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 6743 | 0 | 1347.804 | 2.004 | 3.211 | 20.949 | 40.691 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.68 | 15.326 | 1000 | 0 | 68.121 | 42.367 | 43.842 | 44.276 | 45.605 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.879 | 14.314 | 1000 | 0 | 72.049 | 43.054 | 44.9 | 48.793 | 45.605 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.016 | 13.209 | 1000 | 0 | 83.225 | 42.988 | 44.973 | 47.028 | 45.605 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.005 | 4216 | 0 | 842.057 | 3.152 | 5.734 | 23.292 | 48.09 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.776 | 15.27 | 1000 | 0 | 67.678 | 44.425 | 46.029 | 47.62 | 52.949 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.318 | 14.062 | 1000 | 0 | 65.285 | 45.907 | 47.91 | 52.887 | 52.949 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.403 | 15.458 | 1000 | 0 | 69.428 | 45.929 | 47.997 | 51.846 | 52.949 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.172 | 2505 | 0 | 500.19 | 5.735 | 8.406 | 24.841 | 58.961 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.703 | 17.4 | 1000 | 0 | 59.87 | 47.936 | 50.915 | 56.345 | 66.414 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.015 | 28.772 | 363 | 0 | 12.511 | 241.851 | 242.973 | 19613.176 | 64.73 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.424 | 19.181 | 243 | 0 | 12.51 | 241.855 | 243.026 | 12810.778 | 64.734 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.388 | 183 | 0 | 12.512 | 241.801 | 242.85 | 10028.646 | 64.742 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.589 | 123 | 0 | 12.508 | 241.836 | 242.683 | 5236.405 | 64.75 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.585 | 103 | 0 | 10.476 | 241.904 | 242.654 | 5138.294 | 64.754 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.796 | 63 | 0 | 12.507 | 241.711 | 242.529 | 243.24 | 64.754 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.788 | 42 | 0 | 8.337 | 241.946 | 242.264 | 242.445 | 64.754 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.362 | 41.961 | 42.179 | 42.94 | 64.789 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.029 | 112 | 0 | 22.366 | 45.923 | 46.02 | 46.908 | 64.809 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.031 | 99 | 0 | 19.628 | 50.986 | 52.022 | 52.484 | 64.809 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.075 | 55 | 0 | 10.985 | 91.93 | 92.038 | 92.528 | 64.816 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.089 | 36 | 0 | 7.1 | 141.955 | 142.104 | 142.847 | 64.82 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.379 | 21 | 0 | 4.167 | 241.936 | 242.067 | 242.708 | 64.828 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.161 | 1000 | 0 | 61.987 | 40.983 | 41.977 | 42.369 | 29.855 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.125 | 1000 | 0 | 61.972 | 40.987 | 41.96 | 42.403 | 30.055 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.111 | 1000 | 0 | 61.983 | 40.996 | 41.971 | 42.332 | 30.32 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.121 | 1000 | 0 | 61.955 | 41.002 | 41.956 | 42.402 | 30.391 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.099 | 1000 | 0 | 62.006 | 40.988 | 41.962 | 42.251 | 30.414 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.127 | 1000 | 0 | 62.024 | 40.988 | 41.937 | 42.212 | 30.414 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.144 | 16.119 | 1000 | 0 | 61.943 | 40.993 | 41.984 | 42.533 | 30.426 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.15 | 16.132 | 1000 | 0 | 61.918 | 41.0 | 41.972 | 42.461 | 31.055 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.363 | 12.915 | 1000 | 0 | 69.624 | 40.979 | 41.967 | 42.881 | 31.055 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.326 | 11.74 | 1000 | 0 | 69.803 | 40.976 | 41.986 | 42.925 | 31.238 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11739 | 0 | 2346.908 | 1.214 | 2.017 | 10.413 | 31.492 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.028 | 12.46 | 1000 | 0 | 71.288 | 41.022 | 42.049 | 43.172 | 36.359 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.937 | 10.909 | 1000 | 0 | 100.632 | 41.829 | 42.768 | 43.997 | 36.359 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.049 | 10.74 | 1000 | 0 | 90.503 | 41.898 | 42.869 | 43.893 | 36.359 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 8757 | 0 | 1750.524 | 1.539 | 2.621 | 25.574 | 36.398 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.764 | 13.63 | 1000 | 0 | 78.345 | 41.949 | 42.617 | 43.157 | 44.512 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.677 | 15.751 | 1000 | 0 | 68.135 | 41.985 | 43.091 | 45.347 | 44.512 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.518 | 15.141 | 1000 | 0 | 73.976 | 41.977 | 43.085 | 44.449 | 44.512 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 6307 | 0 | 1260.55 | 2.14 | 3.594 | 74.026 | 44.512 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.421 | 14.712 | 1000 | 0 | 69.341 | 42.911 | 43.978 | 45.957 | 48.918 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.004 | 13.628 | 1000 | 0 | 71.408 | 43.084 | 44.67 | 54.358 | 45.215 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.575 | 13.653 | 1000 | 0 | 73.663 | 43.065 | 44.81 | 46.595 | 45.215 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 4250 | 0 | 849.181 | 3.079 | 5.928 | 23.466 | 48.527 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.54 | 15.727 | 1000 | 0 | 64.348 | 44.059 | 46.068 | 51.6 | 54.223 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.77 | 15.014 | 1000 | 0 | 72.622 | 45.013 | 47.951 | 51.908 | 49.438 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.395 | 1000 | 0 | 62.108 | 45.948 | 47.75 | 49.954 | 49.438 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.02 | 2780 | 0 | 554.991 | 5.231 | 7.078 | 16.708 | 55.449 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.924 | 17.697 | 1000 | 0 | 59.087 | 47.9 | 50.188 | 53.132 | 65.367 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.012 | 28.758 | 363 | 0 | 12.512 | 241.909 | 243.204 | 19616.796 | 65.527 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.417 | 19.169 | 243 | 0 | 12.515 | 241.753 | 242.989 | 12804.564 | 65.559 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.627 | 14.384 | 183 | 0 | 12.511 | 241.809 | 242.98 | 10028.611 | 65.563 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.588 | 123 | 0 | 12.507 | 241.846 | 242.996 | 5232.188 | 65.566 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.571 | 103 | 0 | 10.476 | 241.816 | 242.57 | 5130.54 | 65.566 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.795 | 63 | 0 | 12.515 | 241.716 | 242.368 | 242.57 | 65.574 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.783 | 42 | 0 | 8.34 | 241.836 | 242.228 | 242.252 | 65.574 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.019 | 122 | 0 | 24.367 | 41.966 | 42.12 | 42.822 | 65.625 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.026 | 113 | 0 | 22.461 | 45.865 | 46.163 | 47.01 | 65.629 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.021 | 99 | 0 | 19.632 | 50.99 | 52.03 | 52.342 | 65.645 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.075 | 55 | 0 | 10.974 | 91.949 | 92.034 | 92.277 | 65.648 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.057 | 2.084 | 36 | 0 | 7.119 | 141.45 | 142.165 | 142.786 | 65.652 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.38 | 21 | 0 | 4.168 | 241.923 | 242.067 | 242.53 | 65.652 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.162 | 1000 | 0 | 62.023 | 40.985 | 41.96 | 42.294 | 29.805 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.137 | 1000 | 0 | 61.972 | 40.999 | 41.956 | 42.369 | 30.172 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.117 | 1000 | 0 | 61.967 | 40.996 | 41.996 | 42.401 | 30.27 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.087 | 1000 | 0 | 62.012 | 40.992 | 41.988 | 42.404 | 30.391 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.105 | 1000 | 0 | 62.028 | 40.988 | 41.981 | 42.441 | 30.445 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.089 | 1000 | 0 | 62.001 | 40.996 | 41.985 | 42.382 | 30.445 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.093 | 1000 | 0 | 62.005 | 40.995 | 41.974 | 42.324 | 30.461 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.09 | 1000 | 0 | 62.017 | 40.993 | 41.971 | 42.353 | 30.789 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.909 | 13.806 | 1000 | 0 | 67.075 | 40.981 | 41.985 | 42.333 | 30.852 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.485 | 15.324 | 1000 | 0 | 64.58 | 40.981 | 41.978 | 42.208 | 30.879 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12078 | 0 | 2414.552 | 1.191 | 1.931 | 7.825 | 31.371 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.31 | 14.016 | 1000 | 0 | 65.317 | 40.981 | 41.991 | 42.449 | 35.941 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.82 | 12.728 | 1000 | 0 | 84.602 | 41.16 | 42.31 | 43.362 | 35.941 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.258 | 11.641 | 1000 | 0 | 75.426 | 41.887 | 42.328 | 43.207 | 35.941 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 8823 | 0 | 1763.672 | 1.51 | 2.531 | 43.285 | 36.223 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.207 | 12.261 | 1000 | 0 | 70.387 | 41.958 | 42.691 | 44.735 | 42.715 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.451 | 14.342 | 1000 | 0 | 69.199 | 41.972 | 43.001 | 44.066 | 42.719 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.569 | 13.747 | 1000 | 0 | 68.638 | 41.977 | 43.087 | 44.64 | 42.719 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6386 | 0 | 1276.5 | 2.05 | 3.684 | 21.548 | 42.719 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.431 | 14.459 | 1000 | 0 | 69.295 | 42.847 | 43.99 | 49.447 | 47.699 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.123 | 15.143 | 1000 | 0 | 70.808 | 43.01 | 44.524 | 47.759 | 47.699 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.072 | 13.588 | 1000 | 0 | 66.347 | 43.223 | 44.915 | 50.246 | 47.699 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 4116 | 0 | 822.162 | 3.153 | 6.056 | 23.439 | 49.953 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.298 | 16.017 | 1000 | 0 | 65.369 | 44.085 | 46.207 | 57.292 | 56.145 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.522 | 16.551 | 1000 | 0 | 68.86 | 45.536 | 47.821 | 50.12 | 53.84 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.969 | 15.616 | 1000 | 0 | 66.804 | 45.924 | 47.887 | 49.907 | 53.84 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.049 | 2666 | 0 | 532.436 | 5.351 | 7.783 | 24.865 | 59.852 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.283 | 17.48 | 1000 | 0 | 57.859 | 47.903 | 50.867 | 58.868 | 65.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.998 | 28.776 | 363 | 0 | 12.518 | 241.593 | 242.926 | 19597.772 | 65.762 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.418 | 19.174 | 243 | 0 | 12.514 | 241.784 | 242.954 | 12807.299 | 65.789 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.616 | 14.379 | 183 | 0 | 12.521 | 241.524 | 242.736 | 10016.866 | 65.82 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.586 | 123 | 0 | 12.521 | 241.484 | 242.507 | 5229.323 | 65.836 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.579 | 103 | 0 | 10.479 | 241.785 | 242.496 | 5131.558 | 65.836 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.792 | 63 | 0 | 12.517 | 241.261 | 242.431 | 242.617 | 65.836 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.785 | 42 | 0 | 8.342 | 241.781 | 242.221 | 242.635 | 65.836 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.362 | 41.978 | 42.15 | 42.999 | 65.875 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.028 | 114 | 0 | 22.611 | 44.998 | 46.005 | 46.043 | 65.875 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.001 | 99 | 0 | 19.679 | 50.984 | 52.006 | 52.02 | 65.887 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.066 | 56 | 0 | 11.039 | 90.992 | 92.021 | 92.496 | 65.914 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.083 | 36 | 0 | 7.099 | 141.962 | 142.023 | 142.993 | 65.914 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.373 | 21 | 0 | 4.174 | 240.992 | 242.052 | 242.053 | 65.918 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16258 | 0 | 3250.848 | 1.48 | 1.92 | 2.377 | 68.922 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15755 | 0 | 3150.193 | 1.526 | 2.002 | 2.416 | 69.008 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16060 | 0 | 3210.99 | 1.493 | 1.998 | 2.543 | 69.148 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15949 | 0 | 3188.868 | 1.507 | 2.001 | 2.472 | 69.363 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16117 | 0 | 3222.651 | 1.491 | 1.959 | 2.354 | 70.813 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14060 | 0 | 2811.263 | 1.721 | 2.203 | 2.529 | 71.219 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16114 | 0 | 3222.161 | 1.488 | 1.985 | 2.371 | 71.273 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15808 | 0 | 3160.876 | 1.521 | 2.054 | 2.48 | 72.125 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13009 | 0 | 2601.194 | 1.869 | 2.31 | 2.606 | 87.613 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6597 | 0 | 1318.605 | 3.75 | 4.553 | 5.048 | 79.559 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12972 | 0 | 2593.617 | 1.871 | 2.334 | 2.645 | 87.012 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12871 | 0 | 2573.435 | 1.838 | 2.299 | 2.698 | 73.637 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9076 | 0 | 1814.638 | 2.467 | 3.878 | 8.186 | 106.551 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3630 | 0 | 725.246 | 6.868 | 8.24 | 9.062 | 84.418 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 9625 | 0 | 1924.423 | 2.34 | 3.59 | 5.561 | 77.793 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9205 | 0 | 1840.275 | 2.455 | 3.665 | 6.341 | 77.98 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.009 | 6816 | 0 | 1362.593 | 3.264 | 5.099 | 19.856 | 125.965 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.278 | 2073 | 0 | 413.939 | 11.93 | 14.562 | 15.773 | 87.207 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 6969 | 0 | 1392.799 | 3.167 | 5.077 | 19.916 | 80.398 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.042 | 6763 | 0 | 1351.748 | 3.233 | 5.403 | 20.077 | 80.473 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.028 | 4092 | 0 | 817.754 | 5.466 | 8.532 | 24.633 | 137.5 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 4.367 | 1094 | 0 | 218.088 | 22.842 | 27.015 | 29.079 | 92.855 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.026 | 4309 | 0 | 860.888 | 5.121 | 8.784 | 24.529 | 83.008 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4347 | 0 | 868.609 | 5.098 | 7.916 | 24.418 | 83.008 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2519 | 0 | 502.967 | 9.838 | 11.43 | 12.225 | 108.34 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.812 | 8.313 | 1000 | 0 | 113.482 | 43.993 | 51.425 | 54.331 | 92.855 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2720 | 0 | 543.056 | 9.071 | 10.601 | 11.658 | 87.996 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2834 | 0 | 565.874 | 8.681 | 10.34 | 11.347 | 87.996 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.129 | 51.113 | 360 | 0 | 7.041 | 2554.921 | 2616.722 | 2632.888 | 104.098 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.065 | 34.081 | 240 | 0 | 7.045 | 1703.099 | 1741.398 | 1750.873 | 114.234 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.547 | 25.546 | 180 | 0 | 7.046 | 1276.348 | 1303.656 | 1313.349 | 114.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.04 | 17.041 | 120 | 0 | 7.042 | 851.635 | 881.21 | 886.8 | 114.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.204 | 14.216 | 100 | 0 | 7.04 | 765.684 | 845.456 | 866.122 | 115.133 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.521 | 8.521 | 60 | 0 | 7.041 | 425.796 | 442.942 | 446.995 | 115.133 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.681 | 5.677 | 40 | 0 | 7.041 | 284.193 | 295.147 | 296.263 | 115.133 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1846 | 0 | 369.07 | 2.662 | 3.096 | 3.283 | 115.258 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.003 | 549 | 0 | 109.628 | 9.115 | 9.908 | 10.488 | 115.32 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.013 | 370 | 0 | 73.917 | 13.562 | 14.141 | 14.38 | 115.32 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.019 | 99 | 0 | 19.772 | 50.527 | 50.59 | 50.805 | 115.32 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.014 | 50 | 0 | 9.939 | 100.556 | 100.63 | 100.7 | 115.32 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.519 | 201.053 | 201.424 | 115.383 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16072 | 0 | 3213.557 | 1.497 | 1.97 | 2.441 | 70.227 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15630 | 0 | 3124.934 | 1.541 | 2.001 | 2.432 | 70.68 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16117 | 0 | 3222.767 | 1.494 | 1.971 | 2.36 | 70.324 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15774 | 0 | 3153.864 | 1.525 | 2.047 | 2.482 | 70.547 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15983 | 0 | 3195.828 | 1.505 | 2.001 | 2.434 | 71.895 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13835 | 0 | 2766.349 | 1.746 | 2.274 | 2.706 | 71.867 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15900 | 0 | 3179.21 | 1.513 | 2.017 | 2.475 | 72.059 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15643 | 0 | 3127.674 | 1.532 | 2.081 | 2.571 | 72.816 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12968 | 0 | 2592.952 | 1.873 | 2.378 | 2.735 | 81.23 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6467 | 0 | 1292.685 | 3.806 | 4.677 | 5.323 | 76.75 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12984 | 0 | 2595.936 | 1.869 | 2.389 | 2.787 | 80.672 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.033 | 12845 | 0 | 2558.395 | 1.451 | 2.193 | 41.07 | 73.063 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.012 | 9286 | 0 | 1856.512 | 2.434 | 3.727 | 6.072 | 112.238 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3613 | 0 | 721.613 | 6.881 | 8.333 | 9.166 | 84.098 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9604 | 0 | 1920.072 | 2.342 | 3.518 | 5.757 | 79.438 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9420 | 0 | 1882.986 | 2.394 | 3.635 | 5.892 | 79.262 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6699 | 0 | 1338.989 | 3.344 | 4.925 | 21.239 | 126.531 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.362 | 2015 | 0 | 402.109 | 12.341 | 14.953 | 16.641 | 87.324 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.009 | 7057 | 0 | 1410.459 | 3.156 | 4.686 | 21.515 | 84.406 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6666 | 0 | 1332.551 | 3.318 | 4.972 | 20.762 | 84.516 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 4131 | 0 | 825.217 | 5.52 | 7.843 | 25.794 | 121.809 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 4.382 | 1071 | 0 | 213.305 | 23.399 | 27.765 | 29.803 | 89.793 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4327 | 0 | 864.358 | 5.189 | 7.924 | 24.695 | 93.727 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4401 | 0 | 879.255 | 5.055 | 7.57 | 24.649 | 93.727 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.009 | 2539 | 0 | 507.055 | 9.743 | 11.406 | 12.438 | 103.285 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.86 | 8.35 | 1000 | 0 | 112.864 | 44.148 | 51.272 | 54.079 | 95.281 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.009 | 2638 | 0 | 526.553 | 9.363 | 11.026 | 12.105 | 96.809 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.009 | 2737 | 0 | 546.647 | 9.005 | 10.826 | 11.781 | 96.809 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.128 | 51.113 | 360 | 0 | 7.041 | 2553.606 | 2601.54 | 2611.482 | 115.5 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.092 | 34.074 | 240 | 0 | 7.04 | 1706.432 | 1736.067 | 1745.676 | 121.91 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.554 | 25.552 | 180 | 0 | 7.044 | 1277.231 | 1298.929 | 1310.392 | 121.973 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.034 | 17.029 | 120 | 0 | 7.045 | 851.991 | 871.42 | 877.057 | 121.973 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.202 | 14.192 | 100 | 0 | 7.041 | 752.972 | 846.703 | 859.383 | 121.973 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.521 | 8.519 | 60 | 0 | 7.041 | 426.51 | 443.224 | 446.203 | 122.352 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.68 | 5.675 | 40 | 0 | 7.042 | 284.093 | 289.476 | 292.526 | 122.352 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 1898 | 0 | 379.583 | 2.612 | 2.951 | 3.274 | 128.191 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.004 | 550 | 0 | 109.952 | 9.058 | 9.851 | 10.342 | 131.867 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.007 | 377 | 0 | 75.388 | 13.266 | 13.925 | 14.064 | 131.867 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.039 | 2.018 | 100 | 0 | 19.845 | 50.334 | 50.462 | 50.791 | 133.492 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.023 | 2.01 | 50 | 0 | 9.953 | 100.401 | 100.573 | 100.724 | 133.492 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.005 | 25 | 0 | 4.984 | 200.563 | 200.62 | 200.753 | 133.496 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16072 | 0 | 3213.66 | 1.494 | 1.975 | 2.418 | 70.641 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15723 | 0 | 3143.968 | 1.534 | 1.992 | 2.366 | 70.754 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16268 | 0 | 3252.936 | 1.481 | 1.917 | 2.306 | 70.926 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15941 | 0 | 3187.539 | 1.515 | 1.985 | 2.392 | 71.059 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15990 | 0 | 3197.019 | 1.505 | 1.979 | 2.385 | 72.902 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13959 | 0 | 2791.058 | 1.73 | 2.226 | 2.642 | 72.98 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16086 | 0 | 3216.239 | 1.494 | 1.975 | 2.4 | 73.176 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15788 | 0 | 3156.642 | 1.523 | 2.031 | 2.464 | 73.965 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12970 | 0 | 2593.287 | 1.87 | 2.358 | 2.772 | 93.664 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6644 | 0 | 1328.075 | 3.718 | 4.519 | 4.979 | 84.504 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12958 | 0 | 2591.027 | 1.876 | 2.32 | 2.627 | 94.164 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.001 | 12739 | 0 | 2537.213 | 1.919 | 2.331 | 2.651 | 76.914 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 9452 | 0 | 1889.47 | 2.398 | 3.661 | 6.052 | 108.699 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3547 | 0 | 708.616 | 7.035 | 8.457 | 9.118 | 88.598 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 9264 | 0 | 1852.312 | 2.391 | 3.911 | 6.834 | 83.512 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9200 | 0 | 1839.293 | 2.414 | 3.868 | 7.111 | 83.137 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6802 | 0 | 1359.484 | 3.237 | 5.113 | 22.15 | 132.434 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.275 | 2053 | 0 | 409.873 | 12.134 | 14.73 | 15.938 | 92.914 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6895 | 0 | 1378.257 | 3.204 | 5.001 | 21.951 | 89.563 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6816 | 0 | 1362.457 | 3.243 | 4.979 | 22.023 | 83.121 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4204 | 0 | 839.941 | 5.461 | 7.282 | 25.486 | 126.809 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.266 | 1095 | 0 | 218.23 | 22.754 | 27.283 | 28.774 | 91.715 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.004 | 4417 | 0 | 880.4 | 5.059 | 7.474 | 25.354 | 90.051 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.011 | 4424 | 0 | 883.372 | 4.995 | 7.821 | 25.159 | 90.051 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.024 | 2532 | 0 | 505.603 | 9.766 | 11.73 | 12.824 | 99.289 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.76 | 8.224 | 1000 | 0 | 114.155 | 43.42 | 52.507 | 55.913 | 97.746 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2627 | 0 | 524.662 | 9.319 | 11.422 | 12.181 | 92.793 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 2699 | 0 | 539.069 | 9.049 | 11.201 | 11.978 | 92.793 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.117 | 51.134 | 360 | 0 | 7.043 | 2553.205 | 2597.549 | 2612.24 | 112.922 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.073 | 34.089 | 240 | 0 | 7.044 | 1700.428 | 1741.964 | 1752.889 | 117.984 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.556 | 25.543 | 180 | 0 | 7.043 | 1275.527 | 1309.272 | 1320.492 | 118.047 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.054 | 17.033 | 120 | 0 | 7.037 | 853.98 | 884.399 | 891.396 | 118.066 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.242 | 14.2 | 100 | 0 | 7.021 | 783.755 | 851.586 | 857.006 | 118.07 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.52 | 8.519 | 60 | 0 | 7.042 | 424.288 | 443.779 | 445.647 | 118.07 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.682 | 5.677 | 40 | 0 | 7.04 | 284.124 | 289.036 | 290.027 | 118.07 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1897 | 0 | 379.272 | 2.617 | 2.995 | 3.269 | 127.363 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.007 | 556 | 0 | 111.168 | 8.976 | 9.704 | 10.332 | 128.738 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 381 | 0 | 76.187 | 13.131 | 13.865 | 14.049 | 128.801 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.039 | 2.014 | 100 | 0 | 19.844 | 50.337 | 50.494 | 50.661 | 128.801 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.027 | 2.011 | 50 | 0 | 9.946 | 100.482 | 100.568 | 100.669 | 125.926 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.006 | 25 | 0 | 4.985 | 200.529 | 200.599 | 200.614 | 125.926 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

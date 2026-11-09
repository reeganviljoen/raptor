# Puma vs Raptor Simulation

Run ID: `20261109-032217`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.119 | 1000 | 0 | 62.007 | 40.978 | 41.968 | 42.666 | 29.152 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.115 | 1000 | 0 | 62.049 | 40.977 | 41.962 | 42.323 | 29.184 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.121 | 1000 | 0 | 62.073 | 40.973 | 41.953 | 42.414 | 29.602 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.108 | 1000 | 0 | 62.071 | 40.976 | 41.96 | 42.27 | 29.602 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.116 | 1000 | 0 | 62.059 | 40.979 | 41.965 | 42.266 | 29.602 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.116 | 1000 | 0 | 62.076 | 40.976 | 41.965 | 42.159 | 29.637 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.118 | 1000 | 0 | 61.989 | 40.979 | 41.988 | 42.409 | 29.668 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.115 | 1000 | 0 | 62.056 | 40.976 | 41.981 | 42.357 | 30.559 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.167 | 14.605 | 1000 | 0 | 65.935 | 40.966 | 41.966 | 42.748 | 30.582 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.483 | 15.09 | 1000 | 0 | 64.585 | 40.961 | 41.957 | 42.441 | 30.582 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12468 | 0 | 2492.807 | 1.069 | 2.13 | 7.778 | 30.82 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.288 | 14.524 | 1000 | 0 | 65.409 | 40.97 | 41.981 | 42.82 | 42.078 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.875 | 11.146 | 1000 | 0 | 77.669 | 41.062 | 42.255 | 43.281 | 42.078 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.839 | 12.37 | 1000 | 0 | 84.468 | 41.586 | 42.472 | 43.31 | 42.078 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9739 | 0 | 1946.848 | 1.29 | 2.669 | 41.635 | 42.078 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.334 | 13.782 | 1000 | 0 | 69.766 | 41.938 | 42.888 | 43.78 | 49.559 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.546 | 14.333 | 1000 | 0 | 73.822 | 41.952 | 43.099 | 43.945 | 49.559 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.94 | 14.778 | 1000 | 0 | 71.736 | 41.957 | 43.14 | 46.108 | 49.559 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 7599 | 0 | 1518.518 | 1.704 | 3.582 | 17.873 | 49.559 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.693 | 15.675 | 1000 | 0 | 68.061 | 41.981 | 43.628 | 44.793 | 59.852 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.469 | 15.562 | 1000 | 0 | 69.113 | 42.774 | 44.61 | 50.747 | 59.852 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.005 | 15.366 | 1000 | 0 | 66.644 | 42.958 | 44.951 | 46.406 | 59.852 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.007 | 5268 | 0 | 1052.863 | 2.497 | 5.082 | 18.3 | 59.852 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.861 | 16.17 | 1000 | 0 | 63.046 | 43.227 | 46.422 | 47.831 | 71.879 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.292 | 16.713 | 1000 | 0 | 61.382 | 43.964 | 47.865 | 50.907 | 67.875 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.981 | 16.32 | 1000 | 0 | 62.574 | 43.979 | 47.306 | 49.954 | 67.875 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.005 | 3368 | 0 | 672.701 | 4.188 | 7.714 | 27.658 | 69.219 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.377 | 17.527 | 1000 | 0 | 57.548 | 45.97 | 50.535 | 54.352 | 77.996 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.011 | 28.745 | 363 | 0 | 12.512 | 241.824 | 242.994 | 19610.835 | 78.254 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.414 | 19.165 | 243 | 0 | 12.517 | 241.726 | 243.154 | 12801.071 | 78.27 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.612 | 14.364 | 183 | 0 | 12.524 | 241.386 | 242.624 | 10020.028 | 78.285 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.586 | 123 | 0 | 12.518 | 241.626 | 242.414 | 5234.185 | 78.289 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.584 | 103 | 0 | 10.479 | 241.719 | 242.426 | 5132.613 | 78.289 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.789 | 63 | 0 | 12.505 | 241.74 | 242.35 | 242.84 | 78.289 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.797 | 42 | 0 | 8.346 | 241.249 | 242.252 | 242.358 | 78.301 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.362 | 41.97 | 42.371 | 42.97 | 78.305 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.028 | 110 | 0 | 21.796 | 46.963 | 47.034 | 47.93 | 78.398 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.016 | 99 | 0 | 19.667 | 50.975 | 51.987 | 52.157 | 78.508 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.068 | 55 | 0 | 10.981 | 91.942 | 92.048 | 92.527 | 78.523 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.088 | 36 | 0 | 7.107 | 141.95 | 142.03 | 142.719 | 78.523 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.382 | 21 | 0 | 4.172 | 240.975 | 242.019 | 242.797 | 78.523 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.114 | 1000 | 0 | 62.095 | 40.975 | 41.954 | 42.166 | 27.715 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.12 | 1000 | 0 | 62.056 | 40.977 | 41.98 | 42.3 | 27.801 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.11 | 1000 | 0 | 62.052 | 40.976 | 41.968 | 42.276 | 27.809 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.124 | 1000 | 0 | 62.063 | 40.973 | 41.971 | 42.022 | 27.914 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.116 | 1000 | 0 | 62.105 | 40.973 | 41.97 | 42.281 | 27.918 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.11 | 1000 | 0 | 62.101 | 40.973 | 41.96 | 42.141 | 27.918 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.109 | 1000 | 0 | 62.071 | 40.974 | 41.96 | 42.282 | 27.922 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.121 | 1000 | 0 | 62.086 | 40.974 | 41.961 | 42.152 | 28.305 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.531 | 14.671 | 1000 | 0 | 64.387 | 40.963 | 41.961 | 42.12 | 28.305 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.088 | 15.168 | 1000 | 0 | 66.279 | 40.965 | 41.958 | 42.163 | 28.398 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12638 | 0 | 2526.763 | 1.051 | 2.149 | 8.055 | 28.953 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.513 | 13.66 | 1000 | 0 | 68.905 | 40.98 | 42.01 | 42.923 | 35.156 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.541 | 12.233 | 1000 | 0 | 73.85 | 41.688 | 42.752 | 43.317 | 35.156 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.72 | 12.984 | 1000 | 0 | 78.615 | 41.556 | 42.672 | 43.737 | 35.156 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9740 | 0 | 1947.154 | 1.266 | 2.696 | 41.952 | 35.156 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.671 | 12.94 | 1000 | 0 | 73.148 | 41.93 | 42.915 | 43.039 | 39.703 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.087 | 14.027 | 1000 | 0 | 70.986 | 41.952 | 43.001 | 43.689 | 39.125 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.984 | 13.843 | 1000 | 0 | 71.513 | 41.948 | 42.965 | 43.821 | 39.125 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 7770 | 0 | 1553.231 | 1.656 | 3.486 | 13.456 | 39.125 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.128 | 15.235 | 1000 | 0 | 66.104 | 41.968 | 43.183 | 44.17 | 46.332 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.548 | 15.677 | 1000 | 0 | 68.739 | 42.659 | 44.234 | 47.535 | 46.332 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.577 | 15.114 | 1000 | 0 | 68.602 | 42.899 | 44.286 | 45.997 | 46.332 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 5261 | 0 | 1051.464 | 2.478 | 5.091 | 16.505 | 47.184 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.913 | 16.273 | 1000 | 0 | 62.841 | 42.987 | 45.037 | 47.7 | 53.512 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.808 | 16.035 | 1000 | 0 | 63.26 | 43.982 | 46.936 | 50.07 | 51.445 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.856 | 15.936 | 1000 | 0 | 63.068 | 43.979 | 47.042 | 49.922 | 51.445 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3561 | 0 | 711.257 | 3.937 | 7.238 | 17.374 | 57.457 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.688 | 16.615 | 1000 | 0 | 59.923 | 45.151 | 49.5 | 51.933 | 83.195 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.002 | 28.756 | 363 | 0 | 12.516 | 241.759 | 243.009 | 19603.487 | 83.5 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.423 | 19.185 | 243 | 0 | 12.511 | 241.832 | 242.986 | 12799.825 | 83.523 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.62 | 14.373 | 183 | 0 | 12.517 | 241.772 | 242.595 | 10022.351 | 83.535 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.583 | 123 | 0 | 12.518 | 241.635 | 242.413 | 5229.411 | 83.543 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.591 | 103 | 0 | 10.472 | 241.876 | 242.756 | 5135.614 | 83.551 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.794 | 63 | 0 | 12.506 | 241.812 | 242.294 | 242.926 | 83.551 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.793 | 42 | 0 | 8.34 | 241.713 | 242.197 | 242.243 | 83.555 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.018 | 122 | 0 | 24.367 | 41.963 | 42.177 | 42.932 | 83.566 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.016 | 109 | 0 | 21.77 | 46.963 | 47.793 | 47.99 | 83.602 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.048 | 2.011 | 99 | 0 | 19.613 | 50.994 | 52.034 | 52.929 | 83.75 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.075 | 55 | 0 | 10.97 | 91.951 | 92.023 | 92.485 | 83.777 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.09 | 36 | 0 | 7.097 | 141.967 | 142.627 | 142.959 | 83.781 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.375 | 21 | 0 | 4.166 | 241.951 | 242.025 | 243.355 | 83.781 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.127 | 1000 | 0 | 62.074 | 40.976 | 41.96 | 42.273 | 27.617 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.129 | 1000 | 0 | 62.056 | 40.976 | 41.97 | 42.17 | 27.852 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.122 | 1000 | 0 | 62.043 | 40.975 | 41.975 | 42.296 | 27.871 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.118 | 1000 | 0 | 61.988 | 40.98 | 41.991 | 42.427 | 27.934 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.114 | 1000 | 0 | 62.074 | 40.977 | 41.965 | 42.291 | 27.934 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.121 | 1000 | 0 | 62.087 | 40.974 | 41.962 | 42.219 | 27.973 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.105 | 1000 | 0 | 62.091 | 40.975 | 41.934 | 42.051 | 27.988 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.153 | 16.117 | 1000 | 0 | 61.906 | 40.976 | 41.955 | 42.27 | 28.32 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.359 | 15.13 | 1000 | 0 | 65.107 | 40.962 | 41.959 | 42.137 | 28.445 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.48 | 15.161 | 1000 | 0 | 64.598 | 40.966 | 41.967 | 42.176 | 28.445 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 13252 | 0 | 2649.369 | 1.002 | 1.978 | 7.368 | 28.879 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.807 | 14.612 | 1000 | 0 | 67.536 | 40.972 | 41.986 | 42.927 | 33.285 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.045 | 12.713 | 1000 | 0 | 71.2 | 41.051 | 42.81 | 43.648 | 33.285 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.316 | 12.51 | 1000 | 0 | 75.1 | 41.501 | 42.447 | 43.381 | 33.285 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9752 | 0 | 1949.57 | 1.269 | 2.708 | 41.577 | 33.285 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.748 | 13.346 | 1000 | 0 | 72.74 | 41.93 | 42.936 | 43.323 | 42.422 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.666 | 14.866 | 1000 | 0 | 73.177 | 41.94 | 42.956 | 43.47 | 42.422 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.716 | 14.612 | 1000 | 0 | 67.955 | 41.945 | 42.922 | 43.768 | 42.422 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 7805 | 0 | 1560.232 | 1.631 | 3.486 | 14.873 | 42.906 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.101 | 15.176 | 1000 | 0 | 66.22 | 41.971 | 43.374 | 44.947 | 46.008 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.918 | 15.779 | 1000 | 0 | 67.034 | 42.26 | 44.678 | 46.956 | 46.008 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.349 | 15.813 | 1000 | 0 | 69.691 | 42.934 | 44.948 | 46.485 | 46.008 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.004 | 5323 | 0 | 1063.4 | 2.442 | 4.949 | 17.23 | 47.246 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.865 | 16.258 | 1000 | 0 | 63.03 | 42.966 | 44.941 | 46.949 | 53.668 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.512 | 16.523 | 1000 | 0 | 64.466 | 43.963 | 46.963 | 49.648 | 53.668 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.191 | 16.331 | 1000 | 0 | 61.761 | 44.074 | 48.204 | 50.748 | 53.668 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3440 | 0 | 687.165 | 4.052 | 7.475 | 16.791 | 59.68 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.0 | 17.544 | 1000 | 0 | 58.822 | 45.919 | 50.749 | 52.915 | 84.363 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.006 | 28.769 | 363 | 0 | 12.515 | 241.776 | 242.945 | 19608.602 | 84.641 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.417 | 19.174 | 243 | 0 | 12.515 | 241.738 | 242.992 | 12796.86 | 84.691 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.383 | 183 | 0 | 12.516 | 241.731 | 242.482 | 10026.218 | 84.703 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.59 | 123 | 0 | 12.508 | 241.806 | 242.718 | 5233.505 | 84.707 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.586 | 103 | 0 | 10.479 | 241.802 | 242.49 | 5131.725 | 84.711 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.792 | 63 | 0 | 12.513 | 241.384 | 242.248 | 242.745 | 84.715 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.8 | 42 | 0 | 8.34 | 241.896 | 242.226 | 242.873 | 84.715 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.017 | 122 | 0 | 24.357 | 41.969 | 42.9 | 43.001 | 84.734 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.022 | 109 | 0 | 21.762 | 46.969 | 47.928 | 47.969 | 84.742 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.007 | 99 | 0 | 19.717 | 50.967 | 51.969 | 52.051 | 84.855 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.077 | 55 | 0 | 10.976 | 91.949 | 92.059 | 92.984 | 84.875 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.09 | 36 | 0 | 7.105 | 141.952 | 141.996 | 142.263 | 84.879 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.382 | 21 | 0 | 4.17 | 241.931 | 242.041 | 242.155 | 84.879 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17561 | 0 | 3510.932 | 1.34 | 1.967 | 2.457 | 63.93 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17045 | 0 | 3408.17 | 1.382 | 2.033 | 2.532 | 64.219 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17323 | 0 | 3463.504 | 1.356 | 2.017 | 2.477 | 63.984 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16433 | 0 | 3285.904 | 1.428 | 2.318 | 2.85 | 64.105 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17134 | 0 | 3425.995 | 1.368 | 2.072 | 2.539 | 66.691 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15167 | 0 | 3032.64 | 1.554 | 2.333 | 2.888 | 65.93 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17292 | 0 | 3457.607 | 1.346 | 2.08 | 2.529 | 66.555 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16230 | 0 | 3245.157 | 1.433 | 2.436 | 2.973 | 67.137 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13147 | 0 | 2628.646 | 1.777 | 2.844 | 3.376 | 74.965 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7091 | 0 | 1417.409 | 3.357 | 5.638 | 6.599 | 68.805 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13228 | 0 | 2644.88 | 1.751 | 2.933 | 3.469 | 79.441 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.022 | 2.002 | 13500 | 0 | 2687.932 | 1.662 | 2.613 | 3.274 | 68.605 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10072 | 0 | 2013.713 | 2.192 | 3.827 | 6.267 | 100.922 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.004 | 3997 | 0 | 798.124 | 6.044 | 10.395 | 11.683 | 80.426 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9306 | 0 | 1860.251 | 2.303 | 4.365 | 7.042 | 72.527 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10121 | 0 | 2023.466 | 2.132 | 3.996 | 6.242 | 72.465 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7676 | 0 | 1534.442 | 2.872 | 5.145 | 14.454 | 136.465 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.018 | 2417 | 0 | 482.679 | 10.262 | 15.757 | 18.855 | 96.949 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 7284 | 0 | 1455.573 | 2.843 | 5.717 | 14.665 | 89.285 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7275 | 0 | 1454.236 | 2.87 | 5.819 | 14.745 | 89.285 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 4858 | 0 | 970.286 | 4.816 | 8.144 | 17.917 | 143.215 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.969 | 1269 | 0 | 252.852 | 19.41 | 31.686 | 35.72 | 92.559 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5046 | 0 | 1008.466 | 4.208 | 8.312 | 18.41 | 97.301 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4936 | 0 | 986.352 | 4.319 | 8.507 | 18.838 | 97.301 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2858 | 0 | 570.826 | 8.663 | 13.901 | 15.883 | 128.703 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.551 | 7.493 | 1000 | 0 | 132.426 | 37.528 | 39.062 | 67.741 | 95.414 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3184 | 0 | 635.898 | 7.303 | 13.026 | 14.801 | 98.172 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 3165 | 0 | 632.268 | 7.418 | 13.128 | 15.11 | 98.172 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.856 | 50.911 | 360 | 0 | 7.079 | 2542.906 | 2561.207 | 2566.09 | 118.531 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.924 | 33.914 | 240 | 0 | 7.075 | 1696.038 | 1713.45 | 1722.182 | 120.977 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.448 | 25.438 | 180 | 0 | 7.073 | 1272.309 | 1282.284 | 1291.177 | 116.602 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.938 | 16.952 | 120 | 0 | 7.085 | 846.75 | 862.669 | 866.612 | 116.855 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.121 | 14.128 | 100 | 0 | 7.082 | 814.634 | 847.367 | 848.889 | 116.859 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.476 | 8.481 | 60 | 0 | 7.079 | 423.742 | 432.134 | 433.464 | 120.703 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.648 | 40 | 0 | 7.078 | 282.402 | 287.81 | 291.515 | 120.703 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 3587 | 0 | 717.172 | 1.356 | 1.491 | 1.745 | 130.199 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.004 | 942 | 0 | 188.23 | 5.269 | 5.428 | 5.695 | 130.324 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.006 | 483 | 0 | 96.522 | 10.314 | 10.473 | 10.776 | 129.824 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.024 | 99 | 0 | 19.789 | 50.475 | 50.626 | 50.718 | 129.824 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.013 | 50 | 0 | 9.938 | 100.564 | 100.66 | 100.696 | 129.824 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.535 | 200.597 | 200.648 | 129.824 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18486 | 0 | 3696.493 | 1.283 | 1.826 | 2.221 | 64.035 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18152 | 0 | 3629.645 | 1.303 | 1.872 | 2.334 | 64.059 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18532 | 0 | 3705.749 | 1.275 | 1.849 | 2.228 | 64.52 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17443 | 0 | 3487.918 | 1.371 | 2.136 | 2.541 | 64.75 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17831 | 0 | 3565.456 | 1.315 | 1.971 | 2.403 | 66.223 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15948 | 0 | 3188.828 | 1.488 | 2.173 | 2.71 | 66.344 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17676 | 0 | 3534.395 | 1.329 | 2.006 | 2.479 | 66.566 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16355 | 0 | 3270.091 | 1.442 | 2.276 | 2.795 | 68.531 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13696 | 0 | 2738.207 | 1.723 | 2.616 | 3.173 | 76.785 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7295 | 0 | 1458.126 | 3.284 | 5.459 | 6.361 | 72.07 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13432 | 0 | 2685.426 | 1.752 | 2.707 | 3.347 | 76.898 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.031 | 2.001 | 14085 | 0 | 2799.889 | 1.644 | 2.559 | 3.18 | 66.375 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10261 | 0 | 2051.343 | 2.157 | 3.664 | 6.035 | 97.754 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4083 | 0 | 815.841 | 5.961 | 9.819 | 11.402 | 76.031 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10047 | 0 | 2008.611 | 2.162 | 4.018 | 5.94 | 69.469 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10257 | 0 | 2050.615 | 2.103 | 3.864 | 5.995 | 69.406 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7744 | 0 | 1547.986 | 2.942 | 4.957 | 14.805 | 120.285 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.011 | 2473 | 0 | 493.675 | 9.962 | 15.989 | 18.859 | 79.117 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7850 | 0 | 1568.991 | 2.721 | 5.14 | 15.136 | 73.438 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 7719 | 0 | 1542.669 | 2.766 | 5.34 | 14.597 | 73.441 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4934 | 0 | 985.777 | 4.758 | 7.866 | 17.947 | 137.129 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.795 | 1309 | 0 | 260.909 | 18.891 | 22.339 | 34.631 | 79.738 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5363 | 0 | 1071.735 | 4.037 | 7.693 | 18.08 | 78.109 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5277 | 0 | 1054.488 | 4.102 | 7.809 | 18.176 | 78.109 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2686 | 0 | 536.341 | 9.275 | 14.705 | 16.839 | 125.309 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.373 | 7.205 | 1000 | 0 | 135.638 | 36.576 | 59.558 | 66.803 | 85.598 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3387 | 0 | 676.451 | 6.913 | 12.353 | 14.024 | 85.25 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3446 | 0 | 688.4 | 6.796 | 12.233 | 13.635 | 86.184 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.865 | 50.965 | 360 | 0 | 7.078 | 2543.104 | 2560.42 | 2565.916 | 108.008 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.895 | 33.987 | 240 | 0 | 7.081 | 1693.519 | 1716.426 | 1723.519 | 112.207 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.43 | 25.482 | 180 | 0 | 7.078 | 1270.433 | 1289.162 | 1293.757 | 112.273 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.947 | 16.977 | 120 | 0 | 7.081 | 846.91 | 863.32 | 869.404 | 112.34 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.18 | 14.153 | 100 | 0 | 7.052 | 802.553 | 849.97 | 857.579 | 112.344 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.472 | 8.524 | 60 | 0 | 7.082 | 423.425 | 432.613 | 437.845 | 112.906 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.649 | 5.656 | 40 | 0 | 7.08 | 282.436 | 284.074 | 284.227 | 113.973 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3571 | 0 | 714.052 | 1.363 | 1.504 | 1.816 | 116.094 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.004 | 940 | 0 | 187.846 | 5.286 | 5.427 | 5.583 | 116.098 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.01 | 483 | 0 | 96.411 | 10.328 | 10.466 | 10.65 | 116.098 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.023 | 99 | 0 | 19.792 | 50.468 | 50.575 | 50.794 | 116.098 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.014 | 50 | 0 | 9.936 | 100.592 | 100.668 | 100.709 | 116.098 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.533 | 200.595 | 200.652 | 116.098 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18523 | 0 | 3703.673 | 1.279 | 1.826 | 2.296 | 64.293 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18344 | 0 | 3667.978 | 1.293 | 1.842 | 2.288 | 64.492 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18411 | 0 | 3681.328 | 1.285 | 1.864 | 2.27 | 64.641 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17828 | 0 | 3564.826 | 1.333 | 2.062 | 2.528 | 65.063 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18233 | 0 | 3645.893 | 1.295 | 1.912 | 2.322 | 66.754 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15960 | 0 | 3191.02 | 1.479 | 2.202 | 2.73 | 66.813 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18410 | 0 | 3681.348 | 1.279 | 1.892 | 2.305 | 66.891 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 17228 | 0 | 3444.844 | 1.371 | 2.149 | 2.61 | 69.477 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13741 | 0 | 2747.481 | 1.713 | 2.624 | 3.199 | 79.297 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7348 | 0 | 1468.817 | 3.248 | 5.433 | 6.307 | 73.504 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13839 | 0 | 2767.099 | 1.691 | 2.725 | 3.254 | 79.445 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.032 | 2.002 | 14135 | 0 | 2808.962 | 1.467 | 2.312 | 3.201 | 68.043 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10200 | 0 | 2039.312 | 2.142 | 3.734 | 6.972 | 104.875 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4201 | 0 | 839.288 | 5.796 | 9.679 | 11.067 | 79.719 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 9448 | 0 | 1888.057 | 2.246 | 4.281 | 7.918 | 76.207 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9960 | 0 | 1991.355 | 2.147 | 4.002 | 6.852 | 76.52 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7954 | 0 | 1590.055 | 2.766 | 4.764 | 15.84 | 131.664 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.013 | 2415 | 0 | 482.23 | 10.156 | 17.298 | 19.298 | 82.688 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7666 | 0 | 1532.362 | 2.712 | 5.333 | 16.495 | 79.984 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7377 | 0 | 1474.603 | 2.842 | 5.664 | 16.378 | 79.984 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4950 | 0 | 989.081 | 4.701 | 7.944 | 19.188 | 132.25 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.774 | 1308 | 0 | 260.787 | 19.043 | 20.52 | 34.371 | 84.547 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 2.022 | 5246 | 0 | 1045.529 | 4.095 | 7.823 | 19.778 | 84.508 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5091 | 0 | 1017.556 | 4.2 | 8.189 | 19.811 | 84.516 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2717 | 0 | 542.37 | 9.095 | 14.361 | 16.127 | 117.352 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.351 | 7.404 | 1000 | 0 | 136.03 | 36.28 | 60.125 | 67.477 | 89.121 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3310 | 0 | 660.892 | 7.083 | 12.691 | 14.564 | 90.961 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3422 | 0 | 683.533 | 6.873 | 12.095 | 14.04 | 90.965 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.961 | 50.955 | 360 | 0 | 7.064 | 2547.946 | 2569.41 | 2578.247 | 111.895 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.968 | 33.968 | 240 | 0 | 7.066 | 1698.322 | 1719.23 | 1724.98 | 111.148 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.459 | 25.457 | 180 | 0 | 7.07 | 1272.611 | 1286.252 | 1296.829 | 111.152 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.987 | 16.99 | 120 | 0 | 7.064 | 849.258 | 861.882 | 870.267 | 111.848 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.274 | 14.151 | 100 | 0 | 7.006 | 800.134 | 850.004 | 852.223 | 111.848 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.494 | 8.49 | 60 | 0 | 7.064 | 425.109 | 433.74 | 439.445 | 111.848 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.662 | 5.661 | 40 | 0 | 7.065 | 283.039 | 285.12 | 289.527 | 111.852 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3600 | 0 | 719.969 | 1.352 | 1.494 | 1.776 | 113.805 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 938 | 0 | 187.507 | 5.289 | 5.434 | 5.652 | 116.93 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.009 | 481 | 0 | 96.05 | 10.354 | 10.56 | 10.855 | 116.992 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.029 | 99 | 0 | 19.759 | 50.522 | 50.752 | 51.448 | 116.992 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.013 | 50 | 0 | 9.942 | 100.516 | 100.587 | 100.685 | 116.992 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.525 | 200.639 | 200.654 | 116.992 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.128 | 1000 | 0 | 62.101 | 40.972 | 41.947 | 42.267 | 29.066 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.116 | 1000 | 0 | 62.051 | 40.976 | 41.97 | 42.404 | 29.496 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.103 | 1000 | 0 | 62.086 | 40.972 | 41.947 | 42.294 | 29.594 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.126 | 1000 | 0 | 62.085 | 40.972 | 41.957 | 42.355 | 29.805 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.107 | 1000 | 0 | 62.026 | 40.977 | 41.971 | 42.335 | 29.855 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.112 | 1000 | 0 | 62.056 | 40.972 | 41.968 | 42.287 | 29.855 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.108 | 1000 | 0 | 62.047 | 40.977 | 41.966 | 42.378 | 29.863 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.117 | 1000 | 0 | 62.043 | 40.974 | 41.973 | 42.43 | 30.504 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.523 | 15.444 | 1000 | 0 | 64.42 | 40.956 | 41.956 | 42.576 | 30.504 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.007 | 14.77 | 1000 | 0 | 66.636 | 40.957 | 41.963 | 42.922 | 30.551 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 12107 | 0 | 2420.407 | 1.093 | 2.199 | 8.664 | 30.875 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.575 | 14.703 | 1000 | 0 | 68.611 | 40.965 | 41.996 | 42.98 | 35.957 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.941 | 12.12 | 1000 | 0 | 77.275 | 41.033 | 42.613 | 44.055 | 35.957 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.288 | 11.864 | 1000 | 0 | 88.586 | 41.218 | 42.876 | 43.882 | 35.957 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8772 | 0 | 1753.647 | 1.417 | 3.014 | 42.074 | 35.98 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.093 | 13.017 | 1000 | 0 | 76.376 | 41.916 | 42.961 | 44.108 | 41.305 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.273 | 13.271 | 1000 | 0 | 75.339 | 41.928 | 43.012 | 45.75 | 41.305 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.223 | 13.611 | 1000 | 0 | 75.625 | 41.927 | 42.99 | 45.547 | 41.305 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.018 | 6736 | 0 | 1345.827 | 1.882 | 4.049 | 23.521 | 41.305 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.074 | 15.194 | 1000 | 0 | 66.341 | 41.958 | 43.256 | 44.24 | 47.297 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.021 | 15.337 | 1000 | 0 | 71.323 | 42.035 | 44.024 | 45.974 | 47.297 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.34 | 15.065 | 1000 | 0 | 69.734 | 42.725 | 44.726 | 47.461 | 47.297 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.006 | 4902 | 0 | 979.61 | 2.598 | 5.463 | 22.015 | 48.754 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.893 | 16.305 | 1000 | 0 | 62.921 | 43.003 | 45.164 | 48.181 | 55.883 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.383 | 15.495 | 1000 | 0 | 65.006 | 43.947 | 46.945 | 49.736 | 50.438 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.463 | 16.039 | 1000 | 0 | 64.671 | 43.958 | 46.721 | 49.542 | 50.438 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.026 | 3242 | 0 | 647.311 | 4.203 | 8.147 | 25.801 | 56.449 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.305 | 17.095 | 1000 | 0 | 61.329 | 45.888 | 50.661 | 63.002 | 85.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.998 | 28.765 | 363 | 0 | 12.518 | 241.773 | 242.99 | 19611.032 | 85.664 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.411 | 19.171 | 243 | 0 | 12.519 | 241.693 | 242.546 | 12801.496 | 85.711 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.381 | 183 | 0 | 12.512 | 241.736 | 242.923 | 10027.565 | 85.715 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.589 | 123 | 0 | 12.509 | 241.83 | 242.486 | 5233.48 | 85.727 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.585 | 103 | 0 | 10.479 | 241.751 | 242.575 | 5135.116 | 85.734 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.796 | 63 | 0 | 12.505 | 241.827 | 242.364 | 242.636 | 85.742 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.79 | 42 | 0 | 8.348 | 241.174 | 242.323 | 242.447 | 85.742 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.02 | 122 | 0 | 24.357 | 41.963 | 42.253 | 42.962 | 85.824 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.031 | 114 | 0 | 22.702 | 44.971 | 45.93 | 45.965 | 85.848 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.039 | 97 | 0 | 19.38 | 51.965 | 52.046 | 52.175 | 85.855 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.058 | 56 | 0 | 11.057 | 90.98 | 91.964 | 91.979 | 85.855 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.053 | 2.086 | 36 | 0 | 7.124 | 141.0 | 142.043 | 142.624 | 85.855 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.38 | 21 | 0 | 4.169 | 241.931 | 242.023 | 242.28 | 85.855 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.136 | 1000 | 0 | 62.081 | 40.974 | 41.96 | 42.142 | 29.348 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.128 | 1000 | 0 | 62.055 | 40.974 | 41.963 | 42.294 | 29.547 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.117 | 1000 | 0 | 62.066 | 40.975 | 41.961 | 42.146 | 29.805 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.117 | 1000 | 0 | 62.063 | 40.976 | 41.955 | 42.349 | 29.914 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.107 | 1000 | 0 | 62.072 | 40.968 | 41.981 | 42.321 | 29.988 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.106 | 1000 | 0 | 62.062 | 40.974 | 41.972 | 42.268 | 29.988 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.107 | 1000 | 0 | 62.106 | 40.972 | 41.973 | 42.232 | 29.996 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.124 | 1000 | 0 | 62.059 | 40.973 | 41.971 | 42.338 | 30.629 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.253 | 15.37 | 1000 | 0 | 65.563 | 40.961 | 41.961 | 42.934 | 30.75 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.052 | 14.963 | 1000 | 0 | 66.437 | 40.962 | 41.969 | 42.929 | 30.785 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 12311 | 0 | 2461.36 | 1.082 | 2.166 | 7.695 | 31.039 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.261 | 14.546 | 1000 | 0 | 65.527 | 40.966 | 41.988 | 42.943 | 35.984 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.17 | 12.665 | 1000 | 0 | 82.167 | 40.966 | 42.222 | 43.906 | 35.984 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.803 | 10.823 | 1000 | 0 | 78.108 | 41.037 | 42.665 | 43.222 | 35.984 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9019 | 0 | 1803.068 | 1.362 | 2.947 | 41.454 | 36.195 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.387 | 12.962 | 1000 | 0 | 80.73 | 41.866 | 42.968 | 43.743 | 39.973 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.619 | 13.151 | 1000 | 0 | 73.427 | 41.935 | 42.978 | 44.045 | 39.973 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.094 | 13.085 | 1000 | 0 | 70.952 | 41.943 | 42.966 | 44.59 | 39.973 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7359 | 0 | 1470.995 | 1.719 | 3.556 | 20.924 | 41.461 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.519 | 15.176 | 1000 | 0 | 68.876 | 41.972 | 43.422 | 44.918 | 48.551 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.015 | 15.207 | 1000 | 0 | 71.351 | 42.006 | 44.117 | 47.055 | 48.551 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.439 | 15.048 | 1000 | 0 | 69.258 | 42.188 | 44.334 | 48.223 | 48.551 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 4867 | 0 | 972.325 | 2.59 | 5.698 | 25.162 | 52.137 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.997 | 16.221 | 1000 | 0 | 66.681 | 43.239 | 45.741 | 47.222 | 57.328 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.696 | 15.925 | 1000 | 0 | 63.709 | 43.969 | 47.725 | 50.152 | 54.484 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.241 | 15.817 | 1000 | 0 | 65.613 | 44.006 | 47.895 | 49.399 | 54.484 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.008 | 3438 | 0 | 686.497 | 4.105 | 7.723 | 30.917 | 60.504 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.232 | 17.615 | 1000 | 0 | 61.605 | 45.079 | 49.947 | 63.363 | 85.535 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.992 | 28.773 | 363 | 0 | 12.521 | 241.627 | 242.973 | 19613.972 | 85.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.417 | 19.167 | 243 | 0 | 12.515 | 241.718 | 242.591 | 12804.315 | 86.031 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.623 | 14.381 | 183 | 0 | 12.514 | 241.769 | 242.509 | 10027.175 | 86.047 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.581 | 123 | 0 | 12.522 | 241.466 | 242.406 | 5232.69 | 86.063 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.819 | 9.583 | 103 | 0 | 10.49 | 241.217 | 242.458 | 5129.12 | 86.074 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.797 | 63 | 0 | 12.51 | 241.623 | 242.471 | 242.948 | 86.074 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.029 | 4.791 | 42 | 0 | 8.352 | 241.041 | 242.138 | 242.271 | 86.074 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.021 | 122 | 0 | 24.357 | 41.965 | 42.369 | 43.013 | 86.086 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.03 | 114 | 0 | 22.737 | 44.965 | 45.226 | 45.956 | 86.117 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.04 | 97 | 0 | 19.385 | 51.968 | 52.011 | 52.312 | 86.129 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.06 | 56 | 0 | 11.05 | 90.976 | 91.953 | 91.984 | 86.129 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.077 | 36 | 0 | 7.138 | 140.97 | 142.082 | 142.136 | 86.137 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.375 | 21 | 0 | 4.165 | 241.956 | 242.022 | 242.039 | 86.145 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.151 | 1000 | 0 | 62.058 | 40.976 | 41.979 | 42.407 | 29.047 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.123 | 1000 | 0 | 62.062 | 40.977 | 41.961 | 42.239 | 29.473 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.11 | 1000 | 0 | 62.066 | 40.977 | 41.972 | 42.157 | 29.559 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.128 | 1000 | 0 | 62.062 | 40.975 | 41.973 | 42.227 | 29.684 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.113 | 1000 | 0 | 62.097 | 40.977 | 41.968 | 42.342 | 29.723 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.12 | 1000 | 0 | 62.03 | 40.98 | 41.981 | 42.247 | 29.723 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.103 | 1000 | 0 | 62.082 | 40.974 | 41.971 | 42.17 | 29.754 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.125 | 1000 | 0 | 62.082 | 40.974 | 41.949 | 42.097 | 30.395 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.243 | 15.208 | 1000 | 0 | 65.604 | 40.962 | 41.961 | 42.367 | 30.395 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.681 | 15.21 | 1000 | 0 | 68.117 | 40.963 | 41.96 | 42.206 | 30.441 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 12747 | 0 | 2548.656 | 1.045 | 2.083 | 7.544 | 30.797 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.794 | 15.064 | 1000 | 0 | 67.595 | 40.97 | 41.991 | 42.877 | 33.875 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.163 | 12.338 | 1000 | 0 | 89.585 | 40.967 | 42.195 | 44.02 | 33.875 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.649 | 11.866 | 1000 | 0 | 79.057 | 40.984 | 42.101 | 43.106 | 33.883 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.002 | 8994 | 0 | 1795.864 | 1.357 | 2.951 | 41.639 | 34.41 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.485 | 13.237 | 1000 | 0 | 74.157 | 41.92 | 42.923 | 43.913 | 41.715 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.456 | 13.559 | 1000 | 0 | 80.282 | 41.93 | 42.971 | 46.145 | 40.844 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.865 | 14.025 | 1000 | 0 | 77.732 | 41.934 | 43.096 | 45.241 | 40.844 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 7123 | 0 | 1423.398 | 1.748 | 3.849 | 21.9 | 40.961 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.719 | 14.368 | 1000 | 0 | 67.939 | 41.984 | 43.915 | 46.614 | 47.414 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.062 | 15.328 | 1000 | 0 | 66.392 | 41.988 | 43.836 | 52.891 | 43.66 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.801 | 14.919 | 1000 | 0 | 67.563 | 42.627 | 44.134 | 47.905 | 43.66 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 4816 | 0 | 962.439 | 2.604 | 5.708 | 25.457 | 46.813 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.493 | 15.878 | 1000 | 0 | 64.546 | 43.711 | 46.794 | 49.578 | 54.621 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.064 | 15.618 | 1000 | 0 | 66.383 | 43.933 | 46.754 | 48.98 | 54.621 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.012 | 15.7 | 1000 | 0 | 66.614 | 43.976 | 47.678 | 51.621 | 54.621 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3311 | 0 | 661.29 | 4.159 | 8.073 | 32.529 | 60.633 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.125 | 16.633 | 1000 | 0 | 58.396 | 45.941 | 50.817 | 56.287 | 67.719 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.005 | 28.755 | 363 | 0 | 12.515 | 241.689 | 243.174 | 19613.009 | 68.172 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.42 | 19.172 | 243 | 0 | 12.513 | 241.776 | 242.933 | 12810.367 | 68.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.62 | 14.373 | 183 | 0 | 12.517 | 241.702 | 242.487 | 10022.08 | 68.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.581 | 123 | 0 | 12.522 | 241.445 | 242.656 | 5231.765 | 68.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.58 | 103 | 0 | 10.485 | 241.753 | 242.942 | 5133.305 | 68.195 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.795 | 63 | 0 | 12.523 | 241.189 | 242.266 | 242.389 | 68.195 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.784 | 42 | 0 | 8.342 | 241.735 | 242.218 | 242.318 | 68.199 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.019 | 122 | 0 | 24.366 | 41.965 | 42.151 | 42.951 | 68.238 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.032 | 114 | 0 | 22.755 | 44.964 | 45.066 | 45.237 | 68.238 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.039 | 97 | 0 | 19.365 | 51.967 | 52.449 | 52.966 | 68.242 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.062 | 56 | 0 | 11.039 | 90.984 | 91.974 | 92.987 | 68.246 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.048 | 2.082 | 36 | 0 | 7.132 | 140.984 | 141.976 | 142.191 | 68.246 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.38 | 21 | 0 | 4.169 | 241.937 | 242.084 | 242.112 | 68.246 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18433 | 0 | 3685.461 | 1.269 | 1.952 | 2.436 | 67.949 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17525 | 0 | 3504.296 | 1.327 | 2.106 | 2.612 | 68.547 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18194 | 0 | 3638.059 | 1.289 | 1.996 | 2.452 | 68.16 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17840 | 0 | 3567.219 | 1.317 | 1.995 | 2.507 | 68.363 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17915 | 0 | 3582.344 | 1.305 | 2.073 | 2.52 | 69.773 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15741 | 0 | 3147.491 | 1.475 | 2.428 | 2.926 | 70.863 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17852 | 0 | 3569.576 | 1.308 | 2.061 | 2.495 | 73.945 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 17938 | 0 | 3586.983 | 1.313 | 2.003 | 2.434 | 75.109 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 13655 | 0 | 2730.147 | 1.687 | 2.949 | 3.395 | 85.945 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7124 | 0 | 1424.035 | 3.313 | 5.726 | 6.625 | 78.012 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13406 | 0 | 2680.329 | 1.715 | 3.0 | 3.527 | 85.934 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.03 | 2.022 | 13590 | 0 | 2701.664 | 1.413 | 2.496 | 3.835 | 73.957 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9457 | 0 | 1890.594 | 2.248 | 4.186 | 6.396 | 105.762 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4074 | 0 | 813.808 | 5.929 | 10.236 | 11.569 | 83.637 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9382 | 0 | 1875.637 | 2.242 | 4.291 | 6.55 | 76.922 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9607 | 0 | 1920.817 | 2.194 | 4.156 | 6.622 | 77.109 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.021 | 7474 | 0 | 1494.094 | 2.777 | 5.37 | 20.573 | 128.66 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.077 | 2403 | 0 | 479.618 | 10.105 | 17.451 | 19.712 | 85.875 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7458 | 0 | 1490.87 | 2.754 | 5.458 | 20.882 | 80.406 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7323 | 0 | 1463.881 | 2.851 | 5.505 | 20.943 | 80.496 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5153 | 0 | 1029.9 | 4.103 | 7.78 | 23.937 | 122.914 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.906 | 1264 | 0 | 251.895 | 19.48 | 32.432 | 36.251 | 88.707 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4759 | 0 | 950.98 | 4.379 | 8.623 | 25.644 | 85.531 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4774 | 0 | 953.573 | 4.418 | 8.628 | 25.384 | 85.594 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3232 | 0 | 645.502 | 7.465 | 12.373 | 14.146 | 130.617 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.528 | 7.527 | 1000 | 0 | 132.832 | 37.104 | 60.153 | 68.706 | 109.113 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3181 | 0 | 635.472 | 7.391 | 13.331 | 14.722 | 112.863 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3143 | 0 | 627.591 | 7.398 | 13.227 | 15.001 | 112.926 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.9 | 50.908 | 360 | 0 | 7.073 | 2544.541 | 2551.181 | 2555.564 | 133.988 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.935 | 33.922 | 240 | 0 | 7.072 | 1695.861 | 1702.704 | 1704.907 | 135.055 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.454 | 25.441 | 180 | 0 | 7.072 | 1272.138 | 1279.471 | 1281.584 | 135.055 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.967 | 16.961 | 120 | 0 | 7.073 | 848.012 | 852.547 | 855.954 | 112.938 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.137 | 14.189 | 100 | 0 | 7.073 | 837.592 | 848.452 | 849.693 | 114.125 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.481 | 8.488 | 60 | 0 | 7.075 | 423.815 | 428.014 | 429.047 | 118.695 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.654 | 5.654 | 40 | 0 | 7.075 | 282.61 | 284.181 | 284.431 | 114.816 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 1938 | 0 | 387.494 | 2.538 | 2.688 | 2.986 | 119.508 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.009 | 2.007 | 576 | 0 | 115.0 | 8.643 | 8.839 | 8.962 | 120.32 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.007 | 410 | 0 | 81.805 | 12.184 | 12.334 | 12.508 | 121.387 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.049 | 2.023 | 100 | 0 | 19.805 | 50.44 | 50.546 | 50.649 | 121.387 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.027 | 2.016 | 50 | 0 | 9.947 | 100.463 | 100.586 | 100.735 | 121.387 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.467 | 200.496 | 200.553 | 121.449 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18072 | 0 | 3613.776 | 1.294 | 2.009 | 2.476 | 68.031 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17020 | 0 | 3403.171 | 1.353 | 2.135 | 2.754 | 68.309 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 18130 | 0 | 3625.076 | 1.288 | 2.035 | 2.488 | 68.328 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18035 | 0 | 3606.143 | 1.306 | 1.963 | 2.484 | 68.688 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17982 | 0 | 3595.392 | 1.298 | 2.061 | 2.517 | 70.371 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15461 | 0 | 3091.244 | 1.49 | 2.514 | 3.008 | 70.68 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17883 | 0 | 3575.827 | 1.304 | 2.089 | 2.534 | 70.73 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17770 | 0 | 3553.253 | 1.321 | 2.029 | 2.469 | 72.758 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13311 | 0 | 2661.251 | 1.737 | 2.986 | 3.474 | 82.379 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7158 | 0 | 1430.703 | 3.336 | 5.6 | 6.536 | 76.289 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13369 | 0 | 2672.857 | 1.732 | 3.008 | 3.485 | 82.449 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 2.001 | 13911 | 0 | 2773.575 | 1.502 | 2.568 | 3.406 | 71.305 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.022 | 2.002 | 9359 | 0 | 1863.545 | 2.257 | 4.179 | 7.481 | 100.375 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4074 | 0 | 813.815 | 5.966 | 10.002 | 11.472 | 80.793 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9255 | 0 | 1850.285 | 2.244 | 4.363 | 7.451 | 76.051 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 9533 | 0 | 1905.483 | 2.195 | 4.13 | 7.169 | 76.367 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 7261 | 0 | 1451.14 | 2.851 | 5.54 | 21.998 | 121.316 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.101 | 2340 | 0 | 467.198 | 10.505 | 17.297 | 19.922 | 86.145 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.012 | 7208 | 0 | 1440.783 | 2.839 | 5.593 | 22.536 | 84.699 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6965 | 0 | 1392.352 | 2.94 | 5.851 | 22.917 | 84.801 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.006 | 4986 | 0 | 996.56 | 4.281 | 7.938 | 27.294 | 165.254 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 3.974 | 1269 | 0 | 252.858 | 19.526 | 30.557 | 35.936 | 101.059 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.009 | 4792 | 0 | 957.563 | 4.364 | 8.528 | 26.514 | 103.641 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4838 | 0 | 966.785 | 4.367 | 8.38 | 26.251 | 103.641 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3307 | 0 | 660.609 | 7.251 | 12.121 | 14.488 | 119.496 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.684 | 7.531 | 1000 | 0 | 130.145 | 38.079 | 40.466 | 69.79 | 109.578 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3111 | 0 | 621.392 | 7.515 | 13.723 | 15.446 | 108.32 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3101 | 0 | 619.185 | 7.568 | 13.27 | 15.661 | 108.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.89 | 50.881 | 360 | 0 | 7.074 | 2543.923 | 2547.816 | 2548.874 | 130.324 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.916 | 33.909 | 240 | 0 | 7.076 | 1695.52 | 1698.224 | 1698.724 | 114.742 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.436 | 25.428 | 180 | 0 | 7.077 | 1271.561 | 1274.195 | 1276.09 | 114.742 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.961 | 16.949 | 120 | 0 | 7.075 | 847.766 | 850.396 | 851.057 | 118.285 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.132 | 14.124 | 100 | 0 | 7.076 | 840.733 | 847.979 | 848.652 | 118.285 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.478 | 8.478 | 60 | 0 | 7.077 | 423.847 | 424.935 | 425.574 | 118.285 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.654 | 5.652 | 40 | 0 | 7.075 | 282.604 | 282.866 | 283.623 | 118.285 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 1886 | 0 | 377.185 | 2.646 | 2.76 | 2.934 | 122.352 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.008 | 571 | 0 | 114.061 | 8.734 | 8.852 | 9.019 | 122.543 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.012 | 407 | 0 | 81.277 | 12.244 | 12.58 | 12.832 | 122.605 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.023 | 100 | 0 | 19.809 | 50.437 | 50.517 | 50.619 | 118.602 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.027 | 2.012 | 50 | 0 | 9.946 | 100.477 | 100.6 | 100.608 | 118.602 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.501 | 200.617 | 200.723 | 118.602 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19347 | 0 | 3868.615 | 1.213 | 1.826 | 2.327 | 68.148 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18944 | 0 | 3788.146 | 1.241 | 1.859 | 2.344 | 68.445 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19207 | 0 | 3840.591 | 1.225 | 1.86 | 2.317 | 68.555 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 19317 | 0 | 3862.233 | 1.223 | 1.804 | 2.25 | 69.016 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19228 | 0 | 3844.93 | 1.219 | 1.891 | 2.33 | 70.395 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16533 | 0 | 3305.856 | 1.414 | 2.296 | 2.773 | 70.801 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19130 | 0 | 3825.237 | 1.228 | 1.877 | 2.342 | 70.828 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18796 | 0 | 3758.417 | 1.252 | 1.892 | 2.305 | 72.652 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14066 | 0 | 2812.454 | 1.658 | 2.786 | 3.251 | 82.738 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7442 | 0 | 1487.476 | 3.209 | 5.468 | 6.294 | 76.445 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13937 | 0 | 2786.302 | 1.664 | 2.854 | 3.355 | 81.695 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 2.04 | 14176 | 0 | 2826.63 | 1.397 | 2.34 | 3.529 | 73.813 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 9395 | 0 | 1877.483 | 2.218 | 4.188 | 8.239 | 101.293 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4131 | 0 | 825.447 | 5.835 | 10.086 | 11.386 | 84.309 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9397 | 0 | 1878.742 | 2.21 | 4.229 | 8.211 | 75.883 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 9695 | 0 | 1938.433 | 2.14 | 4.084 | 7.574 | 75.82 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 7290 | 0 | 1457.3 | 2.776 | 5.637 | 22.908 | 124.008 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.038 | 2466 | 0 | 492.096 | 9.989 | 16.762 | 19.045 | 85.016 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7364 | 0 | 1472.088 | 2.733 | 5.602 | 23.151 | 80.191 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7213 | 0 | 1441.869 | 2.831 | 5.619 | 23.487 | 80.285 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5042 | 0 | 1007.622 | 4.116 | 8.052 | 26.836 | 125.586 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 3.843 | 1323 | 0 | 263.557 | 18.689 | 29.888 | 35.101 | 87.852 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.013 | 5121 | 0 | 1023.359 | 4.031 | 8.181 | 26.528 | 84.293 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 2.007 | 4966 | 0 | 989.99 | 4.189 | 8.222 | 27.253 | 84.293 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3245 | 0 | 648.165 | 7.441 | 12.04 | 14.058 | 125.988 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.434 | 7.274 | 1000 | 0 | 134.518 | 36.344 | 59.883 | 67.368 | 94.777 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.009 | 3238 | 0 | 646.74 | 7.15 | 13.239 | 15.179 | 97.219 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3396 | 0 | 678.479 | 6.948 | 12.465 | 13.896 | 97.277 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.883 | 50.887 | 360 | 0 | 7.075 | 2543.62 | 2546.51 | 2549.356 | 115.93 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.929 | 33.907 | 240 | 0 | 7.074 | 1696.254 | 1697.776 | 1698.111 | 115.93 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.443 | 25.43 | 180 | 0 | 7.075 | 1271.866 | 1274.332 | 1275.01 | 115.992 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.966 | 16.957 | 120 | 0 | 7.073 | 848.129 | 850.997 | 851.505 | 116.055 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.136 | 14.132 | 100 | 0 | 7.074 | 840.901 | 848.23 | 848.463 | 116.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.481 | 8.479 | 60 | 0 | 7.074 | 423.964 | 424.888 | 425.083 | 116.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.653 | 5.652 | 40 | 0 | 7.076 | 282.558 | 282.963 | 283.038 | 116.18 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1890 | 0 | 377.864 | 2.64 | 2.768 | 3.007 | 116.18 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.008 | 569 | 0 | 113.644 | 8.76 | 8.899 | 9.104 | 116.18 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.003 | 407 | 0 | 81.334 | 12.256 | 12.385 | 12.515 | 116.18 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.022 | 99 | 0 | 19.795 | 50.462 | 50.6 | 50.681 | 116.184 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.014 | 50 | 0 | 9.943 | 100.493 | 100.662 | 101.079 | 116.184 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.534 | 200.71 | 200.713 | 116.184 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

# Puma vs Raptor Simulation

Run ID: `20261012-034308`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.138 | 16.091 | 1000 | 0 | 61.966 | 40.985 | 41.974 | 42.652 | 29.141 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.092 | 1000 | 0 | 62.078 | 40.984 | 41.953 | 42.293 | 29.301 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.086 | 1000 | 0 | 62.111 | 40.982 | 41.798 | 42.253 | 29.301 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.087 | 1000 | 0 | 62.101 | 40.983 | 41.932 | 42.198 | 29.414 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.091 | 1000 | 0 | 62.114 | 40.983 | 41.852 | 42.279 | 29.5 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.097 | 16.085 | 1000 | 0 | 62.124 | 40.984 | 41.935 | 42.219 | 29.5 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.082 | 1000 | 0 | 62.073 | 40.983 | 41.978 | 42.269 | 29.5 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.091 | 16.086 | 1000 | 0 | 62.147 | 40.981 | 41.911 | 42.26 | 30.57 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.064 | 15.164 | 1000 | 0 | 66.385 | 40.976 | 41.944 | 42.043 | 30.57 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.605 | 14.924 | 1000 | 0 | 73.503 | 40.973 | 41.551 | 42.141 | 30.57 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 14925 | 0 | 2984.26 | 0.929 | 1.558 | 6.692 | 30.57 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.098 | 15.746 | 1000 | 0 | 66.232 | 40.975 | 41.896 | 42.235 | 38.93 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.518 | 11.404 | 1000 | 0 | 105.067 | 40.956 | 41.96 | 42.575 | 38.93 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.644 | 11.847 | 1000 | 0 | 79.089 | 40.972 | 41.971 | 42.431 | 38.93 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11289 | 0 | 2256.739 | 1.182 | 2.235 | 13.915 | 38.93 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.615 | 11.967 | 1000 | 0 | 79.27 | 40.999 | 42.245 | 43.254 | 50.867 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.255 | 14.595 | 1000 | 0 | 70.152 | 41.962 | 42.94 | 43.145 | 50.867 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.003 | 14.416 | 1000 | 0 | 71.413 | 41.963 | 42.971 | 43.985 | 50.867 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 7963 | 0 | 1591.59 | 1.567 | 3.13 | 27.47 | 50.867 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.64 | 14.653 | 1000 | 0 | 68.308 | 41.973 | 42.991 | 43.882 | 60.27 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.717 | 15.54 | 1000 | 0 | 67.948 | 41.981 | 43.674 | 46.139 | 60.266 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.122 | 15.295 | 1000 | 0 | 66.129 | 41.986 | 43.788 | 45.07 | 60.266 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 5796 | 0 | 1158.02 | 2.264 | 4.6 | 15.319 | 60.578 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.795 | 15.526 | 1000 | 0 | 63.311 | 42.976 | 44.274 | 46.155 | 68.363 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.84 | 16.155 | 1000 | 0 | 63.129 | 43.959 | 47.204 | 49.739 | 68.363 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.277 | 15.939 | 1000 | 0 | 61.437 | 43.983 | 46.809 | 49.695 | 63.715 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 3903 | 0 | 779.746 | 3.676 | 6.517 | 15.16 | 68.863 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.64 | 16.92 | 1000 | 0 | 60.094 | 45.34 | 49.12 | 51.511 | 81.066 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.987 | 28.732 | 363 | 0 | 12.523 | 241.368 | 242.966 | 19590.695 | 81.422 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.402 | 19.157 | 243 | 0 | 12.525 | 241.477 | 242.97 | 12798.921 | 81.477 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.612 | 14.368 | 183 | 0 | 12.524 | 241.375 | 242.866 | 10018.168 | 81.48 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.575 | 123 | 0 | 12.508 | 241.946 | 243.044 | 5232.601 | 81.48 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.576 | 103 | 0 | 10.486 | 241.231 | 242.783 | 5127.88 | 81.48 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.788 | 63 | 0 | 12.501 | 241.804 | 242.791 | 242.955 | 81.48 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 4.788 | 42 | 0 | 8.35 | 241.181 | 242.074 | 242.232 | 81.48 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.017 | 122 | 0 | 24.351 | 41.983 | 42.94 | 42.989 | 81.559 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.011 | 110 | 0 | 21.808 | 46.983 | 47.133 | 47.883 | 81.645 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 2.051 | 99 | 0 | 19.694 | 50.986 | 51.978 | 52.098 | 81.746 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.08 | 2.06 | 56 | 0 | 11.024 | 91.003 | 92.019 | 92.125 | 81.746 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.057 | 2.084 | 36 | 0 | 7.119 | 141.883 | 142.047 | 142.629 | 81.746 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.374 | 21 | 0 | 4.168 | 241.962 | 242.07 | 242.785 | 81.746 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.086 | 1000 | 0 | 62.119 | 40.982 | 41.854 | 42.145 | 27.168 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.084 | 1000 | 0 | 62.121 | 40.984 | 41.913 | 42.248 | 27.18 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.097 | 16.083 | 1000 | 0 | 62.123 | 40.982 | 41.885 | 42.119 | 27.191 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.095 | 16.087 | 1000 | 0 | 62.132 | 40.983 | 41.867 | 42.021 | 27.539 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.083 | 1000 | 0 | 62.106 | 40.983 | 41.888 | 42.29 | 27.539 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.086 | 1000 | 0 | 62.128 | 40.981 | 41.724 | 42.117 | 27.539 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.084 | 1000 | 0 | 62.116 | 40.982 | 41.79 | 42.241 | 27.547 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.087 | 1000 | 0 | 62.105 | 40.983 | 41.954 | 42.113 | 28.246 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.106 | 14.891 | 1000 | 0 | 66.199 | 40.974 | 41.965 | 42.132 | 28.246 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.264 | 15.092 | 1000 | 0 | 65.513 | 40.976 | 41.966 | 42.094 | 28.246 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 14643 | 0 | 2927.75 | 0.946 | 1.617 | 6.386 | 28.582 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.189 | 15.341 | 1000 | 0 | 65.837 | 40.976 | 41.973 | 42.156 | 32.754 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.361 | 11.961 | 1000 | 0 | 74.843 | 40.973 | 41.961 | 42.307 | 32.754 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.318 | 9.282 | 1000 | 0 | 75.087 | 40.972 | 41.978 | 42.968 | 32.754 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 10757 | 0 | 2150.659 | 1.226 | 2.444 | 12.045 | 33.359 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.633 | 12.415 | 1000 | 0 | 79.158 | 41.0 | 42.139 | 43.083 | 39.098 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.695 | 14.958 | 1000 | 0 | 68.053 | 41.956 | 42.939 | 43.631 | 39.098 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.732 | 15.127 | 1000 | 0 | 78.544 | 41.949 | 42.941 | 44.806 | 39.098 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.086 | 2.002 | 8076 | 0 | 1587.77 | 1.543 | 2.991 | 59.325 | 39.762 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.867 | 14.324 | 1000 | 0 | 67.261 | 41.975 | 43.091 | 44.818 | 44.98 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.028 | 15.565 | 1000 | 0 | 66.543 | 41.983 | 43.873 | 45.865 | 44.98 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.321 | 15.581 | 1000 | 0 | 65.271 | 41.976 | 43.0 | 44.268 | 44.98 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5556 | 0 | 1110.213 | 2.365 | 4.807 | 15.446 | 47.348 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.765 | 16.139 | 1000 | 0 | 63.433 | 42.994 | 45.707 | 47.267 | 52.887 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.043 | 15.565 | 1000 | 0 | 66.478 | 43.954 | 47.387 | 49.104 | 50.734 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.5 | 15.556 | 1000 | 0 | 64.517 | 43.973 | 47.32 | 50.11 | 50.734 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.01 | 2739 | 0 | 547.261 | 5.333 | 10.411 | 49.184 | 56.746 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.83 | 17.384 | 1000 | 0 | 59.418 | 45.909 | 49.953 | 51.639 | 84.211 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.003 | 28.769 | 363 | 0 | 12.516 | 241.771 | 243.18 | 19608.833 | 84.477 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.41 | 19.188 | 243 | 0 | 12.52 | 241.663 | 242.579 | 12797.37 | 84.512 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.632 | 14.385 | 183 | 0 | 12.507 | 241.904 | 243.004 | 10027.557 | 84.531 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.591 | 123 | 0 | 12.517 | 241.661 | 242.682 | 5231.174 | 84.539 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.593 | 103 | 0 | 10.476 | 241.837 | 242.526 | 5131.71 | 84.547 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.796 | 63 | 0 | 12.506 | 241.422 | 242.253 | 243.319 | 84.551 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.8 | 42 | 0 | 8.337 | 241.779 | 243.034 | 243.192 | 84.57 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.018 | 122 | 0 | 24.337 | 41.98 | 42.972 | 43.019 | 84.578 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.016 | 109 | 0 | 21.796 | 46.963 | 47.913 | 47.997 | 84.637 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.034 | 99 | 0 | 19.66 | 50.979 | 51.978 | 52.02 | 84.723 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.07 | 55 | 0 | 10.974 | 91.958 | 92.113 | 92.962 | 84.742 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.088 | 36 | 0 | 7.105 | 141.952 | 142.196 | 142.771 | 84.742 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.379 | 21 | 0 | 4.167 | 241.944 | 242.049 | 242.096 | 84.742 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.107 | 1000 | 0 | 62.033 | 40.981 | 41.966 | 42.362 | 27.238 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.13 | 1000 | 0 | 62.092 | 40.977 | 41.966 | 42.157 | 27.266 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.102 | 1000 | 0 | 62.116 | 40.979 | 41.884 | 42.265 | 27.277 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.101 | 16.098 | 1000 | 0 | 62.109 | 40.98 | 41.891 | 42.469 | 27.555 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.104 | 1000 | 0 | 62.105 | 40.98 | 41.952 | 42.124 | 27.582 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.102 | 1000 | 0 | 62.088 | 40.981 | 41.961 | 42.215 | 27.582 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.097 | 16.097 | 1000 | 0 | 62.123 | 40.978 | 41.961 | 42.247 | 27.598 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.115 | 1000 | 0 | 62.072 | 40.98 | 41.963 | 42.155 | 28.336 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.469 | 14.854 | 1000 | 0 | 64.647 | 40.971 | 41.973 | 42.151 | 28.402 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.986 | 15.432 | 1000 | 0 | 66.728 | 40.972 | 41.966 | 42.597 | 28.402 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 14097 | 0 | 2818.617 | 0.966 | 1.777 | 7.111 | 28.691 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.286 | 15.479 | 1000 | 0 | 65.419 | 40.973 | 41.97 | 42.935 | 32.852 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.639 | 13.306 | 1000 | 0 | 79.121 | 40.978 | 42.136 | 43.459 | 32.852 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.812 | 10.141 | 1000 | 0 | 78.051 | 40.975 | 42.08 | 43.074 | 32.852 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 10232 | 0 | 2045.161 | 1.231 | 2.526 | 31.028 | 32.852 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.691 | 11.206 | 1000 | 0 | 78.796 | 41.706 | 42.583 | 43.253 | 40.738 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.165 | 13.817 | 1000 | 0 | 70.599 | 41.942 | 42.958 | 43.706 | 39.277 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.937 | 12.847 | 1000 | 0 | 83.773 | 41.922 | 43.024 | 44.117 | 39.277 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.157 | 7476 | 0 | 1494.405 | 1.661 | 3.43 | 53.351 | 39.652 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.017 | 15.061 | 1000 | 0 | 66.592 | 41.974 | 43.27 | 44.973 | 46.094 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.885 | 15.577 | 1000 | 0 | 67.183 | 41.984 | 43.985 | 46.216 | 46.094 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.38 | 15.525 | 1000 | 0 | 65.021 | 41.984 | 43.767 | 45.98 | 46.094 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.007 | 5570 | 0 | 1113.24 | 2.343 | 4.76 | 16.251 | 47.191 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.823 | 16.15 | 1000 | 0 | 63.2 | 42.998 | 45.949 | 52.611 | 51.602 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.714 | 16.461 | 1000 | 0 | 63.639 | 43.954 | 46.943 | 49.714 | 51.602 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.537 | 16.53 | 1000 | 0 | 64.363 | 43.972 | 47.781 | 49.072 | 51.602 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3604 | 0 | 719.889 | 3.802 | 7.258 | 18.687 | 57.613 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.646 | 17.188 | 1000 | 0 | 60.073 | 45.191 | 49.945 | 59.448 | 82.816 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.993 | 28.752 | 363 | 0 | 12.52 | 241.666 | 242.932 | 19603.167 | 82.957 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.414 | 19.173 | 243 | 0 | 12.517 | 241.75 | 242.542 | 12798.363 | 82.988 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.63 | 14.376 | 183 | 0 | 12.508 | 241.797 | 243.211 | 10029.75 | 83.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.582 | 123 | 0 | 12.516 | 241.667 | 242.989 | 5232.547 | 83.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.585 | 103 | 0 | 10.478 | 241.776 | 242.361 | 5131.1 | 83.016 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.792 | 63 | 0 | 12.52 | 241.383 | 242.676 | 242.92 | 83.016 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 4.796 | 42 | 0 | 8.35 | 241.163 | 242.176 | 242.226 | 83.016 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.018 | 122 | 0 | 24.362 | 41.969 | 42.161 | 42.977 | 83.031 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.02 | 109 | 0 | 21.784 | 46.965 | 47.666 | 47.968 | 83.031 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.007 | 99 | 0 | 19.62 | 50.993 | 52.013 | 52.166 | 83.031 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.072 | 55 | 0 | 10.977 | 91.943 | 92.116 | 92.94 | 83.031 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.057 | 2.089 | 36 | 0 | 7.118 | 141.923 | 142.006 | 142.642 | 83.035 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.378 | 21 | 0 | 4.168 | 241.943 | 242.095 | 242.106 | 83.035 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18473 | 0 | 3693.899 | 1.286 | 1.795 | 2.184 | 63.273 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18505 | 0 | 3700.134 | 1.284 | 1.818 | 2.211 | 63.719 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18983 | 0 | 3795.892 | 1.252 | 1.774 | 2.182 | 63.375 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18584 | 0 | 3715.987 | 1.28 | 1.942 | 2.339 | 64.0 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18594 | 0 | 3718.19 | 1.274 | 1.825 | 2.206 | 65.605 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16317 | 0 | 3262.615 | 1.459 | 2.088 | 2.588 | 65.512 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17741 | 0 | 3547.464 | 1.304 | 2.005 | 2.623 | 65.742 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17986 | 0 | 3596.055 | 1.316 | 2.031 | 2.505 | 67.859 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14632 | 0 | 2925.654 | 1.625 | 2.268 | 2.853 | 76.527 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7930 | 0 | 1585.153 | 3.055 | 3.938 | 5.769 | 71.488 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15111 | 0 | 3021.308 | 1.57 | 2.202 | 2.885 | 76.141 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.022 | 14989 | 0 | 2996.891 | 1.238 | 1.935 | 3.121 | 67.195 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10703 | 0 | 2139.97 | 2.093 | 3.433 | 5.495 | 108.223 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4489 | 0 | 896.86 | 5.473 | 8.813 | 10.402 | 77.051 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.01 | 10762 | 0 | 2151.748 | 2.041 | 3.679 | 6.14 | 72.262 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10879 | 0 | 2175.023 | 2.048 | 3.596 | 5.357 | 71.387 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.008 | 8137 | 0 | 1626.796 | 2.722 | 4.564 | 13.688 | 124.781 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.009 | 2515 | 0 | 502.003 | 9.804 | 15.808 | 18.602 | 79.758 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 8358 | 0 | 1669.872 | 2.569 | 4.792 | 13.614 | 79.41 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 8240 | 0 | 1647.005 | 2.615 | 4.777 | 13.531 | 79.41 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.006 | 5492 | 0 | 1097.709 | 4.186 | 6.983 | 16.884 | 153.086 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.644 | 1360 | 0 | 271.212 | 18.08 | 29.645 | 33.501 | 112.371 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5747 | 0 | 1148.683 | 3.795 | 7.119 | 16.619 | 113.063 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5533 | 0 | 1105.771 | 3.97 | 7.318 | 16.804 | 80.242 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3035 | 0 | 606.2 | 8.126 | 13.071 | 14.749 | 120.695 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.997 | 6.9 | 1000 | 0 | 142.909 | 34.653 | 54.749 | 63.403 | 80.805 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3614 | 0 | 721.973 | 6.578 | 11.443 | 13.062 | 81.547 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3704 | 0 | 739.898 | 6.487 | 10.914 | 12.937 | 81.551 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.846 | 50.923 | 360 | 0 | 7.08 | 2542.321 | 2564.582 | 2580.271 | 100.496 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.892 | 33.907 | 240 | 0 | 7.081 | 1694.584 | 1710.921 | 1722.887 | 100.938 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.418 | 25.481 | 180 | 0 | 7.082 | 1270.476 | 1292.469 | 1302.658 | 100.945 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.952 | 16.963 | 120 | 0 | 7.079 | 847.556 | 864.475 | 868.656 | 101.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.134 | 14.134 | 100 | 0 | 7.075 | 790.718 | 828.889 | 837.631 | 101.016 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.468 | 8.494 | 60 | 0 | 7.086 | 423.238 | 432.893 | 434.637 | 101.016 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.649 | 5.649 | 40 | 0 | 7.081 | 282.178 | 283.268 | 283.97 | 101.016 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3717 | 0 | 743.304 | 1.316 | 1.419 | 1.56 | 101.02 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.005 | 952 | 0 | 190.21 | 5.224 | 5.331 | 5.515 | 101.02 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.003 | 486 | 0 | 97.178 | 10.258 | 10.345 | 10.492 | 101.02 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.039 | 2.018 | 100 | 0 | 19.845 | 50.337 | 50.465 | 50.818 | 101.02 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.022 | 2.011 | 50 | 0 | 9.955 | 100.385 | 100.539 | 100.832 | 101.02 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.007 | 25 | 0 | 4.987 | 200.452 | 200.591 | 200.611 | 101.02 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20423 | 0 | 4083.895 | 1.163 | 1.571 | 1.941 | 63.438 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19511 | 0 | 3901.444 | 1.219 | 1.678 | 2.091 | 63.809 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19962 | 0 | 3991.61 | 1.195 | 1.628 | 2.005 | 63.973 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19384 | 0 | 3876.086 | 1.239 | 1.85 | 2.214 | 64.418 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19831 | 0 | 3965.512 | 1.201 | 1.643 | 2.006 | 66.094 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17360 | 0 | 3471.124 | 1.38 | 1.872 | 2.364 | 66.129 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19951 | 0 | 3989.54 | 1.191 | 1.658 | 1.996 | 66.313 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 18912 | 0 | 3781.59 | 1.271 | 1.896 | 2.238 | 68.906 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14770 | 0 | 2953.181 | 1.609 | 2.242 | 2.791 | 79.523 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8094 | 0 | 1618.005 | 3.019 | 3.702 | 5.58 | 73.297 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15329 | 0 | 3064.938 | 1.549 | 2.133 | 2.81 | 80.27 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14915 | 0 | 2982.276 | 1.314 | 2.039 | 2.954 | 69.227 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.002 | 10838 | 0 | 2163.801 | 2.067 | 3.342 | 5.24 | 107.16 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4496 | 0 | 898.39 | 5.502 | 6.41 | 10.174 | 77.652 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 10707 | 0 | 2140.651 | 2.054 | 3.607 | 6.193 | 72.449 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.003 | 10839 | 0 | 2167.176 | 2.05 | 3.477 | 5.144 | 72.324 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8159 | 0 | 1631.092 | 2.708 | 4.524 | 14.619 | 129.605 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.008 | 2520 | 0 | 503.006 | 9.822 | 11.463 | 18.428 | 81.234 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 8229 | 0 | 1644.432 | 2.617 | 4.861 | 14.36 | 77.277 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8361 | 0 | 1671.555 | 2.64 | 4.556 | 14.479 | 77.277 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5343 | 0 | 1067.842 | 4.373 | 7.302 | 17.013 | 127.406 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.547 | 1398 | 0 | 278.635 | 17.658 | 24.358 | 32.612 | 80.598 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5787 | 0 | 1156.239 | 3.794 | 6.902 | 17.349 | 82.926 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5780 | 0 | 1155.003 | 3.821 | 6.546 | 17.149 | 82.93 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3082 | 0 | 615.434 | 8.055 | 12.964 | 14.64 | 131.148 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.727 | 6.602 | 1000 | 0 | 148.646 | 33.202 | 35.129 | 61.771 | 83.703 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3691 | 0 | 737.314 | 6.456 | 10.699 | 12.963 | 83.402 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3953 | 0 | 789.836 | 6.088 | 7.776 | 11.769 | 83.406 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.852 | 51.129 | 360 | 0 | 7.079 | 2541.575 | 2562.847 | 2572.696 | 102.719 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.901 | 34.065 | 240 | 0 | 7.079 | 1694.369 | 1718.156 | 1727.734 | 103.039 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.436 | 25.565 | 180 | 0 | 7.077 | 1272.226 | 1288.434 | 1297.941 | 103.168 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.954 | 17.036 | 120 | 0 | 7.078 | 847.594 | 864.373 | 866.558 | 103.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.194 | 14.273 | 100 | 0 | 7.045 | 815.878 | 850.541 | 854.069 | 103.426 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.48 | 8.533 | 60 | 0 | 7.076 | 423.638 | 434.68 | 439.773 | 103.426 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.655 | 5.667 | 40 | 0 | 7.073 | 282.735 | 284.111 | 285.547 | 103.426 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3715 | 0 | 742.952 | 1.319 | 1.407 | 1.564 | 103.426 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.003 | 950 | 0 | 189.879 | 5.234 | 5.331 | 5.481 | 103.426 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.01 | 487 | 0 | 97.214 | 10.255 | 10.354 | 10.485 | 103.426 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.039 | 2.022 | 100 | 0 | 19.844 | 50.341 | 50.475 | 50.568 | 103.43 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.021 | 2.012 | 50 | 0 | 9.958 | 100.369 | 100.478 | 100.522 | 103.43 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.006 | 25 | 0 | 4.988 | 200.388 | 200.504 | 200.552 | 103.43 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20606 | 0 | 4120.34 | 1.153 | 1.551 | 1.926 | 63.207 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20217 | 0 | 4042.754 | 1.177 | 1.577 | 2.004 | 63.387 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20739 | 0 | 4147.019 | 1.145 | 1.553 | 1.894 | 63.578 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20287 | 0 | 4056.493 | 1.179 | 1.707 | 2.093 | 63.746 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20260 | 0 | 4051.059 | 1.171 | 1.609 | 2.008 | 65.414 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17639 | 0 | 3527.04 | 1.358 | 1.814 | 2.387 | 65.602 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19839 | 0 | 3967.065 | 1.189 | 1.691 | 2.104 | 67.609 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19664 | 0 | 3932.033 | 1.214 | 1.779 | 2.203 | 68.383 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15506 | 0 | 3100.27 | 1.54 | 2.104 | 2.64 | 85.73 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 8173 | 0 | 1633.656 | 2.999 | 3.621 | 5.427 | 74.359 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15352 | 0 | 3069.667 | 1.544 | 2.143 | 2.842 | 87.91 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.015 | 15385 | 0 | 3076.215 | 1.331 | 1.964 | 2.806 | 77.977 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10940 | 0 | 2187.264 | 2.041 | 3.294 | 5.258 | 110.168 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4552 | 0 | 909.389 | 5.426 | 6.275 | 9.885 | 79.031 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10896 | 0 | 2178.572 | 2.013 | 3.576 | 5.951 | 79.398 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10896 | 0 | 2178.466 | 2.018 | 3.462 | 5.43 | 74.555 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8372 | 0 | 1673.583 | 2.614 | 4.335 | 15.811 | 135.344 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2572 | 0 | 513.497 | 9.634 | 10.978 | 17.764 | 83.563 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8465 | 0 | 1692.371 | 2.511 | 4.752 | 15.463 | 82.715 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8735 | 0 | 1746.245 | 2.448 | 4.377 | 15.046 | 82.84 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5368 | 0 | 1072.817 | 4.334 | 7.164 | 18.258 | 138.715 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.486 | 1414 | 0 | 281.981 | 17.61 | 18.957 | 32.01 | 83.504 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 5831 | 0 | 1165.202 | 3.727 | 6.906 | 18.09 | 86.594 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5819 | 0 | 1163.183 | 3.749 | 6.679 | 18.134 | 86.594 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3217 | 0 | 642.513 | 7.678 | 12.428 | 14.01 | 131.301 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.756 | 6.65 | 1000 | 0 | 148.019 | 33.564 | 34.936 | 61.504 | 89.73 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3815 | 0 | 762.082 | 6.249 | 10.152 | 12.421 | 91.43 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3956 | 0 | 790.29 | 6.122 | 7.685 | 11.676 | 91.438 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.945 | 51.106 | 360 | 0 | 7.066 | 2547.869 | 2569.254 | 2575.348 | 109.77 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.952 | 34.021 | 240 | 0 | 7.069 | 1697.649 | 1716.818 | 1723.996 | 111.59 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.473 | 25.564 | 180 | 0 | 7.066 | 1272.983 | 1287.004 | 1290.714 | 111.531 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.975 | 17.011 | 120 | 0 | 7.069 | 848.483 | 862.641 | 870.348 | 111.598 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.181 | 14.175 | 100 | 0 | 7.052 | 815.933 | 850.491 | 851.95 | 110.785 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.491 | 8.537 | 60 | 0 | 7.066 | 424.36 | 433.33 | 434.006 | 110.785 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.655 | 5.654 | 40 | 0 | 7.073 | 282.47 | 284.404 | 285.466 | 113.418 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3745 | 0 | 748.785 | 1.304 | 1.419 | 1.581 | 127.629 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.004 | 953 | 0 | 190.431 | 5.22 | 5.313 | 5.455 | 130.504 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.007 | 487 | 0 | 97.381 | 10.235 | 10.348 | 10.538 | 132.086 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.037 | 2.017 | 100 | 0 | 19.853 | 50.303 | 50.471 | 50.649 | 132.148 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.02 | 2.012 | 50 | 0 | 9.96 | 100.335 | 100.606 | 100.705 | 132.148 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.007 | 25 | 0 | 4.987 | 200.372 | 200.782 | 200.853 | 132.148 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.088 | 16.102 | 1000 | 0 | 62.157 | 40.982 | 41.436 | 42.11 | 28.922 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.095 | 16.091 | 1000 | 0 | 62.131 | 40.981 | 41.469 | 42.195 | 29.133 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.089 | 1000 | 0 | 62.126 | 40.981 | 41.822 | 42.148 | 29.234 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.089 | 1000 | 0 | 62.093 | 40.983 | 41.946 | 42.287 | 29.359 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.09 | 1000 | 0 | 62.127 | 40.981 | 41.67 | 42.173 | 29.66 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.093 | 16.085 | 1000 | 0 | 62.139 | 40.983 | 41.485 | 42.041 | 29.66 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.085 | 1000 | 0 | 62.116 | 40.982 | 41.792 | 42.269 | 29.668 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.082 | 1000 | 0 | 62.1 | 40.981 | 41.967 | 42.228 | 30.32 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.034 | 15.456 | 1000 | 0 | 66.514 | 40.973 | 41.962 | 42.171 | 30.32 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.86 | 14.807 | 1000 | 0 | 67.295 | 40.973 | 41.964 | 42.067 | 30.32 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 14570 | 0 | 2913.161 | 0.941 | 1.684 | 5.848 | 30.629 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.429 | 15.265 | 1000 | 0 | 69.304 | 40.975 | 41.976 | 42.255 | 35.105 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.011 | 12.171 | 1000 | 0 | 76.858 | 40.973 | 41.993 | 42.787 | 35.105 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.768 | 12.842 | 1001 | 0 | 92.96 | 40.963 | 41.989 | 43.209 | 35.105 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10124 | 0 | 2023.988 | 1.251 | 2.564 | 40.349 | 35.496 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.358 | 12.641 | 1000 | 0 | 80.919 | 40.983 | 42.149 | 43.279 | 41.246 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.605 | 13.56 | 1000 | 0 | 73.5 | 41.808 | 42.753 | 44.154 | 41.246 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.805 | 14.083 | 1000 | 0 | 72.437 | 41.922 | 42.829 | 43.426 | 41.246 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7894 | 0 | 1577.728 | 1.58 | 3.169 | 20.94 | 41.246 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.192 | 14.82 | 1000 | 0 | 70.462 | 41.97 | 42.995 | 44.124 | 49.297 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.648 | 15.442 | 1000 | 0 | 68.268 | 41.978 | 43.367 | 44.659 | 49.297 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.977 | 15.373 | 1000 | 0 | 71.544 | 41.98 | 43.267 | 44.957 | 49.297 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.005 | 5560 | 0 | 1111.216 | 2.285 | 4.78 | 22.027 | 50.434 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.459 | 15.909 | 1000 | 0 | 64.687 | 42.982 | 45.142 | 48.835 | 58.098 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.299 | 15.882 | 1000 | 0 | 65.362 | 43.001 | 46.202 | 54.334 | 58.098 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.631 | 15.629 | 1000 | 0 | 63.975 | 43.879 | 47.074 | 55.202 | 55.059 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.007 | 3725 | 0 | 744.24 | 3.792 | 6.912 | 19.685 | 61.07 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.418 | 16.657 | 1000 | 0 | 60.91 | 45.017 | 49.618 | 58.264 | 64.551 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.98 | 28.757 | 363 | 0 | 12.526 | 241.33 | 243.11 | 19589.218 | 65.004 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.405 | 19.164 | 243 | 0 | 12.523 | 241.551 | 242.979 | 12796.44 | 65.016 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.619 | 14.362 | 183 | 0 | 12.518 | 241.669 | 242.954 | 10017.972 | 65.016 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.819 | 9.575 | 123 | 0 | 12.527 | 241.313 | 242.742 | 5226.518 | 65.016 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.816 | 9.579 | 103 | 0 | 10.493 | 241.187 | 242.227 | 5131.775 | 65.035 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.786 | 63 | 0 | 12.515 | 241.189 | 243.101 | 243.18 | 65.035 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.784 | 42 | 0 | 8.347 | 241.201 | 242.275 | 242.675 | 65.043 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.019 | 122 | 0 | 24.351 | 41.982 | 42.986 | 43.001 | 65.074 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.03 | 114 | 0 | 22.727 | 44.98 | 45.907 | 45.984 | 65.117 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.035 | 98 | 0 | 19.468 | 51.973 | 52.068 | 52.971 | 65.129 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.061 | 2.057 | 56 | 0 | 11.065 | 90.985 | 91.835 | 91.964 | 65.129 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.08 | 36 | 0 | 7.138 | 140.987 | 141.98 | 142.045 | 65.129 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.375 | 21 | 0 | 4.17 | 241.952 | 241.998 | 242.012 | 65.145 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.1 | 16.106 | 1000 | 0 | 62.112 | 40.983 | 41.744 | 42.198 | 28.758 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.096 | 16.093 | 1000 | 0 | 62.126 | 40.981 | 41.715 | 42.103 | 29.359 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.094 | 16.087 | 1000 | 0 | 62.135 | 40.981 | 41.431 | 42.246 | 29.438 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.095 | 16.085 | 1000 | 0 | 62.131 | 40.982 | 41.594 | 42.357 | 29.508 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.088 | 16.087 | 1000 | 0 | 62.158 | 40.98 | 41.432 | 42.049 | 29.566 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.079 | 1000 | 0 | 62.12 | 40.984 | 41.912 | 42.199 | 29.664 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.094 | 16.086 | 1000 | 0 | 62.135 | 40.981 | 41.898 | 42.112 | 29.688 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.087 | 1000 | 0 | 62.099 | 40.981 | 41.892 | 42.315 | 30.348 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.227 | 15.059 | 1000 | 0 | 65.672 | 40.973 | 41.97 | 42.121 | 30.41 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.103 | 13.44 | 1000 | 0 | 66.211 | 40.972 | 41.972 | 42.799 | 30.445 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 14442 | 0 | 2887.691 | 0.948 | 1.702 | 6.556 | 30.805 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.19 | 15.145 | 1000 | 0 | 65.834 | 40.975 | 41.964 | 42.314 | 35.914 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.155 | 10.442 | 1000 | 0 | 98.476 | 40.966 | 41.977 | 42.968 | 35.914 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.74 | 10.752 | 1000 | 0 | 102.673 | 40.965 | 41.981 | 42.896 | 35.914 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10259 | 0 | 2051.01 | 1.242 | 2.509 | 39.393 | 35.945 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.156 | 11.167 | 1000 | 0 | 76.01 | 40.98 | 42.015 | 43.149 | 41.047 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.601 | 14.468 | 1000 | 0 | 73.527 | 41.726 | 42.772 | 44.938 | 41.047 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.85 | 13.587 | 1000 | 0 | 72.202 | 41.922 | 42.968 | 43.63 | 41.047 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.101 | 2.194 | 7550 | 0 | 1480.186 | 1.569 | 3.241 | 62.325 | 41.574 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.024 | 14.343 | 1000 | 0 | 66.561 | 41.975 | 42.995 | 44.917 | 47.199 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.775 | 15.299 | 1000 | 0 | 67.681 | 41.976 | 43.631 | 45.012 | 47.086 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.148 | 15.604 | 1000 | 0 | 70.683 | 41.982 | 44.041 | 48.502 | 47.086 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.188 | 2.004 | 5075 | 0 | 978.133 | 2.505 | 5.231 | 23.475 | 49.563 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.279 | 16.293 | 1000 | 0 | 65.451 | 42.979 | 45.402 | 57.391 | 54.082 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.059 | 15.596 | 1000 | 0 | 66.406 | 42.99 | 45.959 | 49.741 | 51.746 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.471 | 15.706 | 1000 | 0 | 64.636 | 43.007 | 46.286 | 51.853 | 51.746 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3599 | 0 | 718.745 | 3.9 | 7.246 | 11.595 | 57.758 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.273 | 16.851 | 1000 | 0 | 61.451 | 44.976 | 48.679 | 51.234 | 82.809 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.985 | 28.766 | 363 | 0 | 12.524 | 241.524 | 242.954 | 19594.148 | 81.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.414 | 19.158 | 243 | 0 | 12.516 | 241.668 | 242.986 | 12796.775 | 81.168 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.617 | 14.383 | 183 | 0 | 12.52 | 241.678 | 242.826 | 10022.404 | 81.172 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.585 | 123 | 0 | 12.52 | 241.582 | 242.498 | 5227.149 | 81.172 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.582 | 103 | 0 | 10.485 | 241.514 | 242.412 | 5129.626 | 81.176 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.795 | 63 | 0 | 12.515 | 241.536 | 242.524 | 243.146 | 81.176 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.028 | 4.805 | 42 | 0 | 8.353 | 241.095 | 242.167 | 242.294 | 81.176 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.019 | 122 | 0 | 24.358 | 41.981 | 42.421 | 42.988 | 81.215 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.03 | 114 | 0 | 22.728 | 44.977 | 45.877 | 46.013 | 81.23 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.026 | 98 | 0 | 19.464 | 51.965 | 52.037 | 52.979 | 81.23 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.064 | 2.056 | 56 | 0 | 11.058 | 90.978 | 91.958 | 92.682 | 81.234 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.081 | 36 | 0 | 7.134 | 140.979 | 141.982 | 142.627 | 81.234 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.376 | 21 | 0 | 4.166 | 241.959 | 242.958 | 242.971 | 81.234 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.164 | 1000 | 0 | 62.076 | 40.984 | 41.973 | 42.483 | 28.996 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.127 | 1000 | 0 | 62.063 | 40.981 | 41.955 | 42.171 | 29.188 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.125 | 1000 | 0 | 62.104 | 40.98 | 41.759 | 42.541 | 29.492 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.107 | 1000 | 0 | 62.085 | 40.982 | 41.973 | 42.293 | 29.582 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.103 | 16.166 | 1000 | 0 | 62.1 | 40.98 | 41.938 | 42.426 | 29.668 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.104 | 1000 | 0 | 61.993 | 40.983 | 41.986 | 42.571 | 29.668 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.128 | 1000 | 0 | 62.063 | 40.98 | 41.962 | 42.281 | 29.676 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.097 | 1000 | 0 | 62.081 | 40.983 | 41.933 | 42.554 | 30.254 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.199 | 15.466 | 1000 | 0 | 65.793 | 40.971 | 41.971 | 42.112 | 30.285 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.008 | 14.379 | 1000 | 0 | 66.63 | 40.973 | 41.981 | 42.371 | 30.301 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 14338 | 0 | 2866.636 | 0.955 | 1.704 | 6.312 | 30.602 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.286 | 15.154 | 1000 | 0 | 65.418 | 40.974 | 41.975 | 42.159 | 35.148 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.184 | 10.664 | 1000 | 0 | 82.076 | 40.97 | 41.987 | 42.974 | 35.156 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.848 | 11.488 | 1000 | 0 | 92.183 | 40.97 | 41.988 | 42.971 | 35.156 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 10372 | 0 | 2073.318 | 1.239 | 2.518 | 22.313 | 35.18 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.299 | 12.778 | 1000 | 0 | 81.307 | 40.979 | 42.137 | 43.101 | 40.492 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.062 | 13.61 | 1000 | 0 | 76.556 | 41.137 | 42.778 | 54.282 | 40.492 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.273 | 13.904 | 1000 | 0 | 81.48 | 41.843 | 42.95 | 43.899 | 40.492 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.101 | 2.176 | 7445 | 0 | 1459.488 | 1.597 | 3.439 | 38.809 | 40.492 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.327 | 14.836 | 1000 | 0 | 69.799 | 41.969 | 43.002 | 47.795 | 46.707 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.142 | 15.305 | 1000 | 0 | 66.041 | 41.974 | 43.001 | 43.98 | 46.707 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.973 | 15.574 | 1000 | 0 | 66.786 | 41.986 | 43.997 | 56.81 | 46.707 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 5558 | 0 | 1110.825 | 2.275 | 4.697 | 23.209 | 48.875 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.498 | 15.947 | 1000 | 0 | 64.523 | 42.982 | 45.015 | 46.29 | 55.758 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.955 | 16.069 | 1000 | 0 | 66.867 | 42.986 | 45.53 | 51.239 | 55.758 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.702 | 15.765 | 1000 | 0 | 63.686 | 43.007 | 45.922 | 49.345 | 55.758 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3743 | 0 | 747.527 | 3.615 | 6.853 | 22.731 | 61.77 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.719 | 16.971 | 1000 | 0 | 59.812 | 44.974 | 48.131 | 51.758 | 68.289 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.99 | 28.746 | 363 | 0 | 12.522 | 241.706 | 243.036 | 19599.455 | 68.719 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.407 | 19.163 | 243 | 0 | 12.521 | 241.612 | 242.566 | 12798.953 | 68.73 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.378 | 183 | 0 | 12.512 | 241.821 | 242.927 | 10024.563 | 68.738 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.579 | 123 | 0 | 12.52 | 241.639 | 242.452 | 5229.976 | 68.75 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.581 | 103 | 0 | 10.484 | 241.683 | 242.401 | 5131.577 | 68.75 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.792 | 63 | 0 | 12.517 | 241.525 | 242.326 | 242.892 | 68.754 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.795 | 42 | 0 | 8.347 | 241.218 | 242.198 | 242.97 | 68.754 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.019 | 122 | 0 | 24.346 | 41.978 | 42.962 | 43.068 | 68.77 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.03 | 114 | 0 | 22.737 | 44.981 | 45.178 | 45.99 | 68.828 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.027 | 98 | 0 | 19.518 | 51.951 | 52.009 | 52.968 | 68.836 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.059 | 2.057 | 56 | 0 | 11.07 | 90.973 | 91.338 | 91.789 | 68.848 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.083 | 36 | 0 | 7.137 | 140.971 | 141.99 | 142.0 | 68.848 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.378 | 21 | 0 | 4.166 | 241.953 | 242.083 | 242.09 | 68.848 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19696 | 0 | 3938.378 | 1.199 | 1.687 | 2.176 | 68.035 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19277 | 0 | 3854.699 | 1.227 | 1.751 | 2.233 | 68.156 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19794 | 0 | 3958.122 | 1.196 | 1.668 | 2.152 | 68.262 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19815 | 0 | 3962.353 | 1.194 | 1.714 | 2.139 | 68.43 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 19643 | 0 | 3927.314 | 1.205 | 1.705 | 2.159 | 69.949 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16781 | 0 | 3355.414 | 1.419 | 2.008 | 2.582 | 70.34 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19300 | 0 | 3859.397 | 1.225 | 1.777 | 2.231 | 70.422 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18581 | 0 | 3715.54 | 1.274 | 1.863 | 2.323 | 72.539 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13955 | 0 | 2790.274 | 1.694 | 2.424 | 3.239 | 81.934 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7522 | 0 | 1503.633 | 3.231 | 4.2 | 6.102 | 76.23 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 13924 | 0 | 2784.039 | 1.689 | 2.44 | 3.243 | 81.391 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.035 | 2.01 | 14206 | 0 | 2821.211 | 1.327 | 2.038 | 3.53 | 70.484 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9840 | 0 | 1967.296 | 2.193 | 3.955 | 6.158 | 104.695 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4191 | 0 | 837.36 | 5.81 | 9.443 | 11.251 | 80.098 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10230 | 0 | 2045.133 | 2.118 | 3.83 | 5.587 | 74.652 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.001 | 10524 | 0 | 2103.626 | 2.075 | 3.695 | 5.327 | 74.777 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.014 | 8068 | 0 | 1612.838 | 2.615 | 4.822 | 20.109 | 122.902 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.038 | 2453 | 0 | 489.818 | 10.012 | 16.683 | 19.032 | 83.707 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8196 | 0 | 1638.467 | 2.579 | 4.768 | 20.123 | 80.145 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8117 | 0 | 1622.663 | 2.597 | 4.751 | 20.523 | 80.215 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5357 | 0 | 1070.269 | 3.967 | 7.458 | 23.269 | 120.719 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.686 | 1350 | 0 | 269.111 | 18.197 | 30.683 | 34.264 | 85.852 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5705 | 0 | 1140.046 | 3.695 | 7.003 | 22.998 | 83.645 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5343 | 0 | 1067.869 | 3.971 | 7.381 | 22.763 | 83.707 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3647 | 0 | 728.455 | 6.353 | 10.827 | 12.405 | 99.23 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.013 | 6.868 | 1000 | 0 | 142.587 | 34.383 | 57.334 | 63.975 | 90.613 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3720 | 0 | 743.172 | 6.395 | 10.971 | 12.534 | 89.551 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3765 | 0 | 752.016 | 6.274 | 10.807 | 12.576 | 89.551 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.844 | 50.852 | 360 | 0 | 7.081 | 2541.799 | 2545.769 | 2546.72 | 106.434 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.905 | 33.904 | 240 | 0 | 7.079 | 1694.583 | 1699.446 | 1700.565 | 108.77 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.425 | 25.424 | 180 | 0 | 7.08 | 1270.912 | 1275.123 | 1275.436 | 108.77 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.947 | 16.946 | 120 | 0 | 7.081 | 847.213 | 851.047 | 851.17 | 115.574 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.126 | 14.128 | 100 | 0 | 7.079 | 843.336 | 847.771 | 847.966 | 115.574 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.473 | 8.476 | 60 | 0 | 7.082 | 423.538 | 425.088 | 425.136 | 115.578 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.649 | 40 | 0 | 7.079 | 282.424 | 282.869 | 283.106 | 116.016 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1980 | 0 | 395.88 | 2.485 | 2.615 | 2.917 | 118.078 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.008 | 580 | 0 | 115.883 | 8.59 | 8.717 | 8.808 | 118.582 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.007 | 412 | 0 | 82.384 | 12.099 | 12.258 | 12.453 | 118.582 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.037 | 2.018 | 100 | 0 | 19.853 | 50.337 | 50.42 | 50.456 | 118.582 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.024 | 2.012 | 50 | 0 | 9.952 | 100.425 | 100.552 | 100.585 | 118.582 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.495 | 200.624 | 200.747 | 118.586 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20096 | 0 | 4018.368 | 1.178 | 1.622 | 2.137 | 67.57 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 19610 | 0 | 3920.776 | 1.208 | 1.683 | 2.211 | 68.164 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 20028 | 0 | 4004.562 | 1.182 | 1.641 | 2.132 | 67.77 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19881 | 0 | 3975.51 | 1.193 | 1.696 | 2.12 | 67.785 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19742 | 0 | 3947.802 | 1.197 | 1.693 | 2.211 | 69.25 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17124 | 0 | 3423.834 | 1.389 | 1.925 | 2.559 | 70.223 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19742 | 0 | 3947.592 | 1.199 | 1.7 | 2.198 | 76.234 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19476 | 0 | 3894.463 | 1.213 | 1.747 | 2.195 | 78.223 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15038 | 0 | 3006.754 | 1.579 | 2.145 | 2.963 | 96.988 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8040 | 0 | 1607.175 | 3.033 | 3.725 | 5.634 | 82.016 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15001 | 0 | 2999.576 | 1.581 | 2.172 | 2.994 | 98.789 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 2.001 | 15069 | 0 | 3001.724 | 1.262 | 1.919 | 3.223 | 79.969 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10755 | 0 | 2150.073 | 2.011 | 3.615 | 5.335 | 109.762 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4461 | 0 | 891.515 | 5.493 | 6.995 | 10.402 | 88.59 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10901 | 0 | 2179.324 | 1.98 | 3.56 | 5.264 | 81.902 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10911 | 0 | 2181.355 | 1.986 | 3.548 | 5.353 | 82.152 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8240 | 0 | 1647.272 | 2.555 | 4.732 | 20.911 | 136.121 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.023 | 2488 | 0 | 496.794 | 9.945 | 15.166 | 18.438 | 92.18 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8307 | 0 | 1660.554 | 2.525 | 4.748 | 20.908 | 86.848 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8154 | 0 | 1630.069 | 2.578 | 4.735 | 21.089 | 86.941 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5451 | 0 | 1089.086 | 3.886 | 7.404 | 24.014 | 120.133 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 3.628 | 1367 | 0 | 272.445 | 18.098 | 29.45 | 34.117 | 95.023 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5680 | 0 | 1135.079 | 3.727 | 7.072 | 23.669 | 92.793 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5563 | 0 | 1111.805 | 3.862 | 6.98 | 23.262 | 92.793 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3599 | 0 | 718.966 | 6.433 | 11.34 | 12.79 | 98.316 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.01 | 6.895 | 1000 | 0 | 142.648 | 34.383 | 56.086 | 64.005 | 99.227 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3651 | 0 | 729.414 | 6.448 | 11.465 | 13.003 | 93.926 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3855 | 0 | 770.021 | 6.244 | 10.174 | 12.05 | 93.926 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.856 | 50.859 | 360 | 0 | 7.079 | 2542.312 | 2546.575 | 2547.727 | 114.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.902 | 33.894 | 240 | 0 | 7.079 | 1694.853 | 1698.213 | 1700.975 | 117.402 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.426 | 25.42 | 180 | 0 | 7.079 | 1271.095 | 1275.249 | 1275.582 | 117.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.948 | 16.95 | 120 | 0 | 7.081 | 847.199 | 850.986 | 851.16 | 120.402 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.125 | 14.127 | 100 | 0 | 7.079 | 843.355 | 847.487 | 848.039 | 124.363 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.475 | 8.474 | 60 | 0 | 7.079 | 423.659 | 425.282 | 425.543 | 124.363 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.649 | 5.65 | 40 | 0 | 7.081 | 282.371 | 282.658 | 283.708 | 124.367 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1978 | 0 | 395.469 | 2.492 | 2.609 | 2.86 | 129.957 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 579 | 0 | 115.775 | 8.601 | 8.726 | 8.895 | 130.145 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.011 | 412 | 0 | 82.279 | 12.12 | 12.25 | 12.343 | 132.645 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.019 | 100 | 0 | 19.863 | 50.307 | 50.398 | 50.465 | 132.645 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.02 | 2.011 | 50 | 0 | 9.96 | 100.342 | 100.523 | 100.65 | 132.645 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.006 | 25 | 0 | 4.988 | 200.418 | 200.546 | 200.555 | 132.707 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20078 | 0 | 4014.914 | 1.18 | 1.615 | 2.123 | 67.746 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19563 | 0 | 3911.949 | 1.208 | 1.671 | 2.214 | 68.109 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20008 | 0 | 4000.801 | 1.183 | 1.654 | 2.156 | 68.234 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19938 | 0 | 3986.902 | 1.185 | 1.683 | 2.142 | 68.723 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 19729 | 0 | 3944.602 | 1.196 | 1.699 | 2.191 | 70.32 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16199 | 0 | 3239.219 | 1.464 | 2.129 | 2.724 | 70.48 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19261 | 0 | 3851.514 | 1.226 | 1.777 | 2.258 | 70.531 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19069 | 0 | 3813.172 | 1.239 | 1.791 | 2.209 | 72.613 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14881 | 0 | 2975.42 | 1.598 | 2.162 | 2.971 | 81.871 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8064 | 0 | 1612.051 | 3.031 | 3.72 | 5.648 | 76.473 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14852 | 0 | 2969.684 | 1.604 | 2.13 | 2.969 | 81.289 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.035 | 2.024 | 15104 | 0 | 2999.63 | 1.296 | 1.919 | 2.988 | 74.402 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.001 | 10904 | 0 | 2173.382 | 1.998 | 3.511 | 4.899 | 113.637 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4440 | 0 | 887.17 | 5.514 | 8.295 | 10.452 | 82.133 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11092 | 0 | 2217.66 | 1.971 | 3.468 | 4.698 | 76.473 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 10774 | 0 | 2153.814 | 2.002 | 3.529 | 5.424 | 75.98 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8367 | 0 | 1672.634 | 2.539 | 4.535 | 21.934 | 127.152 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2528 | 0 | 504.789 | 9.781 | 15.208 | 18.325 | 85.125 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8296 | 0 | 1658.527 | 2.562 | 4.697 | 21.758 | 80.078 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8453 | 0 | 1689.67 | 2.524 | 4.412 | 21.557 | 80.176 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5655 | 0 | 1130.169 | 3.748 | 6.916 | 24.776 | 122.125 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.591 | 1388 | 0 | 276.648 | 17.716 | 29.698 | 33.292 | 87.973 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5673 | 0 | 1133.685 | 3.757 | 6.987 | 23.906 | 85.703 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5739 | 0 | 1146.897 | 3.779 | 6.452 | 23.583 | 85.703 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 3645 | 0 | 728.32 | 6.415 | 10.981 | 12.312 | 111.844 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.865 | 6.761 | 1000 | 0 | 145.659 | 33.994 | 36.636 | 61.989 | 91.477 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3705 | 0 | 740.049 | 6.339 | 11.515 | 12.602 | 89.348 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3760 | 0 | 751.05 | 6.473 | 10.567 | 12.458 | 89.348 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.848 | 50.848 | 360 | 0 | 7.08 | 2541.922 | 2546.196 | 2547.409 | 109.406 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.898 | 33.894 | 240 | 0 | 7.08 | 1694.654 | 1697.958 | 1698.692 | 111.059 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.435 | 25.417 | 180 | 0 | 7.077 | 1271.587 | 1274.384 | 1274.887 | 111.148 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.946 | 16.945 | 120 | 0 | 7.081 | 847.161 | 851.561 | 851.685 | 106.973 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.181 | 14.123 | 100 | 0 | 7.052 | 839.261 | 847.733 | 847.88 | 108.598 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.475 | 8.478 | 60 | 0 | 7.08 | 423.705 | 425.548 | 426.63 | 112.285 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.649 | 5.65 | 40 | 0 | 7.08 | 282.406 | 282.685 | 282.757 | 112.285 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1996 | 0 | 399.045 | 2.47 | 2.595 | 2.817 | 114.047 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.007 | 583 | 0 | 116.425 | 8.555 | 8.721 | 8.811 | 114.047 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.004 | 413 | 0 | 82.587 | 12.079 | 12.165 | 12.337 | 114.109 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.016 | 100 | 0 | 19.86 | 50.311 | 50.449 | 50.546 | 114.109 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.009 | 50 | 0 | 9.963 | 100.323 | 100.41 | 100.504 | 114.109 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.012 | 2.006 | 25 | 0 | 4.988 | 200.407 | 200.543 | 200.671 | 114.109 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

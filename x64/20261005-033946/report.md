# Puma vs Raptor Simulation

Run ID: `20261005-033946`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.099 | 1000 | 0 | 61.971 | 41.001 | 41.988 | 42.945 | 29.504 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.094 | 1000 | 0 | 61.986 | 40.993 | 41.986 | 42.55 | 30.082 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.093 | 1000 | 0 | 62.019 | 40.995 | 41.969 | 42.34 | 30.082 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.098 | 1000 | 0 | 62.014 | 40.99 | 41.973 | 42.397 | 30.141 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.084 | 1000 | 0 | 62.017 | 40.996 | 41.965 | 42.402 | 30.141 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.088 | 1000 | 0 | 62.029 | 40.992 | 41.978 | 42.305 | 30.141 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.086 | 1000 | 0 | 62.004 | 40.992 | 41.988 | 42.47 | 30.219 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.087 | 1000 | 0 | 61.993 | 40.993 | 41.985 | 42.382 | 31.141 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.292 | 13.997 | 1000 | 0 | 65.393 | 40.981 | 41.971 | 42.005 | 31.141 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.5 | 13.475 | 1000 | 0 | 64.517 | 40.984 | 41.975 | 42.557 | 31.141 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12257 | 0 | 2450.571 | 1.133 | 1.875 | 8.501 | 31.18 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.521 | 15.069 | 1000 | 0 | 64.431 | 40.987 | 41.983 | 42.942 | 41.813 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.38 | 13.419 | 1000 | 0 | 69.543 | 41.92 | 42.176 | 43.004 | 41.836 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.34 | 14.543 | 1000 | 0 | 65.19 | 41.95 | 42.338 | 43.014 | 41.836 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.04 | 10024 | 0 | 2003.868 | 1.409 | 2.257 | 15.337 | 41.836 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.699 | 14.857 | 1000 | 0 | 63.698 | 41.974 | 42.941 | 43.04 | 55.676 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.323 | 15.726 | 1000 | 0 | 65.26 | 41.993 | 43.089 | 44.002 | 55.676 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.033 | 15.848 | 1000 | 0 | 62.372 | 41.995 | 43.029 | 43.976 | 55.676 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 6782 | 0 | 1355.39 | 2.039 | 3.484 | 10.938 | 55.676 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.765 | 15.984 | 1000 | 0 | 63.431 | 42.938 | 43.883 | 44.142 | 65.543 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.039 | 16.009 | 1000 | 0 | 66.495 | 43.77 | 44.995 | 46.023 | 65.543 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.938 | 15.353 | 1000 | 0 | 62.745 | 43.34 | 44.961 | 45.859 | 65.543 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4807 | 0 | 960.395 | 2.854 | 5.023 | 12.726 | 65.543 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.987 | 16.521 | 1000 | 0 | 62.552 | 44.073 | 46.062 | 47.754 | 75.613 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.534 | 17.173 | 1000 | 0 | 60.481 | 46.92 | 48.206 | 50.43 | 75.613 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.945 | 17.375 | 1000 | 0 | 62.715 | 46.921 | 48.969 | 51.867 | 75.613 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.007 | 3048 | 0 | 608.731 | 4.784 | 6.659 | 12.238 | 75.781 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.681 | 18.11 | 1000 | 0 | 56.558 | 47.978 | 50.912 | 52.82 | 84.496 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.998 | 28.759 | 363 | 0 | 12.518 | 241.683 | 242.967 | 19606.064 | 84.922 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.415 | 19.176 | 243 | 0 | 12.516 | 241.726 | 242.952 | 12800.984 | 84.949 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.381 | 183 | 0 | 12.512 | 241.81 | 242.961 | 10023.89 | 84.965 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.585 | 123 | 0 | 12.518 | 241.591 | 242.536 | 5229.944 | 84.977 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.583 | 103 | 0 | 10.483 | 241.699 | 242.477 | 5132.356 | 85.105 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.795 | 63 | 0 | 12.51 | 241.728 | 242.43 | 242.896 | 85.113 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.791 | 42 | 0 | 8.344 | 241.742 | 242.284 | 242.64 | 85.113 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.019 | 122 | 0 | 24.371 | 41.974 | 42.075 | 42.99 | 85.141 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.038 | 109 | 0 | 21.767 | 46.985 | 47.964 | 48.001 | 85.18 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.018 | 99 | 0 | 19.722 | 50.986 | 51.946 | 51.971 | 85.324 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.092 | 2.059 | 56 | 0 | 10.998 | 91.888 | 92.097 | 92.935 | 85.324 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.058 | 2.084 | 36 | 0 | 7.118 | 141.936 | 141.999 | 142.013 | 85.328 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.377 | 21 | 0 | 4.171 | 241.946 | 242.024 | 242.768 | 85.328 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.088 | 1000 | 0 | 62.009 | 40.994 | 41.976 | 42.298 | 29.0 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.086 | 1000 | 0 | 61.986 | 40.996 | 41.986 | 42.415 | 29.391 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.087 | 1000 | 0 | 62.04 | 40.988 | 41.966 | 42.248 | 29.395 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.085 | 1000 | 0 | 62.042 | 40.99 | 41.962 | 42.357 | 29.43 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.086 | 1000 | 0 | 62.014 | 40.992 | 41.982 | 42.494 | 29.57 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.083 | 1000 | 0 | 61.994 | 40.993 | 41.979 | 42.383 | 29.676 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.084 | 1000 | 0 | 62.019 | 40.988 | 41.98 | 42.246 | 29.695 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.086 | 1000 | 0 | 62.025 | 40.992 | 41.975 | 42.223 | 30.742 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.421 | 15.235 | 1000 | 0 | 64.849 | 40.981 | 41.971 | 42.188 | 30.742 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.295 | 13.835 | 1000 | 0 | 65.382 | 40.979 | 41.971 | 42.282 | 30.848 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12200 | 0 | 2439.194 | 1.134 | 1.93 | 5.754 | 30.938 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.397 | 13.141 | 1000 | 0 | 64.947 | 40.988 | 41.976 | 42.245 | 40.363 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.729 | 12.986 | 1000 | 0 | 67.891 | 41.938 | 42.27 | 43.204 | 40.363 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.415 | 14.493 | 1000 | 0 | 64.87 | 41.949 | 42.393 | 43.033 | 40.363 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9195 | 0 | 1838.05 | 1.544 | 2.46 | 11.721 | 40.363 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.44 | 15.753 | 1000 | 0 | 64.769 | 41.975 | 42.749 | 43.124 | 50.934 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.9 | 15.365 | 1000 | 0 | 67.116 | 42.01 | 43.162 | 44.363 | 50.934 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.264 | 15.695 | 1000 | 0 | 70.109 | 42.01 | 43.279 | 44.757 | 50.934 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6863 | 0 | 1371.758 | 2.024 | 3.382 | 11.704 | 50.934 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.679 | 15.31 | 1000 | 0 | 63.779 | 42.949 | 43.97 | 44.756 | 57.191 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.393 | 16.062 | 1000 | 0 | 64.966 | 43.854 | 44.967 | 47.257 | 57.191 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.353 | 15.515 | 1000 | 0 | 65.135 | 43.931 | 45.187 | 46.836 | 57.191 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.019 | 4664 | 0 | 931.991 | 2.894 | 5.719 | 14.071 | 58.094 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.143 | 16.627 | 1000 | 0 | 61.945 | 44.471 | 45.98 | 50.166 | 72.281 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.005 | 16.39 | 1000 | 0 | 62.482 | 46.775 | 48.269 | 50.601 | 72.281 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.847 | 17.312 | 1000 | 0 | 59.357 | 46.931 | 48.336 | 51.151 | 72.281 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.006 | 3031 | 0 | 605.202 | 4.882 | 6.449 | 14.809 | 74.285 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.878 | 17.784 | 1000 | 0 | 55.933 | 47.959 | 50.929 | 54.295 | 78.551 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.992 | 28.754 | 363 | 0 | 12.521 | 241.643 | 242.971 | 19600.247 | 78.766 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.416 | 19.171 | 243 | 0 | 12.515 | 241.741 | 242.934 | 12800.125 | 78.809 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.376 | 183 | 0 | 12.514 | 241.771 | 242.898 | 10025.048 | 78.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.589 | 123 | 0 | 12.509 | 241.836 | 242.529 | 5230.731 | 78.816 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.584 | 103 | 0 | 10.48 | 241.713 | 242.28 | 5130.897 | 78.828 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.795 | 63 | 0 | 12.506 | 241.594 | 242.64 | 242.966 | 78.828 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.792 | 42 | 0 | 8.345 | 241.466 | 242.249 | 242.681 | 78.828 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.017 | 122 | 0 | 24.382 | 41.978 | 42.051 | 42.78 | 78.891 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.009 | 109 | 0 | 21.792 | 46.974 | 47.095 | 47.986 | 78.922 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.025 | 2.012 | 99 | 0 | 19.702 | 50.995 | 51.954 | 51.998 | 78.922 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.091 | 2.066 | 56 | 0 | 11.001 | 91.862 | 92.053 | 92.521 | 78.922 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.063 | 2.08 | 36 | 0 | 7.11 | 141.941 | 142.246 | 142.96 | 78.922 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.375 | 21 | 0 | 4.17 | 241.882 | 242.085 | 242.78 | 78.926 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.088 | 1000 | 0 | 62.025 | 40.994 | 41.977 | 42.331 | 29.211 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.09 | 1000 | 0 | 62.043 | 40.988 | 41.977 | 42.265 | 29.266 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.087 | 1000 | 0 | 62.049 | 40.998 | 41.977 | 42.302 | 29.637 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.084 | 1000 | 0 | 62.036 | 40.995 | 41.972 | 42.343 | 29.637 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.082 | 1000 | 0 | 62.054 | 40.993 | 41.964 | 42.507 | 29.688 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.135 | 1000 | 0 | 62.003 | 40.993 | 41.975 | 42.323 | 29.699 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.087 | 1000 | 0 | 62.005 | 40.992 | 41.975 | 42.287 | 29.707 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.085 | 1000 | 0 | 62.026 | 40.99 | 41.97 | 42.224 | 30.32 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.688 | 15.31 | 1000 | 0 | 68.085 | 40.979 | 41.979 | 42.663 | 30.359 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.423 | 14.922 | 1000 | 0 | 64.839 | 40.982 | 41.979 | 42.165 | 30.488 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 12024 | 0 | 2403.838 | 1.169 | 1.922 | 5.706 | 30.961 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.435 | 15.333 | 1000 | 0 | 64.789 | 40.989 | 41.98 | 42.285 | 37.766 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.163 | 13.609 | 1000 | 0 | 70.605 | 41.95 | 42.218 | 43.149 | 37.766 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.345 | 13.125 | 1000 | 0 | 65.17 | 41.96 | 42.512 | 43.247 | 37.766 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8890 | 0 | 1777.131 | 1.558 | 2.563 | 42.325 | 38.117 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.16 | 14.51 | 1000 | 0 | 65.965 | 41.973 | 42.529 | 43.003 | 51.293 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.854 | 15.864 | 1000 | 0 | 63.077 | 41.99 | 43.049 | 44.036 | 51.293 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.24 | 15.82 | 1000 | 0 | 65.615 | 42.02 | 43.238 | 44.32 | 51.293 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.014 | 2.004 | 6785 | 0 | 1353.238 | 2.033 | 3.334 | 21.484 | 51.293 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.935 | 16.56 | 1000 | 0 | 62.755 | 42.939 | 43.902 | 44.218 | 63.898 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.177 | 1000 | 0 | 62.056 | 43.663 | 44.871 | 45.921 | 63.898 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.707 | 16.019 | 1000 | 0 | 63.667 | 43.869 | 44.976 | 45.996 | 63.898 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4696 | 0 | 938.307 | 2.874 | 5.283 | 46.235 | 63.898 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.529 | 16.599 | 1000 | 0 | 60.501 | 44.474 | 46.103 | 47.89 | 69.344 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.972 | 17.307 | 1000 | 0 | 58.92 | 46.227 | 48.039 | 49.846 | 66.918 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.141 | 17.247 | 1000 | 0 | 58.338 | 46.883 | 48.125 | 49.77 | 66.918 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3013 | 0 | 601.842 | 4.85 | 6.745 | 15.943 | 68.922 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.627 | 18.001 | 1000 | 0 | 56.731 | 47.962 | 51.013 | 53.341 | 82.211 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.997 | 28.754 | 363 | 0 | 12.519 | 241.517 | 244.748 | 19606.304 | 82.504 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.41 | 19.171 | 243 | 0 | 12.519 | 241.723 | 242.982 | 12800.945 | 82.539 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.623 | 14.381 | 183 | 0 | 12.514 | 241.662 | 242.973 | 10023.573 | 82.559 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.587 | 123 | 0 | 12.508 | 241.79 | 242.626 | 5235.406 | 82.566 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.582 | 103 | 0 | 10.477 | 241.728 | 242.709 | 5135.781 | 82.574 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 4.791 | 63 | 0 | 12.523 | 240.992 | 242.198 | 242.407 | 82.59 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.792 | 42 | 0 | 8.344 | 241.455 | 242.297 | 242.482 | 82.59 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.017 | 122 | 0 | 24.381 | 41.975 | 42.046 | 42.854 | 82.59 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.017 | 109 | 0 | 21.779 | 46.983 | 47.25 | 47.977 | 82.699 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.012 | 99 | 0 | 19.75 | 50.974 | 51.094 | 51.93 | 82.719 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.083 | 2.062 | 56 | 0 | 11.017 | 91.038 | 92.112 | 92.43 | 82.719 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.05 | 2.082 | 36 | 0 | 7.129 | 140.989 | 142.005 | 142.007 | 82.738 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.375 | 21 | 0 | 4.172 | 241.891 | 242.004 | 242.036 | 82.746 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15468 | 0 | 3092.912 | 1.549 | 2.056 | 2.507 | 64.559 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15141 | 0 | 3027.516 | 1.59 | 2.088 | 2.531 | 69.855 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15437 | 0 | 3086.719 | 1.555 | 2.064 | 2.491 | 69.559 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15290 | 0 | 3057.296 | 1.566 | 2.118 | 2.635 | 69.891 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15358 | 0 | 3070.965 | 1.562 | 2.082 | 2.466 | 71.879 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13477 | 0 | 2694.767 | 1.785 | 2.361 | 2.901 | 70.734 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15358 | 0 | 3070.989 | 1.563 | 2.093 | 2.558 | 71.895 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 15091 | 0 | 3017.432 | 1.585 | 2.183 | 2.617 | 72.98 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12572 | 0 | 2513.665 | 1.925 | 2.474 | 2.969 | 94.164 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6441 | 0 | 1287.437 | 3.828 | 4.669 | 5.143 | 79.992 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12439 | 0 | 2487.186 | 1.957 | 2.427 | 2.861 | 93.902 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.026 | 2.016 | 12373 | 0 | 2461.779 | 1.462 | 2.326 | 41.134 | 73.039 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.013 | 9357 | 0 | 1870.876 | 2.434 | 3.803 | 6.433 | 104.418 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3558 | 0 | 710.833 | 7.048 | 8.395 | 9.26 | 84.98 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9529 | 0 | 1905.18 | 2.385 | 3.784 | 5.837 | 83.941 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9242 | 0 | 1847.317 | 2.453 | 3.895 | 6.494 | 84.191 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6902 | 0 | 1379.736 | 3.171 | 5.993 | 13.803 | 127.371 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.391 | 1968 | 0 | 392.873 | 12.797 | 15.077 | 16.167 | 88.254 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 7045 | 0 | 1408.193 | 3.151 | 5.468 | 14.203 | 86.168 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6897 | 0 | 1378.821 | 3.165 | 5.677 | 13.896 | 86.48 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.017 | 4427 | 0 | 884.554 | 5.276 | 7.859 | 17.719 | 120.434 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.398 | 1068 | 0 | 212.818 | 23.501 | 28.133 | 29.818 | 90.582 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.009 | 4580 | 0 | 915.139 | 4.957 | 8.074 | 17.974 | 95.586 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4592 | 0 | 917.682 | 4.867 | 8.281 | 18.08 | 95.59 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2778 | 0 | 554.682 | 8.906 | 12.463 | 15.531 | 135.703 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.847 | 8.025 | 1000 | 0 | 113.032 | 44.641 | 51.994 | 55.056 | 92.973 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.008 | 2912 | 0 | 581.016 | 8.462 | 9.852 | 10.832 | 96.613 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3046 | 0 | 608.359 | 8.07 | 9.484 | 10.385 | 96.68 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.975 | 50.917 | 360 | 0 | 7.062 | 2536.507 | 2622.483 | 2655.735 | 121.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.988 | 33.953 | 240 | 0 | 7.061 | 1696.949 | 1749.713 | 1770.288 | 118.516 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.486 | 25.464 | 180 | 0 | 7.063 | 1275.358 | 1313.469 | 1338.166 | 119.52 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.029 | 16.979 | 120 | 0 | 7.047 | 848.272 | 897.362 | 902.189 | 124.848 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.165 | 14.188 | 100 | 0 | 7.06 | 740.582 | 839.181 | 851.6 | 129.23 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.499 | 8.485 | 60 | 0 | 7.059 | 424.285 | 439.531 | 450.14 | 129.23 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.658 | 5.663 | 40 | 0 | 7.07 | 282.035 | 292.284 | 295.077 | 129.23 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3586 | 0 | 717.044 | 1.362 | 1.468 | 1.746 | 136.305 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.005 | 942 | 0 | 188.338 | 5.276 | 5.36 | 5.557 | 138.82 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.008 | 483 | 0 | 96.474 | 10.314 | 10.591 | 10.792 | 138.82 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.047 | 2.021 | 100 | 0 | 19.815 | 50.412 | 50.574 | 50.697 | 138.82 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.012 | 50 | 0 | 9.942 | 100.53 | 100.618 | 100.749 | 138.82 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.588 | 200.671 | 200.744 | 138.82 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15506 | 0 | 3100.524 | 1.548 | 2.028 | 2.503 | 64.477 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15131 | 0 | 3025.468 | 1.585 | 2.102 | 2.593 | 67.844 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15341 | 0 | 3067.408 | 1.554 | 2.095 | 2.701 | 67.41 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15272 | 0 | 3053.639 | 1.57 | 2.124 | 2.62 | 67.566 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15307 | 0 | 3060.627 | 1.572 | 2.089 | 2.524 | 69.754 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13427 | 0 | 2684.705 | 1.793 | 2.368 | 2.893 | 69.883 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15304 | 0 | 3059.785 | 1.569 | 2.1 | 2.539 | 70.027 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14989 | 0 | 2997.117 | 1.593 | 2.227 | 2.713 | 71.109 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12526 | 0 | 2504.626 | 1.932 | 2.495 | 3.02 | 80.938 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 6378 | 0 | 1274.969 | 3.87 | 4.713 | 5.173 | 75.703 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12439 | 0 | 2487.224 | 1.956 | 2.473 | 2.873 | 81.285 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.027 | 2.03 | 12499 | 0 | 2486.506 | 1.446 | 2.176 | 41.31 | 73.102 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9467 | 0 | 1892.319 | 2.417 | 3.737 | 5.772 | 113.867 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3493 | 0 | 697.829 | 7.171 | 8.457 | 9.197 | 89.086 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9663 | 0 | 1931.955 | 2.388 | 3.447 | 5.342 | 84.625 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9551 | 0 | 1909.565 | 2.424 | 3.432 | 5.46 | 84.375 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 7137 | 0 | 1426.735 | 3.159 | 5.203 | 8.246 | 153.418 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.351 | 1979 | 0 | 394.874 | 12.662 | 15.242 | 16.525 | 95.535 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 6968 | 0 | 1392.927 | 3.219 | 5.126 | 14.953 | 88.18 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7253 | 0 | 1449.877 | 3.138 | 4.836 | 14.868 | 88.117 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4489 | 0 | 897.105 | 5.203 | 7.096 | 18.468 | 141.996 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 4.47 | 1097 | 0 | 218.644 | 22.963 | 27.382 | 29.246 | 93.285 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4733 | 0 | 945.88 | 4.916 | 6.59 | 18.071 | 86.926 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4705 | 0 | 940.198 | 4.916 | 7.015 | 18.507 | 86.926 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2859 | 0 | 570.807 | 8.265 | 14.702 | 18.004 | 137.199 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.701 | 8.577 | 1000 | 0 | 114.924 | 43.196 | 51.126 | 55.08 | 95.438 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2909 | 0 | 580.887 | 8.462 | 9.97 | 11.227 | 91.625 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 3077 | 0 | 614.465 | 7.993 | 9.429 | 10.301 | 92.188 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.026 | 50.945 | 360 | 0 | 7.055 | 2550.578 | 2615.591 | 2644.067 | 114.828 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.01 | 33.97 | 240 | 0 | 7.057 | 1691.023 | 1762.713 | 1787.102 | 114.84 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.512 | 25.524 | 180 | 0 | 7.055 | 1269.57 | 1331.462 | 1339.067 | 114.848 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.006 | 16.978 | 120 | 0 | 7.057 | 850.445 | 885.783 | 897.07 | 114.914 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.19 | 14.149 | 100 | 0 | 7.047 | 752.333 | 863.761 | 873.537 | 114.914 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.496 | 8.494 | 60 | 0 | 7.062 | 424.139 | 442.868 | 448.864 | 114.918 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.669 | 5.657 | 40 | 0 | 7.056 | 282.973 | 296.096 | 302.63 | 114.918 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3590 | 0 | 717.979 | 1.366 | 1.455 | 1.656 | 130.172 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.005 | 940 | 0 | 187.97 | 5.287 | 5.38 | 5.623 | 132.07 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.003 | 483 | 0 | 96.581 | 10.319 | 10.398 | 10.622 | 132.137 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.021 | 100 | 0 | 19.808 | 50.434 | 50.548 | 50.627 | 132.137 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.013 | 50 | 0 | 9.944 | 100.505 | 100.628 | 100.716 | 132.141 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.556 | 200.637 | 200.964 | 132.141 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15505 | 0 | 3100.115 | 1.551 | 2.03 | 2.444 | 64.508 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15115 | 0 | 3022.13 | 1.591 | 2.075 | 2.558 | 64.863 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15534 | 0 | 3106.106 | 1.547 | 2.035 | 2.474 | 64.473 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15277 | 0 | 3054.662 | 1.575 | 2.096 | 2.584 | 64.965 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15328 | 0 | 3064.761 | 1.566 | 2.083 | 2.509 | 66.422 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13413 | 0 | 2681.919 | 1.795 | 2.342 | 2.865 | 66.91 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15358 | 0 | 3070.893 | 1.561 | 2.092 | 2.531 | 67.051 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15070 | 0 | 3013.223 | 1.591 | 2.157 | 2.617 | 67.828 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12343 | 0 | 2467.895 | 1.95 | 2.573 | 3.224 | 97.559 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6442 | 0 | 1287.724 | 3.842 | 4.665 | 5.188 | 82.25 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12315 | 0 | 2462.337 | 1.98 | 2.457 | 2.779 | 100.68 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.03 | 2.029 | 12294 | 0 | 2444.237 | 1.837 | 2.416 | 3.156 | 79.715 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9068 | 0 | 1812.957 | 2.454 | 4.224 | 7.791 | 113.414 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3520 | 0 | 703.254 | 7.098 | 8.455 | 9.158 | 88.672 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9238 | 0 | 1846.904 | 2.452 | 3.949 | 7.2 | 84.07 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9115 | 0 | 1822.425 | 2.456 | 4.167 | 7.161 | 83.762 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6978 | 0 | 1394.767 | 3.139 | 5.774 | 15.781 | 139.688 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.479 | 1986 | 0 | 396.301 | 12.628 | 15.015 | 15.952 | 94.547 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 6998 | 0 | 1398.321 | 3.147 | 5.679 | 16.176 | 93.363 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 6833 | 0 | 1365.545 | 3.214 | 5.565 | 16.284 | 93.363 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4390 | 0 | 877.148 | 5.158 | 8.708 | 20.297 | 154.965 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 4.394 | 1088 | 0 | 216.865 | 22.922 | 27.524 | 29.521 | 104.496 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4589 | 0 | 917.031 | 4.855 | 8.415 | 20.494 | 98.676 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.008 | 4561 | 0 | 911.569 | 4.918 | 8.039 | 20.37 | 98.676 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 2693 | 0 | 537.892 | 9.2 | 10.965 | 12.8 | 113.855 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.747 | 8.279 | 1000 | 0 | 114.322 | 43.01 | 51.273 | 55.493 | 111.93 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2924 | 0 | 584.01 | 8.409 | 9.965 | 11.179 | 98.18 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 2958 | 0 | 590.867 | 8.265 | 9.804 | 10.695 | 98.496 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.979 | 50.955 | 360 | 0 | 7.062 | 2546.806 | 2616.863 | 2645.052 | 113.422 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.996 | 33.999 | 240 | 0 | 7.06 | 1696.044 | 1750.13 | 1784.692 | 116.301 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.507 | 25.482 | 180 | 0 | 7.057 | 1265.866 | 1327.201 | 1348.103 | 116.746 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.005 | 16.984 | 120 | 0 | 7.057 | 846.414 | 885.425 | 897.939 | 116.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.175 | 14.175 | 100 | 0 | 7.055 | 750.7 | 863.015 | 874.505 | 116.816 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.499 | 8.497 | 60 | 0 | 7.06 | 423.65 | 441.633 | 446.82 | 116.816 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.668 | 5.66 | 40 | 0 | 7.057 | 282.71 | 293.51 | 294.229 | 116.816 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3610 | 0 | 721.87 | 1.359 | 1.441 | 1.681 | 126.574 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.004 | 943 | 0 | 188.464 | 5.274 | 5.371 | 5.602 | 126.574 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.007 | 483 | 0 | 96.561 | 10.319 | 10.401 | 10.717 | 126.574 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.021 | 99 | 0 | 19.779 | 50.438 | 50.657 | 50.726 | 126.574 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.012 | 50 | 0 | 9.939 | 100.537 | 100.702 | 100.742 | 126.574 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.564 | 200.649 | 200.652 | 126.574 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.121 | 1000 | 0 | 61.976 | 41.003 | 41.974 | 42.345 | 30.488 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.097 | 1000 | 0 | 62.042 | 40.989 | 41.97 | 42.266 | 31.0 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.094 | 1000 | 0 | 61.992 | 40.993 | 41.983 | 42.32 | 31.438 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.088 | 1000 | 0 | 62.039 | 40.992 | 41.973 | 42.326 | 31.523 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.085 | 1000 | 0 | 62.039 | 40.989 | 41.971 | 42.321 | 31.605 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.084 | 1000 | 0 | 61.99 | 40.995 | 41.994 | 42.257 | 31.613 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.085 | 1000 | 0 | 62.037 | 40.993 | 41.975 | 42.352 | 31.633 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.091 | 1000 | 0 | 62.066 | 40.995 | 41.961 | 42.355 | 32.781 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.694 | 12.249 | 1000 | 0 | 68.056 | 40.981 | 41.98 | 42.232 | 32.781 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.203 | 12.932 | 1000 | 0 | 65.777 | 40.981 | 41.979 | 42.173 | 32.867 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 11853 | 0 | 2369.684 | 1.204 | 1.946 | 6.261 | 33.117 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.821 | 14.028 | 1000 | 0 | 63.205 | 40.985 | 41.979 | 42.136 | 38.848 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.745 | 11.194 | 1000 | 0 | 78.462 | 41.745 | 42.169 | 43.007 | 38.848 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.619 | 13.006 | 1000 | 0 | 73.428 | 41.881 | 42.531 | 43.402 | 38.848 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8711 | 0 | 1741.542 | 1.564 | 2.628 | 17.75 | 38.848 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.821 | 14.278 | 1000 | 0 | 67.474 | 41.958 | 42.95 | 43.334 | 47.879 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.951 | 15.068 | 1000 | 0 | 66.885 | 41.981 | 42.994 | 44.799 | 47.879 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.157 | 16.104 | 1000 | 0 | 65.975 | 41.984 | 43.01 | 44.19 | 47.879 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6674 | 0 | 1333.912 | 1.993 | 3.538 | 18.023 | 47.879 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.472 | 15.225 | 1000 | 0 | 64.635 | 42.856 | 43.955 | 44.932 | 54.801 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.857 | 14.835 | 1000 | 0 | 67.308 | 43.041 | 44.755 | 50.098 | 53.977 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.01 | 15.494 | 1000 | 0 | 66.623 | 43.594 | 44.947 | 46.754 | 53.977 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4670 | 0 | 933.202 | 2.843 | 5.532 | 18.986 | 56.941 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.95 | 16.369 | 1000 | 0 | 62.697 | 43.998 | 45.986 | 47.967 | 62.406 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.894 | 16.76 | 1000 | 0 | 67.142 | 45.856 | 47.743 | 49.608 | 59.512 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.221 | 16.359 | 1000 | 0 | 65.698 | 45.97 | 48.16 | 51.706 | 59.512 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.009 | 2963 | 0 | 591.661 | 4.913 | 6.784 | 15.338 | 65.523 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.271 | 17.795 | 1000 | 0 | 57.9 | 47.918 | 50.591 | 54.276 | 77.48 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.0 | 28.755 | 363 | 0 | 12.517 | 241.691 | 242.928 | 19611.739 | 73.449 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.409 | 19.172 | 243 | 0 | 12.52 | 241.585 | 242.896 | 12797.058 | 73.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.617 | 14.378 | 183 | 0 | 12.52 | 241.603 | 242.884 | 10019.599 | 73.469 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.828 | 9.586 | 123 | 0 | 12.516 | 241.688 | 242.491 | 5234.182 | 73.473 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.823 | 9.579 | 103 | 0 | 10.486 | 241.486 | 242.49 | 5132.14 | 73.477 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.791 | 63 | 0 | 12.508 | 241.693 | 242.458 | 242.626 | 73.48 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.784 | 42 | 0 | 8.344 | 241.674 | 242.24 | 242.331 | 73.48 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.362 | 41.976 | 42.124 | 42.949 | 73.512 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 2.029 | 113 | 0 | 22.479 | 45.695 | 46.11 | 46.986 | 73.523 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.009 | 99 | 0 | 19.722 | 50.985 | 51.953 | 52.014 | 73.543 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.059 | 56 | 0 | 11.041 | 90.971 | 92.016 | 92.175 | 73.547 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.079 | 36 | 0 | 7.106 | 141.961 | 142.347 | 142.97 | 73.574 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.374 | 21 | 0 | 4.174 | 240.99 | 242.053 | 242.197 | 73.578 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.131 | 1000 | 0 | 62.037 | 40.992 | 41.969 | 42.308 | 29.367 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.098 | 1000 | 0 | 62.014 | 40.99 | 41.967 | 42.357 | 29.477 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.093 | 1000 | 0 | 62.025 | 40.991 | 41.985 | 42.378 | 29.629 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.088 | 1000 | 0 | 62.016 | 40.993 | 41.97 | 42.317 | 29.902 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.089 | 1000 | 0 | 62.036 | 40.992 | 41.972 | 42.35 | 29.969 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.085 | 1000 | 0 | 62.047 | 40.989 | 41.97 | 42.209 | 29.973 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.087 | 1000 | 0 | 62.054 | 40.988 | 41.972 | 42.348 | 29.996 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.089 | 1000 | 0 | 62.009 | 40.993 | 41.968 | 42.39 | 30.488 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.722 | 14.749 | 1000 | 0 | 67.927 | 40.981 | 41.978 | 42.124 | 30.492 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.972 | 14.501 | 1000 | 0 | 66.793 | 40.983 | 41.976 | 42.986 | 30.52 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12019 | 0 | 2403.027 | 1.199 | 1.895 | 7.321 | 30.91 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.963 | 14.31 | 1000 | 0 | 66.833 | 40.984 | 41.989 | 42.933 | 34.582 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.732 | 12.332 | 1000 | 0 | 72.822 | 41.896 | 42.207 | 49.485 | 34.582 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.891 | 12.892 | 1000 | 0 | 71.988 | 41.895 | 42.373 | 43.716 | 34.582 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 8703 | 0 | 1739.578 | 1.563 | 2.624 | 18.51 | 35.109 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.852 | 14.194 | 1000 | 0 | 67.331 | 41.97 | 42.944 | 43.192 | 38.992 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.459 | 14.392 | 1000 | 0 | 69.162 | 41.98 | 43.008 | 44.722 | 39.004 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.938 | 14.666 | 1000 | 0 | 66.943 | 41.982 | 43.099 | 47.24 | 39.004 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6801 | 0 | 1359.327 | 1.95 | 3.299 | 17.945 | 39.68 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.212 | 15.296 | 1000 | 0 | 65.738 | 42.847 | 43.648 | 44.378 | 48.793 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.971 | 14.999 | 1000 | 0 | 83.535 | 42.987 | 44.702 | 46.974 | 45.438 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.372 | 13.811 | 1000 | 0 | 65.055 | 43.323 | 44.839 | 47.773 | 43.473 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.004 | 4494 | 0 | 897.791 | 2.926 | 5.46 | 21.39 | 46.391 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.348 | 15.965 | 1000 | 0 | 65.157 | 43.998 | 45.952 | 49.358 | 51.996 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.812 | 16.245 | 1000 | 0 | 63.244 | 45.933 | 47.897 | 49.781 | 51.996 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.266 | 15.741 | 1000 | 0 | 65.503 | 45.95 | 48.109 | 50.009 | 51.996 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.008 | 2963 | 0 | 591.919 | 4.888 | 6.99 | 17.5 | 58.008 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.16 | 17.798 | 1000 | 0 | 58.276 | 47.405 | 50.117 | 53.506 | 82.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.999 | 28.752 | 363 | 0 | 12.518 | 241.747 | 242.983 | 19605.03 | 83.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.414 | 19.167 | 243 | 0 | 12.516 | 241.704 | 243.017 | 12800.186 | 83.117 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.618 | 14.379 | 183 | 0 | 12.519 | 241.533 | 242.909 | 10020.497 | 83.148 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.582 | 123 | 0 | 12.517 | 241.692 | 242.807 | 5232.9 | 83.16 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.579 | 103 | 0 | 10.484 | 241.619 | 242.293 | 5130.861 | 83.164 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.793 | 63 | 0 | 12.508 | 241.76 | 242.884 | 243.663 | 83.164 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.783 | 42 | 0 | 8.343 | 241.717 | 242.245 | 242.272 | 83.168 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.361 | 41.979 | 42.229 | 43.043 | 83.23 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.026 | 113 | 0 | 22.529 | 45.05 | 46.111 | 46.714 | 83.305 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.028 | 2.001 | 99 | 0 | 19.691 | 50.986 | 51.994 | 52.019 | 83.309 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.082 | 2.064 | 56 | 0 | 11.019 | 91.029 | 92.001 | 92.485 | 83.316 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.087 | 36 | 0 | 7.106 | 141.956 | 142.039 | 142.403 | 83.34 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.377 | 21 | 0 | 4.174 | 241.0 | 242.028 | 242.26 | 83.34 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.14 | 1000 | 0 | 62.033 | 40.99 | 41.959 | 42.304 | 29.336 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.095 | 1000 | 0 | 62.032 | 40.992 | 41.958 | 42.32 | 29.66 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.101 | 1000 | 0 | 62.002 | 40.993 | 41.99 | 42.721 | 29.793 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.098 | 1000 | 0 | 62.008 | 40.991 | 41.981 | 42.297 | 29.922 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.091 | 1000 | 0 | 62.01 | 40.999 | 41.973 | 42.327 | 29.98 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.097 | 1000 | 0 | 62.032 | 40.992 | 41.981 | 42.191 | 29.992 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.084 | 1000 | 0 | 62.016 | 40.996 | 41.988 | 42.371 | 30.008 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.087 | 1000 | 0 | 61.995 | 40.996 | 41.983 | 42.306 | 30.531 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.816 | 13.825 | 1000 | 0 | 67.495 | 40.98 | 41.983 | 42.358 | 30.586 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.459 | 13.007 | 1000 | 0 | 64.689 | 40.98 | 41.974 | 42.308 | 30.594 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 12087 | 0 | 2416.668 | 1.187 | 1.893 | 7.409 | 30.91 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.59 | 14.522 | 1000 | 0 | 64.145 | 40.984 | 41.979 | 42.971 | 33.777 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.716 | 12.136 | 1000 | 0 | 78.64 | 41.84 | 42.429 | 43.182 | 33.777 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.75 | 14.306 | 1000 | 0 | 67.798 | 41.928 | 42.355 | 43.463 | 33.777 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8834 | 0 | 1766.167 | 1.539 | 2.526 | 20.3 | 34.043 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.693 | 14.157 | 1000 | 0 | 68.062 | 41.963 | 42.717 | 51.211 | 41.211 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.493 | 14.924 | 1000 | 0 | 64.546 | 41.982 | 43.007 | 43.958 | 41.211 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.604 | 15.164 | 1000 | 0 | 64.085 | 41.983 | 42.992 | 44.079 | 41.211 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.003 | 6773 | 0 | 1353.344 | 1.982 | 3.25 | 19.747 | 41.57 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.626 | 15.71 | 1000 | 0 | 63.997 | 42.903 | 43.954 | 45.113 | 45.125 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.386 | 15.677 | 1000 | 0 | 64.994 | 43.115 | 44.827 | 59.286 | 43.656 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.618 | 16.001 | 1000 | 0 | 68.41 | 43.145 | 44.958 | 47.394 | 43.656 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.006 | 4585 | 0 | 916.325 | 2.882 | 5.401 | 21.601 | 47.59 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.5 | 15.707 | 1000 | 0 | 64.517 | 43.992 | 45.944 | 48.116 | 53.641 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.353 | 16.474 | 1000 | 0 | 61.149 | 45.902 | 47.781 | 49.563 | 53.641 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.684 | 16.642 | 1000 | 0 | 63.758 | 45.968 | 48.45 | 51.837 | 53.641 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.007 | 2975 | 0 | 593.883 | 4.956 | 6.607 | 12.471 | 59.652 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.445 | 17.826 | 1000 | 0 | 57.322 | 47.95 | 50.941 | 57.759 | 81.879 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.997 | 28.76 | 363 | 0 | 12.518 | 241.76 | 242.997 | 19611.73 | 82.332 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.408 | 19.171 | 243 | 0 | 12.52 | 241.635 | 242.696 | 12800.062 | 82.348 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.632 | 14.375 | 183 | 0 | 12.507 | 241.783 | 242.997 | 10026.512 | 82.352 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.585 | 123 | 0 | 12.513 | 241.708 | 242.632 | 5232.44 | 82.355 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.581 | 103 | 0 | 10.484 | 241.607 | 242.31 | 5125.426 | 82.375 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.789 | 63 | 0 | 12.516 | 241.242 | 242.341 | 242.717 | 82.379 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.791 | 42 | 0 | 8.34 | 241.882 | 242.526 | 242.96 | 82.379 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.019 | 122 | 0 | 24.356 | 41.979 | 42.155 | 42.995 | 82.379 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.001 | 2.028 | 113 | 0 | 22.596 | 45.011 | 46.014 | 46.062 | 82.422 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.001 | 99 | 0 | 19.719 | 50.984 | 52.016 | 52.043 | 82.434 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.079 | 2.062 | 56 | 0 | 11.026 | 90.993 | 92.013 | 92.449 | 82.461 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.058 | 2.089 | 36 | 0 | 7.117 | 141.892 | 142.181 | 142.712 | 82.469 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.028 | 2.378 | 21 | 0 | 4.177 | 240.972 | 241.991 | 241.998 | 82.473 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15613 | 0 | 3121.81 | 1.543 | 1.997 | 2.378 | 68.547 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15173 | 0 | 3033.85 | 1.593 | 2.035 | 2.429 | 68.66 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15540 | 0 | 3107.261 | 1.552 | 1.998 | 2.369 | 69.129 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15254 | 0 | 3049.94 | 1.576 | 2.06 | 2.513 | 69.309 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15465 | 0 | 3092.335 | 1.555 | 2.029 | 2.5 | 70.508 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13540 | 0 | 2707.287 | 1.788 | 2.256 | 2.641 | 70.699 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15470 | 0 | 3093.349 | 1.556 | 2.037 | 2.471 | 72.559 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15189 | 0 | 3037.216 | 1.586 | 2.074 | 2.515 | 73.617 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12609 | 0 | 2520.934 | 1.926 | 2.396 | 2.738 | 83.234 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6570 | 0 | 1313.23 | 3.757 | 4.549 | 5.148 | 77.957 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12705 | 0 | 2540.111 | 1.909 | 2.377 | 2.688 | 83.414 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.028 | 2.034 | 12594 | 0 | 2504.836 | 1.761 | 2.298 | 2.825 | 74.414 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9397 | 0 | 1878.732 | 2.39 | 3.851 | 5.691 | 107.18 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 3582 | 0 | 715.678 | 6.937 | 8.453 | 9.351 | 83.637 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9484 | 0 | 1896.124 | 2.37 | 3.759 | 5.592 | 77.758 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9356 | 0 | 1870.579 | 2.423 | 3.715 | 5.76 | 77.758 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6858 | 0 | 1370.971 | 3.205 | 5.13 | 20.102 | 125.82 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.355 | 2032 | 0 | 405.624 | 12.316 | 14.802 | 15.805 | 88.367 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7108 | 0 | 1420.914 | 3.109 | 4.871 | 20.046 | 86.59 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6995 | 0 | 1398.162 | 3.168 | 4.839 | 20.099 | 86.691 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4692 | 0 | 937.853 | 4.841 | 7.093 | 22.966 | 139.59 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.362 | 1104 | 0 | 219.928 | 22.549 | 26.95 | 28.749 | 96.586 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 4630 | 0 | 925.371 | 4.849 | 7.305 | 23.609 | 94.004 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4614 | 0 | 921.901 | 4.808 | 7.37 | 23.866 | 94.004 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2713 | 0 | 541.679 | 9.172 | 10.765 | 11.507 | 115.984 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.534 | 8.197 | 1000 | 0 | 117.183 | 41.946 | 50.197 | 52.153 | 98.934 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2890 | 0 | 577.175 | 8.575 | 9.829 | 10.494 | 97.664 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 2906 | 0 | 580.331 | 8.551 | 9.667 | 10.46 | 97.664 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.119 | 51.131 | 360 | 0 | 7.042 | 2554.148 | 2588.515 | 2605.406 | 116.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.08 | 34.08 | 240 | 0 | 7.042 | 1702.264 | 1734.929 | 1747.321 | 123.945 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.55 | 25.57 | 180 | 0 | 7.045 | 1276.321 | 1301.671 | 1311.972 | 123.949 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.036 | 17.041 | 120 | 0 | 7.044 | 850.252 | 871.745 | 877.999 | 115.191 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.211 | 14.199 | 100 | 0 | 7.037 | 797.301 | 853.714 | 859.957 | 115.691 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.522 | 8.528 | 60 | 0 | 7.041 | 426.461 | 439.15 | 442.572 | 115.691 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.682 | 5.677 | 40 | 0 | 7.039 | 284.009 | 287.381 | 292.781 | 115.691 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1866 | 0 | 373.16 | 2.637 | 3.075 | 3.251 | 120.656 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.005 | 543 | 0 | 108.491 | 9.145 | 9.917 | 10.432 | 120.906 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.01 | 370 | 0 | 73.998 | 13.514 | 13.989 | 14.145 | 123.406 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.04 | 2.021 | 100 | 0 | 19.842 | 50.356 | 50.442 | 50.591 | 123.406 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.024 | 2.01 | 50 | 0 | 9.952 | 100.423 | 100.519 | 100.549 | 123.406 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.488 | 200.578 | 200.765 | 123.406 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15595 | 0 | 3118.4 | 1.542 | 1.997 | 2.448 | 68.785 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15276 | 0 | 3054.54 | 1.581 | 2.005 | 2.435 | 69.297 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15592 | 0 | 3116.928 | 1.546 | 2.002 | 2.368 | 69.406 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15252 | 0 | 3049.715 | 1.58 | 2.066 | 2.555 | 69.734 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15479 | 0 | 3095.221 | 1.554 | 2.015 | 2.471 | 70.969 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13469 | 0 | 2693.112 | 1.799 | 2.286 | 2.649 | 71.293 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15460 | 0 | 3091.281 | 1.558 | 2.024 | 2.402 | 71.48 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15220 | 0 | 3043.151 | 1.581 | 2.077 | 2.554 | 72.234 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12559 | 0 | 2511.041 | 1.941 | 2.386 | 2.673 | 88.352 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6554 | 0 | 1310.139 | 3.779 | 4.583 | 5.093 | 81.035 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12572 | 0 | 2513.335 | 1.933 | 2.391 | 2.666 | 88.793 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 2.039 | 12586 | 0 | 2509.214 | 1.567 | 2.183 | 40.785 | 75.082 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9247 | 0 | 1848.761 | 2.42 | 3.85 | 6.241 | 113.078 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3580 | 0 | 715.1 | 6.979 | 8.349 | 9.089 | 85.211 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 9370 | 0 | 1873.341 | 2.396 | 3.676 | 5.857 | 77.629 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9402 | 0 | 1879.739 | 2.398 | 3.714 | 6.166 | 77.504 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6916 | 0 | 1382.69 | 3.209 | 5.034 | 20.63 | 123.242 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.291 | 2031 | 0 | 405.585 | 12.341 | 14.813 | 16.262 | 87.559 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7058 | 0 | 1410.634 | 3.083 | 5.127 | 20.902 | 89.0 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6886 | 0 | 1376.533 | 3.162 | 5.095 | 21.391 | 89.078 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4407 | 0 | 880.757 | 5.079 | 8.1 | 24.43 | 127.086 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.641 | 1109 | 0 | 220.98 | 22.561 | 26.845 | 28.786 | 89.73 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4589 | 0 | 917.179 | 4.848 | 7.576 | 25.177 | 90.668 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.004 | 4486 | 0 | 895.741 | 4.896 | 8.017 | 25.283 | 90.668 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2605 | 0 | 520.078 | 9.539 | 11.066 | 12.091 | 100.805 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.648 | 8.031 | 1000 | 0 | 115.637 | 43.233 | 49.873 | 53.453 | 94.309 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.008 | 2822 | 0 | 563.651 | 8.829 | 9.861 | 10.673 | 92.934 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2929 | 0 | 584.793 | 8.473 | 9.7 | 10.255 | 92.996 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.163 | 51.168 | 360 | 0 | 7.036 | 2556.529 | 2588.874 | 2602.971 | 116.219 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.1 | 34.097 | 240 | 0 | 7.038 | 1702.278 | 1739.606 | 1748.718 | 119.137 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.576 | 25.57 | 180 | 0 | 7.038 | 1277.332 | 1302.233 | 1313.526 | 119.137 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.05 | 17.046 | 120 | 0 | 7.038 | 851.731 | 873.191 | 880.473 | 119.203 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.218 | 14.216 | 100 | 0 | 7.034 | 798.812 | 847.584 | 857.254 | 119.207 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.525 | 8.529 | 60 | 0 | 7.038 | 426.013 | 438.258 | 440.873 | 119.207 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.684 | 5.681 | 40 | 0 | 7.038 | 284.278 | 288.17 | 288.334 | 119.207 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1792 | 0 | 358.269 | 2.777 | 3.189 | 3.325 | 124.879 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.004 | 525 | 0 | 104.903 | 9.45 | 10.307 | 10.666 | 126.195 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.012 | 366 | 0 | 73.039 | 13.649 | 14.296 | 14.544 | 126.258 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.043 | 2.017 | 100 | 0 | 19.83 | 50.367 | 50.526 | 50.671 | 126.258 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.01 | 50 | 0 | 9.949 | 100.456 | 100.515 | 100.683 | 126.258 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.49 | 200.546 | 200.551 | 126.258 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15529 | 0 | 3104.864 | 1.552 | 1.986 | 2.462 | 68.441 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15151 | 0 | 3029.534 | 1.595 | 2.031 | 2.392 | 68.711 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15577 | 0 | 3114.683 | 1.55 | 1.991 | 2.383 | 68.742 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15335 | 0 | 3066.331 | 1.574 | 2.031 | 2.425 | 68.57 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15444 | 0 | 3088.218 | 1.561 | 2.024 | 2.517 | 69.672 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13430 | 0 | 2685.368 | 1.799 | 2.296 | 2.788 | 69.063 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15425 | 0 | 3084.474 | 1.56 | 2.019 | 2.481 | 71.457 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15112 | 0 | 3021.877 | 1.597 | 2.072 | 2.544 | 72.039 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12648 | 0 | 2528.599 | 1.917 | 2.405 | 2.769 | 80.023 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6523 | 0 | 1303.863 | 3.794 | 4.597 | 5.094 | 73.367 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12638 | 0 | 2526.685 | 1.931 | 2.366 | 2.695 | 79.801 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.024 | 2.002 | 12627 | 0 | 2513.187 | 1.491 | 2.177 | 40.989 | 71.672 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9300 | 0 | 1859.39 | 2.391 | 3.869 | 6.16 | 101.035 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3540 | 0 | 707.063 | 7.029 | 8.389 | 9.125 | 78.406 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 9299 | 0 | 1859.285 | 2.391 | 3.836 | 6.108 | 75.008 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.006 | 9219 | 0 | 1843.127 | 2.429 | 3.839 | 6.441 | 74.945 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 6695 | 0 | 1338.367 | 3.251 | 5.23 | 22.804 | 116.563 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.356 | 2094 | 0 | 417.981 | 11.933 | 14.243 | 15.204 | 82.617 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6931 | 0 | 1385.65 | 3.125 | 5.347 | 22.473 | 81.047 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6682 | 0 | 1335.639 | 3.232 | 5.52 | 22.784 | 81.125 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 4363 | 0 | 871.945 | 5.037 | 8.459 | 26.91 | 116.348 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.411 | 1089 | 0 | 217.027 | 23.072 | 26.955 | 28.549 | 85.117 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.021 | 4506 | 0 | 900.556 | 4.895 | 7.606 | 26.559 | 87.418 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.014 | 4463 | 0 | 891.09 | 4.871 | 8.158 | 27.489 | 87.418 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 2583 | 0 | 515.935 | 9.615 | 11.016 | 11.651 | 98.727 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.675 | 8.15 | 1000 | 0 | 115.269 | 43.118 | 50.52 | 54.128 | 86.723 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2802 | 0 | 559.502 | 8.891 | 10.006 | 10.71 | 90.016 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2937 | 0 | 586.516 | 8.387 | 9.919 | 10.841 | 90.016 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.17 | 51.152 | 360 | 0 | 7.035 | 2556.748 | 2593.251 | 2604.91 | 111.367 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.106 | 34.098 | 240 | 0 | 7.037 | 1703.72 | 1730.874 | 1744.826 | 117.938 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.576 | 25.57 | 180 | 0 | 7.038 | 1277.729 | 1304.216 | 1309.074 | 118.254 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.047 | 17.054 | 120 | 0 | 7.039 | 851.603 | 872.127 | 877.515 | 118.316 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.214 | 14.209 | 100 | 0 | 7.036 | 710.177 | 847.035 | 859.58 | 118.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.527 | 8.522 | 60 | 0 | 7.037 | 425.259 | 439.271 | 444.44 | 118.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.686 | 5.677 | 40 | 0 | 7.034 | 284.285 | 288.451 | 294.84 | 118.32 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1730 | 0 | 345.893 | 2.84 | 3.254 | 3.315 | 118.32 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.008 | 519 | 0 | 103.701 | 9.59 | 10.381 | 10.751 | 118.383 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.011 | 358 | 0 | 71.589 | 13.99 | 14.354 | 14.612 | 120.07 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.043 | 2.018 | 100 | 0 | 19.829 | 50.373 | 50.523 | 50.673 | 120.133 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.025 | 2.01 | 50 | 0 | 9.95 | 100.429 | 100.536 | 100.749 | 120.133 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.496 | 200.562 | 200.569 | 120.133 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

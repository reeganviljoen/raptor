# Puma vs Raptor Simulation

Run ID: `20260810-035426`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.14 | 16.109 | 1000 | 0 | 61.959 | 40.995 | 41.996 | 42.532 | 29.914 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.109 | 1000 | 0 | 61.978 | 40.988 | 41.988 | 42.462 | 30.004 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.091 | 1000 | 0 | 61.981 | 40.986 | 41.976 | 42.494 | 30.305 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.121 | 1000 | 0 | 62.047 | 40.985 | 41.962 | 42.21 | 30.348 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.106 | 1000 | 0 | 62.013 | 40.982 | 41.978 | 42.248 | 30.348 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.138 | 16.097 | 1000 | 0 | 61.967 | 40.993 | 41.975 | 42.577 | 30.348 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.086 | 1000 | 0 | 62.015 | 40.985 | 41.97 | 42.281 | 30.352 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.1 | 1000 | 0 | 61.978 | 40.983 | 41.997 | 42.427 | 31.43 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.88 | 11.547 | 1000 | 0 | 72.045 | 41.023 | 42.019 | 42.902 | 31.43 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.203 | 11.503 | 1000 | 0 | 75.743 | 40.997 | 42.008 | 42.912 | 31.43 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12550 | 0 | 2509.201 | 1.109 | 1.932 | 5.752 | 31.59 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.247 | 12.569 | 1000 | 0 | 81.651 | 41.164 | 42.214 | 43.173 | 38.805 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.661 | 13.797 | 1000 | 0 | 68.209 | 41.946 | 42.94 | 43.554 | 38.805 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.07 | 14.842 | 1000 | 0 | 71.075 | 41.944 | 42.736 | 43.389 | 38.805 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9830 | 0 | 1965.16 | 1.423 | 2.322 | 29.049 | 38.805 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.46 | 15.867 | 1000 | 0 | 69.156 | 41.969 | 42.928 | 43.184 | 54.355 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.57 | 14.467 | 1000 | 0 | 64.226 | 42.009 | 43.217 | 44.128 | 54.355 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.199 | 15.513 | 1000 | 0 | 65.794 | 42.718 | 43.526 | 44.21 | 54.355 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 6781 | 0 | 1355.568 | 1.976 | 3.564 | 12.134 | 54.355 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.698 | 15.71 | 1000 | 0 | 63.704 | 42.961 | 43.966 | 44.708 | 55.746 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.76 | 16.634 | 1000 | 0 | 63.453 | 43.962 | 45.003 | 47.664 | 55.746 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.341 | 16.356 | 1000 | 0 | 65.185 | 43.974 | 45.243 | 46.79 | 55.746 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.011 | 2.005 | 4538 | 0 | 905.539 | 2.937 | 6.003 | 15.43 | 56.23 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.615 | 16.825 | 1000 | 0 | 60.188 | 44.923 | 46.173 | 51.418 | 75.359 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.009 | 17.127 | 1000 | 0 | 58.793 | 46.952 | 48.922 | 52.356 | 75.359 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.093 | 17.766 | 1000 | 0 | 58.503 | 46.956 | 48.999 | 50.808 | 75.359 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.008 | 2834 | 0 | 565.798 | 5.135 | 7.119 | 12.753 | 76.836 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.643 | 18.532 | 1000 | 0 | 56.679 | 48.798 | 51.307 | 52.986 | 84.617 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.012 | 28.787 | 363 | 0 | 12.512 | 241.817 | 242.758 | 19609.296 | 84.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.429 | 19.18 | 243 | 0 | 12.507 | 241.894 | 242.999 | 12810.848 | 85.0 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.39 | 183 | 0 | 12.51 | 241.806 | 242.999 | 10027.981 | 85.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.838 | 9.59 | 123 | 0 | 12.502 | 241.871 | 243.139 | 5235.804 | 85.027 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.598 | 103 | 0 | 10.472 | 241.833 | 242.765 | 5137.301 | 85.09 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 4.797 | 63 | 0 | 12.494 | 241.924 | 242.568 | 243.576 | 85.125 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.798 | 42 | 0 | 8.332 | 241.947 | 242.238 | 242.278 | 85.129 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.017 | 122 | 0 | 24.361 | 41.957 | 42.217 | 42.978 | 85.137 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.028 | 109 | 0 | 21.793 | 46.954 | 47.338 | 47.948 | 85.16 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.04 | 98 | 0 | 19.457 | 51.916 | 52.067 | 52.225 | 85.215 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.073 | 55 | 0 | 10.966 | 91.953 | 92.449 | 92.731 | 85.227 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.069 | 2.089 | 36 | 0 | 7.102 | 141.953 | 142.874 | 142.963 | 85.227 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.381 | 21 | 0 | 4.168 | 241.917 | 242.014 | 242.046 | 85.227 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.112 | 1000 | 0 | 62.023 | 40.985 | 41.972 | 42.333 | 28.258 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.095 | 1000 | 0 | 62.037 | 40.986 | 41.988 | 42.249 | 28.262 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.086 | 1000 | 0 | 61.974 | 40.991 | 42.004 | 42.619 | 28.262 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.09 | 1000 | 0 | 62.046 | 40.984 | 41.953 | 42.293 | 28.273 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.083 | 1000 | 0 | 62.0 | 40.984 | 41.99 | 42.459 | 28.316 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.094 | 1000 | 0 | 62.016 | 40.986 | 41.957 | 42.252 | 28.328 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.095 | 1000 | 0 | 62.006 | 40.984 | 41.961 | 42.274 | 28.344 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.113 | 1000 | 0 | 61.985 | 40.986 | 41.974 | 42.292 | 28.879 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.144 | 11.985 | 1000 | 0 | 76.079 | 41.015 | 42.111 | 42.961 | 28.879 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.808 | 11.582 | 1000 | 0 | 78.078 | 41.024 | 42.188 | 42.976 | 29.008 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12264 | 0 | 2452.042 | 1.135 | 2.015 | 7.258 | 29.344 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.171 | 13.019 | 1000 | 0 | 75.925 | 41.256 | 42.405 | 43.178 | 32.988 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.785 | 15.325 | 1000 | 0 | 67.636 | 41.95 | 42.52 | 43.182 | 32.988 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.429 | 15.871 | 1000 | 0 | 64.814 | 41.958 | 42.872 | 43.118 | 32.988 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 10161 | 0 | 2031.094 | 1.387 | 2.205 | 40.493 | 33.023 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.372 | 15.898 | 1000 | 0 | 65.055 | 41.975 | 42.992 | 44.557 | 40.785 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.099 | 15.207 | 1000 | 0 | 66.229 | 42.606 | 43.58 | 46.019 | 40.785 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.726 | 14.795 | 1000 | 0 | 63.591 | 42.455 | 43.376 | 45.099 | 40.785 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.003 | 6597 | 0 | 1317.784 | 1.991 | 3.955 | 13.611 | 41.18 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.351 | 15.594 | 1000 | 0 | 65.143 | 42.968 | 44.052 | 45.651 | 44.066 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.627 | 16.064 | 1000 | 0 | 63.993 | 43.975 | 45.178 | 47.332 | 44.066 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.543 | 16.771 | 1000 | 0 | 64.339 | 43.968 | 45.129 | 46.536 | 44.066 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.01 | 2.005 | 4387 | 0 | 875.71 | 3.042 | 6.102 | 19.256 | 46.203 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.764 | 16.881 | 1000 | 0 | 59.652 | 44.96 | 46.439 | 47.982 | 50.93 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.121 | 17.402 | 1000 | 0 | 58.408 | 46.935 | 48.872 | 50.541 | 50.93 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.922 | 17.964 | 1000 | 0 | 59.094 | 46.95 | 48.979 | 50.69 | 50.93 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.071 | 2745 | 0 | 548.019 | 5.32 | 7.353 | 19.721 | 56.941 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.251 | 18.736 | 1000 | 0 | 54.792 | 48.915 | 51.726 | 53.98 | 82.883 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.013 | 28.782 | 363 | 0 | 12.511 | 241.875 | 242.771 | 19619.16 | 83.172 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.422 | 19.187 | 243 | 0 | 12.511 | 241.829 | 243.171 | 12804.713 | 83.203 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.634 | 14.4 | 183 | 0 | 12.505 | 241.938 | 242.865 | 10035.035 | 83.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.594 | 123 | 0 | 12.509 | 241.816 | 242.766 | 5231.721 | 83.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.596 | 103 | 0 | 10.472 | 241.922 | 242.621 | 5136.347 | 83.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.796 | 63 | 0 | 12.501 | 241.833 | 242.508 | 242.793 | 83.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 4.796 | 42 | 0 | 8.331 | 241.971 | 242.253 | 242.394 | 83.238 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.018 | 122 | 0 | 24.369 | 41.96 | 42.063 | 42.961 | 83.242 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.025 | 109 | 0 | 21.783 | 46.959 | 47.232 | 47.994 | 83.254 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.034 | 98 | 0 | 19.526 | 51.888 | 52.034 | 52.927 | 83.328 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.069 | 55 | 0 | 10.988 | 91.916 | 92.096 | 92.633 | 83.328 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.089 | 36 | 0 | 7.105 | 141.928 | 142.345 | 142.928 | 83.332 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.379 | 21 | 0 | 4.171 | 241.877 | 242.011 | 242.015 | 83.332 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.1 | 1000 | 0 | 61.975 | 40.984 | 41.997 | 42.489 | 28.176 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.107 | 1000 | 0 | 61.954 | 40.99 | 41.987 | 42.391 | 28.18 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.111 | 1000 | 0 | 61.998 | 40.986 | 41.991 | 42.378 | 28.18 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.149 | 16.136 | 1000 | 0 | 61.923 | 40.99 | 41.98 | 42.678 | 28.223 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.157 | 1000 | 0 | 62.008 | 40.987 | 41.976 | 42.339 | 28.223 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.167 | 16.09 | 1000 | 0 | 61.855 | 40.99 | 41.982 | 42.433 | 28.402 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.087 | 1000 | 0 | 62.07 | 40.985 | 41.985 | 42.246 | 28.41 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.088 | 1000 | 0 | 62.024 | 40.985 | 41.975 | 42.284 | 29.043 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.35 | 15.351 | 1000 | 0 | 65.148 | 40.978 | 41.981 | 42.333 | 29.043 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.145 | 15.447 | 1000 | 0 | 66.028 | 40.976 | 41.969 | 42.487 | 29.043 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12616 | 0 | 2522.153 | 1.103 | 1.917 | 9.401 | 29.508 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.721 | 15.145 | 1000 | 0 | 67.93 | 40.986 | 42.015 | 42.967 | 33.055 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.346 | 15.311 | 1000 | 0 | 69.704 | 41.948 | 42.876 | 43.48 | 33.055 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.389 | 15.564 | 1000 | 0 | 64.981 | 41.959 | 42.912 | 43.338 | 33.055 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9095 | 0 | 1818.203 | 1.47 | 2.589 | 40.782 | 33.391 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.397 | 15.685 | 1000 | 0 | 64.948 | 41.973 | 42.963 | 43.774 | 38.105 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.618 | 15.105 | 1000 | 0 | 64.028 | 42.022 | 43.206 | 44.043 | 37.477 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.082 | 15.405 | 1000 | 0 | 66.305 | 42.184 | 43.37 | 44.922 | 37.477 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 6753 | 0 | 1349.943 | 1.981 | 3.693 | 16.761 | 38.43 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.644 | 16.047 | 1000 | 0 | 63.92 | 42.967 | 44.014 | 46.519 | 42.547 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.719 | 16.391 | 1000 | 0 | 63.615 | 43.955 | 45.002 | 47.105 | 42.547 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.06 | 15.748 | 1000 | 0 | 62.266 | 43.97 | 45.132 | 47.91 | 42.547 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4519 | 0 | 903.099 | 2.966 | 5.638 | 17.179 | 45.137 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.689 | 16.659 | 1000 | 0 | 59.921 | 44.934 | 46.5 | 58.406 | 50.563 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.592 | 17.777 | 1000 | 0 | 60.27 | 46.956 | 48.973 | 50.819 | 50.563 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.248 | 17.379 | 1000 | 0 | 57.978 | 46.95 | 48.923 | 51.018 | 50.563 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.01 | 2.043 | 2783 | 0 | 555.488 | 5.252 | 7.32 | 12.831 | 56.574 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 18.09 | 18.445 | 1000 | 0 | 55.279 | 48.911 | 51.838 | 60.944 | 66.605 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.014 | 28.785 | 363 | 0 | 12.511 | 241.885 | 243.054 | 19617.183 | 66.816 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.422 | 19.177 | 243 | 0 | 12.511 | 241.816 | 242.771 | 12808.922 | 66.832 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.63 | 14.386 | 183 | 0 | 12.509 | 241.874 | 242.852 | 10022.828 | 66.844 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.595 | 123 | 0 | 12.51 | 241.809 | 242.453 | 5234.748 | 66.848 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.593 | 103 | 0 | 10.475 | 241.916 | 242.65 | 5133.633 | 66.852 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.797 | 63 | 0 | 12.506 | 241.852 | 242.349 | 242.513 | 66.859 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.797 | 42 | 0 | 8.335 | 241.927 | 242.258 | 242.524 | 66.867 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.017 | 122 | 0 | 24.367 | 41.967 | 42.098 | 42.941 | 66.879 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.026 | 109 | 0 | 21.781 | 46.97 | 47.156 | 47.992 | 66.883 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.035 | 98 | 0 | 19.585 | 51.062 | 52.004 | 52.058 | 66.902 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.072 | 55 | 0 | 10.981 | 91.932 | 92.05 | 93.067 | 66.91 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.089 | 36 | 0 | 7.108 | 141.94 | 142.008 | 142.033 | 66.91 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.378 | 21 | 0 | 4.168 | 241.94 | 242.096 | 242.655 | 66.918 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17355 | 0 | 3470.268 | 1.375 | 1.929 | 2.314 | 65.012 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16901 | 0 | 3379.525 | 1.412 | 1.994 | 2.4 | 65.465 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17344 | 0 | 3468.097 | 1.374 | 1.963 | 2.323 | 65.715 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17028 | 0 | 3404.916 | 1.401 | 2.016 | 2.434 | 65.91 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17037 | 0 | 3406.752 | 1.395 | 2.01 | 2.42 | 66.969 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14698 | 0 | 2938.727 | 1.634 | 2.279 | 2.756 | 66.945 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17042 | 0 | 3407.875 | 1.394 | 2.028 | 2.451 | 67.148 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16727 | 0 | 3344.777 | 1.418 | 2.106 | 2.639 | 68.93 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13488 | 0 | 2696.915 | 1.798 | 2.345 | 2.82 | 79.512 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6676 | 0 | 1334.539 | 3.682 | 4.5 | 5.107 | 72.578 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13519 | 0 | 2703.073 | 1.786 | 2.354 | 2.82 | 78.734 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.028 | 2.002 | 13249 | 0 | 2635.267 | 1.341 | 2.065 | 41.216 | 68.688 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9397 | 0 | 1878.396 | 2.378 | 4.115 | 6.767 | 98.621 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3519 | 0 | 703.012 | 7.072 | 8.333 | 9.062 | 76.91 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9724 | 0 | 1944.11 | 2.309 | 3.907 | 6.327 | 70.961 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 9512 | 0 | 1901.397 | 2.361 | 3.886 | 6.378 | 70.898 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6882 | 0 | 1375.89 | 3.163 | 5.995 | 15.606 | 115.078 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.513 | 1930 | 0 | 385.284 | 13.023 | 14.881 | 15.742 | 81.711 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6725 | 0 | 1344.23 | 3.256 | 6.084 | 15.598 | 78.738 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.011 | 6655 | 0 | 1330.38 | 3.275 | 6.221 | 15.683 | 78.738 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.004 | 4305 | 0 | 857.759 | 5.229 | 9.373 | 19.483 | 186.555 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.502 | 1045 | 0 | 208.225 | 24.057 | 27.117 | 29.404 | 100.848 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4376 | 0 | 874.265 | 5.168 | 8.296 | 20.174 | 98.512 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4425 | 0 | 884.38 | 5.074 | 8.689 | 20.221 | 98.512 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2553 | 0 | 509.783 | 9.701 | 11.231 | 12.364 | 111.746 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.198 | 8.82 | 1000 | 0 | 108.718 | 45.276 | 51.78 | 59.901 | 106.297 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.009 | 2734 | 0 | 545.656 | 8.998 | 10.541 | 11.767 | 108.27 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 2786 | 0 | 556.293 | 8.784 | 10.467 | 11.495 | 108.273 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.946 | 51.007 | 360 | 0 | 7.066 | 2548.002 | 2573.278 | 2585.043 | 130.52 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.977 | 34.006 | 240 | 0 | 7.064 | 1699.395 | 1727.43 | 1734.913 | 132.492 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.475 | 25.499 | 180 | 0 | 7.066 | 1273.278 | 1294.997 | 1300.476 | 111.5 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.988 | 17.004 | 120 | 0 | 7.064 | 849.602 | 869.767 | 876.125 | 113.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.218 | 14.207 | 100 | 0 | 7.034 | 795.654 | 851.764 | 854.995 | 113.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.493 | 8.509 | 60 | 0 | 7.065 | 424.394 | 433.147 | 435.933 | 113.34 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.675 | 5.666 | 40 | 0 | 7.049 | 283.792 | 288.299 | 301.342 | 113.527 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3693 | 0 | 738.443 | 1.332 | 1.441 | 1.762 | 122.551 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.001 | 945 | 0 | 188.826 | 5.258 | 5.358 | 5.781 | 124.238 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.003 | 484 | 0 | 96.662 | 10.294 | 10.533 | 10.72 | 125.113 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.023 | 99 | 0 | 19.775 | 50.526 | 50.596 | 50.639 | 125.113 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.034 | 2.014 | 50 | 0 | 9.933 | 100.619 | 100.683 | 100.702 | 125.367 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.009 | 25 | 0 | 4.981 | 200.644 | 200.798 | 201.457 | 126.43 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17427 | 0 | 3484.733 | 1.369 | 1.899 | 2.301 | 64.992 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17012 | 0 | 3401.661 | 1.408 | 1.936 | 2.31 | 65.055 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17424 | 0 | 3483.942 | 1.371 | 1.913 | 2.298 | 64.977 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17102 | 0 | 3419.772 | 1.395 | 1.985 | 2.418 | 65.293 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17004 | 0 | 3400.124 | 1.4 | 1.982 | 2.358 | 66.938 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14567 | 0 | 2912.583 | 1.642 | 2.281 | 2.839 | 67.172 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17042 | 0 | 3407.745 | 1.394 | 1.996 | 2.373 | 67.277 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16754 | 0 | 3350.235 | 1.422 | 2.037 | 2.446 | 70.289 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13442 | 0 | 2687.599 | 1.798 | 2.372 | 2.849 | 85.957 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6616 | 0 | 1322.456 | 3.719 | 4.55 | 5.167 | 75.184 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13214 | 0 | 2641.8 | 1.802 | 2.435 | 3.367 | 84.117 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.028 | 2.036 | 13381 | 0 | 2661.382 | 1.483 | 2.164 | 3.906 | 71.398 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9071 | 0 | 1813.326 | 2.471 | 4.14 | 6.955 | 109.773 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3477 | 0 | 694.663 | 7.128 | 8.527 | 9.258 | 79.559 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9431 | 0 | 1885.508 | 2.362 | 3.938 | 6.956 | 74.766 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9181 | 0 | 1835.282 | 2.402 | 4.197 | 7.169 | 74.828 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 6862 | 0 | 1371.109 | 3.245 | 5.488 | 16.468 | 117.004 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.535 | 1931 | 0 | 385.401 | 12.959 | 15.062 | 15.891 | 87.527 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6909 | 0 | 1381.263 | 3.192 | 5.56 | 16.255 | 84.648 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6590 | 0 | 1317.212 | 3.289 | 5.804 | 17.771 | 84.648 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4133 | 0 | 825.839 | 5.596 | 8.059 | 21.312 | 136.523 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.519 | 1036 | 0 | 206.431 | 24.228 | 27.462 | 28.862 | 93.469 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4426 | 0 | 884.159 | 5.161 | 7.339 | 21.069 | 90.316 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.007 | 4448 | 0 | 888.926 | 5.113 | 7.483 | 20.957 | 90.316 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2428 | 0 | 484.757 | 10.073 | 12.633 | 14.075 | 123.473 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.206 | 8.689 | 1000 | 0 | 108.625 | 45.277 | 52.921 | 55.33 | 96.586 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2678 | 0 | 534.783 | 9.166 | 10.866 | 11.561 | 91.375 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2600 | 0 | 519.176 | 9.417 | 11.479 | 12.766 | 91.629 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.077 | 51.087 | 360 | 0 | 7.048 | 2552.967 | 2604.927 | 2625.602 | 113.73 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.039 | 34.048 | 240 | 0 | 7.051 | 1702.99 | 1739.658 | 1757.118 | 115.488 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.524 | 25.541 | 180 | 0 | 7.052 | 1275.364 | 1311.026 | 1331.466 | 120.168 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.022 | 16.995 | 120 | 0 | 7.05 | 851.792 | 882.818 | 893.731 | 120.234 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.191 | 14.224 | 100 | 0 | 7.047 | 732.293 | 831.963 | 851.947 | 121.93 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.511 | 8.507 | 60 | 0 | 7.05 | 425.183 | 438.081 | 445.645 | 121.93 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.668 | 5.667 | 40 | 0 | 7.057 | 283.444 | 293.639 | 294.568 | 121.93 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3514 | 0 | 702.673 | 1.368 | 1.623 | 2.324 | 129.773 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.005 | 929 | 0 | 185.776 | 5.324 | 5.547 | 5.876 | 130.34 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.002 | 473 | 0 | 94.518 | 10.533 | 10.643 | 11.12 | 132.465 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.023 | 2.027 | 99 | 0 | 19.709 | 50.672 | 50.755 | 50.969 | 130.527 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.042 | 2.015 | 50 | 0 | 9.916 | 100.726 | 100.911 | 102.109 | 132.84 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.022 | 2.008 | 25 | 0 | 4.978 | 200.742 | 201.117 | 201.315 | 132.84 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17307 | 0 | 3460.716 | 1.381 | 1.923 | 2.259 | 64.891 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16865 | 0 | 3372.118 | 1.417 | 1.966 | 2.425 | 65.082 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 16767 | 0 | 3352.006 | 1.406 | 2.015 | 2.517 | 65.309 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16941 | 0 | 3387.515 | 1.404 | 2.018 | 2.466 | 65.098 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16864 | 0 | 3372.053 | 1.405 | 2.01 | 2.492 | 67.207 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14586 | 0 | 2916.378 | 1.643 | 2.251 | 2.738 | 66.719 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16947 | 0 | 3388.776 | 1.402 | 2.019 | 2.451 | 67.051 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16633 | 0 | 3325.96 | 1.43 | 2.069 | 2.519 | 69.004 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13489 | 0 | 2697.068 | 1.799 | 2.347 | 2.702 | 79.148 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 6418 | 0 | 1282.628 | 3.784 | 4.762 | 6.876 | 72.98 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13432 | 0 | 2685.678 | 1.795 | 2.372 | 2.922 | 78.77 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.032 | 2.001 | 13193 | 0 | 2621.97 | 1.358 | 2.093 | 41.046 | 69.801 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9255 | 0 | 1850.052 | 2.361 | 4.253 | 7.368 | 98.18 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3472 | 0 | 693.723 | 7.157 | 8.503 | 9.208 | 76.43 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9523 | 0 | 1903.59 | 2.294 | 4.119 | 6.748 | 72.848 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9265 | 0 | 1852.359 | 2.389 | 4.03 | 6.49 | 73.16 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.006 | 6613 | 0 | 1321.981 | 3.222 | 6.39 | 18.71 | 114.367 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.557 | 1933 | 0 | 385.651 | 12.91 | 15.024 | 16.143 | 80.051 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.024 | 2.005 | 6639 | 0 | 1321.503 | 3.202 | 6.077 | 18.56 | 77.313 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.002 | 6406 | 0 | 1279.374 | 3.342 | 6.183 | 19.126 | 77.313 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.004 | 4069 | 0 | 812.406 | 5.586 | 8.96 | 23.004 | 118.324 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.704 | 1043 | 0 | 207.809 | 24.089 | 27.404 | 28.92 | 80.16 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4213 | 0 | 841.922 | 5.209 | 9.202 | 23.013 | 81.012 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 4247 | 0 | 848.575 | 5.217 | 8.925 | 23.076 | 81.012 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 2543 | 0 | 507.926 | 9.378 | 15.772 | 18.719 | 125.664 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.196 | 8.771 | 1000 | 0 | 108.745 | 45.519 | 52.464 | 55.937 | 83.703 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.006 | 2523 | 0 | 503.7 | 9.697 | 11.972 | 13.403 | 86.27 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2651 | 0 | 529.299 | 9.334 | 10.838 | 12.266 | 86.27 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.048 | 51.042 | 360 | 0 | 7.052 | 2512.242 | 2711.641 | 2720.09 | 108.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.074 | 34.055 | 240 | 0 | 7.043 | 1669.89 | 1808.829 | 1824.139 | 108.777 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.516 | 25.527 | 180 | 0 | 7.054 | 1249.657 | 1357.297 | 1368.258 | 109.477 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.993 | 17.067 | 120 | 0 | 7.062 | 834.702 | 906.656 | 921.077 | 109.609 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.276 | 14.205 | 100 | 0 | 7.005 | 763.877 | 843.185 | 860.505 | 110.051 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.51 | 8.505 | 60 | 0 | 7.05 | 413.812 | 478.049 | 479.107 | 110.055 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.671 | 5.666 | 40 | 0 | 7.053 | 282.783 | 293.958 | 300.031 | 110.055 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3647 | 0 | 729.222 | 1.345 | 1.477 | 1.756 | 122.082 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.003 | 945 | 0 | 188.932 | 5.256 | 5.369 | 5.581 | 122.457 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.003 | 482 | 0 | 96.291 | 10.331 | 10.556 | 10.751 | 124.656 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.02 | 2.029 | 99 | 0 | 19.721 | 50.638 | 50.775 | 51.087 | 124.66 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.037 | 2.015 | 50 | 0 | 9.927 | 100.666 | 100.773 | 100.925 | 124.66 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.02 | 2.009 | 25 | 0 | 4.98 | 200.688 | 200.907 | 201.139 | 124.66 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.131 | 1000 | 0 | 62.003 | 40.987 | 41.98 | 42.825 | 29.395 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.097 | 1000 | 0 | 62.047 | 40.986 | 41.991 | 42.341 | 29.781 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.088 | 1000 | 0 | 62.043 | 40.982 | 41.979 | 42.259 | 29.934 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.089 | 1000 | 0 | 62.016 | 40.986 | 41.981 | 42.338 | 30.016 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.086 | 1000 | 0 | 62.015 | 40.985 | 41.97 | 42.448 | 30.098 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.095 | 1000 | 0 | 61.984 | 40.985 | 41.977 | 42.755 | 30.125 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.092 | 1000 | 0 | 62.035 | 40.986 | 41.979 | 42.334 | 30.16 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.087 | 1000 | 0 | 62.039 | 40.984 | 41.967 | 42.424 | 30.73 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.206 | 14.913 | 1000 | 0 | 65.763 | 40.979 | 41.98 | 43.3 | 30.734 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.78 | 15.428 | 1000 | 0 | 67.659 | 40.979 | 41.984 | 42.2 | 30.734 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12650 | 0 | 2529.149 | 1.109 | 1.879 | 8.931 | 31.102 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.511 | 14.461 | 1000 | 0 | 74.014 | 40.987 | 42.02 | 43.024 | 35.02 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.472 | 14.225 | 1000 | 0 | 69.099 | 41.935 | 42.895 | 43.686 | 35.02 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.577 | 13.882 | 1000 | 0 | 68.603 | 41.948 | 42.917 | 43.399 | 35.02 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9654 | 0 | 1930.002 | 1.383 | 2.393 | 41.332 | 35.313 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.161 | 15.109 | 1000 | 0 | 65.961 | 41.969 | 42.98 | 43.946 | 39.988 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.768 | 15.084 | 1000 | 0 | 67.715 | 41.982 | 43.016 | 44.865 | 39.895 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.972 | 16.132 | 1000 | 0 | 66.791 | 41.995 | 43.165 | 44.078 | 39.895 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6714 | 0 | 1342.074 | 1.988 | 3.318 | 20.799 | 40.344 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.661 | 15.682 | 1000 | 0 | 63.855 | 42.957 | 44.031 | 47.201 | 44.996 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.322 | 15.981 | 1000 | 0 | 69.82 | 43.875 | 45.029 | 46.677 | 44.289 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.152 | 16.009 | 1000 | 0 | 65.997 | 43.922 | 45.028 | 49.251 | 44.289 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 4230 | 0 | 845.351 | 3.024 | 6.262 | 23.388 | 46.328 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.225 | 16.095 | 1000 | 0 | 61.634 | 44.378 | 46.176 | 57.246 | 53.199 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.089 | 17.037 | 1000 | 0 | 62.156 | 45.988 | 48.557 | 52.947 | 53.082 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.548 | 17.499 | 1000 | 0 | 64.317 | 46.806 | 48.962 | 52.518 | 53.082 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.068 | 2792 | 0 | 557.472 | 5.253 | 7.271 | 20.068 | 59.094 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.867 | 18.249 | 1000 | 0 | 55.969 | 47.98 | 51.261 | 60.88 | 66.449 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.999 | 28.762 | 363 | 0 | 12.518 | 241.738 | 242.955 | 19606.573 | 66.766 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.419 | 19.174 | 243 | 0 | 12.513 | 241.825 | 242.819 | 12809.805 | 66.793 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.621 | 14.389 | 183 | 0 | 12.516 | 241.639 | 242.905 | 10018.775 | 66.801 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.592 | 123 | 0 | 12.506 | 241.811 | 242.691 | 5237.514 | 66.809 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.597 | 103 | 0 | 10.473 | 241.912 | 242.584 | 5137.019 | 66.809 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.79 | 63 | 0 | 12.51 | 241.766 | 242.252 | 242.539 | 66.809 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.799 | 42 | 0 | 8.337 | 241.921 | 242.196 | 242.237 | 66.809 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.018 | 122 | 0 | 24.338 | 41.969 | 42.972 | 42.999 | 66.848 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.029 | 112 | 0 | 22.352 | 45.931 | 46.035 | 46.245 | 66.855 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.02 | 2.001 | 99 | 0 | 19.722 | 50.966 | 51.963 | 51.983 | 66.855 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.054 | 56 | 0 | 11.039 | 90.989 | 91.988 | 92.507 | 66.855 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.089 | 36 | 0 | 7.098 | 141.958 | 142.065 | 142.254 | 66.859 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 2.38 | 21 | 0 | 4.174 | 241.017 | 242.354 | 242.514 | 66.859 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.121 | 1000 | 0 | 62.029 | 40.985 | 41.973 | 42.375 | 29.879 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.093 | 1000 | 0 | 62.003 | 40.988 | 41.987 | 42.31 | 29.977 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.089 | 1000 | 0 | 62.02 | 40.986 | 41.979 | 42.152 | 30.105 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.092 | 1000 | 0 | 62.038 | 40.984 | 41.977 | 42.215 | 30.316 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.099 | 1000 | 0 | 62.051 | 40.987 | 41.977 | 42.264 | 30.379 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.135 | 16.088 | 1000 | 0 | 61.977 | 40.989 | 41.992 | 42.493 | 30.387 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.085 | 1000 | 0 | 62.005 | 40.985 | 41.986 | 42.368 | 30.406 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.087 | 1000 | 0 | 62.053 | 40.984 | 41.969 | 42.309 | 30.723 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.048 | 15.7 | 1000 | 0 | 66.453 | 40.976 | 41.976 | 42.435 | 30.754 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.219 | 14.267 | 1000 | 0 | 65.707 | 40.977 | 41.98 | 42.295 | 30.754 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12897 | 0 | 2578.529 | 1.1 | 1.806 | 8.733 | 31.211 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.026 | 15.224 | 1000 | 0 | 66.551 | 40.991 | 42.0 | 42.94 | 35.934 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.427 | 15.175 | 1000 | 0 | 69.315 | 41.937 | 42.965 | 44.852 | 35.934 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.994 | 14.908 | 1000 | 0 | 66.695 | 41.946 | 42.885 | 43.728 | 35.934 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.019 | 9249 | 0 | 1848.999 | 1.403 | 2.439 | 41.75 | 35.934 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.959 | 15.694 | 1000 | 0 | 66.851 | 41.969 | 42.924 | 44.221 | 41.906 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.87 | 15.834 | 1000 | 0 | 67.248 | 41.989 | 43.144 | 44.218 | 41.906 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.114 | 15.271 | 1000 | 0 | 66.162 | 42.002 | 43.08 | 44.481 | 41.906 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.005 | 6300 | 0 | 1259.233 | 2.028 | 3.821 | 24.848 | 41.906 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.317 | 15.786 | 1000 | 0 | 65.287 | 42.949 | 43.962 | 45.702 | 45.629 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.675 | 15.826 | 1000 | 0 | 63.796 | 43.821 | 44.845 | 47.13 | 45.629 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.374 | 15.709 | 1000 | 0 | 65.044 | 43.922 | 45.122 | 47.806 | 45.629 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.007 | 4089 | 0 | 817.022 | 3.092 | 6.647 | 24.603 | 48.789 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.158 | 16.571 | 1000 | 0 | 61.889 | 44.548 | 46.182 | 52.031 | 55.926 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.513 | 16.635 | 1000 | 0 | 60.557 | 45.996 | 48.011 | 49.894 | 53.227 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.135 | 17.045 | 1000 | 0 | 66.071 | 46.049 | 48.36 | 50.229 | 53.227 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.087 | 2634 | 0 | 526.073 | 5.464 | 8.022 | 24.638 | 59.238 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.286 | 17.988 | 1000 | 0 | 57.849 | 47.992 | 51.427 | 54.565 | 65.605 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.006 | 28.767 | 363 | 0 | 12.515 | 241.705 | 242.884 | 19620.997 | 66.012 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.181 | 243 | 0 | 12.512 | 241.803 | 243.134 | 12806.707 | 66.027 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.627 | 14.387 | 183 | 0 | 12.511 | 241.81 | 242.785 | 10031.71 | 66.035 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.59 | 123 | 0 | 12.509 | 241.859 | 242.39 | 5236.739 | 66.035 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.594 | 103 | 0 | 10.484 | 241.451 | 242.513 | 5131.556 | 66.039 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.794 | 63 | 0 | 12.513 | 241.721 | 242.333 | 242.534 | 66.039 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.801 | 42 | 0 | 8.342 | 241.732 | 242.214 | 242.523 | 66.039 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.362 | 41.969 | 42.095 | 43.009 | 66.074 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.044 | 2.028 | 113 | 0 | 22.404 | 45.914 | 46.063 | 46.955 | 66.102 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.002 | 99 | 0 | 19.73 | 50.971 | 51.733 | 52.067 | 66.102 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.057 | 56 | 0 | 11.05 | 90.978 | 91.978 | 92.005 | 66.113 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.075 | 2.089 | 36 | 0 | 7.094 | 141.969 | 142.83 | 142.911 | 66.113 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.031 | 2.375 | 21 | 0 | 4.174 | 241.072 | 241.99 | 242.015 | 66.117 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.133 | 1000 | 0 | 61.994 | 40.986 | 41.989 | 42.361 | 29.738 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.101 | 1000 | 0 | 62.004 | 40.984 | 41.985 | 42.369 | 30.016 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.096 | 1000 | 0 | 62.013 | 40.988 | 41.976 | 42.412 | 30.297 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.092 | 1000 | 0 | 62.015 | 40.988 | 41.975 | 42.27 | 30.391 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.169 | 16.106 | 1000 | 0 | 61.848 | 40.987 | 41.96 | 42.459 | 30.473 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.134 | 1000 | 0 | 61.996 | 40.982 | 41.988 | 44.886 | 30.473 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.098 | 1000 | 0 | 62.018 | 40.982 | 41.993 | 42.51 | 30.484 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.1 | 1000 | 0 | 62.039 | 40.982 | 41.96 | 42.74 | 31.117 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.46 | 14.701 | 1000 | 0 | 69.157 | 40.98 | 42.152 | 43.824 | 31.117 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.009 | 14.633 | 1000 | 0 | 66.625 | 40.979 | 41.984 | 42.992 | 31.129 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 12742 | 0 | 2547.516 | 1.11 | 1.869 | 6.654 | 31.563 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.059 | 13.768 | 1000 | 0 | 71.131 | 41.014 | 42.21 | 43.539 | 34.625 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.583 | 14.366 | 1000 | 0 | 68.573 | 41.94 | 42.939 | 44.952 | 34.625 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.887 | 13.882 | 1000 | 0 | 72.011 | 41.937 | 42.873 | 43.263 | 34.625 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.042 | 2.002 | 8896 | 0 | 1764.463 | 1.447 | 2.656 | 42.64 | 34.957 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.198 | 14.6 | 1000 | 0 | 65.799 | 41.966 | 42.951 | 43.905 | 41.188 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.531 | 14.379 | 1000 | 0 | 68.82 | 42.005 | 43.167 | 46.293 | 41.188 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.261 | 15.658 | 1000 | 0 | 65.527 | 41.995 | 43.082 | 45.222 | 41.188 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 5287 | 0 | 1056.845 | 2.206 | 5.907 | 33.736 | 41.363 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.639 | 15.798 | 1000 | 0 | 63.944 | 42.951 | 43.959 | 44.69 | 48.285 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.101 | 14.317 | 1000 | 0 | 66.22 | 43.795 | 44.746 | 46.005 | 48.285 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.21 | 16.137 | 1000 | 0 | 65.745 | 43.891 | 44.961 | 46.139 | 48.285 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 4301 | 0 | 859.323 | 2.998 | 5.545 | 24.075 | 48.605 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.696 | 16.961 | 1000 | 0 | 63.709 | 44.468 | 46.606 | 55.253 | 51.867 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.957 | 16.782 | 1000 | 0 | 62.669 | 46.031 | 48.416 | 50.402 | 51.727 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.048 | 16.264 | 1000 | 0 | 62.313 | 46.284 | 48.427 | 52.462 | 51.727 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.115 | 2678 | 0 | 534.645 | 5.315 | 7.631 | 29.727 | 57.738 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.737 | 18.265 | 1000 | 0 | 56.378 | 47.981 | 51.031 | 54.185 | 64.879 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.014 | 28.781 | 363 | 0 | 12.511 | 241.865 | 242.99 | 19619.828 | 65.305 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.424 | 19.181 | 243 | 0 | 12.511 | 241.859 | 242.707 | 12810.243 | 65.305 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.62 | 14.377 | 183 | 0 | 12.517 | 241.755 | 242.855 | 10024.124 | 65.305 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.589 | 123 | 0 | 12.513 | 241.75 | 242.539 | 5236.341 | 65.305 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.596 | 103 | 0 | 10.476 | 241.856 | 242.613 | 5136.253 | 65.309 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.794 | 63 | 0 | 12.505 | 241.775 | 242.364 | 242.456 | 65.309 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.799 | 42 | 0 | 8.335 | 241.914 | 242.286 | 242.528 | 65.313 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.019 | 122 | 0 | 24.358 | 41.964 | 42.183 | 42.974 | 65.371 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.028 | 112 | 0 | 22.392 | 45.917 | 46.034 | 47.015 | 65.402 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.002 | 99 | 0 | 19.734 | 50.955 | 51.901 | 52.035 | 65.422 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.058 | 56 | 0 | 11.05 | 90.978 | 91.975 | 92.142 | 65.438 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.073 | 2.086 | 36 | 0 | 7.097 | 141.965 | 142.073 | 142.671 | 65.438 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.373 | 21 | 0 | 4.169 | 241.916 | 242.095 | 242.367 | 65.438 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17714 | 0 | 3541.747 | 1.352 | 1.802 | 2.172 | 68.91 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17209 | 0 | 3441.051 | 1.395 | 1.856 | 2.178 | 69.066 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17699 | 0 | 3539.208 | 1.353 | 1.819 | 2.208 | 69.262 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17451 | 0 | 3489.48 | 1.374 | 1.873 | 2.319 | 69.434 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17463 | 0 | 3492.001 | 1.371 | 1.846 | 2.236 | 71.172 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14976 | 0 | 2994.387 | 1.609 | 2.128 | 2.536 | 71.406 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17375 | 0 | 3474.189 | 1.378 | 1.885 | 2.303 | 71.613 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17193 | 0 | 3437.805 | 1.392 | 1.929 | 2.377 | 72.414 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13857 | 0 | 2770.653 | 1.745 | 2.229 | 2.563 | 83.691 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6726 | 0 | 1344.566 | 3.664 | 4.396 | 4.829 | 78.082 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13783 | 0 | 2755.824 | 1.758 | 2.255 | 2.571 | 83.5 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 2.001 | 13529 | 0 | 2696.086 | 1.25 | 2.044 | 41.177 | 71.906 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9736 | 0 | 1946.228 | 2.286 | 3.545 | 5.374 | 99.223 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3535 | 0 | 706.314 | 7.035 | 8.24 | 8.918 | 81.016 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10082 | 0 | 2015.705 | 2.213 | 3.492 | 5.388 | 74.418 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 9737 | 0 | 1946.828 | 2.276 | 3.543 | 5.378 | 74.094 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6808 | 0 | 1360.912 | 3.223 | 5.163 | 22.937 | 119.039 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.487 | 2005 | 0 | 400.26 | 12.491 | 14.498 | 15.47 | 84.48 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6874 | 0 | 1374.113 | 3.107 | 5.455 | 22.974 | 81.707 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6763 | 0 | 1352.034 | 3.21 | 5.329 | 22.977 | 81.801 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4184 | 0 | 835.792 | 5.352 | 8.05 | 27.308 | 128.004 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 4.674 | 1069 | 0 | 213.063 | 23.322 | 27.106 | 29.013 | 87.645 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.004 | 4376 | 0 | 873.977 | 4.999 | 8.182 | 26.946 | 85.551 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4375 | 0 | 874.306 | 5.06 | 7.588 | 26.422 | 85.551 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.017 | 2430 | 0 | 485.03 | 10.252 | 11.689 | 12.395 | 99.172 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.872 | 8.613 | 1000 | 0 | 112.714 | 43.712 | 49.717 | 58.455 | 90.535 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2626 | 0 | 524.305 | 9.466 | 10.641 | 11.659 | 90.031 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2681 | 0 | 535.359 | 9.259 | 10.511 | 11.291 | 90.031 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.126 | 51.114 | 360 | 0 | 7.041 | 2554.988 | 2588.042 | 2600.395 | 109.355 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.069 | 34.068 | 240 | 0 | 7.044 | 1702.58 | 1726.149 | 1729.865 | 110.543 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.562 | 25.545 | 180 | 0 | 7.042 | 1275.488 | 1299.773 | 1304.239 | 110.922 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.038 | 17.027 | 120 | 0 | 7.043 | 851.396 | 870.883 | 872.373 | 111.109 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.215 | 14.252 | 100 | 0 | 7.035 | 814.371 | 851.966 | 857.028 | 111.172 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.517 | 8.517 | 60 | 0 | 7.045 | 426.635 | 436.379 | 438.342 | 111.172 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.682 | 5.673 | 40 | 0 | 7.04 | 283.65 | 291.065 | 293.184 | 111.176 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 1643 | 0 | 328.519 | 3.032 | 3.12 | 3.342 | 111.176 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.006 | 483 | 0 | 96.545 | 10.421 | 10.515 | 10.743 | 111.176 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.013 | 363 | 0 | 72.516 | 13.79 | 13.972 | 14.176 | 111.176 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.05 | 2.019 | 100 | 0 | 19.801 | 50.445 | 50.51 | 51.02 | 111.176 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.013 | 50 | 0 | 9.94 | 100.53 | 100.625 | 100.869 | 111.176 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.578 | 200.768 | 200.886 | 111.176 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17706 | 0 | 3540.449 | 1.355 | 1.791 | 2.146 | 68.77 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17195 | 0 | 3438.326 | 1.395 | 1.869 | 2.21 | 70.465 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17745 | 0 | 3548.321 | 1.353 | 1.824 | 2.173 | 70.402 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17375 | 0 | 3474.019 | 1.38 | 1.886 | 2.322 | 70.648 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17508 | 0 | 3500.959 | 1.372 | 1.847 | 2.207 | 71.902 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14961 | 0 | 2991.637 | 1.607 | 2.112 | 2.496 | 71.625 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17465 | 0 | 3492.271 | 1.372 | 1.882 | 2.305 | 72.363 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17117 | 0 | 3422.373 | 1.402 | 1.907 | 2.347 | 72.727 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13885 | 0 | 2776.32 | 1.741 | 2.267 | 2.631 | 80.414 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6672 | 0 | 1333.613 | 3.678 | 4.46 | 4.939 | 76.457 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13912 | 0 | 2781.513 | 1.741 | 2.265 | 2.661 | 80.773 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 2.015 | 13471 | 0 | 2684.167 | 1.426 | 2.082 | 40.753 | 74.27 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9981 | 0 | 1995.486 | 2.259 | 3.445 | 4.785 | 107.109 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3528 | 0 | 704.923 | 6.991 | 8.265 | 9.825 | 82.828 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.009 | 10033 | 0 | 2005.908 | 2.235 | 3.409 | 4.84 | 77.168 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 9766 | 0 | 1952.638 | 2.265 | 3.598 | 5.146 | 77.23 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 6795 | 0 | 1357.964 | 3.207 | 5.151 | 24.235 | 122.828 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.487 | 1992 | 0 | 397.575 | 12.532 | 14.392 | 15.223 | 87.297 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6976 | 0 | 1394.477 | 3.096 | 5.076 | 23.763 | 84.059 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.017 | 6905 | 0 | 1380.401 | 3.166 | 4.845 | 23.766 | 84.148 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.004 | 4142 | 0 | 827.217 | 5.365 | 7.875 | 28.447 | 138.391 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.55 | 1077 | 0 | 214.566 | 23.179 | 26.253 | 27.631 | 90.297 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.029 | 4386 | 0 | 876.588 | 5.067 | 7.24 | 26.893 | 86.52 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 4437 | 0 | 886.495 | 4.982 | 6.765 | 27.052 | 86.52 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2471 | 0 | 493.272 | 10.067 | 11.464 | 12.316 | 97.957 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.997 | 8.533 | 1000 | 0 | 111.149 | 44.964 | 50.767 | 53.459 | 93.699 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2585 | 0 | 516.11 | 9.637 | 10.871 | 11.61 | 88.82 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2736 | 0 | 546.476 | 8.976 | 10.517 | 11.54 | 88.82 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.112 | 51.118 | 360 | 0 | 7.043 | 2553.143 | 2583.0 | 2595.636 | 104.938 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.083 | 34.085 | 240 | 0 | 7.042 | 1703.638 | 1732.326 | 1741.184 | 114.469 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.55 | 25.566 | 180 | 0 | 7.045 | 1276.476 | 1299.234 | 1308.406 | 114.555 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.039 | 17.031 | 120 | 0 | 7.043 | 850.374 | 874.086 | 878.119 | 114.617 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.206 | 14.245 | 100 | 0 | 7.039 | 793.409 | 851.378 | 859.138 | 115.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.517 | 8.518 | 60 | 0 | 7.045 | 426.814 | 438.174 | 439.208 | 115.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.678 | 5.676 | 40 | 0 | 7.044 | 283.825 | 289.595 | 291.163 | 115.371 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.003 | 1636 | 0 | 327.129 | 3.043 | 3.191 | 3.503 | 116.063 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.001 | 484 | 0 | 96.643 | 10.352 | 10.53 | 10.705 | 118.566 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.013 | 363 | 0 | 72.487 | 13.806 | 14.009 | 14.214 | 118.566 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.021 | 99 | 0 | 19.798 | 50.458 | 50.54 | 50.707 | 117.879 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.014 | 50 | 0 | 9.937 | 100.56 | 100.635 | 101.135 | 121.078 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.571 | 200.703 | 200.762 | 121.078 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 17542 | 0 | 3506.735 | 1.365 | 1.821 | 2.215 | 69.035 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17063 | 0 | 3411.66 | 1.407 | 1.865 | 2.246 | 69.48 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17660 | 0 | 3531.218 | 1.358 | 1.823 | 2.201 | 69.57 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17389 | 0 | 3476.975 | 1.381 | 1.85 | 2.275 | 69.898 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17338 | 0 | 3466.722 | 1.383 | 1.864 | 2.283 | 71.496 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14839 | 0 | 2966.864 | 1.622 | 2.139 | 2.567 | 71.605 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17375 | 0 | 3474.344 | 1.378 | 1.875 | 2.287 | 71.66 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17027 | 0 | 3404.749 | 1.409 | 1.93 | 2.397 | 72.586 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13641 | 0 | 2727.539 | 1.773 | 2.286 | 2.784 | 83.266 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6710 | 0 | 1341.201 | 3.654 | 4.471 | 5.033 | 78.152 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13784 | 0 | 2755.984 | 1.757 | 2.253 | 2.583 | 83.16 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.029 | 2.001 | 13505 | 0 | 2685.413 | 1.38 | 2.074 | 40.873 | 73.809 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.001 | 9201 | 0 | 1838.744 | 2.329 | 4.19 | 7.181 | 105.715 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3552 | 0 | 709.235 | 6.994 | 8.303 | 9.0 | 83.094 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9260 | 0 | 1851.406 | 2.269 | 4.329 | 7.712 | 76.246 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9018 | 0 | 1802.747 | 2.366 | 4.318 | 7.692 | 76.121 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6488 | 0 | 1296.992 | 3.252 | 5.966 | 26.004 | 124.809 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.361 | 1983 | 0 | 395.878 | 12.606 | 14.538 | 15.393 | 86.277 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.014 | 6595 | 0 | 1318.412 | 3.165 | 6.083 | 25.723 | 82.75 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6365 | 0 | 1272.266 | 3.256 | 6.603 | 26.094 | 82.84 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.022 | 3984 | 0 | 795.725 | 5.495 | 9.227 | 30.108 | 111.086 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.485 | 1061 | 0 | 211.385 | 23.521 | 27.068 | 28.276 | 88.262 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4140 | 0 | 827.188 | 5.207 | 8.926 | 30.568 | 83.539 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.035 | 2.005 | 4182 | 0 | 830.556 | 5.115 | 9.301 | 30.143 | 83.539 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.069 | 2381 | 0 | 475.562 | 10.451 | 12.069 | 12.93 | 95.066 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.037 | 8.58 | 1000 | 0 | 110.655 | 44.913 | 50.925 | 53.132 | 89.348 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2593 | 0 | 517.779 | 9.517 | 11.017 | 11.858 | 91.961 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2522 | 0 | 503.492 | 9.789 | 11.558 | 12.767 | 91.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.12 | 51.121 | 360 | 0 | 7.042 | 2553.765 | 2588.711 | 2601.077 | 109.344 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.083 | 34.106 | 240 | 0 | 7.042 | 1704.698 | 1736.868 | 1748.442 | 115.426 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.552 | 25.558 | 180 | 0 | 7.044 | 1277.252 | 1300.923 | 1305.839 | 115.488 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.039 | 17.032 | 120 | 0 | 7.043 | 853.768 | 869.926 | 876.581 | 115.613 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.203 | 14.208 | 100 | 0 | 7.041 | 740.289 | 853.478 | 858.141 | 115.676 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.527 | 8.511 | 60 | 0 | 7.037 | 428.645 | 440.397 | 441.057 | 115.676 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.68 | 5.677 | 40 | 0 | 7.042 | 283.799 | 288.72 | 290.544 | 115.676 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.002 | 1647 | 0 | 329.202 | 3.036 | 3.117 | 3.329 | 115.676 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.009 | 485 | 0 | 96.973 | 10.387 | 10.515 | 10.726 | 115.676 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.011 | 362 | 0 | 72.292 | 13.81 | 14.085 | 14.543 | 115.676 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.049 | 2.019 | 100 | 0 | 19.806 | 50.432 | 50.537 | 50.73 | 110.602 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.012 | 50 | 0 | 9.939 | 100.536 | 100.631 | 100.911 | 110.602 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.556 | 200.598 | 200.747 | 110.602 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

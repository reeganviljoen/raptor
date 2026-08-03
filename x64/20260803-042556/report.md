# Puma vs Raptor Simulation

Run ID: `20260803-042556`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.177 | 16.131 | 1000 | 0 | 61.817 | 41.033 | 42.128 | 42.689 | 30.191 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.158 | 16.168 | 1000 | 0 | 61.89 | 41.003 | 42.008 | 42.55 | 30.309 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.164 | 16.179 | 1000 | 0 | 61.867 | 41.014 | 42.035 | 42.764 | 30.336 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.153 | 16.187 | 1000 | 0 | 61.906 | 41.005 | 42.004 | 42.647 | 30.34 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.162 | 1000 | 0 | 61.973 | 40.987 | 41.975 | 42.554 | 30.34 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.157 | 16.148 | 1000 | 0 | 61.891 | 41.015 | 41.997 | 42.833 | 30.34 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.136 | 1000 | 0 | 61.952 | 40.99 | 41.986 | 42.718 | 30.34 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.17 | 16.146 | 1000 | 0 | 61.844 | 41.009 | 42.032 | 42.883 | 31.5 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.162 | 11.317 | 1000 | 0 | 75.979 | 40.999 | 41.993 | 42.903 | 31.5 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.271 | 10.83 | 1000 | 0 | 70.07 | 41.006 | 42.023 | 43.105 | 31.5 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11771 | 0 | 2353.398 | 1.184 | 1.982 | 9.624 | 31.598 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.094 | 13.945 | 1000 | 0 | 70.954 | 41.074 | 42.246 | 43.204 | 42.406 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.712 | 11.116 | 1000 | 0 | 72.931 | 41.936 | 42.48 | 43.056 | 42.406 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.35 | 14.638 | 1000 | 0 | 69.688 | 41.936 | 42.581 | 43.215 | 42.406 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 9073 | 0 | 1813.718 | 1.565 | 2.487 | 42.242 | 42.406 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.557 | 13.261 | 1000 | 0 | 68.697 | 41.957 | 42.959 | 44.362 | 54.926 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.82 | 14.903 | 1000 | 0 | 63.211 | 42.868 | 43.356 | 43.983 | 54.926 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.48 | 15.025 | 1000 | 0 | 69.061 | 42.532 | 43.387 | 44.254 | 54.926 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.183 | 6354 | 0 | 1269.87 | 2.155 | 3.762 | 12.414 | 54.926 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.245 | 15.439 | 1000 | 0 | 65.596 | 42.95 | 43.977 | 44.994 | 64.465 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.199 | 16.246 | 1000 | 0 | 70.429 | 43.902 | 45.048 | 46.266 | 64.465 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.985 | 16.027 | 1000 | 0 | 71.506 | 43.911 | 45.191 | 46.894 | 64.465 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 4154 | 0 | 829.89 | 3.272 | 5.976 | 14.204 | 65.535 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.691 | 16.812 | 1000 | 0 | 63.729 | 44.893 | 46.232 | 48.284 | 81.34 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.925 | 15.893 | 1000 | 0 | 62.795 | 46.84 | 48.194 | 49.96 | 76.996 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.333 | 16.615 | 1000 | 0 | 61.225 | 46.768 | 48.547 | 51.057 | 76.996 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.01 | 2.029 | 2696 | 0 | 538.101 | 5.43 | 7.491 | 14.8 | 76.996 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.646 | 17.987 | 1000 | 0 | 56.668 | 48.12 | 51.261 | 58.815 | 81.34 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.026 | 28.779 | 363 | 0 | 12.506 | 241.92 | 243.512 | 19625.607 | 80.918 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.43 | 19.184 | 243 | 0 | 12.506 | 241.897 | 242.93 | 12805.953 | 80.969 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.631 | 14.39 | 183 | 0 | 12.508 | 241.879 | 242.835 | 10026.857 | 81.0 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.597 | 123 | 0 | 12.506 | 241.866 | 242.781 | 5235.669 | 81.0 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.837 | 9.598 | 103 | 0 | 10.471 | 241.924 | 242.679 | 5137.156 | 81.008 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.799 | 63 | 0 | 12.499 | 241.805 | 242.641 | 243.309 | 81.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.798 | 42 | 0 | 8.332 | 241.883 | 242.282 | 242.824 | 81.082 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.361 | 41.964 | 42.381 | 42.959 | 81.09 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.005 | 109 | 0 | 21.792 | 46.966 | 47.738 | 47.945 | 81.117 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.04 | 98 | 0 | 19.531 | 51.898 | 51.999 | 52.089 | 81.23 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.071 | 55 | 0 | 10.979 | 91.952 | 92.282 | 92.376 | 81.234 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.089 | 36 | 0 | 7.107 | 141.943 | 142.306 | 142.635 | 81.234 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.378 | 21 | 0 | 4.169 | 241.911 | 242.019 | 242.197 | 81.238 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.148 | 16.141 | 1000 | 0 | 61.926 | 41.006 | 41.988 | 42.42 | 28.219 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.144 | 16.11 | 1000 | 0 | 61.944 | 41.0 | 41.986 | 42.347 | 28.406 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.111 | 1000 | 0 | 62.012 | 40.992 | 41.952 | 42.329 | 28.418 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.158 | 16.156 | 1000 | 0 | 61.89 | 41.008 | 41.988 | 42.807 | 28.453 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.149 | 1000 | 0 | 61.974 | 41.001 | 41.929 | 42.328 | 28.453 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.155 | 16.154 | 1000 | 0 | 61.899 | 41.011 | 42.01 | 42.683 | 28.473 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.148 | 16.118 | 1000 | 0 | 61.926 | 41.002 | 42.003 | 42.633 | 28.488 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.159 | 16.117 | 1000 | 0 | 61.885 | 41.008 | 41.992 | 42.458 | 29.09 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.818 | 11.828 | 1000 | 0 | 72.371 | 40.992 | 42.081 | 42.981 | 29.09 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.945 | 11.426 | 1000 | 0 | 77.253 | 41.008 | 42.051 | 42.921 | 29.09 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11824 | 0 | 2363.948 | 1.176 | 1.955 | 9.899 | 29.512 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.169 | 11.903 | 1000 | 0 | 75.934 | 41.086 | 42.279 | 43.591 | 34.852 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.99 | 13.39 | 1000 | 0 | 71.48 | 41.942 | 42.322 | 43.104 | 34.852 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.914 | 12.022 | 1000 | 0 | 67.051 | 41.94 | 42.435 | 43.153 | 34.852 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9135 | 0 | 1826.319 | 1.56 | 2.438 | 10.772 | 34.852 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.301 | 14.793 | 1000 | 0 | 65.354 | 41.963 | 42.985 | 43.944 | 40.918 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.459 | 14.801 | 1000 | 0 | 64.687 | 42.0 | 43.084 | 44.186 | 38.637 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.928 | 15.559 | 1000 | 0 | 71.799 | 42.009 | 43.31 | 44.85 | 38.637 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.003 | 6350 | 0 | 1268.187 | 2.128 | 3.732 | 14.473 | 39.512 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.855 | 15.899 | 1000 | 0 | 63.07 | 42.955 | 43.983 | 45.024 | 44.684 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.344 | 14.605 | 1000 | 0 | 69.714 | 43.89 | 45.116 | 46.518 | 44.684 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.399 | 16.163 | 1000 | 0 | 69.447 | 43.931 | 45.213 | 51.78 | 44.684 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.005 | 4242 | 0 | 847.233 | 3.149 | 6.238 | 16.699 | 46.301 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.176 | 16.068 | 1000 | 0 | 65.893 | 44.929 | 46.783 | 48.853 | 49.746 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.187 | 16.628 | 1000 | 0 | 65.845 | 46.15 | 48.648 | 51.444 | 46.859 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.335 | 16.96 | 1000 | 0 | 65.212 | 46.799 | 48.977 | 51.758 | 46.859 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.046 | 2654 | 0 | 529.918 | 5.53 | 7.492 | 19.808 | 52.871 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.112 | 18.034 | 1000 | 0 | 58.439 | 48.083 | 51.942 | 54.545 | 83.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.009 | 28.788 | 363 | 0 | 12.514 | 241.883 | 243.817 | 19609.514 | 83.285 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.428 | 19.192 | 243 | 0 | 12.508 | 241.823 | 242.859 | 12810.17 | 83.355 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.391 | 183 | 0 | 12.513 | 241.687 | 242.661 | 10023.276 | 83.363 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.596 | 123 | 0 | 12.51 | 241.748 | 242.983 | 5230.218 | 83.363 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.596 | 103 | 0 | 10.477 | 241.808 | 242.363 | 5126.07 | 83.379 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.799 | 63 | 0 | 12.502 | 241.843 | 242.27 | 242.898 | 83.383 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 4.797 | 42 | 0 | 8.332 | 241.962 | 242.609 | 243.451 | 83.383 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.018 | 122 | 0 | 24.373 | 41.952 | 42.047 | 42.955 | 83.387 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.024 | 110 | 0 | 21.814 | 46.944 | 47.102 | 47.939 | 83.461 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.011 | 98 | 0 | 19.577 | 51.329 | 52.011 | 52.127 | 83.504 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.067 | 55 | 0 | 10.964 | 91.965 | 92.128 | 92.929 | 83.516 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.086 | 36 | 0 | 7.107 | 141.929 | 142.217 | 143.091 | 83.516 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.378 | 21 | 0 | 4.17 | 241.937 | 242.064 | 242.369 | 83.516 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.166 | 1000 | 0 | 61.994 | 40.994 | 41.973 | 42.43 | 29.578 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.087 | 1000 | 0 | 62.033 | 40.994 | 41.969 | 42.248 | 29.605 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.084 | 1000 | 0 | 62.04 | 40.993 | 41.971 | 42.298 | 29.605 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.152 | 16.125 | 1000 | 0 | 61.911 | 41.003 | 42.028 | 42.687 | 29.766 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.131 | 16.1 | 1000 | 0 | 61.994 | 40.992 | 41.974 | 42.333 | 29.906 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.149 | 16.108 | 1000 | 0 | 61.925 | 41.001 | 42.009 | 42.565 | 29.906 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.13 | 1000 | 0 | 61.968 | 40.997 | 41.967 | 42.39 | 29.906 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.127 | 1000 | 0 | 61.986 | 40.996 | 41.967 | 42.377 | 30.918 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.26 | 13.801 | 1000 | 0 | 65.529 | 40.979 | 41.983 | 42.204 | 31.055 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.061 | 15.073 | 1000 | 0 | 66.395 | 40.984 | 41.976 | 42.211 | 31.055 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11596 | 0 | 2318.228 | 1.219 | 1.998 | 8.319 | 31.254 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.214 | 14.388 | 1000 | 0 | 70.354 | 41.0 | 42.011 | 42.973 | 41.77 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.712 | 14.238 | 1000 | 0 | 67.972 | 41.945 | 42.858 | 43.375 | 41.77 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.03 | 14.781 | 1000 | 0 | 66.534 | 41.949 | 42.322 | 43.063 | 41.77 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 8639 | 0 | 1726.994 | 1.597 | 2.591 | 41.892 | 41.77 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.591 | 14.292 | 1000 | 0 | 68.535 | 41.967 | 42.961 | 43.87 | 49.242 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.142 | 15.107 | 1000 | 0 | 66.042 | 42.0 | 43.127 | 44.133 | 49.121 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.081 | 11.929 | 1000 | 0 | 66.307 | 42.024 | 43.206 | 45.299 | 49.121 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 6551 | 0 | 1309.433 | 2.099 | 3.383 | 15.468 | 49.121 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.044 | 15.612 | 1000 | 0 | 66.472 | 42.938 | 43.975 | 44.782 | 55.414 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.563 | 15.361 | 1000 | 0 | 68.666 | 43.885 | 44.963 | 45.93 | 55.371 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.984 | 14.544 | 1000 | 0 | 66.736 | 43.93 | 45.089 | 46.259 | 55.371 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.005 | 4200 | 0 | 838.937 | 3.194 | 5.858 | 17.147 | 57.035 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.727 | 16.587 | 1000 | 0 | 63.586 | 44.909 | 46.325 | 48.15 | 66.824 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.332 | 16.825 | 1000 | 0 | 61.231 | 46.538 | 48.358 | 50.456 | 64.398 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.741 | 17.204 | 1000 | 0 | 63.528 | 46.009 | 48.174 | 50.488 | 64.398 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.061 | 2880 | 0 | 575.246 | 5.068 | 7.024 | 14.266 | 68.406 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.279 | 18.208 | 1000 | 0 | 57.872 | 48.18 | 51.762 | 54.364 | 81.73 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.016 | 28.779 | 363 | 0 | 12.51 | 241.886 | 243.14 | 19619.646 | 80.938 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.428 | 19.186 | 243 | 0 | 12.508 | 241.914 | 243.83 | 12807.968 | 80.969 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.628 | 14.385 | 183 | 0 | 12.51 | 241.784 | 242.849 | 10027.965 | 80.984 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.584 | 123 | 0 | 12.514 | 241.801 | 242.624 | 5232.602 | 80.992 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.584 | 103 | 0 | 10.474 | 241.866 | 242.909 | 5132.398 | 81.004 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.798 | 63 | 0 | 12.506 | 241.714 | 242.5 | 243.013 | 81.012 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.79 | 42 | 0 | 8.34 | 241.82 | 242.215 | 242.264 | 81.016 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.018 | 122 | 0 | 24.349 | 41.965 | 42.963 | 43.069 | 81.016 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.046 | 2.04 | 110 | 0 | 21.801 | 46.973 | 47.094 | 47.967 | 81.051 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.039 | 98 | 0 | 19.532 | 51.872 | 52.053 | 52.915 | 81.051 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.089 | 2.069 | 56 | 0 | 11.004 | 91.884 | 92.021 | 92.145 | 81.051 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.058 | 2.086 | 36 | 0 | 7.118 | 141.883 | 142.011 | 142.02 | 81.051 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 2.379 | 21 | 0 | 4.171 | 241.908 | 242.009 | 242.026 | 81.051 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15248 | 0 | 3048.784 | 1.571 | 2.117 | 2.538 | 66.379 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14933 | 0 | 2985.967 | 1.605 | 2.164 | 2.542 | 66.461 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15270 | 0 | 3053.259 | 1.567 | 2.112 | 2.577 | 66.285 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15408 | 0 | 3081.025 | 1.556 | 2.119 | 2.536 | 66.301 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15349 | 0 | 3068.638 | 1.556 | 2.118 | 2.589 | 68.152 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 13341 | 0 | 2667.385 | 1.799 | 2.417 | 2.934 | 67.98 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15512 | 0 | 3101.7 | 1.544 | 2.087 | 2.57 | 68.328 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15265 | 0 | 3052.356 | 1.569 | 2.16 | 2.625 | 69.047 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12356 | 0 | 2470.593 | 1.962 | 2.532 | 3.081 | 76.969 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6364 | 0 | 1272.23 | 3.873 | 4.817 | 5.548 | 73.922 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12374 | 0 | 2474.076 | 1.964 | 2.478 | 2.9 | 77.473 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.017 | 12308 | 0 | 2460.931 | 1.808 | 2.448 | 3.492 | 69.895 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9093 | 0 | 1817.971 | 2.5 | 4.003 | 6.561 | 108.504 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3496 | 0 | 698.46 | 7.094 | 8.683 | 9.452 | 79.133 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9384 | 0 | 1875.941 | 2.457 | 3.649 | 5.161 | 76.457 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9064 | 0 | 1812.117 | 2.546 | 3.781 | 6.237 | 76.207 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6801 | 0 | 1359.1 | 3.338 | 5.524 | 13.956 | 138.559 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.468 | 1975 | 0 | 394.325 | 12.64 | 15.221 | 16.378 | 92.168 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6899 | 0 | 1378.715 | 3.271 | 5.138 | 14.258 | 88.355 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6666 | 0 | 1332.35 | 3.333 | 5.622 | 14.903 | 88.355 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 3928 | 0 | 784.805 | 5.843 | 9.474 | 19.28 | 124.496 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.387 | 1065 | 0 | 212.195 | 23.744 | 27.851 | 29.797 | 93.551 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 4279 | 0 | 854.8 | 5.352 | 8.316 | 19.143 | 87.672 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4363 | 0 | 871.86 | 5.141 | 8.181 | 18.886 | 87.859 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.006 | 2535 | 0 | 506.084 | 9.829 | 11.345 | 12.66 | 115.551 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.988 | 8.604 | 1000 | 0 | 111.259 | 45.132 | 52.372 | 54.76 | 94.336 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2846 | 0 | 568.261 | 8.63 | 10.114 | 11.378 | 92.949 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2790 | 0 | 556.999 | 8.78 | 10.638 | 11.551 | 93.016 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.0 | 51.018 | 360 | 0 | 7.059 | 2554.781 | 2723.276 | 2725.578 | 115.531 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.991 | 34.014 | 240 | 0 | 7.061 | 1713.904 | 1835.362 | 1840.491 | 118.262 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.514 | 25.512 | 180 | 0 | 7.055 | 1289.264 | 1385.718 | 1392.135 | 118.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.009 | 16.99 | 120 | 0 | 7.055 | 892.059 | 921.357 | 922.439 | 118.586 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.235 | 14.174 | 100 | 0 | 7.025 | 727.768 | 870.576 | 906.449 | 118.652 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.504 | 8.495 | 60 | 0 | 7.055 | 435.372 | 472.588 | 484.936 | 118.652 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.667 | 5.654 | 40 | 0 | 7.059 | 284.87 | 309.192 | 318.486 | 118.656 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3558 | 0 | 711.554 | 1.362 | 1.548 | 1.883 | 122.664 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.005 | 938 | 0 | 187.506 | 5.283 | 5.463 | 5.821 | 125.617 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.007 | 484 | 0 | 96.658 | 10.31 | 10.433 | 10.557 | 125.617 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.028 | 99 | 0 | 19.768 | 50.521 | 50.692 | 51.373 | 125.617 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.027 | 2.012 | 50 | 0 | 9.947 | 100.459 | 100.641 | 100.958 | 125.617 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.006 | 25 | 0 | 4.984 | 200.563 | 200.67 | 200.707 | 125.617 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15723 | 0 | 3144.045 | 1.53 | 2.007 | 2.433 | 64.855 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15323 | 0 | 3064.047 | 1.564 | 2.082 | 2.545 | 65.035 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15634 | 0 | 3126.187 | 1.534 | 2.047 | 2.497 | 64.75 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15309 | 0 | 3061.142 | 1.563 | 2.142 | 2.633 | 65.129 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15275 | 0 | 3054.239 | 1.566 | 2.141 | 2.59 | 66.832 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13495 | 0 | 2698.302 | 1.778 | 2.377 | 2.813 | 66.652 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15452 | 0 | 3089.737 | 1.551 | 2.088 | 2.572 | 66.977 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14883 | 0 | 2975.82 | 1.604 | 2.235 | 2.741 | 67.711 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12196 | 0 | 2438.469 | 1.982 | 2.578 | 3.153 | 79.484 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6375 | 0 | 1274.224 | 3.891 | 4.736 | 5.243 | 72.5 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12283 | 0 | 2455.504 | 1.972 | 2.518 | 3.104 | 78.781 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.041 | 2.013 | 12312 | 0 | 2442.342 | 1.425 | 2.217 | 41.259 | 68.09 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8813 | 0 | 1761.668 | 2.538 | 4.36 | 7.781 | 106.863 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3485 | 0 | 695.982 | 7.161 | 8.674 | 9.544 | 78.535 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8849 | 0 | 1769.126 | 2.515 | 4.284 | 7.649 | 73.211 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8816 | 0 | 1762.491 | 2.535 | 4.222 | 8.036 | 73.086 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6678 | 0 | 1334.669 | 3.311 | 5.864 | 15.208 | 129.684 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.446 | 1939 | 0 | 386.985 | 12.938 | 15.295 | 16.512 | 83.223 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6664 | 0 | 1332.168 | 3.298 | 6.077 | 15.465 | 80.707 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6807 | 0 | 1360.515 | 3.212 | 5.274 | 15.487 | 80.707 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 4141 | 0 | 827.315 | 5.577 | 8.495 | 19.393 | 136.699 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.02 | 4.061 | 1092 | 0 | 217.517 | 22.999 | 27.328 | 28.859 | 87.305 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4357 | 0 | 870.789 | 5.205 | 8.04 | 19.81 | 92.789 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 4320 | 0 | 863.168 | 5.173 | 9.404 | 19.977 | 92.789 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2512 | 0 | 501.59 | 9.818 | 11.861 | 12.715 | 111.801 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.758 | 8.649 | 1000 | 0 | 102.483 | 47.101 | 69.509 | 85.635 | 93.066 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.009 | 2235 | 0 | 446.277 | 10.004 | 21.142 | 26.659 | 93.5 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2626 | 0 | 524.24 | 9.354 | 11.379 | 12.447 | 93.5 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.023 | 51.019 | 360 | 0 | 7.056 | 2547.861 | 2602.497 | 2633.193 | 115.859 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.009 | 34.029 | 240 | 0 | 7.057 | 1698.022 | 1750.662 | 1766.225 | 118.93 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.514 | 25.505 | 180 | 0 | 7.055 | 1269.923 | 1321.757 | 1346.038 | 119.0 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.004 | 17.015 | 120 | 0 | 7.057 | 850.453 | 887.375 | 898.714 | 122.051 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.157 | 14.178 | 100 | 0 | 7.064 | 708.821 | 862.93 | 876.36 | 122.113 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.502 | 8.511 | 60 | 0 | 7.057 | 423.523 | 451.692 | 461.124 | 122.117 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.674 | 5.671 | 40 | 0 | 7.05 | 283.641 | 294.561 | 295.159 | 122.117 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 3623 | 0 | 724.563 | 1.349 | 1.451 | 1.78 | 128.398 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.005 | 943 | 0 | 188.584 | 5.272 | 5.34 | 5.522 | 128.461 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.002 | 484 | 0 | 96.798 | 10.295 | 10.375 | 10.584 | 128.523 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.045 | 2.017 | 100 | 0 | 19.822 | 50.38 | 50.639 | 50.796 | 128.523 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.038 | 2.017 | 50 | 0 | 9.924 | 100.659 | 101.086 | 101.263 | 128.527 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.668 | 200.72 | 200.843 | 128.527 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15268 | 0 | 3052.851 | 1.568 | 2.11 | 2.554 | 65.117 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15051 | 0 | 3009.535 | 1.592 | 2.136 | 2.618 | 66.727 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15484 | 0 | 3096.121 | 1.546 | 2.088 | 2.569 | 66.906 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15001 | 0 | 2998.954 | 1.578 | 2.245 | 2.928 | 67.117 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15490 | 0 | 3097.324 | 1.547 | 2.088 | 2.535 | 68.82 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13240 | 0 | 2647.382 | 1.812 | 2.439 | 2.966 | 69.008 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15142 | 0 | 3027.56 | 1.577 | 2.18 | 2.668 | 69.109 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14794 | 0 | 2958.141 | 1.608 | 2.299 | 2.899 | 69.813 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12384 | 0 | 2476.138 | 1.939 | 2.616 | 3.296 | 77.363 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6165 | 0 | 1232.225 | 3.984 | 4.957 | 6.273 | 73.594 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12190 | 0 | 2437.022 | 1.988 | 2.554 | 3.132 | 77.832 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.028 | 2.028 | 12165 | 0 | 2419.45 | 1.68 | 2.46 | 4.046 | 69.488 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8638 | 0 | 1726.901 | 2.553 | 4.47 | 8.581 | 103.344 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3307 | 0 | 660.611 | 7.486 | 9.28 | 12.534 | 80.539 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 9033 | 0 | 1805.16 | 2.508 | 4.044 | 6.979 | 72.941 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8963 | 0 | 1791.535 | 2.534 | 4.017 | 6.457 | 73.191 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6617 | 0 | 1322.715 | 3.328 | 5.844 | 16.87 | 157.547 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.544 | 1950 | 0 | 389.307 | 12.654 | 15.435 | 21.961 | 84.77 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6565 | 0 | 1312.204 | 3.367 | 5.759 | 16.894 | 83.617 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6503 | 0 | 1299.639 | 3.387 | 6.056 | 17.522 | 83.617 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 3865 | 0 | 772.366 | 5.907 | 9.417 | 22.108 | 141.172 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 4.725 | 1026 | 0 | 204.547 | 24.458 | 29.143 | 31.539 | 96.359 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4186 | 0 | 836.489 | 5.382 | 8.781 | 22.468 | 93.402 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.005 | 4325 | 0 | 863.688 | 5.189 | 8.024 | 21.286 | 93.406 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.028 | 2452 | 0 | 489.615 | 10.026 | 12.051 | 15.867 | 109.305 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.441 | 8.712 | 1000 | 0 | 105.92 | 46.716 | 55.495 | 63.27 | 97.313 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 2554 | 0 | 509.901 | 9.555 | 11.483 | 16.435 | 91.617 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2763 | 0 | 551.601 | 8.836 | 10.588 | 14.177 | 91.617 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.063 | 50.992 | 360 | 0 | 7.05 | 2551.464 | 2608.609 | 2629.563 | 114.371 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.025 | 34.003 | 240 | 0 | 7.054 | 1699.912 | 1758.609 | 1770.98 | 117.078 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.507 | 25.472 | 180 | 0 | 7.057 | 1273.143 | 1324.891 | 1334.401 | 117.148 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.998 | 16.998 | 120 | 0 | 7.06 | 850.752 | 888.582 | 902.018 | 117.215 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.203 | 14.178 | 100 | 0 | 7.041 | 759.598 | 861.73 | 868.46 | 117.219 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.506 | 8.502 | 60 | 0 | 7.054 | 424.023 | 448.482 | 449.139 | 117.219 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.672 | 5.665 | 40 | 0 | 7.052 | 282.497 | 295.746 | 296.339 | 117.219 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3583 | 0 | 716.427 | 1.364 | 1.477 | 1.757 | 121.477 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.003 | 942 | 0 | 188.325 | 5.278 | 5.352 | 5.619 | 120.219 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.005 | 479 | 0 | 95.782 | 10.364 | 10.629 | 11.139 | 121.16 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.029 | 99 | 0 | 19.735 | 50.62 | 50.689 | 50.738 | 121.16 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.015 | 50 | 0 | 9.93 | 100.623 | 100.938 | 101.024 | 121.16 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.019 | 2.009 | 25 | 0 | 4.981 | 200.668 | 201.023 | 201.059 | 121.16 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.152 | 1000 | 0 | 61.969 | 40.988 | 41.979 | 42.371 | 29.461 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.107 | 1000 | 0 | 62.012 | 40.991 | 41.975 | 42.316 | 29.621 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.141 | 16.1 | 1000 | 0 | 61.953 | 40.993 | 41.986 | 42.384 | 29.719 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.139 | 1000 | 0 | 62.029 | 40.995 | 41.978 | 42.358 | 29.852 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.087 | 1000 | 0 | 62.02 | 40.993 | 41.973 | 42.372 | 29.922 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.123 | 16.083 | 1000 | 0 | 62.025 | 40.992 | 41.979 | 42.361 | 29.922 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.085 | 1000 | 0 | 62.008 | 40.997 | 41.98 | 42.247 | 29.938 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.144 | 16.083 | 1000 | 0 | 61.941 | 40.997 | 41.974 | 42.54 | 30.156 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.803 | 10.23 | 1000 | 0 | 67.553 | 40.983 | 41.982 | 42.961 | 30.199 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.516 | 13.751 | 1000 | 0 | 64.449 | 40.98 | 41.976 | 42.513 | 30.238 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 11675 | 0 | 2334.33 | 1.239 | 1.961 | 6.563 | 30.785 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.751 | 13.59 | 1000 | 0 | 67.792 | 40.998 | 42.021 | 42.955 | 34.063 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.3 | 12.805 | 1000 | 0 | 81.3 | 41.887 | 42.743 | 44.116 | 34.063 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.741 | 11.752 | 1000 | 0 | 78.486 | 41.88 | 42.577 | 43.405 | 34.063 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 8591 | 0 | 1717.208 | 1.59 | 2.638 | 43.54 | 34.188 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.69 | 12.165 | 1000 | 0 | 78.801 | 41.946 | 42.983 | 44.665 | 39.852 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.192 | 14.123 | 1000 | 0 | 70.462 | 41.983 | 43.071 | 44.423 | 39.852 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.98 | 14.389 | 1000 | 0 | 66.754 | 41.985 | 43.067 | 44.399 | 39.852 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 6358 | 0 | 1270.668 | 2.116 | 3.573 | 20.689 | 40.324 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.534 | 15.189 | 1000 | 0 | 68.803 | 42.924 | 43.983 | 45.78 | 44.078 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.566 | 14.624 | 1000 | 0 | 73.716 | 43.009 | 44.932 | 46.954 | 44.082 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.731 | 14.715 | 1000 | 0 | 72.829 | 43.384 | 44.978 | 48.034 | 44.082 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 4350 | 0 | 869.129 | 3.017 | 5.789 | 20.333 | 46.832 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.153 | 16.476 | 1000 | 0 | 61.908 | 44.017 | 45.959 | 47.532 | 52.133 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.493 | 16.604 | 1000 | 0 | 64.547 | 45.891 | 47.752 | 49.043 | 49.266 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.866 | 15.245 | 1000 | 0 | 67.267 | 45.895 | 48.152 | 49.65 | 49.266 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.05 | 2769 | 0 | 552.908 | 5.335 | 7.189 | 13.94 | 55.277 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.851 | 17.828 | 1000 | 0 | 59.343 | 47.925 | 50.971 | 54.737 | 83.832 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.005 | 28.772 | 363 | 0 | 12.515 | 241.745 | 242.917 | 19614.781 | 83.926 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.178 | 243 | 0 | 12.512 | 241.902 | 242.887 | 12809.418 | 83.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.619 | 14.391 | 183 | 0 | 12.518 | 241.604 | 242.846 | 10022.441 | 83.969 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.591 | 123 | 0 | 12.512 | 241.742 | 242.633 | 5235.078 | 83.969 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.585 | 103 | 0 | 10.476 | 241.799 | 242.462 | 5133.126 | 83.996 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.793 | 63 | 0 | 12.51 | 241.528 | 242.243 | 242.737 | 84.031 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 4.79 | 42 | 0 | 8.335 | 241.88 | 242.359 | 242.848 | 84.031 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.022 | 122 | 0 | 24.363 | 41.962 | 42.083 | 43.036 | 84.066 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.028 | 112 | 0 | 22.339 | 45.93 | 46.074 | 46.944 | 84.078 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.01 | 99 | 0 | 19.653 | 50.998 | 52.004 | 52.077 | 84.105 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.085 | 2.07 | 56 | 0 | 11.013 | 91.271 | 92.027 | 92.181 | 84.105 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.066 | 2.089 | 36 | 0 | 7.107 | 141.937 | 142.07 | 142.078 | 84.109 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.379 | 21 | 0 | 4.17 | 241.942 | 242.004 | 242.015 | 84.117 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.147 | 1000 | 0 | 61.999 | 40.994 | 41.947 | 42.362 | 29.738 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.138 | 16.11 | 1000 | 0 | 61.966 | 40.994 | 41.961 | 42.282 | 29.945 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.139 | 16.096 | 1000 | 0 | 61.961 | 41.002 | 41.997 | 42.445 | 30.066 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.136 | 16.101 | 1000 | 0 | 61.975 | 40.993 | 41.973 | 42.404 | 30.137 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.097 | 1000 | 0 | 62.006 | 40.995 | 41.974 | 42.419 | 30.238 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.134 | 16.117 | 1000 | 0 | 61.98 | 40.99 | 41.973 | 42.442 | 30.258 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.13 | 16.094 | 1000 | 0 | 61.996 | 40.995 | 41.977 | 42.401 | 30.277 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.137 | 16.109 | 1000 | 0 | 61.969 | 40.998 | 41.993 | 42.59 | 30.836 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.421 | 12.774 | 1000 | 0 | 64.846 | 40.977 | 41.971 | 42.217 | 30.836 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.954 | 14.171 | 1000 | 0 | 66.872 | 40.983 | 41.979 | 42.36 | 30.836 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 11510 | 0 | 2301.321 | 1.251 | 1.989 | 5.643 | 31.18 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.693 | 15.071 | 1000 | 0 | 73.032 | 41.007 | 42.157 | 43.154 | 35.375 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.641 | 14.651 | 1000 | 0 | 93.978 | 41.634 | 42.314 | 43.086 | 35.375 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.812 | 13.457 | 1000 | 0 | 72.401 | 41.933 | 42.636 | 43.199 | 35.375 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8939 | 0 | 1787.08 | 1.53 | 2.508 | 31.12 | 35.816 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.964 | 14.439 | 1000 | 0 | 83.582 | 41.948 | 42.944 | 45.007 | 40.965 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.216 | 14.824 | 1000 | 0 | 75.667 | 41.982 | 43.245 | 45.075 | 39.063 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.603 | 15.597 | 1000 | 0 | 68.479 | 41.983 | 43.021 | 44.444 | 39.063 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 6746 | 0 | 1348.414 | 2.026 | 3.141 | 18.724 | 40.168 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.319 | 15.607 | 1000 | 0 | 65.279 | 42.908 | 43.962 | 46.567 | 45.371 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.549 | 15.618 | 1000 | 0 | 68.731 | 43.665 | 45.002 | 46.909 | 43.285 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.187 | 13.957 | 1000 | 0 | 75.835 | 43.013 | 44.914 | 46.078 | 43.285 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.004 | 4311 | 0 | 861.366 | 3.052 | 5.546 | 21.129 | 46.215 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.139 | 16.105 | 1000 | 0 | 66.055 | 44.024 | 45.985 | 48.849 | 52.746 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.415 | 15.647 | 1000 | 0 | 69.372 | 45.825 | 47.894 | 49.755 | 52.734 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.939 | 15.073 | 1000 | 0 | 66.938 | 45.935 | 48.057 | 50.372 | 52.734 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.01 | 2.008 | 2738 | 0 | 546.53 | 5.342 | 7.505 | 21.594 | 58.746 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.695 | 17.943 | 1000 | 0 | 59.899 | 47.953 | 50.783 | 54.925 | 64.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.998 | 28.781 | 363 | 0 | 12.518 | 241.758 | 242.945 | 19603.039 | 64.91 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.428 | 19.173 | 243 | 0 | 12.508 | 241.82 | 243.333 | 12807.866 | 64.934 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.39 | 183 | 0 | 12.512 | 241.71 | 243.237 | 10033.119 | 64.945 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.836 | 9.587 | 123 | 0 | 12.505 | 241.806 | 242.929 | 5237.379 | 64.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.585 | 103 | 0 | 10.475 | 241.825 | 242.75 | 5134.699 | 64.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.796 | 63 | 0 | 12.501 | 241.751 | 242.701 | 242.924 | 64.961 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 4.791 | 42 | 0 | 8.344 | 241.355 | 242.274 | 242.955 | 64.961 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.019 | 122 | 0 | 24.373 | 41.972 | 42.114 | 42.901 | 65.016 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.029 | 113 | 0 | 22.453 | 45.874 | 46.035 | 46.102 | 65.043 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 2.002 | 99 | 0 | 19.695 | 50.985 | 51.966 | 52.004 | 65.055 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.089 | 2.061 | 56 | 0 | 11.004 | 91.915 | 92.074 | 92.368 | 65.059 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.083 | 36 | 0 | 7.105 | 141.933 | 142.051 | 142.634 | 65.063 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.026 | 2.378 | 21 | 0 | 4.178 | 240.978 | 241.938 | 241.957 | 65.063 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.155 | 16.183 | 1000 | 0 | 61.901 | 41.011 | 42.014 | 42.719 | 29.586 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.172 | 16.159 | 1000 | 0 | 61.834 | 41.002 | 42.015 | 42.464 | 29.758 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.107 | 1000 | 0 | 61.985 | 40.987 | 41.968 | 42.414 | 29.945 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.126 | 1000 | 0 | 62.034 | 40.99 | 41.96 | 42.188 | 30.082 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.142 | 16.091 | 1000 | 0 | 61.95 | 40.992 | 41.974 | 42.299 | 30.117 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.103 | 1000 | 0 | 61.998 | 40.993 | 41.961 | 42.275 | 30.117 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.087 | 1000 | 0 | 62.027 | 40.99 | 41.978 | 42.253 | 30.129 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.087 | 1000 | 0 | 61.989 | 40.992 | 41.971 | 42.487 | 30.402 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.746 | 14.475 | 1000 | 0 | 67.816 | 40.983 | 41.978 | 42.664 | 30.438 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.776 | 12.552 | 1000 | 0 | 67.677 | 40.994 | 42.009 | 43.086 | 30.578 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11483 | 0 | 2295.475 | 1.238 | 2.076 | 8.933 | 31.109 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.102 | 12.619 | 1000 | 0 | 70.913 | 41.114 | 42.405 | 43.0 | 35.332 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.477 | 11.852 | 1000 | 0 | 95.446 | 41.875 | 42.904 | 44.874 | 35.332 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.536 | 11.72 | 1000 | 0 | 86.686 | 41.885 | 42.726 | 44.089 | 35.332 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 8587 | 0 | 1716.316 | 1.575 | 2.705 | 36.42 | 35.813 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.835 | 13.834 | 1000 | 0 | 77.914 | 41.949 | 42.945 | 44.393 | 40.738 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.683 | 14.06 | 1000 | 0 | 73.085 | 41.984 | 43.095 | 45.442 | 37.625 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.57 | 14.515 | 1000 | 0 | 73.693 | 41.984 | 43.236 | 44.246 | 37.625 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.014 | 2.005 | 5938 | 0 | 1184.372 | 2.22 | 4.079 | 21.851 | 39.551 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.707 | 15.282 | 1000 | 0 | 72.954 | 42.921 | 43.989 | 46.832 | 44.512 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.139 | 13.779 | 1000 | 0 | 76.108 | 42.988 | 44.822 | 49.95 | 41.73 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.921 | 12.176 | 1000 | 0 | 83.886 | 43.016 | 45.082 | 47.232 | 41.73 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.005 | 4175 | 0 | 834.198 | 3.085 | 6.271 | 20.644 | 46.648 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.036 | 15.261 | 1000 | 0 | 62.361 | 44.001 | 45.895 | 54.124 | 52.434 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.087 | 15.577 | 1000 | 0 | 62.162 | 45.923 | 47.352 | 49.16 | 52.313 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.196 | 14.959 | 1000 | 0 | 70.444 | 45.871 | 47.941 | 50.442 | 52.313 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.009 | 2.069 | 2546 | 0 | 508.259 | 5.726 | 8.137 | 14.004 | 58.324 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.873 | 17.195 | 1000 | 0 | 59.268 | 47.721 | 50.274 | 58.742 | 66.48 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.993 | 28.773 | 363 | 0 | 12.52 | 241.641 | 242.664 | 19605.785 | 66.883 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.42 | 19.16 | 243 | 0 | 12.513 | 241.764 | 242.839 | 12808.303 | 66.891 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.614 | 14.379 | 183 | 0 | 12.522 | 241.486 | 242.651 | 10017.883 | 66.895 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.583 | 123 | 0 | 12.518 | 241.572 | 242.487 | 5235.946 | 66.93 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.578 | 103 | 0 | 10.485 | 241.506 | 242.28 | 5131.07 | 66.945 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.792 | 63 | 0 | 12.515 | 241.514 | 242.273 | 242.544 | 66.945 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.784 | 42 | 0 | 8.341 | 241.662 | 242.389 | 242.933 | 66.945 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.018 | 122 | 0 | 24.361 | 41.98 | 42.133 | 42.979 | 66.969 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.027 | 2.028 | 113 | 0 | 22.478 | 45.882 | 46.027 | 46.376 | 67.023 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.051 | 99 | 0 | 19.729 | 50.984 | 51.98 | 52.015 | 67.023 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.086 | 2.073 | 56 | 0 | 11.011 | 91.805 | 92.062 | 92.144 | 67.023 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.068 | 2.087 | 36 | 0 | 7.104 | 141.962 | 142.109 | 142.142 | 67.023 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 2.372 | 21 | 0 | 4.175 | 241.009 | 241.978 | 242.057 | 67.023 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15762 | 0 | 3151.515 | 1.53 | 1.957 | 2.406 | 69.055 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15334 | 0 | 3066.102 | 1.575 | 2.02 | 2.395 | 69.156 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15729 | 0 | 3144.824 | 1.532 | 1.972 | 2.416 | 69.383 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15456 | 0 | 3090.459 | 1.559 | 2.035 | 2.576 | 69.492 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15624 | 0 | 3124.05 | 1.544 | 1.997 | 2.387 | 70.957 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13389 | 0 | 2677.177 | 1.8 | 2.341 | 2.925 | 71.277 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15436 | 0 | 3086.508 | 1.558 | 2.062 | 2.61 | 71.457 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15366 | 0 | 3072.513 | 1.568 | 2.062 | 2.497 | 72.195 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12573 | 0 | 2513.766 | 1.931 | 2.39 | 2.728 | 90.285 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 6497 | 0 | 1298.732 | 3.794 | 4.657 | 5.134 | 80.758 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12587 | 0 | 2516.31 | 1.924 | 2.409 | 2.747 | 90.73 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.005 | 12265 | 0 | 2452.286 | 1.81 | 2.353 | 2.795 | 74.195 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 9000 | 0 | 1798.994 | 2.515 | 3.806 | 6.0 | 105.746 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3560 | 0 | 711.135 | 7.039 | 8.362 | 8.995 | 85.012 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 9021 | 0 | 1802.306 | 2.49 | 3.807 | 7.358 | 78.285 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8982 | 0 | 1795.708 | 2.494 | 3.977 | 6.718 | 78.535 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6671 | 0 | 1333.61 | 3.309 | 5.503 | 20.698 | 127.832 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.385 | 2018 | 0 | 402.704 | 12.306 | 14.839 | 16.103 | 89.535 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 6905 | 0 | 1380.267 | 3.231 | 5.022 | 19.75 | 82.664 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 6619 | 0 | 1323.049 | 3.343 | 5.477 | 21.033 | 82.742 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4260 | 0 | 851.361 | 5.304 | 7.93 | 24.053 | 122.934 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.346 | 1068 | 0 | 212.846 | 23.378 | 27.619 | 29.194 | 91.836 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4352 | 0 | 869.739 | 5.144 | 7.914 | 24.912 | 89.281 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4312 | 0 | 861.653 | 5.111 | 8.538 | 24.803 | 89.281 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.031 | 2463 | 0 | 491.886 | 10.017 | 12.027 | 13.187 | 95.895 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 9.083 | 8.633 | 1000 | 0 | 110.099 | 45.024 | 53.451 | 56.264 | 95.148 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2616 | 0 | 522.372 | 9.368 | 11.385 | 12.852 | 91.945 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.006 | 2689 | 0 | 536.734 | 9.14 | 10.971 | 12.521 | 92.258 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.136 | 51.153 | 360 | 0 | 7.04 | 2553.539 | 2598.441 | 2606.389 | 114.547 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.094 | 34.085 | 240 | 0 | 7.039 | 1703.867 | 1739.479 | 1752.234 | 117.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.572 | 25.563 | 180 | 0 | 7.039 | 1278.156 | 1312.825 | 1318.941 | 117.449 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.046 | 17.044 | 120 | 0 | 7.04 | 853.878 | 873.748 | 884.221 | 117.512 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.209 | 14.207 | 100 | 0 | 7.038 | 754.243 | 840.209 | 852.961 | 117.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.521 | 8.518 | 60 | 0 | 7.042 | 426.946 | 439.862 | 445.773 | 117.699 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.687 | 5.678 | 40 | 0 | 7.033 | 283.769 | 291.64 | 295.3 | 117.699 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1715 | 0 | 342.926 | 2.925 | 3.198 | 3.292 | 125.422 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.008 | 517 | 0 | 103.326 | 9.632 | 10.27 | 10.647 | 127.008 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.014 | 356 | 0 | 71.061 | 14.099 | 14.356 | 14.482 | 127.008 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.035 | 2.015 | 100 | 0 | 19.862 | 50.311 | 50.376 | 50.46 | 127.008 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.022 | 2.01 | 50 | 0 | 9.957 | 100.379 | 100.477 | 100.602 | 127.008 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.005 | 25 | 0 | 4.987 | 200.447 | 200.524 | 200.542 | 127.008 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15893 | 0 | 3177.51 | 1.516 | 1.958 | 2.379 | 68.695 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15427 | 0 | 3084.704 | 1.568 | 2.001 | 2.352 | 69.68 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15555 | 0 | 3110.464 | 1.54 | 2.039 | 2.709 | 69.469 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15604 | 0 | 3120.059 | 1.545 | 1.997 | 2.458 | 69.793 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15302 | 0 | 3059.847 | 1.567 | 2.101 | 2.596 | 71.34 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13605 | 0 | 2720.306 | 1.78 | 2.26 | 2.619 | 70.617 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15570 | 0 | 3113.412 | 1.547 | 2.022 | 2.487 | 71.035 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15431 | 0 | 3085.496 | 1.565 | 2.037 | 2.519 | 71.926 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12607 | 0 | 2520.76 | 1.929 | 2.391 | 2.767 | 91.934 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6471 | 0 | 1293.593 | 3.808 | 4.743 | 5.449 | 81.41 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12563 | 0 | 2511.371 | 1.941 | 2.385 | 2.677 | 92.488 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.034 | 2.024 | 12570 | 0 | 2496.84 | 1.501 | 2.272 | 41.015 | 76.82 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9067 | 0 | 1812.66 | 2.48 | 3.858 | 6.455 | 106.758 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3524 | 0 | 703.906 | 7.087 | 8.493 | 9.255 | 85.633 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9168 | 0 | 1833.003 | 2.431 | 3.85 | 6.684 | 82.488 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 8889 | 0 | 1776.224 | 2.519 | 3.959 | 6.773 | 82.801 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 6681 | 0 | 1335.354 | 3.299 | 5.389 | 21.188 | 127.008 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.496 | 1984 | 0 | 396.038 | 12.601 | 14.881 | 16.293 | 90.121 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.022 | 6518 | 0 | 1302.962 | 3.343 | 5.58 | 21.836 | 90.168 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 6480 | 0 | 1295.416 | 3.323 | 5.614 | 22.175 | 90.238 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4206 | 0 | 840.535 | 5.335 | 8.476 | 25.493 | 128.332 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.019 | 4.296 | 1067 | 0 | 212.608 | 23.537 | 27.525 | 30.84 | 90.066 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4242 | 0 | 847.659 | 5.211 | 8.646 | 26.404 | 91.164 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4251 | 0 | 849.49 | 5.13 | 8.764 | 26.386 | 91.164 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2466 | 0 | 492.376 | 9.992 | 12.209 | 13.544 | 98.715 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.815 | 8.252 | 1000 | 0 | 113.443 | 43.942 | 52.108 | 53.953 | 94.438 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 2778 | 0 | 554.771 | 8.936 | 10.335 | 11.237 | 96.555 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2813 | 0 | 561.748 | 8.819 | 10.122 | 11.081 | 96.555 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.132 | 51.114 | 360 | 0 | 7.041 | 2554.426 | 2591.034 | 2604.553 | 115.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.084 | 34.085 | 240 | 0 | 7.041 | 1703.904 | 1735.243 | 1744.7 | 122.172 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.562 | 25.561 | 180 | 0 | 7.042 | 1277.371 | 1305.096 | 1309.345 | 122.242 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.047 | 17.043 | 120 | 0 | 7.039 | 851.352 | 873.334 | 880.473 | 122.305 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.237 | 14.204 | 100 | 0 | 7.024 | 796.197 | 853.19 | 861.946 | 122.367 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.52 | 8.516 | 60 | 0 | 7.043 | 425.124 | 440.986 | 444.445 | 122.367 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.679 | 5.673 | 40 | 0 | 7.043 | 283.781 | 289.549 | 295.255 | 122.367 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 1793 | 0 | 358.496 | 2.776 | 3.11 | 3.305 | 129.785 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.001 | 533 | 0 | 106.476 | 9.39 | 9.994 | 10.541 | 131.91 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.007 | 363 | 0 | 72.564 | 13.81 | 14.124 | 14.211 | 132.91 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.021 | 99 | 0 | 19.79 | 50.445 | 50.776 | 51.007 | 132.91 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.013 | 50 | 0 | 9.934 | 100.508 | 101.221 | 101.513 | 132.91 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.56 | 200.716 | 201.56 | 132.91 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 15827 | 0 | 3164.186 | 1.522 | 1.965 | 2.457 | 68.852 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15453 | 0 | 3089.806 | 1.562 | 1.998 | 2.429 | 69.73 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15893 | 0 | 3177.863 | 1.517 | 1.968 | 2.468 | 69.645 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15648 | 0 | 3128.767 | 1.538 | 2.003 | 2.463 | 69.875 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15686 | 0 | 3136.593 | 1.534 | 2.013 | 2.451 | 71.414 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 13685 | 0 | 2736.404 | 1.77 | 2.235 | 2.66 | 71.551 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15468 | 0 | 3092.846 | 1.553 | 2.068 | 2.541 | 71.668 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 15092 | 0 | 3017.829 | 1.583 | 2.205 | 2.749 | 72.516 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12529 | 0 | 2505.201 | 1.933 | 2.435 | 2.927 | 85.332 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 6382 | 0 | 1275.505 | 3.872 | 4.674 | 5.195 | 78.273 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12531 | 0 | 2505.321 | 1.937 | 2.417 | 2.767 | 85.727 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.022 | 12462 | 0 | 2491.674 | 1.613 | 2.299 | 40.663 | 74.996 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8949 | 0 | 1789.19 | 2.463 | 4.033 | 7.144 | 105.93 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3527 | 0 | 704.616 | 7.066 | 8.41 | 9.16 | 82.898 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 9029 | 0 | 1804.938 | 2.443 | 4.012 | 7.283 | 77.195 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8727 | 0 | 1744.818 | 2.491 | 4.279 | 8.005 | 77.07 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 6593 | 0 | 1317.349 | 3.292 | 5.526 | 22.386 | 121.09 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.012 | 2.43 | 2032 | 0 | 405.404 | 12.345 | 14.584 | 16.421 | 83.957 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.002 | 6463 | 0 | 1290.952 | 3.337 | 5.52 | 23.756 | 82.426 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 6481 | 0 | 1295.644 | 3.31 | 5.596 | 23.351 | 82.508 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3968 | 0 | 792.813 | 5.546 | 9.585 | 27.634 | 108.582 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.018 | 4.346 | 1084 | 0 | 216.022 | 23.173 | 27.315 | 29.175 | 86.32 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.025 | 4273 | 0 | 853.778 | 5.168 | 8.46 | 26.977 | 85.266 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4352 | 0 | 869.806 | 5.046 | 8.061 | 27.177 | 85.266 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.185 | 2457 | 0 | 490.618 | 10.137 | 11.641 | 12.387 | 122.789 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 8.893 | 8.204 | 1000 | 0 | 112.442 | 44.495 | 50.347 | 54.342 | 88.355 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2653 | 0 | 529.71 | 9.318 | 10.78 | 12.206 | 89.238 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.009 | 2696 | 0 | 538.437 | 9.206 | 10.615 | 11.721 | 89.238 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.141 | 51.143 | 360 | 0 | 7.039 | 2557.741 | 2591.694 | 2603.259 | 110.105 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.091 | 34.074 | 240 | 0 | 7.04 | 1703.183 | 1737.84 | 1743.276 | 110.418 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.572 | 25.558 | 180 | 0 | 7.039 | 1277.399 | 1311.62 | 1318.086 | 110.48 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.043 | 17.042 | 120 | 0 | 7.041 | 851.796 | 879.127 | 883.991 | 110.543 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.21 | 14.25 | 100 | 0 | 7.037 | 732.041 | 842.868 | 859.401 | 110.73 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.52 | 8.521 | 60 | 0 | 7.042 | 426.448 | 439.277 | 442.527 | 110.73 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.682 | 5.683 | 40 | 0 | 7.039 | 284.039 | 289.978 | 294.213 | 110.73 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.003 | 1705 | 0 | 340.93 | 2.941 | 3.203 | 3.353 | 110.73 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.008 | 520 | 0 | 103.835 | 9.574 | 10.237 | 10.705 | 110.73 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.011 | 2.009 | 359 | 0 | 71.645 | 14.036 | 14.338 | 14.484 | 110.742 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.043 | 2.017 | 100 | 0 | 19.828 | 50.35 | 50.608 | 50.873 | 110.742 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.025 | 2.01 | 50 | 0 | 9.95 | 100.43 | 100.571 | 100.681 | 110.742 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.484 | 200.548 | 200.58 | 110.742 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

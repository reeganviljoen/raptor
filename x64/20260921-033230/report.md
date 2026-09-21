# Puma vs Raptor Simulation

Run ID: `20260921-033230`

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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.133 | 16.102 | 1000 | 0 | 61.983 | 40.99 | 41.987 | 43.432 | 29.984 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.099 | 1000 | 0 | 62.031 | 40.99 | 41.953 | 42.378 | 30.402 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.132 | 16.097 | 1000 | 0 | 61.987 | 40.992 | 41.994 | 42.429 | 30.418 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.099 | 1000 | 0 | 62.003 | 40.991 | 41.987 | 42.268 | 30.5 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.085 | 1000 | 0 | 62.02 | 40.99 | 41.972 | 42.277 | 30.5 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.086 | 1000 | 0 | 62.057 | 40.986 | 41.963 | 42.243 | 30.5 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.086 | 1000 | 0 | 62.03 | 40.987 | 41.96 | 42.351 | 30.5 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.161 | 16.085 | 1000 | 0 | 61.877 | 40.986 | 41.95 | 42.216 | 31.395 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.911 | 14.646 | 1000 | 0 | 67.064 | 40.976 | 41.964 | 42.203 | 31.445 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.595 | 14.791 | 1000 | 0 | 64.123 | 40.976 | 41.962 | 42.087 | 31.445 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16517 | 0 | 3302.53 | 0.846 | 1.447 | 5.543 | 31.813 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.851 | 14.714 | 1000 | 0 | 67.334 | 40.982 | 41.982 | 42.335 | 42.84 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.183 | 12.999 | 1000 | 0 | 70.505 | 41.717 | 42.285 | 43.252 | 42.84 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.86 | 13.446 | 1000 | 0 | 72.15 | 41.81 | 42.499 | 43.742 | 42.84 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 12637 | 0 | 2526.523 | 1.098 | 1.797 | 40.921 | 42.84 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.409 | 14.687 | 1000 | 0 | 69.402 | 41.941 | 42.889 | 43.325 | 49.406 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.148 | 14.338 | 1000 | 0 | 70.683 | 41.965 | 42.98 | 43.811 | 49.406 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.725 | 14.235 | 1000 | 0 | 67.91 | 41.972 | 43.065 | 44.024 | 49.406 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.002 | 8391 | 0 | 1676.785 | 1.559 | 3.096 | 10.22 | 49.406 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.568 | 14.671 | 1000 | 0 | 64.236 | 42.871 | 43.777 | 44.223 | 64.422 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.343 | 15.423 | 1000 | 0 | 69.72 | 42.985 | 44.356 | 45.365 | 55.582 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.571 | 15.576 | 1000 | 0 | 64.221 | 42.991 | 44.168 | 45.84 | 55.582 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.017 | 2.004 | 6103 | 0 | 1216.539 | 2.184 | 4.18 | 12.912 | 57.453 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.953 | 16.08 | 1000 | 0 | 62.684 | 43.952 | 45.074 | 46.96 | 75.723 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.285 | 17.212 | 1000 | 0 | 61.405 | 45.893 | 47.297 | 49.002 | 75.723 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.5 | 17.16 | 1000 | 0 | 60.605 | 45.903 | 47.303 | 49.45 | 75.723 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.008 | 3588 | 0 | 716.912 | 4.036 | 5.64 | 16.288 | 80.832 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.399 | 17.686 | 1000 | 0 | 57.474 | 46.964 | 49.591 | 50.905 | 85.902 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.012 | 28.775 | 363 | 0 | 12.512 | 241.854 | 243.303 | 19612.621 | 86.336 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.185 | 243 | 0 | 12.512 | 241.854 | 242.902 | 12811.992 | 86.352 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.632 | 14.386 | 183 | 0 | 12.507 | 241.903 | 242.797 | 10026.832 | 86.367 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.589 | 123 | 0 | 12.514 | 241.812 | 242.63 | 5231.452 | 86.371 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.589 | 103 | 0 | 10.482 | 241.775 | 242.257 | 5136.506 | 86.379 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.794 | 63 | 0 | 12.51 | 241.842 | 242.38 | 242.564 | 86.379 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.791 | 42 | 0 | 8.34 | 241.805 | 242.146 | 242.563 | 86.441 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.017 | 122 | 0 | 24.362 | 41.969 | 42.091 | 42.99 | 86.453 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.027 | 109 | 0 | 21.757 | 46.969 | 47.966 | 48.018 | 86.461 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.025 | 2.016 | 99 | 0 | 19.701 | 50.982 | 51.947 | 51.985 | 86.473 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.073 | 55 | 0 | 10.965 | 91.963 | 92.025 | 92.459 | 86.473 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.062 | 2.084 | 36 | 0 | 7.112 | 141.95 | 141.994 | 142.635 | 86.539 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.377 | 21 | 0 | 4.166 | 241.962 | 242.302 | 242.805 | 86.539 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.095 | 1000 | 0 | 62.004 | 40.986 | 41.988 | 42.39 | 28.512 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.104 | 1000 | 0 | 62.05 | 40.982 | 41.977 | 42.172 | 28.516 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.088 | 1000 | 0 | 62.057 | 40.984 | 41.958 | 42.257 | 28.516 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.124 | 16.101 | 1000 | 0 | 62.019 | 40.985 | 41.975 | 42.234 | 28.578 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.148 | 16.088 | 1000 | 0 | 61.926 | 40.985 | 41.952 | 42.198 | 28.578 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.16 | 16.088 | 1000 | 0 | 61.88 | 40.989 | 41.981 | 42.208 | 28.578 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.085 | 1000 | 0 | 62.057 | 40.988 | 41.969 | 42.227 | 28.578 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.093 | 1000 | 0 | 62.016 | 40.989 | 41.983 | 42.581 | 29.223 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.558 | 15.108 | 1000 | 0 | 64.274 | 40.98 | 41.972 | 42.066 | 29.223 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.569 | 15.048 | 1000 | 0 | 64.228 | 40.979 | 41.976 | 42.211 | 29.23 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16459 | 0 | 3291.002 | 0.859 | 1.438 | 8.221 | 29.645 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.193 | 13.006 | 1000 | 0 | 65.818 | 40.982 | 41.984 | 42.919 | 33.379 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.152 | 13.651 | 1000 | 0 | 70.664 | 41.848 | 42.611 | 43.376 | 33.379 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.004 | 14.121 | 1000 | 0 | 71.41 | 41.819 | 42.569 | 43.889 | 33.379 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 12704 | 0 | 2539.918 | 1.082 | 1.758 | 26.085 | 33.699 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.012 | 15.014 | 1000 | 0 | 66.612 | 41.946 | 42.756 | 43.184 | 40.68 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.791 | 16.033 | 1000 | 0 | 63.329 | 41.973 | 43.001 | 44.029 | 40.68 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.547 | 15.251 | 1000 | 0 | 64.321 | 41.976 | 42.963 | 43.497 | 40.68 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.005 | 9212 | 0 | 1841.636 | 1.436 | 2.446 | 55.613 | 41.676 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.277 | 16.07 | 1000 | 0 | 65.456 | 42.05 | 43.21 | 44.115 | 44.805 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.939 | 16.131 | 1000 | 0 | 62.737 | 42.987 | 44.116 | 45.246 | 43.414 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.848 | 15.425 | 1000 | 0 | 63.098 | 42.988 | 44.147 | 46.077 | 43.414 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.003 | 5663 | 0 | 1131.154 | 2.346 | 4.485 | 14.315 | 44.594 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.75 | 16.648 | 1000 | 0 | 63.493 | 43.977 | 45.425 | 47.926 | 51.898 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.8 | 16.791 | 1000 | 0 | 59.525 | 45.846 | 47.095 | 49.557 | 51.898 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.145 | 16.497 | 1000 | 0 | 61.937 | 45.91 | 47.443 | 49.262 | 51.898 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3624 | 0 | 723.775 | 4.093 | 5.237 | 10.164 | 57.91 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.718 | 17.488 | 1000 | 0 | 56.438 | 47.006 | 49.805 | 58.359 | 65.078 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.005 | 28.776 | 363 | 0 | 12.515 | 241.836 | 242.881 | 19609.769 | 62.527 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.426 | 19.184 | 243 | 0 | 12.509 | 241.845 | 243.231 | 12813.337 | 62.555 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.629 | 14.394 | 183 | 0 | 12.51 | 241.852 | 242.719 | 10031.891 | 62.563 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.595 | 123 | 0 | 12.511 | 241.784 | 242.526 | 5229.783 | 62.57 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.59 | 103 | 0 | 10.475 | 241.823 | 242.71 | 5132.601 | 62.578 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.794 | 63 | 0 | 12.51 | 241.771 | 242.467 | 243.558 | 62.582 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.796 | 42 | 0 | 8.338 | 241.866 | 242.2 | 242.241 | 62.582 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.014 | 2.018 | 122 | 0 | 24.332 | 41.96 | 42.946 | 42.971 | 62.586 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.029 | 109 | 0 | 21.766 | 46.953 | 47.93 | 47.974 | 62.602 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.015 | 2.038 | 98 | 0 | 19.542 | 51.871 | 52.059 | 52.635 | 62.602 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.019 | 2.074 | 55 | 0 | 10.959 | 91.955 | 92.049 | 92.142 | 62.609 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.069 | 2.088 | 36 | 0 | 7.102 | 141.957 | 142.008 | 142.024 | 62.617 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.379 | 21 | 0 | 4.167 | 241.958 | 242.169 | 242.754 | 62.617 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.1 | 1000 | 0 | 62.05 | 40.984 | 41.943 | 42.277 | 28.238 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.088 | 1000 | 0 | 62.038 | 40.988 | 41.973 | 42.26 | 28.238 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.086 | 1000 | 0 | 62.091 | 40.983 | 41.969 | 42.207 | 28.438 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.084 | 1000 | 0 | 62.062 | 40.982 | 41.964 | 42.192 | 28.473 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.126 | 16.087 | 1000 | 0 | 62.012 | 40.987 | 41.982 | 42.237 | 28.492 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.158 | 16.094 | 1000 | 0 | 61.888 | 40.987 | 41.954 | 42.314 | 28.492 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.086 | 1000 | 0 | 62.058 | 40.986 | 41.941 | 42.19 | 28.508 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.097 | 1000 | 0 | 62.003 | 40.988 | 41.974 | 42.293 | 29.086 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.564 | 15.221 | 1000 | 0 | 64.251 | 40.978 | 41.977 | 42.118 | 29.16 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.523 | 14.494 | 1000 | 0 | 64.419 | 40.98 | 41.974 | 42.061 | 29.16 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 15945 | 0 | 3188.05 | 0.885 | 1.513 | 6.283 | 29.508 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.761 | 14.939 | 1000 | 0 | 67.745 | 40.983 | 41.988 | 42.985 | 33.25 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.815 | 14.152 | 1000 | 0 | 67.501 | 41.898 | 42.575 | 43.115 | 33.25 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.295 | 14.676 | 1000 | 0 | 69.955 | 41.869 | 42.35 | 43.033 | 33.25 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.012 | 11389 | 0 | 2277.107 | 1.162 | 2.076 | 35.614 | 33.582 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.895 | 14.687 | 1000 | 0 | 67.135 | 41.958 | 42.91 | 43.302 | 38.305 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.581 | 14.857 | 1000 | 0 | 64.179 | 41.981 | 42.996 | 44.149 | 38.305 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.844 | 15.197 | 1000 | 0 | 63.115 | 41.977 | 42.982 | 43.891 | 38.305 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9094 | 0 | 1817.803 | 1.482 | 2.442 | 13.98 | 38.434 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.699 | 16.288 | 1000 | 0 | 63.697 | 42.026 | 43.217 | 44.048 | 44.277 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.606 | 16.094 | 1000 | 0 | 64.076 | 43.004 | 44.424 | 46.747 | 44.277 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.602 | 15.793 | 1000 | 0 | 64.093 | 42.993 | 44.322 | 46.06 | 44.277 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5919 | 0 | 1182.89 | 2.239 | 4.1 | 14.62 | 46.691 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.192 | 16.578 | 1000 | 0 | 61.758 | 43.977 | 45.368 | 53.373 | 50.777 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.32 | 16.449 | 1000 | 0 | 61.273 | 45.926 | 47.105 | 48.822 | 50.777 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.295 | 16.887 | 1000 | 0 | 61.37 | 45.926 | 47.099 | 49.51 | 50.777 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.006 | 3573 | 0 | 713.799 | 4.113 | 5.635 | 10.306 | 56.789 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 17.5 | 17.695 | 1000 | 0 | 57.144 | 46.974 | 49.107 | 56.888 | 64.02 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.009 | 28.794 | 363 | 0 | 12.513 | 241.853 | 243.236 | 19609.189 | 63.098 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.429 | 19.182 | 243 | 0 | 12.507 | 241.904 | 243.311 | 12812.545 | 63.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.391 | 183 | 0 | 12.512 | 241.855 | 242.639 | 10023.897 | 63.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.589 | 123 | 0 | 12.511 | 241.841 | 242.674 | 5231.477 | 63.129 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.588 | 103 | 0 | 10.478 | 241.886 | 242.259 | 5137.167 | 63.137 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.794 | 63 | 0 | 12.512 | 241.8 | 242.51 | 242.79 | 63.148 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.797 | 42 | 0 | 8.338 | 241.903 | 242.138 | 242.249 | 63.148 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.017 | 122 | 0 | 24.37 | 41.968 | 42.073 | 42.957 | 63.164 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.027 | 110 | 0 | 21.795 | 46.967 | 47.075 | 47.887 | 63.168 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 2.017 | 99 | 0 | 19.674 | 50.98 | 51.96 | 52.048 | 63.18 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.018 | 2.074 | 55 | 0 | 10.96 | 91.963 | 92.639 | 92.914 | 63.188 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.059 | 2.087 | 36 | 0 | 7.116 | 141.931 | 142.015 | 142.214 | 63.199 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 2.376 | 21 | 0 | 4.172 | 241.879 | 242.049 | 242.176 | 63.199 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.001 | 22214 | 0 | 4439.685 | 1.075 | 1.514 | 1.811 | 65.41 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21703 | 0 | 4339.81 | 1.102 | 1.545 | 1.853 | 65.762 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22162 | 0 | 4431.42 | 1.075 | 1.546 | 1.834 | 65.949 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21855 | 0 | 4370.201 | 1.09 | 1.593 | 1.915 | 66.188 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21814 | 0 | 4361.919 | 1.092 | 1.575 | 1.87 | 67.797 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18717 | 0 | 3742.806 | 1.283 | 1.811 | 2.149 | 68.121 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21720 | 0 | 4343.073 | 1.094 | 1.603 | 1.986 | 68.68 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21483 | 0 | 4295.789 | 1.107 | 1.615 | 2.003 | 69.438 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17444 | 0 | 3487.979 | 1.386 | 1.844 | 2.242 | 77.625 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8517 | 0 | 1702.729 | 2.888 | 3.561 | 4.0 | 73.434 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17212 | 0 | 3441.702 | 1.397 | 1.875 | 2.324 | 77.668 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.034 | 2.03 | 16482 | 0 | 3274.165 | 0.918 | 1.589 | 40.92 | 70.332 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11761 | 0 | 2351.397 | 1.852 | 3.425 | 5.807 | 109.543 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 4512 | 0 | 901.232 | 5.547 | 6.529 | 7.076 | 79.512 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12095 | 0 | 2418.365 | 1.799 | 3.48 | 5.347 | 70.371 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.002 | 11636 | 0 | 2325.195 | 1.868 | 3.622 | 5.817 | 70.434 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.006 | 8154 | 0 | 1630.09 | 2.614 | 5.449 | 14.359 | 119.719 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 2513 | 0 | 501.805 | 9.99 | 11.547 | 12.309 | 81.742 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.004 | 8520 | 0 | 1700.612 | 2.444 | 5.232 | 13.963 | 76.301 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.002 | 8325 | 0 | 1663.362 | 2.513 | 5.235 | 13.658 | 76.305 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5322 | 0 | 1063.723 | 4.231 | 7.417 | 17.791 | 134.441 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.653 | 1325 | 0 | 264.192 | 18.85 | 21.738 | 22.824 | 83.332 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.003 | 5483 | 0 | 1094.206 | 4.101 | 6.611 | 17.881 | 81.977 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5596 | 0 | 1118.198 | 3.912 | 6.848 | 17.63 | 81.977 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3299 | 0 | 658.836 | 7.227 | 12.936 | 15.362 | 126.867 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.128 | 6.76 | 1000 | 0 | 140.284 | 35.418 | 40.4 | 42.321 | 85.977 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3483 | 0 | 695.83 | 7.074 | 8.198 | 8.789 | 82.223 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 3475 | 0 | 694.091 | 6.97 | 8.601 | 10.055 | 82.223 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.958 | 50.971 | 360 | 0 | 7.065 | 2559.09 | 2593.226 | 2605.133 | 101.0 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.976 | 33.962 | 240 | 0 | 7.064 | 1707.591 | 1732.113 | 1744.692 | 101.16 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.474 | 25.479 | 180 | 0 | 7.066 | 1274.352 | 1300.35 | 1311.235 | 101.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.988 | 16.981 | 120 | 0 | 7.064 | 847.962 | 879.355 | 885.307 | 101.23 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.186 | 14.209 | 100 | 0 | 7.049 | 669.884 | 859.973 | 862.124 | 101.609 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.496 | 8.488 | 60 | 0 | 7.062 | 425.245 | 438.781 | 443.419 | 101.609 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.658 | 5.663 | 40 | 0 | 7.07 | 282.795 | 289.196 | 296.591 | 101.613 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3942 | 0 | 788.275 | 1.241 | 1.358 | 1.558 | 101.613 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 949 | 0 | 189.781 | 5.233 | 5.36 | 5.543 | 101.613 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.001 | 481 | 0 | 96.119 | 10.357 | 10.485 | 10.591 | 101.613 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.026 | 99 | 0 | 19.76 | 50.546 | 50.687 | 50.837 | 101.613 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.033 | 2.013 | 50 | 0 | 9.935 | 100.603 | 100.649 | 100.818 | 101.613 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.007 | 25 | 0 | 4.982 | 200.63 | 200.795 | 200.812 | 101.613 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22127 | 0 | 4424.76 | 1.08 | 1.506 | 1.805 | 65.398 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21199 | 0 | 4239.165 | 1.115 | 1.607 | 2.105 | 70.043 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21837 | 0 | 4366.743 | 1.087 | 1.559 | 1.875 | 70.18 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21784 | 0 | 4355.988 | 1.091 | 1.572 | 1.926 | 70.434 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21635 | 0 | 4326.219 | 1.092 | 1.577 | 1.966 | 72.613 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18683 | 0 | 3735.997 | 1.285 | 1.797 | 2.201 | 72.922 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21742 | 0 | 4347.609 | 1.091 | 1.579 | 1.899 | 72.969 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21384 | 0 | 4275.99 | 1.107 | 1.641 | 2.045 | 73.855 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17326 | 0 | 3464.603 | 1.387 | 1.887 | 2.21 | 92.699 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8337 | 0 | 1666.52 | 2.936 | 3.707 | 4.244 | 83.07 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17154 | 0 | 3430.027 | 1.404 | 1.835 | 2.319 | 91.766 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.039 | 2.02 | 15709 | 0 | 3117.222 | 0.788 | 1.549 | 41.078 | 74.348 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12821 | 0 | 2563.484 | 1.767 | 2.881 | 3.789 | 112.172 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4486 | 0 | 896.065 | 5.559 | 6.552 | 7.104 | 87.844 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12363 | 0 | 2471.908 | 1.778 | 3.199 | 5.103 | 78.723 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 12150 | 0 | 2429.4 | 1.842 | 2.948 | 4.52 | 78.535 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8595 | 0 | 1718.29 | 2.52 | 4.481 | 14.901 | 124.637 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.025 | 2463 | 0 | 491.738 | 10.206 | 11.686 | 12.576 | 91.039 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8708 | 0 | 1741.04 | 2.481 | 4.506 | 15.271 | 83.777 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8749 | 0 | 1749.063 | 2.509 | 4.091 | 15.056 | 83.898 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5431 | 0 | 1085.419 | 4.218 | 5.934 | 18.119 | 135.379 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.852 | 1336 | 0 | 266.363 | 18.786 | 21.541 | 22.369 | 90.941 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5613 | 0 | 1121.895 | 3.98 | 6.497 | 18.109 | 83.531 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5584 | 0 | 1115.926 | 4.007 | 6.174 | 18.034 | 83.531 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.008 | 3232 | 0 | 645.579 | 7.343 | 13.232 | 16.235 | 139.379 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.263 | 7.008 | 1000 | 0 | 137.689 | 36.286 | 40.981 | 42.713 | 95.793 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3366 | 0 | 672.14 | 7.316 | 8.598 | 9.285 | 85.277 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3434 | 0 | 685.977 | 7.167 | 8.491 | 9.229 | 85.285 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.904 | 50.986 | 360 | 0 | 7.072 | 2566.757 | 2616.747 | 2630.66 | 101.645 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.953 | 33.967 | 240 | 0 | 7.068 | 1730.119 | 1755.651 | 1770.713 | 104.594 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.456 | 25.489 | 180 | 0 | 7.071 | 1293.489 | 1314.522 | 1323.41 | 104.977 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.962 | 16.982 | 120 | 0 | 7.075 | 858.144 | 880.975 | 888.718 | 105.043 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.145 | 14.21 | 100 | 0 | 7.07 | 742.58 | 831.73 | 834.883 | 105.113 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.487 | 8.493 | 60 | 0 | 7.07 | 424.01 | 443.191 | 445.074 | 105.113 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.66 | 5.655 | 40 | 0 | 7.067 | 281.665 | 295.313 | 295.551 | 105.113 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3929 | 0 | 785.604 | 1.246 | 1.357 | 1.605 | 123.996 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.001 | 954 | 0 | 190.613 | 5.21 | 5.358 | 5.668 | 124.625 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.008 | 487 | 0 | 97.248 | 10.253 | 10.34 | 10.514 | 127.953 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.049 | 2.02 | 100 | 0 | 19.806 | 50.431 | 50.499 | 51.229 | 127.953 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.03 | 2.013 | 50 | 0 | 9.94 | 100.552 | 100.612 | 100.672 | 127.953 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.576 | 200.621 | 200.637 | 127.953 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22379 | 0 | 4475.063 | 1.069 | 1.489 | 1.777 | 65.398 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21883 | 0 | 4375.709 | 1.095 | 1.521 | 1.847 | 65.453 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21837 | 0 | 4366.634 | 1.088 | 1.568 | 1.882 | 65.363 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21647 | 0 | 4328.375 | 1.097 | 1.605 | 1.991 | 65.219 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21219 | 0 | 4243.125 | 1.112 | 1.64 | 2.009 | 67.203 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18423 | 0 | 3683.967 | 1.296 | 1.858 | 2.234 | 66.734 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21076 | 0 | 4214.066 | 1.113 | 1.693 | 2.086 | 69.074 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21166 | 0 | 4232.186 | 1.122 | 1.653 | 2.054 | 69.941 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17146 | 0 | 3428.372 | 1.405 | 1.89 | 2.266 | 79.766 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8241 | 0 | 1647.434 | 2.969 | 3.729 | 4.199 | 71.402 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17036 | 0 | 3406.462 | 1.417 | 1.878 | 2.191 | 77.633 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.032 | 2.03 | 16075 | 0 | 3194.774 | 0.853 | 1.611 | 41.088 | 68.574 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 11550 | 0 | 2309.222 | 1.883 | 3.43 | 6.275 | 103.953 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4368 | 0 | 872.88 | 5.693 | 6.755 | 7.474 | 78.391 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 11459 | 0 | 2290.661 | 1.854 | 3.568 | 7.041 | 74.613 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11667 | 0 | 2332.502 | 1.873 | 3.293 | 5.478 | 74.488 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8332 | 0 | 1665.634 | 2.571 | 4.943 | 17.072 | 130.418 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.027 | 2440 | 0 | 487.298 | 10.265 | 11.915 | 12.696 | 81.906 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8595 | 0 | 1718.194 | 2.497 | 4.618 | 17.286 | 76.703 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.002 | 7886 | 0 | 1574.157 | 2.658 | 5.606 | 18.034 | 76.707 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 4956 | 0 | 990.419 | 4.441 | 7.84 | 21.753 | 137.383 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.819 | 1299 | 0 | 258.948 | 19.316 | 22.099 | 23.345 | 82.797 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.006 | 5216 | 0 | 1042.466 | 4.209 | 7.412 | 21.629 | 84.363 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 5107 | 0 | 1020.178 | 4.316 | 7.281 | 21.679 | 84.242 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.011 | 2.005 | 2925 | 0 | 583.691 | 8.27 | 13.449 | 15.787 | 124.789 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.534 | 7.329 | 1000 | 0 | 132.728 | 37.872 | 42.238 | 44.238 | 86.441 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3120 | 0 | 623.174 | 7.891 | 9.301 | 10.113 | 89.246 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.006 | 3301 | 0 | 659.017 | 7.43 | 8.908 | 9.651 | 89.313 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.918 | 50.934 | 360 | 0 | 7.07 | 2545.32 | 2568.218 | 2582.902 | 111.746 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.941 | 33.923 | 240 | 0 | 7.071 | 1696.574 | 1717.719 | 1720.26 | 112.258 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.457 | 25.437 | 180 | 0 | 7.071 | 1272.717 | 1284.346 | 1285.552 | 112.262 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.978 | 16.964 | 120 | 0 | 7.068 | 848.713 | 860.431 | 861.345 | 112.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.15 | 14.133 | 100 | 0 | 7.067 | 809.513 | 851.306 | 853.011 | 112.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.487 | 8.485 | 60 | 0 | 7.07 | 424.21 | 432.411 | 434.64 | 112.582 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.659 | 5.653 | 40 | 0 | 7.068 | 282.884 | 284.585 | 285.136 | 112.582 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3957 | 0 | 791.235 | 1.237 | 1.344 | 1.618 | 114.586 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.004 | 955 | 0 | 190.912 | 5.211 | 5.285 | 5.466 | 114.645 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.007 | 485 | 0 | 96.967 | 10.264 | 10.411 | 10.736 | 114.645 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.025 | 99 | 0 | 19.775 | 50.486 | 50.805 | 50.981 | 114.648 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.032 | 2.016 | 50 | 0 | 9.937 | 100.575 | 100.676 | 100.721 | 114.648 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.018 | 2.007 | 25 | 0 | 4.983 | 200.586 | 200.936 | 201.476 | 114.648 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.118 | 1000 | 0 | 62.058 | 40.986 | 41.966 | 42.158 | 29.582 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.087 | 1000 | 0 | 62.069 | 40.984 | 41.964 | 42.073 | 29.871 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.081 | 1000 | 0 | 62.056 | 40.984 | 41.954 | 42.253 | 29.965 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.086 | 1000 | 0 | 62.089 | 40.985 | 41.974 | 42.097 | 30.125 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.089 | 1000 | 0 | 62.034 | 40.993 | 41.976 | 42.462 | 30.176 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.083 | 1000 | 0 | 62.016 | 40.991 | 41.992 | 42.376 | 30.176 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.081 | 1000 | 0 | 62.06 | 40.986 | 41.978 | 42.201 | 30.188 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.083 | 1000 | 0 | 62.004 | 40.99 | 41.992 | 42.268 | 30.531 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.038 | 15.377 | 1000 | 0 | 66.497 | 40.981 | 41.976 | 42.147 | 30.609 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.996 | 15.575 | 1000 | 0 | 66.686 | 40.979 | 41.975 | 42.4 | 30.633 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16683 | 0 | 3335.766 | 0.852 | 1.396 | 5.746 | 31.113 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.652 | 15.783 | 1000 | 0 | 63.892 | 40.983 | 41.976 | 42.119 | 35.035 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.865 | 13.84 | 1000 | 0 | 72.122 | 41.069 | 42.186 | 43.241 | 35.035 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.147 | 14.018 | 1000 | 0 | 70.686 | 41.023 | 42.231 | 43.268 | 35.035 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11646 | 0 | 2328.388 | 1.111 | 2.081 | 41.391 | 35.316 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.769 | 13.769 | 1000 | 0 | 72.628 | 41.927 | 42.93 | 43.702 | 39.59 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.993 | 14.632 | 1000 | 0 | 66.7 | 41.968 | 42.959 | 43.963 | 39.59 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.743 | 14.649 | 1000 | 0 | 67.829 | 41.963 | 42.955 | 44.447 | 39.59 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 8540 | 0 | 1707.265 | 1.504 | 2.714 | 18.082 | 39.758 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.9 | 14.355 | 1000 | 0 | 67.116 | 42.002 | 43.192 | 48.748 | 46.621 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.695 | 15.269 | 1000 | 0 | 68.049 | 42.964 | 44.017 | 45.406 | 46.621 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.747 | 15.748 | 1000 | 0 | 67.809 | 42.982 | 44.147 | 46.639 | 44.539 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.004 | 5416 | 0 | 1082.486 | 2.344 | 4.765 | 20.319 | 46.895 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.309 | 16.528 | 1000 | 0 | 65.321 | 43.963 | 45.625 | 48.437 | 52.285 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.659 | 16.125 | 1000 | 0 | 68.219 | 44.976 | 46.955 | 48.206 | 52.285 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.208 | 16.413 | 1000 | 0 | 65.757 | 45.081 | 47.034 | 50.636 | 52.285 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.005 | 3362 | 0 | 671.454 | 4.344 | 6.178 | 11.951 | 58.297 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.823 | 17.631 | 1000 | 0 | 59.441 | 46.889 | 49.202 | 56.896 | 64.41 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.007 | 28.769 | 363 | 0 | 12.514 | 241.827 | 242.985 | 19615.726 | 64.844 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.421 | 19.172 | 243 | 0 | 12.512 | 241.888 | 242.812 | 12809.642 | 64.859 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.625 | 14.388 | 183 | 0 | 12.513 | 241.854 | 242.544 | 10026.586 | 64.859 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.59 | 123 | 0 | 12.517 | 241.638 | 242.424 | 5233.013 | 64.867 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.824 | 9.589 | 103 | 0 | 10.485 | 241.625 | 242.234 | 5128.799 | 64.867 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.795 | 63 | 0 | 12.507 | 241.849 | 242.622 | 242.682 | 64.867 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.8 | 42 | 0 | 8.337 | 241.803 | 242.222 | 242.284 | 64.867 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.02 | 122 | 0 | 24.351 | 41.952 | 42.574 | 43.003 | 64.906 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.017 | 2.029 | 112 | 0 | 22.324 | 45.942 | 46.036 | 46.317 | 64.914 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.023 | 2.008 | 99 | 0 | 19.71 | 50.957 | 51.986 | 52.046 | 64.953 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.064 | 2.057 | 56 | 0 | 11.058 | 90.972 | 91.926 | 91.971 | 64.957 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.071 | 2.081 | 36 | 0 | 7.099 | 141.958 | 141.996 | 142.08 | 64.957 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.378 | 21 | 0 | 4.17 | 241.885 | 242.915 | 242.959 | 64.957 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.129 | 16.131 | 1000 | 0 | 62.0 | 40.987 | 41.984 | 42.272 | 29.723 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.095 | 1000 | 0 | 62.061 | 40.983 | 41.951 | 42.101 | 29.875 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.091 | 1000 | 0 | 62.007 | 40.985 | 41.985 | 42.274 | 29.957 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.122 | 16.088 | 1000 | 0 | 62.026 | 40.988 | 41.952 | 42.239 | 30.258 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.092 | 1000 | 0 | 62.049 | 40.985 | 41.977 | 42.269 | 30.301 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.171 | 16.086 | 1000 | 0 | 61.84 | 40.987 | 41.979 | 42.401 | 30.301 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.084 | 1000 | 0 | 62.007 | 40.984 | 41.98 | 42.306 | 30.309 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.128 | 16.094 | 1000 | 0 | 62.005 | 40.984 | 41.983 | 42.484 | 30.664 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.25 | 15.108 | 1000 | 0 | 65.573 | 40.973 | 41.975 | 42.795 | 30.805 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.688 | 15.521 | 1000 | 0 | 68.081 | 40.97 | 41.97 | 42.103 | 30.867 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 16030 | 0 | 3205.083 | 0.874 | 1.495 | 8.587 | 31.324 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.992 | 14.598 | 1000 | 0 | 66.701 | 40.978 | 41.99 | 42.947 | 35.484 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.778 | 12.52 | 1000 | 0 | 78.259 | 41.268 | 42.65 | 43.882 | 35.484 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.094 | 13.097 | 1000 | 0 | 76.369 | 41.834 | 42.871 | 43.977 | 35.484 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11710 | 0 | 2341.162 | 1.087 | 2.03 | 40.808 | 36.035 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.513 | 14.157 | 1000 | 0 | 74.0 | 41.909 | 42.875 | 44.507 | 40.285 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.425 | 15.208 | 1000 | 0 | 64.828 | 41.969 | 42.97 | 43.558 | 40.027 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.215 | 15.734 | 1000 | 0 | 65.725 | 41.956 | 42.953 | 43.233 | 40.027 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.186 | 8532 | 0 | 1705.63 | 1.503 | 2.598 | 48.412 | 41.043 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.545 | 14.796 | 1000 | 0 | 68.753 | 42.02 | 43.791 | 44.918 | 45.211 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.553 | 15.781 | 1000 | 0 | 64.297 | 42.968 | 44.031 | 45.759 | 44.078 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.108 | 15.584 | 1000 | 0 | 66.189 | 42.981 | 44.07 | 50.005 | 44.078 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5909 | 0 | 1180.913 | 2.202 | 3.791 | 22.551 | 47.68 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.594 | 15.767 | 1000 | 0 | 64.127 | 43.939 | 45.322 | 48.713 | 54.266 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.927 | 16.331 | 1000 | 0 | 62.785 | 44.979 | 46.698 | 47.833 | 54.168 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.282 | 16.782 | 1000 | 0 | 61.417 | 45.011 | 46.882 | 48.493 | 54.168 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.006 | 3617 | 0 | 722.42 | 4.038 | 5.383 | 16.265 | 60.18 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.892 | 17.541 | 1000 | 0 | 59.201 | 46.933 | 49.084 | 51.366 | 66.188 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.013 | 28.79 | 363 | 0 | 12.512 | 241.879 | 242.888 | 19612.326 | 66.594 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.422 | 19.179 | 243 | 0 | 12.512 | 241.858 | 242.94 | 12812.314 | 66.605 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.388 | 183 | 0 | 12.512 | 241.792 | 242.431 | 10030.168 | 66.609 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.835 | 9.591 | 123 | 0 | 12.507 | 241.846 | 242.663 | 5235.89 | 66.613 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.594 | 103 | 0 | 10.476 | 241.853 | 242.425 | 5133.779 | 66.621 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.794 | 63 | 0 | 12.515 | 241.684 | 242.344 | 242.415 | 66.621 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.8 | 42 | 0 | 8.338 | 241.922 | 242.218 | 242.229 | 66.641 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.006 | 2.021 | 122 | 0 | 24.371 | 41.958 | 42.078 | 42.914 | 66.684 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.029 | 112 | 0 | 22.33 | 45.928 | 46.196 | 46.952 | 66.691 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.024 | 2.003 | 99 | 0 | 19.706 | 50.972 | 51.962 | 51.982 | 66.738 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.074 | 2.069 | 56 | 0 | 11.037 | 91.007 | 92.003 | 92.558 | 66.742 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.089 | 36 | 0 | 7.098 | 141.963 | 142.024 | 142.107 | 66.742 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.033 | 2.375 | 21 | 0 | 4.172 | 241.871 | 242.282 | 242.832 | 66.742 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.114 | 16.118 | 1000 | 0 | 62.056 | 40.984 | 41.984 | 42.279 | 31.41 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.095 | 1000 | 0 | 62.065 | 40.986 | 41.968 | 42.211 | 31.762 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.086 | 1000 | 0 | 62.076 | 40.985 | 41.923 | 42.273 | 31.797 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.085 | 1000 | 0 | 62.033 | 40.986 | 41.983 | 42.234 | 32.039 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.161 | 16.088 | 1000 | 0 | 61.879 | 40.99 | 41.988 | 42.42 | 32.074 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.081 | 1000 | 0 | 62.075 | 40.986 | 41.982 | 42.215 | 32.184 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.081 | 1000 | 0 | 62.075 | 40.984 | 41.956 | 42.376 | 32.203 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.126 | 1000 | 0 | 62.038 | 40.987 | 41.966 | 42.279 | 32.719 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.924 | 15.302 | 1000 | 0 | 67.005 | 40.976 | 41.977 | 42.148 | 32.777 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.285 | 14.423 | 1000 | 0 | 65.422 | 40.975 | 41.977 | 42.721 | 32.813 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 16179 | 0 | 3234.938 | 0.871 | 1.485 | 4.803 | 33.27 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.89 | 14.532 | 1000 | 0 | 67.159 | 40.98 | 41.98 | 42.532 | 40.082 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.892 | 13.661 | 1000 | 0 | 71.986 | 41.111 | 42.238 | 43.011 | 40.082 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.631 | 13.759 | 1000 | 0 | 73.364 | 41.145 | 42.264 | 43.312 | 40.082 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 11555 | 0 | 2310.112 | 1.099 | 2.064 | 41.162 | 40.129 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.862 | 13.844 | 1000 | 0 | 72.142 | 41.9 | 42.893 | 43.964 | 50.766 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.364 | 15.103 | 1000 | 0 | 69.62 | 41.97 | 42.958 | 43.235 | 50.766 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.059 | 14.141 | 1000 | 0 | 71.128 | 41.957 | 42.994 | 47.073 | 50.766 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.014 | 7790 | 0 | 1557.033 | 1.611 | 2.98 | 30.719 | 50.766 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.651 | 14.591 | 1000 | 0 | 68.256 | 42.233 | 43.931 | 45.231 | 56.145 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.287 | 14.418 | 1000 | 0 | 65.417 | 42.976 | 44.433 | 54.161 | 53.563 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.299 | 15.06 | 1000 | 0 | 65.363 | 42.98 | 44.077 | 46.435 | 53.563 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5622 | 0 | 1123.54 | 2.243 | 4.418 | 21.395 | 53.563 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.391 | 16.017 | 1000 | 0 | 64.974 | 43.758 | 45.046 | 48.14 | 58.867 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.598 | 16.644 | 1000 | 0 | 64.112 | 44.988 | 46.81 | 47.992 | 58.867 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.28 | 17.048 | 1000 | 0 | 61.424 | 44.989 | 46.882 | 48.036 | 58.867 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3489 | 0 | 696.941 | 4.167 | 5.884 | 11.676 | 64.879 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.971 | 17.165 | 1000 | 0 | 58.923 | 46.222 | 48.893 | 51.924 | 79.734 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.993 | 28.767 | 363 | 0 | 12.52 | 241.72 | 242.971 | 19598.243 | 80.188 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.419 | 19.175 | 243 | 0 | 12.513 | 241.853 | 242.723 | 12806.436 | 80.227 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.624 | 14.38 | 183 | 0 | 12.514 | 241.793 | 242.855 | 10026.374 | 80.242 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.594 | 123 | 0 | 12.509 | 241.818 | 242.789 | 5236.024 | 80.246 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.592 | 103 | 0 | 10.479 | 241.733 | 242.354 | 5135.229 | 80.246 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.794 | 63 | 0 | 12.515 | 241.749 | 242.269 | 242.687 | 80.246 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.796 | 42 | 0 | 8.343 | 241.771 | 242.202 | 242.605 | 80.246 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.012 | 2.022 | 122 | 0 | 24.341 | 41.968 | 42.905 | 43.103 | 80.301 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.002 | 2.032 | 112 | 0 | 22.392 | 45.912 | 46.73 | 48.229 | 80.332 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.022 | 2.001 | 99 | 0 | 19.713 | 50.977 | 51.941 | 52.023 | 80.348 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.086 | 2.069 | 56 | 0 | 11.01 | 91.787 | 92.008 | 92.06 | 80.348 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.065 | 2.089 | 36 | 0 | 7.108 | 141.947 | 142.008 | 142.015 | 80.348 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.028 | 2.371 | 21 | 0 | 4.177 | 240.976 | 241.994 | 242.001 | 80.348 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22833 | 0 | 4565.887 | 1.052 | 1.378 | 1.666 | 69.227 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22192 | 0 | 4437.654 | 1.082 | 1.422 | 1.719 | 69.508 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22730 | 0 | 4545.22 | 1.052 | 1.42 | 1.712 | 69.309 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22258 | 0 | 4450.51 | 1.075 | 1.478 | 1.913 | 69.156 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22291 | 0 | 4457.501 | 1.073 | 1.467 | 1.877 | 71.695 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19287 | 0 | 3856.676 | 1.25 | 1.639 | 1.969 | 71.008 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22504 | 0 | 4500.06 | 1.065 | 1.424 | 1.816 | 72.219 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22019 | 0 | 4402.726 | 1.087 | 1.494 | 1.886 | 72.707 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17826 | 0 | 3564.564 | 1.358 | 1.767 | 2.068 | 79.84 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8485 | 0 | 1696.409 | 2.847 | 3.583 | 4.591 | 74.086 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17624 | 0 | 3523.999 | 1.372 | 1.807 | 2.139 | 79.004 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.017 | 16970 | 0 | 3393.141 | 1.384 | 1.786 | 2.157 | 72.891 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 11594 | 0 | 2318.161 | 1.874 | 3.161 | 5.916 | 107.551 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4432 | 0 | 885.693 | 5.6 | 6.596 | 7.151 | 85.848 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11858 | 0 | 2370.765 | 1.8 | 3.35 | 5.808 | 79.18 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 11565 | 0 | 2312.156 | 1.853 | 3.287 | 5.809 | 78.617 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 8137 | 0 | 1626.436 | 2.582 | 4.71 | 21.661 | 116.586 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.083 | 2504 | 0 | 499.949 | 9.977 | 11.525 | 12.871 | 99.07 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8550 | 0 | 1709.373 | 2.443 | 4.472 | 21.313 | 104.258 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8037 | 0 | 1606.53 | 2.583 | 4.628 | 22.411 | 104.355 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4944 | 0 | 988.125 | 4.455 | 7.131 | 25.891 | 134.145 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.8 | 1332 | 0 | 265.546 | 18.645 | 21.381 | 22.718 | 88.305 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 4988 | 0 | 996.807 | 4.383 | 7.465 | 26.152 | 89.391 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5082 | 0 | 1015.704 | 4.23 | 7.096 | 26.153 | 89.391 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 2990 | 0 | 597.115 | 8.228 | 9.849 | 10.543 | 105.527 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.323 | 7.071 | 1000 | 0 | 136.547 | 35.989 | 41.595 | 44.703 | 94.242 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3195 | 0 | 638.14 | 7.695 | 9.141 | 10.152 | 91.68 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3214 | 0 | 641.988 | 7.712 | 9.013 | 9.628 | 91.68 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.128 | 51.115 | 360 | 0 | 7.041 | 2554.981 | 2576.017 | 2583.257 | 111.844 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.074 | 34.07 | 240 | 0 | 7.043 | 1702.062 | 1721.232 | 1727.863 | 117.902 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.554 | 25.541 | 180 | 0 | 7.044 | 1276.814 | 1292.972 | 1297.753 | 118.84 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.035 | 17.034 | 120 | 0 | 7.044 | 851.921 | 865.254 | 871.883 | 120.09 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.23 | 14.206 | 100 | 0 | 7.028 | 833.201 | 853.732 | 858.734 | 120.215 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.522 | 8.518 | 60 | 0 | 7.041 | 425.729 | 433.203 | 437.712 | 120.238 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.681 | 5.677 | 40 | 0 | 7.041 | 283.824 | 287.622 | 289.12 | 120.242 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.003 | 1395 | 0 | 278.953 | 3.605 | 3.728 | 4.028 | 126.133 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.008 | 415 | 0 | 82.931 | 12.097 | 12.31 | 12.558 | 127.566 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.0 | 322 | 0 | 64.341 | 15.506 | 15.741 | 15.952 | 127.629 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.02 | 2.005 | 98 | 0 | 19.522 | 51.15 | 51.543 | 52.163 | 127.629 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.029 | 2.014 | 50 | 0 | 9.943 | 100.521 | 100.562 | 100.606 | 127.629 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.006 | 25 | 0 | 4.985 | 200.537 | 200.666 | 200.737 | 127.633 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22470 | 0 | 4493.195 | 1.066 | 1.437 | 1.743 | 69.223 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21847 | 0 | 4368.663 | 1.099 | 1.476 | 1.807 | 69.43 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22381 | 0 | 4475.409 | 1.067 | 1.494 | 1.825 | 69.547 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21850 | 0 | 4369.164 | 1.091 | 1.525 | 1.902 | 69.813 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21913 | 0 | 4381.994 | 1.087 | 1.514 | 1.886 | 71.27 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18771 | 0 | 3753.356 | 1.271 | 1.75 | 2.252 | 71.652 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21915 | 0 | 4382.161 | 1.082 | 1.528 | 1.942 | 72.875 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21737 | 0 | 4346.589 | 1.101 | 1.503 | 1.922 | 73.84 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17626 | 0 | 3524.461 | 1.373 | 1.801 | 2.09 | 83.227 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8424 | 0 | 1684.023 | 2.918 | 3.555 | 3.996 | 77.125 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17765 | 0 | 3552.158 | 1.361 | 1.783 | 2.086 | 82.918 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.026 | 2.017 | 16794 | 0 | 3341.737 | 0.97 | 1.574 | 40.844 | 73.457 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.001 | 12450 | 0 | 2479.81 | 1.785 | 2.771 | 3.897 | 109.559 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4549 | 0 | 909.12 | 5.465 | 6.432 | 6.949 | 84.836 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 12600 | 0 | 2519.393 | 1.751 | 2.761 | 3.827 | 81.879 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 12107 | 0 | 2420.368 | 1.841 | 2.783 | 4.447 | 80.469 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8704 | 0 | 1740.234 | 2.45 | 3.838 | 21.931 | 127.438 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.008 | 2494 | 0 | 497.972 | 10.037 | 11.467 | 12.302 | 86.941 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 8727 | 0 | 1744.833 | 2.453 | 3.775 | 22.725 | 86.09 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8597 | 0 | 1718.652 | 2.437 | 3.682 | 22.978 | 86.184 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5140 | 0 | 1027.217 | 4.268 | 6.072 | 26.168 | 124.711 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.731 | 1337 | 0 | 266.591 | 18.612 | 21.155 | 22.128 | 89.574 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5237 | 0 | 1046.437 | 4.131 | 6.055 | 26.356 | 92.867 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5426 | 0 | 1084.501 | 3.978 | 5.909 | 25.94 | 92.867 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3123 | 0 | 623.636 | 7.914 | 9.188 | 9.982 | 113.77 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.228 | 6.604 | 1000 | 0 | 138.352 | 35.826 | 40.419 | 41.889 | 92.469 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3036 | 0 | 606.266 | 8.157 | 9.526 | 10.433 | 94.453 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3145 | 0 | 628.004 | 7.903 | 9.107 | 9.591 | 94.453 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.108 | 51.133 | 360 | 0 | 7.044 | 2555.273 | 2574.375 | 2578.665 | 117.102 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.077 | 34.062 | 240 | 0 | 7.043 | 1702.574 | 1719.35 | 1723.334 | 119.387 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.562 | 25.545 | 180 | 0 | 7.042 | 1278.065 | 1290.699 | 1296.054 | 119.387 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.034 | 17.03 | 120 | 0 | 7.045 | 851.008 | 864.567 | 865.728 | 120.402 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.228 | 14.247 | 100 | 0 | 7.028 | 832.551 | 853.73 | 860.228 | 120.469 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.518 | 8.515 | 60 | 0 | 7.044 | 425.674 | 431.546 | 433.332 | 120.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.683 | 5.679 | 40 | 0 | 7.039 | 284.06 | 288.498 | 289.557 | 120.531 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 1384 | 0 | 276.773 | 3.615 | 3.741 | 3.972 | 127.141 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.01 | 2.006 | 416 | 0 | 83.038 | 12.11 | 12.399 | 12.65 | 127.141 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.01 | 323 | 0 | 64.572 | 15.485 | 15.701 | 15.789 | 127.141 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.005 | 2.047 | 98 | 0 | 19.579 | 51.014 | 51.244 | 51.328 | 127.262 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.012 | 50 | 0 | 9.944 | 100.504 | 100.607 | 100.665 | 127.262 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.006 | 25 | 0 | 4.984 | 200.514 | 200.753 | 201.139 | 127.262 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22548 | 0 | 4508.835 | 1.061 | 1.422 | 1.756 | 69.648 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21819 | 0 | 4363.15 | 1.096 | 1.47 | 1.809 | 69.582 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22528 | 0 | 4504.878 | 1.063 | 1.448 | 1.801 | 69.824 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 21961 | 0 | 4391.186 | 1.088 | 1.499 | 1.869 | 70.191 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22242 | 0 | 4447.75 | 1.075 | 1.471 | 1.819 | 71.855 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18888 | 0 | 3776.838 | 1.268 | 1.707 | 2.097 | 71.945 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 22267 | 0 | 4452.681 | 1.073 | 1.456 | 1.856 | 72.988 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 21871 | 0 | 4373.474 | 1.094 | 1.488 | 1.89 | 74.082 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17467 | 0 | 3492.649 | 1.387 | 1.789 | 2.057 | 82.488 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8384 | 0 | 1675.978 | 2.93 | 3.595 | 4.017 | 77.938 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17591 | 0 | 3517.359 | 1.373 | 1.787 | 2.152 | 83.324 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.037 | 2.032 | 16799 | 0 | 3334.857 | 1.009 | 1.615 | 40.834 | 73.672 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 11142 | 0 | 2227.304 | 1.892 | 3.433 | 7.338 | 108.402 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4440 | 0 | 887.285 | 5.579 | 6.648 | 7.395 | 81.555 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 12108 | 0 | 2420.602 | 1.784 | 3.007 | 5.075 | 77.438 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 11660 | 0 | 2331.384 | 1.833 | 3.211 | 5.941 | 77.688 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8202 | 0 | 1639.634 | 2.527 | 4.672 | 23.501 | 119.762 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.01 | 2546 | 0 | 508.286 | 9.777 | 11.44 | 12.095 | 86.941 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8565 | 0 | 1712.216 | 2.388 | 4.454 | 23.251 | 81.367 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 7870 | 0 | 1573.29 | 2.552 | 4.96 | 24.001 | 81.453 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 2.003 | 5036 | 0 | 1004.258 | 4.333 | 6.963 | 27.586 | 123.684 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.773 | 1359 | 0 | 270.868 | 18.499 | 20.958 | 22.344 | 88.074 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5069 | 0 | 1013.108 | 4.26 | 7.058 | 28.125 | 84.758 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.004 | 5169 | 0 | 1032.984 | 4.166 | 6.636 | 28.523 | 84.758 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.007 | 2892 | 0 | 577.635 | 8.589 | 10.025 | 10.803 | 96.184 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.157 | 6.847 | 1000 | 0 | 139.726 | 35.684 | 40.522 | 42.376 | 88.188 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3252 | 0 | 649.63 | 7.477 | 9.025 | 10.123 | 85.25 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3349 | 0 | 669.027 | 7.3 | 8.759 | 9.823 | 85.25 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.117 | 51.105 | 360 | 0 | 7.043 | 2554.036 | 2577.088 | 2581.808 | 104.195 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.07 | 34.073 | 240 | 0 | 7.044 | 1703.367 | 1716.791 | 1724.424 | 108.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.55 | 25.545 | 180 | 0 | 7.045 | 1277.47 | 1292.043 | 1294.255 | 108.383 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.036 | 17.032 | 120 | 0 | 7.044 | 851.3 | 862.302 | 865.916 | 108.57 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.216 | 14.249 | 100 | 0 | 7.034 | 814.825 | 847.037 | 861.298 | 108.574 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.52 | 8.513 | 60 | 0 | 7.042 | 425.519 | 435.305 | 435.824 | 108.574 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.681 | 5.676 | 40 | 0 | 7.041 | 283.592 | 288.169 | 288.6 | 108.574 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.003 | 1392 | 0 | 278.207 | 3.601 | 3.672 | 3.918 | 108.578 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.002 | 415 | 0 | 82.987 | 12.06 | 12.275 | 12.484 | 108.578 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.006 | 2.013 | 323 | 0 | 64.518 | 15.531 | 15.665 | 15.838 | 108.578 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.05 | 98 | 0 | 19.544 | 51.137 | 51.348 | 51.537 | 108.578 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.027 | 2.013 | 50 | 0 | 9.946 | 100.489 | 100.554 | 100.635 | 108.578 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.006 | 25 | 0 | 4.986 | 200.494 | 200.705 | 200.77 | 108.578 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

# Puma vs Raptor Simulation

Run ID: `20260707-085521`

## Environment

- Ruby: `ruby 4.0.5 (2026-05-20 revision 64336ffd0e) +PRISM [x86_64-linux]`
- Git SHA: `6f7c799`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.197 | 4.303 | 1688 | 0 | 272.407 | 41.091 | 42.72 | 45.971 | 34.582 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.187 | 4.283 | 1689 | 0 | 273.004 | 41.043 | 42.785 | 46.391 | 35.266 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.178 | 4.259 | 1688 | 0 | 273.229 | 41.059 | 42.574 | 46.07 | 35.922 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.17 | 4.276 | 1691 | 0 | 274.079 | 41.016 | 42.429 | 44.417 | 36.879 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.209 | 4.307 | 1685 | 0 | 271.36 | 41.25 | 43.119 | 45.378 | 36.879 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.202 | 4.318 | 1686 | 0 | 271.851 | 41.138 | 42.795 | 45.176 | 36.953 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.216 | 4.257 | 1686 | 0 | 271.248 | 41.525 | 43.141 | 46.512 | 37.008 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.202 | 4.324 | 1686 | 0 | 271.829 | 41.189 | 42.768 | 45.948 | 38.523 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.008 | 9654 | 0 | 1927.82 | 5.784 | 7.866 | 52.88 | 38.645 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.008 | 10042 | 0 | 2004.148 | 5.734 | 7.594 | 48.622 | 38.883 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.008 | 11022 | 0 | 2201.483 | 5.341 | 6.812 | 11.652 | 40.766 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.036 | 2.046 | 6328 | 0 | 1256.624 | 6.204 | 41.763 | 72.909 | 52.563 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.011 | 5986 | 0 | 1194.707 | 8.272 | 41.817 | 54.446 | 52.563 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.037 | 7334 | 0 | 1463.095 | 7.985 | 10.549 | 53.772 | 52.625 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.021 | 2.008 | 9647 | 0 | 1921.426 | 6.079 | 7.847 | 16.445 | 53.766 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.048 | 2.051 | 1887 | 0 | 373.776 | 41.96 | 42.969 | 80.561 | 70.172 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.018 | 2.018 | 4696 | 0 | 935.852 | 12.329 | 18.521 | 26.915 | 70.234 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.016 | 4672 | 0 | 930.945 | 12.42 | 18.297 | 27.746 | 70.234 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.015 | 5993 | 0 | 1195.706 | 9.455 | 15.155 | 24.132 | 71.078 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.02 | 2.858 | 3804 | 0 | 757.702 | 13.702 | 52.696 | 134.766 | 105.305 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.026 | 2.949 | 2846 | 0 | 566.224 | 20.05 | 32.904 | 78.551 | 105.305 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.028 | 3.594 | 2808 | 0 | 558.428 | 20.486 | 32.658 | 74.711 | 105.367 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.195 | 3959 | 0 | 788.875 | 14.199 | 26.027 | 39.813 | 107.781 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.034 | 3.78 | 2295 | 0 | 455.874 | 23.498 | 65.192 | 82.866 | 135.41 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.449 | 3.192 | 1740 | 0 | 319.35 | 36.384 | 48.701 | 85.452 | 127.465 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.549 | 3.424 | 1720 | 0 | 309.992 | 37.649 | 48.118 | 96.066 | 127.527 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 3.058 | 1959 | 0 | 388.166 | 31.013 | 39.093 | 68.397 | 156.211 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.753 | 4.641 | 1597 | 0 | 236.474 | 42.663 | 86.648 | 287.95 | 200.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.254 | 140.344 | 0 | 1440 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.019 | 5.021 | 0 | 960 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.016 | 5.013 | 0 | 720 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.013 | 5.012 | 0 | 480 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.01 | 5.01 | 0 | 360 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.007 | 0 | 120 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 200.535 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.252 | 4.322 | 1686 | 0 | 269.679 | 41.676 | 43.236 | 45.018 | 33.637 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.23 | 4.303 | 1686 | 0 | 270.608 | 41.56 | 43.024 | 45.057 | 34.043 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.229 | 4.321 | 1686 | 0 | 270.665 | 41.492 | 42.941 | 45.161 | 34.152 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.251 | 4.273 | 1683 | 0 | 269.234 | 41.784 | 43.112 | 44.866 | 34.441 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.199 | 4.315 | 1689 | 0 | 272.484 | 41.196 | 42.714 | 44.586 | 34.461 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.19 | 4.247 | 1690 | 0 | 273.005 | 41.018 | 42.536 | 45.54 | 34.461 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.182 | 4.311 | 1688 | 0 | 273.033 | 41.078 | 42.652 | 44.912 | 34.531 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.173 | 4.312 | 1691 | 0 | 273.949 | 41.027 | 42.566 | 44.749 | 35.563 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.047 | 10237 | 0 | 2043.985 | 5.659 | 7.272 | 48.02 | 35.578 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.008 | 10144 | 0 | 2025.422 | 5.699 | 7.447 | 50.741 | 35.582 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.007 | 11487 | 0 | 2294.287 | 5.102 | 6.573 | 10.529 | 37.617 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.056 | 4.157 | 4233 | 0 | 837.267 | 6.162 | 41.982 | 65.984 | 48.066 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.014 | 2.011 | 6932 | 0 | 1382.548 | 8.027 | 11.511 | 54.502 | 48.066 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.031 | 2.013 | 7097 | 0 | 1410.61 | 8.152 | 10.87 | 54.39 | 48.066 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.009 | 9257 | 0 | 1847.84 | 6.328 | 8.211 | 15.892 | 48.773 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.039 | 3.916 | 2068 | 0 | 410.408 | 41.942 | 43.625 | 52.107 | 64.105 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.016 | 2.016 | 4558 | 0 | 908.775 | 12.484 | 18.93 | 59.374 | 64.105 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.02 | 2.018 | 4485 | 0 | 893.5 | 12.79 | 19.445 | 60.322 | 64.105 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.014 | 5979 | 0 | 1193.447 | 9.289 | 15.005 | 26.394 | 65.668 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.023 | 4.021 | 3901 | 0 | 776.647 | 13.223 | 52.047 | 153.811 | 81.379 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.028 | 3.525 | 2954 | 0 | 587.48 | 19.267 | 32.132 | 97.316 | 77.844 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.026 | 2.974 | 2871 | 0 | 571.186 | 19.85 | 35.714 | 71.146 | 77.844 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.02 | 2.12 | 4217 | 0 | 840.084 | 13.391 | 25.389 | 32.376 | 91.891 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.055 | 4.061 | 2400 | 0 | 474.746 | 22.498 | 63.673 | 78.187 | 107.617 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.499 | 3.362 | 1746 | 0 | 317.524 | 36.401 | 50.244 | 76.23 | 105.711 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.434 | 3.357 | 1754 | 0 | 322.781 | 35.864 | 47.907 | 88.03 | 105.711 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.046 | 2.952 | 2017 | 0 | 399.753 | 30.251 | 36.851 | 55.211 | 131.188 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.494 | 4.406 | 1589 | 0 | 244.669 | 43.056 | 84.751 | 225.485 | 196.797 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.256 | 140.242 | 0 | 1440 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.02 | 5.019 | 0 | 960 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.017 | 5.015 | 0 | 720 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.011 | 0 | 480 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.01 | 0 | 360 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.008 | 0 | 240 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.002 | 5.005 | 0 | 10 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.006 | 0 | 10 | 0.0 |  |  |  | 197.152 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.185 | 4.257 | 1691 | 0 | 273.405 | 41.034 | 42.552 | 45.876 | 33.195 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.205 | 4.263 | 1686 | 0 | 271.724 | 41.257 | 42.88 | 45.011 | 33.91 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.164 | 4.269 | 1691 | 0 | 274.352 | 41.014 | 42.312 | 44.164 | 34.137 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.199 | 4.279 | 1686 | 0 | 271.987 | 41.268 | 42.952 | 45.096 | 35.004 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.176 | 4.263 | 1690 | 0 | 273.644 | 41.032 | 42.515 | 44.908 | 35.895 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.176 | 4.296 | 1691 | 0 | 273.794 | 41.014 | 42.392 | 44.232 | 36.402 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.218 | 4.25 | 1685 | 0 | 270.997 | 41.455 | 42.785 | 44.333 | 36.789 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.226 | 4.325 | 1686 | 0 | 270.803 | 41.546 | 42.887 | 44.413 | 38.57 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.008 | 9978 | 0 | 1992.283 | 5.807 | 7.45 | 48.527 | 38.879 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.009 | 9854 | 0 | 1963.269 | 5.859 | 7.727 | 48.609 | 39.199 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.007 | 11065 | 0 | 2209.212 | 5.293 | 6.868 | 11.723 | 41.184 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.053 | 4.116 | 3130 | 0 | 619.438 | 6.652 | 41.983 | 50.769 | 60.551 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.014 | 2.01 | 7149 | 0 | 1425.683 | 7.937 | 11.555 | 52.857 | 60.738 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.016 | 2.011 | 7040 | 0 | 1403.604 | 8.05 | 11.522 | 54.478 | 60.926 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.007 | 8947 | 0 | 1786.152 | 6.298 | 9.604 | 18.791 | 60.926 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.049 | 3.846 | 3068 | 0 | 607.621 | 9.91 | 43.009 | 65.975 | 94.773 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.016 | 4597 | 0 | 915.927 | 12.429 | 18.137 | 54.289 | 84.063 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.017 | 2.016 | 4650 | 0 | 926.811 | 12.322 | 18.045 | 51.913 | 82.422 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.013 | 6344 | 0 | 1265.52 | 8.798 | 14.495 | 29.012 | 85.828 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.027 | 3.049 | 3622 | 0 | 720.45 | 13.537 | 45.941 | 80.81 | 121.977 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.029 | 3.0 | 2963 | 0 | 589.125 | 19.253 | 33.572 | 69.096 | 115.605 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.023 | 3.227 | 2885 | 0 | 574.395 | 19.824 | 34.118 | 69.353 | 115.73 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.217 | 4005 | 0 | 797.909 | 13.957 | 27.789 | 37.355 | 121.379 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.06 | 3.801 | 2310 | 0 | 456.519 | 23.337 | 63.2 | 84.011 | 170.859 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.521 | 3.312 | 1739 | 0 | 314.981 | 36.311 | 50.315 | 83.791 | 142.707 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.579 | 3.524 | 1720 | 0 | 308.321 | 37.172 | 50.824 | 74.113 | 142.832 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.037 | 2.809 | 2070 | 0 | 410.949 | 29.539 | 37.573 | 63.0 | 176.234 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.869 | 4.637 | 1596 | 0 | 232.349 | 45.724 | 72.506 | 210.539 | 243.82 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.257 | 140.231 | 0 | 1440 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.019 | 5.019 | 0 | 960 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.017 | 5.015 | 0 | 720 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.012 | 0 | 480 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.01 | 0 | 360 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.009 | 0 | 240 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 244.324 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14729 | 0 | 2942.479 | 6.331 | 7.296 | 7.806 | 236.965 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14381 | 0 | 2873.17 | 6.425 | 7.751 | 8.311 | 253.82 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14765 | 0 | 2949.873 | 6.298 | 7.326 | 7.831 | 266.461 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14193 | 0 | 2835.837 | 6.582 | 7.625 | 8.358 | 269.715 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.005 | 14652 | 0 | 2926.529 | 6.341 | 7.369 | 7.887 | 297.008 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12872 | 0 | 2570.634 | 7.231 | 8.371 | 8.957 | 296.254 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14497 | 0 | 2895.967 | 6.395 | 7.524 | 8.541 | 310.109 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14003 | 0 | 2797.352 | 6.648 | 7.754 | 8.465 | 321.977 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11313 | 0 | 2259.348 | 8.228 | 9.577 | 11.19 | 408.191 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.012 | 6037 | 0 | 1204.178 | 15.576 | 17.736 | 18.842 | 384.137 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11501 | 0 | 2297.062 | 8.126 | 9.308 | 9.908 | 418.512 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11453 | 0 | 2287.606 | 8.133 | 9.284 | 10.866 | 345.484 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.011 | 8481 | 0 | 1693.389 | 10.661 | 13.821 | 23.948 | 430.84 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.025 | 2.024 | 3394 | 0 | 675.385 | 28.043 | 30.85 | 32.061 | 426.828 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 9063 | 0 | 1809.416 | 9.921 | 12.798 | 23.472 | 393.574 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9194 | 0 | 1835.762 | 9.821 | 12.482 | 22.69 | 382.508 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.011 | 6644 | 0 | 1325.286 | 13.45 | 18.343 | 29.166 | 523.199 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.043 | 2.624 | 1930 | 0 | 382.683 | 49.438 | 54.141 | 56.862 | 473.996 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.012 | 7135 | 0 | 1423.283 | 12.495 | 16.811 | 27.874 | 453.109 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.01 | 7225 | 0 | 1441.874 | 12.35 | 16.938 | 27.786 | 402.844 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.023 | 4052 | 0 | 807.419 | 22.301 | 36.696 | 41.205 | 510.738 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.077 | 4.754 | 1055 | 0 | 207.799 | 90.897 | 99.864 | 102.899 | 489.922 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.018 | 4418 | 0 | 880.265 | 20.525 | 34.081 | 38.535 | 481.195 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.02 | 4239 | 0 | 844.464 | 21.096 | 36.746 | 41.011 | 449.199 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.036 | 2.076 | 2391 | 0 | 474.755 | 39.708 | 43.678 | 50.607 | 456.617 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.277 | 9.218 | 1000 | 0 | 107.797 | 175.342 | 190.919 | 205.493 | 510.379 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.031 | 2.036 | 2523 | 0 | 501.464 | 37.53 | 42.335 | 46.517 | 515.285 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.036 | 2.034 | 2748 | 0 | 545.703 | 34.178 | 39.497 | 46.821 | 472.863 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 65.678 | 63.396 | 1440 | 0 | 21.925 | 2973.473 | 3369.327 | 3428.716 | 473.223 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 56.99 | 76.797 | 960 | 0 | 16.845 | 1508.55 | 2974.576 | 3013.16 | 497.188 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 54.097 | 37.019 | 720 | 0 | 13.31 | 2539.476 | 2920.065 | 2955.718 | 497.539 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.854 | 34.106 | 480 | 0 | 21.003 | 1017.814 | 1284.211 | 1297.886 | 501.332 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.979 | 19.923 | 365 | 0 | 18.269 | 857.016 | 1199.499 | 1269.535 | 500.152 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.487 | 11.394 | 240 | 0 | 20.893 | 430.942 | 675.835 | 820.318 | 501.969 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.531 | 5.745 | 125 | 0 | 14.652 | 302.425 | 445.7 | 463.88 | 502.094 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.001 | 3489 | 0 | 697.618 | 1.407 | 1.524 | 1.878 | 550.879 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.005 | 937 | 0 | 187.323 | 5.295 | 5.425 | 5.801 | 569.164 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.004 | 483 | 0 | 96.577 | 10.316 | 10.405 | 10.744 | 575.828 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.043 | 2.017 | 100 | 0 | 19.831 | 50.354 | 50.567 | 50.673 | 575.828 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.027 | 2.009 | 50 | 0 | 9.947 | 100.467 | 100.661 | 100.833 | 575.828 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.018 | 2.005 | 25 | 0 | 4.982 | 200.669 | 200.851 | 200.948 | 575.828 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14613 | 0 | 2919.646 | 6.363 | 7.37 | 7.922 | 201.625 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 13988 | 0 | 2794.519 | 6.63 | 7.761 | 8.867 | 206.926 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14315 | 0 | 2859.955 | 6.476 | 7.563 | 8.46 | 213.871 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 14222 | 0 | 2841.216 | 6.561 | 7.592 | 8.101 | 214.074 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14398 | 0 | 2876.282 | 6.456 | 7.496 | 8.161 | 232.875 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12701 | 0 | 2536.969 | 7.334 | 8.47 | 9.306 | 234.531 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 14334 | 0 | 2863.517 | 6.489 | 7.502 | 8.184 | 243.57 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14136 | 0 | 2824.072 | 6.575 | 7.682 | 8.517 | 251.883 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11416 | 0 | 2280.04 | 8.177 | 9.446 | 10.306 | 333.715 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.014 | 5954 | 0 | 1187.283 | 15.841 | 18.012 | 19.164 | 303.785 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11669 | 0 | 2330.724 | 8.026 | 9.122 | 9.721 | 341.172 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 11496 | 0 | 2296.257 | 8.145 | 9.266 | 10.156 | 270.293 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.009 | 8677 | 0 | 1732.429 | 10.35 | 13.387 | 25.658 | 384.301 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.025 | 2.024 | 3346 | 0 | 665.918 | 28.293 | 31.331 | 32.577 | 341.488 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9200 | 0 | 1837.088 | 9.731 | 12.693 | 24.864 | 313.207 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9390 | 0 | 1874.947 | 9.536 | 12.274 | 23.705 | 277.449 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.01 | 6232 | 0 | 1243.655 | 14.171 | 20.418 | 34.097 | 441.953 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.049 | 2.574 | 1923 | 0 | 380.877 | 49.803 | 54.634 | 56.876 | 379.004 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.026 | 6784 | 0 | 1353.555 | 12.956 | 18.384 | 32.908 | 331.469 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.011 | 6982 | 0 | 1392.764 | 12.658 | 17.087 | 30.941 | 321.074 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.019 | 4010 | 0 | 798.754 | 22.498 | 39.682 | 42.963 | 479.031 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.088 | 4.884 | 1027 | 0 | 201.837 | 93.655 | 101.972 | 106.018 | 385.695 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.021 | 4169 | 0 | 830.468 | 21.386 | 39.409 | 43.283 | 346.211 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.02 | 4382 | 0 | 873.236 | 20.482 | 35.737 | 41.28 | 335.855 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.035 | 2.24 | 2366 | 0 | 469.874 | 39.599 | 46.374 | 54.526 | 390.75 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.352 | 9.231 | 1000 | 0 | 106.926 | 176.57 | 190.406 | 196.0 | 401.105 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.033 | 2.052 | 2560 | 0 | 508.685 | 37.113 | 41.054 | 43.755 | 369.934 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.035 | 2.03 | 2779 | 0 | 551.967 | 33.875 | 37.652 | 50.71 | 343.973 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 62.842 | 58.884 | 1440 | 0 | 22.915 | 2747.361 | 3214.722 | 3308.546 | 382.629 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 51.345 | 48.382 | 960 | 0 | 18.697 | 1636.263 | 2624.193 | 2664.995 | 412.41 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 39.84 | 34.121 | 720 | 0 | 18.072 | 1642.899 | 2128.332 | 2144.528 | 432.594 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.995 | 25.639 | 480 | 0 | 24.006 | 858.46 | 1228.977 | 1272.636 | 434.918 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 14.278 | 17.084 | 360 | 0 | 25.214 | 656.3 | 836.983 | 864.498 | 444.398 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 14.256 | 22.712 | 245 | 0 | 17.185 | 448.285 | 848.591 | 863.08 | 454.773 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.366 | 5.699 | 130 | 0 | 11.437 | 476.335 | 731.616 | 772.053 | 455.973 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.0 | 3499 | 0 | 699.781 | 1.403 | 1.512 | 1.837 | 466.086 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.0 | 939 | 0 | 187.786 | 5.283 | 5.414 | 5.787 | 482.98 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.007 | 2.007 | 475 | 0 | 94.869 | 10.537 | 10.71 | 11.071 | 482.98 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.045 | 2.022 | 100 | 0 | 19.82 | 50.378 | 50.614 | 50.999 | 483.855 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.037 | 2.015 | 50 | 0 | 9.927 | 100.649 | 100.816 | 101.017 | 484.543 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.616 | 200.758 | 201.344 | 484.918 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.005 | 14696 | 0 | 2935.346 | 6.332 | 7.299 | 7.82 | 229.227 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.005 | 14384 | 0 | 2872.746 | 6.462 | 7.534 | 8.193 | 246.602 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14664 | 0 | 2929.863 | 6.332 | 7.339 | 8.247 | 258.59 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.005 | 14533 | 0 | 2902.097 | 6.418 | 7.398 | 7.93 | 269.043 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14143 | 0 | 2825.534 | 6.557 | 7.805 | 8.74 | 296.313 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12782 | 0 | 2553.416 | 7.277 | 8.469 | 9.219 | 297.191 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14158 | 0 | 2828.82 | 6.545 | 7.709 | 8.849 | 317.125 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 13872 | 0 | 2771.439 | 6.714 | 7.933 | 8.541 | 331.598 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 11428 | 0 | 2282.848 | 8.167 | 9.378 | 10.376 | 426.969 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.014 | 2.013 | 6073 | 0 | 1211.199 | 15.538 | 17.512 | 18.821 | 389.406 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11827 | 0 | 2362.211 | 7.904 | 9.001 | 9.574 | 401.766 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11838 | 0 | 2364.201 | 7.893 | 8.959 | 9.545 | 327.398 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.024 | 2.009 | 8984 | 0 | 1788.185 | 9.982 | 12.956 | 24.839 | 432.836 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.024 | 2.025 | 3289 | 0 | 654.633 | 28.846 | 32.008 | 33.494 | 420.57 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 8969 | 0 | 1790.867 | 9.933 | 13.214 | 26.405 | 383.184 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.008 | 9153 | 0 | 1826.95 | 9.742 | 12.933 | 25.662 | 359.422 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.011 | 6664 | 0 | 1329.977 | 13.318 | 18.302 | 32.286 | 536.965 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.042 | 2.579 | 1939 | 0 | 384.56 | 49.194 | 53.542 | 55.055 | 463.41 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.01 | 7170 | 0 | 1430.551 | 12.331 | 16.589 | 31.049 | 408.105 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.009 | 7343 | 0 | 1465.017 | 11.98 | 15.799 | 29.55 | 386.203 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.021 | 4202 | 0 | 837.204 | 21.621 | 28.277 | 41.724 | 501.25 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.087 | 4.766 | 1045 | 0 | 205.431 | 91.992 | 100.177 | 105.052 | 487.852 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.038 | 2.018 | 4323 | 0 | 858.119 | 20.886 | 37.345 | 42.198 | 483.676 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.017 | 4419 | 0 | 880.365 | 20.326 | 38.173 | 41.356 | 423.879 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.038 | 2.046 | 2491 | 0 | 494.465 | 38.276 | 41.521 | 42.788 | 516.094 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.302 | 8.979 | 1000 | 0 | 107.509 | 175.908 | 189.193 | 200.539 | 520.754 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.034 | 2.035 | 2678 | 0 | 531.984 | 35.375 | 38.621 | 40.669 | 503.953 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.031 | 2814 | 0 | 559.196 | 33.462 | 37.055 | 48.947 | 440.816 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 76.985 | 49.081 | 1440 | 0 | 18.705 | 2875.616 | 3909.463 | 3941.708 | 458.547 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 59.759 | 39.93 | 960 | 0 | 16.065 | 1682.978 | 3062.695 | 3099.591 | 495.309 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 62.518 | 48.342 | 720 | 0 | 11.517 | 3038.365 | 3271.126 | 3350.316 | 518.156 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.665 | 34.139 | 485 | 0 | 18.898 | 1214.412 | 1317.822 | 1339.885 | 523.297 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.628 | 25.535 | 360 | 0 | 14.047 | 773.475 | 1326.256 | 1350.193 | 521.5 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.388 | 19.867 | 240 | 0 | 21.074 | 432.394 | 697.364 | 817.998 | 522.078 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.528 | 8.511 | 125 | 0 | 14.657 | 307.35 | 452.819 | 476.321 | 517.957 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.0 | 3591 | 0 | 718.02 | 1.356 | 1.484 | 1.792 | 560.738 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.005 | 2.002 | 945 | 0 | 188.803 | 5.264 | 5.327 | 5.654 | 553.906 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.008 | 484 | 0 | 96.771 | 10.299 | 10.4 | 10.542 | 553.906 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.043 | 2.018 | 100 | 0 | 19.83 | 50.371 | 50.57 | 50.608 | 553.906 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.025 | 2.009 | 50 | 0 | 9.95 | 100.41 | 100.717 | 100.882 | 553.906 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.015 | 2.005 | 25 | 0 | 4.985 | 200.531 | 200.603 | 200.62 | 553.969 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.2 | 4.368 | 1686 | 0 | 271.955 | 41.199 | 42.756 | 44.241 | 36.504 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.17 | 4.321 | 1689 | 0 | 273.728 | 41.029 | 42.566 | 44.501 | 37.547 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.229 | 4.337 | 1686 | 0 | 270.652 | 41.47 | 43.021 | 44.825 | 38.008 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.194 | 4.327 | 1688 | 0 | 272.542 | 41.037 | 42.76 | 45.372 | 38.527 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.181 | 4.275 | 1690 | 0 | 273.44 | 41.027 | 42.658 | 45.23 | 38.777 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.23 | 4.308 | 1691 | 0 | 271.425 | 41.089 | 42.621 | 45.213 | 38.859 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.175 | 4.264 | 1691 | 0 | 273.863 | 41.014 | 42.391 | 44.316 | 38.941 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.181 | 4.294 | 1691 | 0 | 273.571 | 41.035 | 42.532 | 44.484 | 39.828 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.007 | 5444 | 0 | 1087.023 | 5.529 | 41.022 | 48.647 | 39.875 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 4.12 | 10369 | 0 | 2070.524 | 5.49 | 7.152 | 48.872 | 39.941 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.007 | 11611 | 0 | 2319.114 | 5.067 | 6.383 | 10.433 | 41.848 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.055 | 2.05 | 2702 | 0 | 534.491 | 8.043 | 41.988 | 93.025 | 51.863 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.011 | 6784 | 0 | 1353.3 | 7.812 | 13.453 | 53.278 | 51.863 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.016 | 6937 | 0 | 1384.735 | 7.787 | 12.333 | 53.95 | 51.863 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.01 | 8498 | 0 | 1696.588 | 6.428 | 10.892 | 36.515 | 52.93 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.054 | 4.039 | 2891 | 0 | 572.059 | 8.98 | 45.174 | 205.97 | 68.875 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.016 | 2.017 | 4711 | 0 | 939.252 | 11.884 | 18.064 | 49.995 | 68.875 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.016 | 2.016 | 4706 | 0 | 938.167 | 11.788 | 18.48 | 57.955 | 68.875 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.026 | 2.012 | 6154 | 0 | 1224.418 | 8.902 | 15.26 | 32.69 | 71.621 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.055 | 2.932 | 3574 | 0 | 707.046 | 12.399 | 51.711 | 100.072 | 91.012 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 2.944 | 3065 | 0 | 607.495 | 18.488 | 34.522 | 68.398 | 83.168 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.049 | 2.78 | 3062 | 0 | 606.457 | 18.564 | 34.332 | 69.746 | 83.168 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.137 | 4054 | 0 | 807.685 | 13.669 | 25.957 | 42.279 | 95.262 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.048 | 3.574 | 2497 | 0 | 494.679 | 21.275 | 62.667 | 147.424 | 121.516 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.3 | 3.23 | 1775 | 0 | 334.933 | 34.704 | 47.658 | 82.088 | 116.211 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.427 | 3.17 | 1765 | 0 | 325.225 | 35.267 | 46.448 | 69.866 | 116.211 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.034 | 2.735 | 2275 | 0 | 451.971 | 26.55 | 32.908 | 51.104 | 146.012 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.352 | 4.134 | 1619 | 0 | 254.877 | 42.47 | 76.779 | 328.362 | 197.141 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.257 | 140.221 | 0 | 1440 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.02 | 5.023 | 0 | 960 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.015 | 0 | 720 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.016 | 5.012 | 0 | 480 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.01 | 0 | 360 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.01 | 5.009 | 0 | 240 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 189.531 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.204 | 4.428 | 1686 | 0 | 271.78 | 41.328 | 42.909 | 45.522 | 36.098 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.212 | 4.321 | 1686 | 0 | 271.395 | 41.289 | 42.987 | 46.8 | 37.211 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.24 | 4.321 | 1686 | 0 | 270.178 | 41.621 | 42.95 | 44.67 | 37.82 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.183 | 4.345 | 1690 | 0 | 273.317 | 41.038 | 42.599 | 44.935 | 38.203 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.202 | 4.312 | 1690 | 0 | 272.513 | 41.2 | 42.899 | 44.712 | 38.461 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.18 | 4.276 | 1690 | 0 | 273.462 | 41.028 | 42.504 | 43.98 | 38.492 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.174 | 4.282 | 1691 | 0 | 273.888 | 41.037 | 42.569 | 45.885 | 38.566 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.233 | 4.267 | 1686 | 0 | 270.502 | 41.584 | 43.066 | 45.442 | 39.461 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.008 | 8898 | 0 | 1776.631 | 5.613 | 8.546 | 51.31 | 39.496 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 4.103 | 9722 | 0 | 1941.112 | 5.672 | 7.967 | 63.115 | 39.508 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.007 | 11096 | 0 | 2215.497 | 5.279 | 6.883 | 11.682 | 41.332 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.06 | 2.693 | 3593 | 0 | 710.08 | 6.291 | 42.038 | 94.766 | 53.418 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.011 | 6830 | 0 | 1362.37 | 7.816 | 12.445 | 56.245 | 53.418 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.046 | 2.013 | 5461 | 0 | 1082.267 | 8.012 | 41.983 | 72.396 | 53.418 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.009 | 8065 | 0 | 1609.82 | 6.769 | 11.254 | 34.817 | 54.32 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.057 | 3.846 | 4105 | 0 | 811.788 | 8.073 | 46.798 | 161.647 | 70.75 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.02 | 4538 | 0 | 904.199 | 12.242 | 18.825 | 55.729 | 70.762 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.016 | 2.017 | 4540 | 0 | 905.038 | 12.229 | 19.569 | 59.057 | 70.762 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.015 | 5686 | 0 | 1134.516 | 9.434 | 15.6 | 38.062 | 71.363 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 3.272 | 3898 | 0 | 772.305 | 12.734 | 53.139 | 240.237 | 86.418 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 2.827 | 3009 | 0 | 596.192 | 18.571 | 41.505 | 72.843 | 83.406 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.026 | 3.21 | 3012 | 0 | 599.243 | 18.684 | 37.564 | 73.056 | 83.406 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.129 | 3832 | 0 | 763.481 | 14.381 | 29.857 | 51.432 | 93.449 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.039 | 3.646 | 2411 | 0 | 478.498 | 21.642 | 64.609 | 92.368 | 117.391 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.33 | 3.226 | 1758 | 0 | 329.81 | 35.375 | 46.082 | 80.146 | 107.898 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.477 | 3.318 | 1739 | 0 | 317.519 | 36.349 | 49.824 | 83.856 | 107.898 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.048 | 2.794 | 2009 | 0 | 397.976 | 30.066 | 37.961 | 58.73 | 149.945 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.582 | 4.19 | 1602 | 0 | 243.38 | 43.611 | 70.109 | 256.152 | 187.75 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.253 | 140.222 | 0 | 1440 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.023 | 5.023 | 0 | 960 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.016 | 5.017 | 0 | 720 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.013 | 5.011 | 0 | 480 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.01 | 0 | 360 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.008 | 0 | 240 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.007 | 0 | 120 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 187.277 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.161 | 4.364 | 1691 | 0 | 274.477 | 41.006 | 42.274 | 45.725 | 36.637 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.159 | 4.322 | 1691 | 0 | 274.566 | 41.014 | 42.383 | 44.771 | 38.168 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.186 | 4.299 | 1686 | 0 | 272.553 | 41.206 | 42.663 | 43.99 | 39.0 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.167 | 4.32 | 1689 | 0 | 273.885 | 41.032 | 42.549 | 44.295 | 39.938 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.256 | 4.316 | 1682 | 0 | 268.873 | 41.643 | 43.026 | 45.279 | 40.438 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.18 | 4.319 | 1687 | 0 | 272.962 | 41.051 | 42.602 | 44.819 | 40.496 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.177 | 4.287 | 1691 | 0 | 273.758 | 41.021 | 42.54 | 44.691 | 40.586 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.18 | 4.286 | 1691 | 0 | 273.637 | 41.016 | 42.584 | 45.132 | 42.004 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 2.008 | 7782 | 0 | 1541.759 | 5.595 | 40.98 | 49.385 | 42.047 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.017 | 8681 | 0 | 1733.373 | 5.554 | 10.038 | 49.392 | 42.07 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.007 | 11418 | 0 | 2280.426 | 5.159 | 6.514 | 10.571 | 43.957 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.05 | 2.419 | 3933 | 0 | 778.794 | 6.134 | 41.956 | 59.122 | 55.766 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.012 | 7108 | 0 | 1418.291 | 7.773 | 11.627 | 55.046 | 55.766 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.023 | 7034 | 0 | 1403.409 | 7.786 | 12.355 | 54.066 | 55.766 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.008 | 8704 | 0 | 1737.665 | 6.285 | 10.565 | 29.41 | 56.473 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.054 | 3.247 | 3189 | 0 | 630.955 | 8.545 | 44.461 | 66.267 | 77.723 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.023 | 2.022 | 4721 | 0 | 939.924 | 11.65 | 18.468 | 55.33 | 77.242 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.041 | 2.076 | 4621 | 0 | 916.658 | 12.11 | 18.353 | 53.885 | 77.242 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.013 | 5617 | 0 | 1120.711 | 9.39 | 16.377 | 40.428 | 77.516 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.022 | 2.848 | 3844 | 0 | 765.378 | 13.611 | 40.752 | 131.752 | 97.426 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.056 | 2.701 | 2968 | 0 | 587.074 | 19.097 | 35.858 | 59.565 | 87.957 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.053 | 3.455 | 2892 | 0 | 572.37 | 19.471 | 43.641 | 98.792 | 87.957 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.022 | 2.263 | 3836 | 0 | 763.889 | 14.39 | 28.585 | 51.954 | 100.215 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.032 | 3.81 | 2409 | 0 | 478.698 | 22.13 | 61.495 | 98.86 | 135.758 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.309 | 3.333 | 1785 | 0 | 336.227 | 34.015 | 48.961 | 70.491 | 113.93 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.179 | 3.34 | 1794 | 0 | 346.414 | 33.975 | 44.847 | 82.538 | 113.93 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.032 | 2.738 | 2416 | 0 | 480.085 | 23.705 | 33.097 | 51.456 | 153.977 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.276 | 4.205 | 1627 | 0 | 259.239 | 42.855 | 69.372 | 307.613 | 193.313 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.257 | 140.197 | 0 | 1440 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.02 | 5.021 | 0 | 960 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.015 | 0 | 720 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.012 | 0 | 480 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.013 | 5.01 | 0 | 360 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.01 | 0 | 240 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.008 | 0 | 120 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 186.98 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 14876 | 0 | 2971.618 | 6.227 | 7.258 | 7.896 | 244.262 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14727 | 0 | 2942.238 | 6.318 | 7.281 | 7.783 | 262.031 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15154 | 0 | 3026.876 | 6.123 | 7.09 | 7.682 | 268.547 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14975 | 0 | 2991.945 | 6.229 | 7.158 | 7.66 | 276.023 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14968 | 0 | 2990.457 | 6.218 | 7.139 | 7.611 | 307.891 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 13121 | 0 | 2620.568 | 7.11 | 8.156 | 8.694 | 304.328 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14684 | 0 | 2933.707 | 6.314 | 7.372 | 8.563 | 315.883 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.005 | 14690 | 0 | 2934.181 | 6.353 | 7.297 | 7.801 | 330.441 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11770 | 0 | 2351.073 | 7.942 | 9.043 | 9.632 | 403.098 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.014 | 6274 | 0 | 1251.505 | 15.03 | 17.034 | 17.843 | 380.641 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12073 | 0 | 2411.229 | 7.746 | 8.781 | 9.241 | 423.234 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.006 | 11988 | 0 | 2393.872 | 7.801 | 8.818 | 9.342 | 336.16 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.009 | 8954 | 0 | 1787.639 | 9.828 | 13.058 | 31.439 | 446.25 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.023 | 2.023 | 3459 | 0 | 688.566 | 27.383 | 30.61 | 32.4 | 410.707 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.007 | 9041 | 0 | 1804.481 | 9.624 | 13.33 | 32.819 | 373.625 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9186 | 0 | 1834.228 | 9.507 | 12.709 | 31.724 | 361.445 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.01 | 6290 | 0 | 1255.155 | 13.724 | 20.119 | 40.213 | 529.895 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.042 | 2.578 | 1980 | 0 | 392.69 | 48.137 | 52.344 | 54.407 | 462.758 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.011 | 6914 | 0 | 1379.815 | 12.527 | 18.325 | 38.062 | 421.949 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.01 | 7085 | 0 | 1413.597 | 12.115 | 16.603 | 35.851 | 389.086 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.02 | 4128 | 0 | 822.359 | 21.455 | 43.357 | 47.533 | 512.512 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.08 | 4.591 | 1086 | 0 | 213.79 | 88.188 | 96.138 | 103.101 | 510.695 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.018 | 4262 | 0 | 849.079 | 20.761 | 43.728 | 47.011 | 471.41 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.021 | 2.02 | 4278 | 0 | 852.013 | 20.53 | 42.674 | 47.918 | 434.004 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.168 | 2543 | 0 | 505.352 | 37.067 | 41.501 | 46.098 | 533.344 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.06 | 9.074 | 1000 | 0 | 110.379 | 171.707 | 185.775 | 192.239 | 562.098 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.033 | 2.032 | 2677 | 0 | 531.911 | 35.483 | 38.869 | 40.8 | 550.395 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.031 | 2840 | 0 | 564.396 | 33.337 | 36.583 | 40.037 | 464.078 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 74.499 | 37.753 | 1440 | 0 | 19.329 | 2714.289 | 3852.696 | 3889.259 | 462.008 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 40.181 | 45.851 | 960 | 0 | 23.892 | 1713.144 | 2122.524 | 2149.245 | 516.449 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 37.207 | 36.948 | 720 | 0 | 19.351 | 1634.399 | 2074.041 | 2139.206 | 538.367 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 23.113 | 25.604 | 480 | 0 | 20.767 | 995.557 | 1269.638 | 1293.001 | 538.434 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 22.962 | 17.258 | 360 | 0 | 15.678 | 836.767 | 1279.621 | 1301.408 | 539.371 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 14.303 | 11.68 | 245 | 0 | 17.13 | 497.651 | 852.9 | 868.585 | 546.09 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.575 | 11.364 | 125 | 0 | 14.577 | 299.171 | 442.622 | 450.609 | 547.844 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.002 | 1923 | 0 | 384.543 | 2.576 | 2.924 | 3.305 | 565.098 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.007 | 2.001 | 562 | 0 | 112.253 | 8.796 | 9.706 | 10.235 | 554.789 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.011 | 2.001 | 384 | 0 | 76.638 | 13.079 | 13.601 | 13.907 | 554.793 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.016 | 99 | 0 | 19.795 | 50.484 | 50.661 | 50.714 | 557.52 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.026 | 2.014 | 50 | 0 | 9.949 | 100.429 | 100.636 | 101.044 | 557.523 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.587 | 200.656 | 200.754 | 557.59 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15112 | 0 | 3019.178 | 6.132 | 7.135 | 7.749 | 248.465 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 14754 | 0 | 2946.702 | 6.289 | 7.346 | 7.947 | 271.332 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15181 | 0 | 3032.672 | 6.11 | 7.112 | 7.689 | 286.055 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15001 | 0 | 2996.639 | 6.209 | 7.128 | 7.605 | 292.922 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15096 | 0 | 3016.147 | 6.137 | 7.184 | 7.719 | 317.422 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 13052 | 0 | 2607.191 | 7.123 | 8.293 | 8.97 | 315.566 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14846 | 0 | 2965.98 | 6.226 | 7.339 | 8.845 | 323.84 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14572 | 0 | 2910.709 | 6.39 | 7.405 | 7.854 | 338.133 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.006 | 11976 | 0 | 2391.606 | 7.793 | 8.956 | 9.46 | 434.156 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.012 | 6314 | 0 | 1259.593 | 14.949 | 16.809 | 17.686 | 411.262 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12161 | 0 | 2428.828 | 7.696 | 8.719 | 9.191 | 424.75 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 12142 | 0 | 2425.235 | 7.717 | 8.693 | 9.15 | 339.531 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.008 | 9031 | 0 | 1803.507 | 9.704 | 12.837 | 32.157 | 455.645 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.024 | 2.023 | 3499 | 0 | 696.458 | 27.162 | 29.861 | 31.104 | 447.266 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.007 | 8692 | 0 | 1735.757 | 10.064 | 13.588 | 34.95 | 379.125 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 9070 | 0 | 1811.103 | 9.618 | 12.69 | 33.816 | 375.07 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.037 | 6416 | 0 | 1280.107 | 13.398 | 18.422 | 40.414 | 571.164 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.044 | 2.575 | 1983 | 0 | 393.144 | 48.056 | 52.212 | 54.357 | 485.207 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.01 | 7003 | 0 | 1396.993 | 12.14 | 16.749 | 38.576 | 422.629 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.009 | 7092 | 0 | 1414.581 | 11.906 | 16.515 | 37.199 | 400.836 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.02 | 4169 | 0 | 830.757 | 21.227 | 44.224 | 48.97 | 522.293 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.076 | 4.685 | 1086 | 0 | 213.938 | 88.56 | 95.247 | 99.35 | 516.105 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.018 | 4050 | 0 | 805.446 | 21.708 | 48.538 | 54.67 | 466.543 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.016 | 4422 | 0 | 880.816 | 19.931 | 42.929 | 46.487 | 439.082 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.042 | 2.032 | 2433 | 0 | 482.585 | 37.966 | 50.51 | 58.831 | 528.063 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.18 | 9.114 | 1000 | 0 | 108.933 | 173.234 | 187.255 | 197.322 | 562.684 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.036 | 2.035 | 2509 | 0 | 498.222 | 37.489 | 44.718 | 48.769 | 512.504 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.035 | 2678 | 0 | 532.216 | 35.048 | 40.666 | 43.982 | 469.348 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 66.403 | 51.806 | 1440 | 0 | 21.686 | 2961.089 | 3438.632 | 3467.526 | 519.117 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 46.139 | 39.754 | 960 | 0 | 20.807 | 2203.097 | 2490.456 | 2571.489 | 542.719 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 40.08 | 28.416 | 720 | 0 | 17.964 | 1289.219 | 2134.299 | 2157.225 | 544.363 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 23.004 | 25.633 | 480 | 0 | 20.866 | 1015.374 | 1274.809 | 1304.498 | 536.004 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 31.482 | 22.797 | 365 | 0 | 11.594 | 1354.728 | 1731.51 | 1745.48 | 540.324 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.16 | 17.164 | 245 | 0 | 14.277 | 449.538 | 877.232 | 893.737 | 543.332 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.915 | 5.81 | 120 | 0 | 20.287 | 293.905 | 305.974 | 308.302 | 544.719 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.003 | 1935 | 0 | 386.815 | 2.509 | 2.918 | 3.287 | 577.539 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.009 | 2.003 | 548 | 0 | 109.4 | 9.046 | 10.002 | 10.596 | 585.891 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.005 | 2.009 | 376 | 0 | 75.132 | 13.299 | 13.837 | 14.09 | 584.082 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.018 | 2.028 | 99 | 0 | 19.727 | 50.583 | 50.895 | 51.41 | 584.582 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.037 | 2.015 | 50 | 0 | 9.926 | 100.644 | 100.947 | 101.138 | 586.395 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.019 | 2.008 | 25 | 0 | 4.981 | 200.671 | 200.799 | 201.104 | 586.457 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14618 | 0 | 2920.501 | 6.331 | 7.436 | 8.067 | 213.746 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 14126 | 0 | 2822.03 | 6.55 | 7.757 | 8.903 | 224.148 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14678 | 0 | 2932.675 | 6.327 | 7.389 | 7.987 | 229.496 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 13332 | 0 | 2662.947 | 6.801 | 9.06 | 11.988 | 230.031 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14531 | 0 | 2902.785 | 6.379 | 7.458 | 8.155 | 249.676 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12196 | 0 | 2436.067 | 7.517 | 9.18 | 12.236 | 249.883 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14272 | 0 | 2851.442 | 6.43 | 7.821 | 10.011 | 255.742 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.005 | 13531 | 0 | 2702.037 | 6.69 | 9.073 | 12.191 | 263.727 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 11044 | 0 | 2205.333 | 8.235 | 11.303 | 13.57 | 342.191 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.013 | 6029 | 0 | 1202.288 | 15.666 | 17.775 | 18.657 | 312.387 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11664 | 0 | 2329.961 | 8.004 | 9.147 | 9.876 | 362.238 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11585 | 0 | 2314.083 | 8.0 | 9.264 | 11.35 | 271.809 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.01 | 8246 | 0 | 1645.407 | 10.559 | 14.227 | 39.345 | 393.098 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.025 | 2.028 | 3329 | 0 | 662.502 | 28.52 | 31.496 | 32.8 | 345.953 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 8598 | 0 | 1716.343 | 10.105 | 13.284 | 37.355 | 305.012 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 8578 | 0 | 1712.716 | 10.163 | 13.247 | 38.555 | 302.293 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.015 | 6063 | 0 | 1209.485 | 14.167 | 19.928 | 44.846 | 459.617 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.042 | 2.665 | 1925 | 0 | 381.794 | 49.472 | 54.466 | 57.797 | 356.742 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.011 | 6334 | 0 | 1263.739 | 13.525 | 19.593 | 43.647 | 330.348 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.041 | 6495 | 0 | 1295.97 | 13.223 | 18.257 | 42.815 | 322.398 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.021 | 3764 | 0 | 749.905 | 23.295 | 51.877 | 59.736 | 458.563 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.084 | 4.889 | 1026 | 0 | 201.82 | 93.4 | 102.546 | 107.828 | 378.688 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.021 | 4005 | 0 | 797.931 | 21.914 | 50.22 | 54.471 | 353.914 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.021 | 2.017 | 4185 | 0 | 833.525 | 21.121 | 48.249 | 52.296 | 349.457 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.037 | 2.041 | 2417 | 0 | 479.846 | 39.346 | 42.681 | 45.562 | 379.758 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.042 | 9.124 | 1000 | 0 | 110.595 | 170.651 | 184.315 | 187.462 | 389.336 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.035 | 2.036 | 2533 | 0 | 503.099 | 37.563 | 41.258 | 43.29 | 382.578 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.034 | 2.035 | 2576 | 0 | 511.724 | 36.916 | 40.361 | 43.228 | 369.508 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 66.096 | 47.669 | 1440 | 0 | 21.786 | 3002.04 | 3410.913 | 3441.218 | 403.465 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 43.235 | 40.003 | 960 | 0 | 22.204 | 1790.276 | 2190.23 | 2210.215 | 419.492 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 31.631 | 34.149 | 720 | 0 | 22.763 | 1342.146 | 1684.13 | 1708.575 | 423.977 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 31.555 | 22.788 | 480 | 0 | 15.211 | 855.967 | 1694.597 | 1720.831 | 430.223 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.742 | 20.198 | 365 | 0 | 14.179 | 895.855 | 1315.512 | 1337.162 | 433.902 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.556 | 17.199 | 240 | 0 | 20.769 | 434.828 | 804.922 | 828.175 | 446.824 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.579 | 5.796 | 125 | 0 | 14.57 | 299.39 | 440.409 | 453.398 | 454.141 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.002 | 1919 | 0 | 383.744 | 2.512 | 3.01 | 3.771 | 478.703 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.007 | 2.004 | 553 | 0 | 110.449 | 8.996 | 9.77 | 10.324 | 488.699 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.003 | 373 | 0 | 74.578 | 13.397 | 13.995 | 14.354 | 501.516 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.018 | 2.027 | 99 | 0 | 19.731 | 50.59 | 50.806 | 51.153 | 496.645 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.035 | 2.014 | 50 | 0 | 9.931 | 100.605 | 100.72 | 101.461 | 496.645 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.017 | 2.008 | 25 | 0 | 4.983 | 200.593 | 200.684 | 200.774 | 494.777 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

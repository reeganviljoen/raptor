# Puma vs Raptor Simulation

Run ID: `20260706-195148`

## Environment

- Ruby: `ruby 4.0.5 (2026-05-20 revision 64336ffd0e) +PRISM [x86_64-linux]`
- Git SHA: `3fa3ad1`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.264 | 4.334 | 1681 | 0 | 268.358 | 41.775 | 43.362 | 45.255 | 34.074 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.182 | 4.326 | 1688 | 0 | 273.059 | 41.039 | 42.787 | 44.832 | 34.449 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.191 | 4.337 | 1691 | 0 | 273.129 | 41.122 | 42.885 | 46.159 | 34.656 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.187 | 4.322 | 1687 | 0 | 272.69 | 41.086 | 42.801 | 44.619 | 34.887 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.239 | 4.276 | 1691 | 0 | 271.058 | 41.019 | 42.729 | 44.873 | 34.898 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.194 | 4.315 | 1691 | 0 | 272.99 | 41.024 | 42.722 | 44.794 | 34.898 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.188 | 4.274 | 1688 | 0 | 272.784 | 41.084 | 42.71 | 44.406 | 34.969 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.261 | 4.379 | 1679 | 0 | 268.161 | 41.737 | 43.317 | 45.542 | 35.879 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.009 | 8870 | 0 | 1771.422 | 5.714 | 8.897 | 68.106 | 36.039 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.04 | 6426 | 0 | 1283.183 | 5.76 | 41.825 | 109.742 | 36.105 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.007 | 11170 | 0 | 2230.848 | 5.257 | 7.007 | 12.401 | 37.938 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.04 | 3.04 | 3467 | 0 | 687.856 | 6.305 | 42.316 | 50.427 | 48.703 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.053 | 4.144 | 5312 | 0 | 1051.243 | 7.986 | 42.622 | 160.523 | 48.707 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.663 | 4.118 | 1731 | 0 | 305.652 | 41.963 | 43.108 | 375.727 | 48.707 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.009 | 9265 | 0 | 1849.274 | 6.363 | 8.175 | 14.469 | 49.563 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.425 | 4.156 | 1829 | 0 | 337.163 | 41.972 | 43.824 | 289.846 | 63.934 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.11 | 4273 | 0 | 851.383 | 13.42 | 21.192 | 61.561 | 63.965 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.02 | 2.202 | 4342 | 0 | 864.926 | 13.143 | 20.763 | 71.279 | 63.965 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.015 | 2.014 | 5857 | 0 | 1167.972 | 9.506 | 16.722 | 27.633 | 65.988 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.022 | 3.481 | 3451 | 0 | 687.139 | 14.074 | 54.204 | 70.6 | 81.371 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.028 | 3.811 | 2722 | 0 | 541.335 | 20.917 | 36.304 | 100.654 | 81.371 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.03 | 3.436 | 2705 | 0 | 537.82 | 20.86 | 35.419 | 101.076 | 81.371 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.022 | 2.154 | 3962 | 0 | 788.964 | 14.155 | 27.062 | 37.761 | 90.422 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.053 | 3.825 | 2191 | 0 | 433.646 | 24.503 | 67.535 | 86.682 | 104.082 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.797 | 3.625 | 1691 | 0 | 291.709 | 38.423 | 55.839 | 95.786 | 104.082 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.105 | 3.61 | 1666 | 0 | 272.885 | 40.362 | 57.061 | 118.503 | 104.082 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 2.768 | 2142 | 0 | 424.833 | 27.773 | 36.899 | 63.219 | 139.227 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 7.281 | 4.525 | 1531 | 0 | 210.28 | 49.143 | 85.86 | 108.572 | 190.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 190.261 | 140.296 | 0 | 1440 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.019 | 5.017 | 0 | 960 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.016 | 5.014 | 0 | 720 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.01 | 0 | 480 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.009 | 0 | 360 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.008 | 0 | 240 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.007 | 0 | 120 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.461 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.167 | 4.272 | 1691 | 0 | 274.215 | 40.997 | 42.457 | 44.81 | 33.07 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.156 | 4.323 | 1691 | 0 | 274.701 | 40.993 | 42.26 | 44.626 | 33.707 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.186 | 4.275 | 1690 | 0 | 273.199 | 41.057 | 42.757 | 44.741 | 34.406 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.24 | 4.323 | 1681 | 0 | 269.402 | 41.769 | 43.023 | 44.508 | 35.316 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.192 | 4.294 | 1687 | 0 | 272.457 | 41.194 | 42.903 | 44.884 | 35.578 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.228 | 4.326 | 1686 | 0 | 270.723 | 41.632 | 43.027 | 44.517 | 35.602 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.21 | 4.295 | 1686 | 0 | 271.504 | 41.372 | 42.958 | 45.082 | 35.727 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.234 | 4.293 | 1686 | 0 | 270.461 | 41.601 | 42.948 | 45.448 | 37.066 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.06 | 4.076 | 7075 | 0 | 1398.168 | 5.787 | 40.982 | 48.586 | 37.109 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.055 | 2.052 | 4041 | 0 | 799.437 | 6.099 | 41.93 | 47.838 | 37.109 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.007 | 11532 | 0 | 2302.583 | 5.091 | 6.643 | 10.439 | 39.094 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.062 | 4.042 | 2329 | 0 | 460.077 | 40.962 | 42.256 | 49.628 | 53.945 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.055 | 2.012 | 6267 | 0 | 1239.665 | 8.111 | 40.706 | 56.266 | 53.945 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.011 | 2.011 | 3597 | 0 | 717.805 | 8.627 | 42.796 | 54.713 | 53.945 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.01 | 2.023 | 8693 | 0 | 1735.073 | 6.476 | 9.809 | 43.16 | 54.051 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.049 | 4.094 | 2049 | 0 | 405.806 | 41.953 | 45.078 | 58.968 | 70.559 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.017 | 2.28 | 4387 | 0 | 874.356 | 12.96 | 19.94 | 61.385 | 69.762 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.078 | 4303 | 0 | 857.303 | 13.081 | 21.578 | 64.537 | 69.762 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.017 | 5909 | 0 | 1178.648 | 9.227 | 16.104 | 29.923 | 70.281 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.023 | 3.377 | 3544 | 0 | 705.582 | 13.483 | 54.32 | 69.353 | 90.324 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.055 | 4.052 | 2621 | 0 | 518.508 | 20.841 | 54.054 | 133.37 | 90.324 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.031 | 3.13 | 2753 | 0 | 547.206 | 20.591 | 37.834 | 107.044 | 90.324 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.039 | 2.165 | 3936 | 0 | 781.112 | 14.219 | 29.612 | 42.174 | 94.551 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.059 | 4.21 | 2158 | 0 | 426.532 | 23.591 | 65.955 | 80.929 | 123.246 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.883 | 3.532 | 1680 | 0 | 285.593 | 39.133 | 57.153 | 113.189 | 109.797 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.132 | 3.547 | 1667 | 0 | 271.85 | 41.269 | 55.44 | 87.674 | 109.797 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.047 | 2.81 | 2119 | 0 | 419.848 | 28.407 | 36.451 | 56.237 | 133.844 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 7.129 | 4.859 | 1562 | 0 | 219.113 | 47.196 | 83.648 | 109.06 | 174.121 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.255 | 140.239 | 0 | 1440 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.019 | 5.019 | 0 | 960 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.015 | 0 | 720 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.01 | 0 | 480 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.009 | 0 | 360 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.008 | 0 | 240 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.005 | 0 | 10 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.001 | 5.006 | 0 | 10 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 174.453 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.176 | 4.307 | 1691 | 0 | 273.816 | 41.031 | 42.626 | 44.5 | 33.242 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.23 | 4.291 | 1686 | 0 | 270.63 | 41.441 | 43.09 | 44.938 | 34.109 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.165 | 4.279 | 1691 | 0 | 274.305 | 40.994 | 42.412 | 44.235 | 34.863 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.277 | 4.327 | 1681 | 0 | 267.808 | 41.811 | 43.167 | 45.098 | 35.668 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.263 | 4.341 | 1684 | 0 | 268.871 | 41.672 | 42.978 | 44.989 | 36.316 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.263 | 4.342 | 1686 | 0 | 269.186 | 41.581 | 43.15 | 44.56 | 36.648 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.254 | 4.317 | 1686 | 0 | 269.576 | 41.716 | 43.146 | 44.659 | 36.797 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.279 | 4.345 | 1686 | 0 | 268.508 | 41.653 | 43.029 | 44.863 | 38.906 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.053 | 2.046 | 2890 | 0 | 571.882 | 6.916 | 41.966 | 48.213 | 38.91 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.065 | 2.026 | 7963 | 0 | 1572.02 | 5.733 | 40.969 | 49.634 | 39.035 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.006 | 11528 | 0 | 2302.228 | 5.07 | 6.653 | 11.146 | 40.914 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.058 | 4.116 | 3021 | 0 | 597.32 | 6.725 | 41.973 | 87.665 | 56.555 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.043 | 2.023 | 4482 | 0 | 888.719 | 8.509 | 42.268 | 55.411 | 56.555 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.015 | 2.014 | 3780 | 0 | 753.777 | 8.537 | 42.504 | 81.387 | 56.617 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.03 | 2.01 | 8541 | 0 | 1697.947 | 6.502 | 11.261 | 23.926 | 57.313 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.059 | 4.094 | 1903 | 0 | 376.126 | 41.967 | 43.903 | 61.489 | 78.504 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.034 | 2.017 | 4459 | 0 | 885.849 | 12.562 | 21.936 | 61.83 | 77.898 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.05 | 2.148 | 4459 | 0 | 883.006 | 12.636 | 19.724 | 59.107 | 77.898 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.014 | 2.205 | 6086 | 0 | 1213.752 | 8.869 | 15.81 | 36.039 | 78.293 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.041 | 4.197 | 3051 | 0 | 605.228 | 13.63 | 53.293 | 135.547 | 99.953 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.03 | 3.152 | 2764 | 0 | 549.488 | 20.348 | 38.24 | 88.34 | 99.23 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.026 | 3.398 | 2784 | 0 | 553.881 | 20.466 | 36.943 | 100.815 | 99.23 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.118 | 4104 | 0 | 817.661 | 13.747 | 27.29 | 35.346 | 107.332 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.059 | 3.895 | 2205 | 0 | 435.833 | 23.848 | 66.787 | 90.837 | 139.473 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.027 | 3.443 | 1663 | 0 | 275.937 | 41.173 | 54.866 | 87.823 | 122.699 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.915 | 3.418 | 1659 | 0 | 280.472 | 40.907 | 57.389 | 88.959 | 122.699 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.046 | 2.827 | 2057 | 0 | 407.649 | 29.024 | 38.575 | 63.889 | 146.809 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 7.047 | 4.631 | 1564 | 0 | 221.929 | 47.248 | 89.071 | 118.403 | 194.219 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.263 | 140.272 | 0 | 1440 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.017 | 5.018 | 0 | 960 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.014 | 0 | 720 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.013 | 5.01 | 0 | 480 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.009 | 0 | 360 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.008 | 0 | 240 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.005 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.633 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15192 | 0 | 3034.944 | 6.08 | 7.352 | 8.165 | 235.344 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15017 | 0 | 3000.318 | 6.16 | 7.397 | 8.051 | 251.652 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15521 | 0 | 3101.113 | 5.955 | 7.062 | 7.902 | 267.719 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 15464 | 0 | 3089.82 | 6.025 | 6.996 | 7.531 | 270.949 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.005 | 15231 | 0 | 3042.186 | 6.073 | 7.224 | 7.874 | 296.629 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 13151 | 0 | 2627.223 | 7.067 | 8.425 | 9.127 | 302.262 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 15368 | 0 | 3070.756 | 6.044 | 7.066 | 7.548 | 313.426 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15042 | 0 | 3005.407 | 6.178 | 7.237 | 7.816 | 325.992 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11706 | 0 | 2338.032 | 7.985 | 9.242 | 9.808 | 418.168 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.014 | 2.013 | 5989 | 0 | 1194.554 | 15.745 | 17.789 | 18.814 | 382.148 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.008 | 12012 | 0 | 2398.863 | 7.764 | 8.968 | 9.673 | 395.805 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11989 | 0 | 2394.943 | 7.788 | 8.9 | 9.824 | 347.008 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.008 | 8934 | 0 | 1783.363 | 10.041 | 13.199 | 24.285 | 451.301 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.025 | 2.025 | 3266 | 0 | 649.919 | 29.067 | 31.586 | 32.966 | 419.914 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 9205 | 0 | 1837.576 | 9.641 | 13.378 | 25.179 | 393.598 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.009 | 9431 | 0 | 1878.713 | 9.447 | 12.886 | 23.797 | 379.73 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.011 | 6363 | 0 | 1269.313 | 13.942 | 19.924 | 32.835 | 554.527 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.049 | 2.77 | 1824 | 0 | 361.256 | 52.345 | 55.973 | 58.182 | 478.645 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.012 | 6731 | 0 | 1342.194 | 13.058 | 19.189 | 34.565 | 444.508 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.016 | 2.011 | 6782 | 0 | 1351.967 | 12.906 | 19.047 | 32.857 | 406.551 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.019 | 3898 | 0 | 776.246 | 23.049 | 39.976 | 44.472 | 533.531 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.155 | 5.083 | 1000 | 0 | 193.982 | 97.506 | 104.62 | 109.716 | 491.074 | 19 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.02 | 4054 | 0 | 807.497 | 21.955 | 39.585 | 44.083 | 478.027 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.02 | 4138 | 0 | 824.567 | 21.541 | 39.994 | 44.155 | 437.422 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.04 | 2.306 | 2085 | 0 | 413.664 | 43.331 | 62.303 | 71.887 | 477.215 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.732 | 9.694 | 1000 | 0 | 102.756 | 183.281 | 198.686 | 208.16 | 539.059 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.033 | 2.035 | 2614 | 0 | 519.422 | 36.123 | 39.791 | 43.862 | 540.641 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.034 | 2.032 | 2706 | 0 | 537.526 | 34.95 | 38.462 | 42.335 | 475.465 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 57.206 | 39.643 | 1440 | 0 | 25.172 | 2600.403 | 2986.924 | 3016.251 | 475.703 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 39.016 | 39.886 | 960 | 0 | 24.605 | 1312.923 | 3032.865 | 6827.9 | 512.395 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 39.91 | 34.226 | 720 | 0 | 18.04 | 1413.274 | 2117.486 | 2148.293 | 519.918 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 20.049 | 22.792 | 480 | 0 | 23.941 | 861.02 | 1112.607 | 1221.163 | 514.805 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.969 | 19.952 | 360 | 0 | 18.028 | 755.494 | 1202.966 | 1246.484 | 514.934 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.088 | 14.259 | 245 | 0 | 14.337 | 455.698 | 878.152 | 907.808 | 510.371 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.739 | 5.702 | 120 | 0 | 20.91 | 286.545 | 303.239 | 307.669 | 502.379 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.0 | 3615 | 0 | 722.911 | 1.351 | 1.476 | 1.834 | 571.105 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.002 | 938 | 0 | 187.549 | 5.294 | 5.416 | 5.706 | 582.078 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.01 | 2.001 | 483 | 0 | 96.413 | 10.323 | 10.517 | 10.871 | 577.906 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.011 | 2.023 | 99 | 0 | 19.757 | 50.532 | 50.65 | 50.788 | 578.031 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.035 | 2.014 | 50 | 0 | 9.93 | 100.604 | 101.039 | 101.16 | 578.031 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.022 | 2.008 | 25 | 0 | 4.978 | 200.683 | 201.475 | 201.52 | 578.031 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15194 | 0 | 3035.041 | 6.063 | 7.345 | 8.185 | 236.676 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14986 | 0 | 2994.43 | 6.173 | 7.401 | 8.115 | 260.551 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15199 | 0 | 3037.018 | 6.065 | 7.274 | 8.231 | 273.328 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14922 | 0 | 2981.181 | 6.228 | 7.324 | 7.874 | 278.406 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 14963 | 0 | 2988.887 | 6.179 | 7.37 | 8.071 | 307.914 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12929 | 0 | 2582.656 | 7.19 | 8.573 | 9.422 | 304.34 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15011 | 0 | 2998.449 | 6.18 | 7.331 | 7.947 | 315.867 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14708 | 0 | 2938.46 | 6.31 | 7.456 | 8.103 | 328.223 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11208 | 0 | 2238.264 | 8.344 | 9.739 | 10.528 | 443.535 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.013 | 5861 | 0 | 1168.761 | 16.018 | 18.391 | 20.724 | 394.043 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.007 | 11760 | 0 | 2348.145 | 7.945 | 9.178 | 9.952 | 411.832 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.007 | 11784 | 0 | 2353.012 | 7.937 | 9.154 | 9.779 | 334.57 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.009 | 8534 | 0 | 1703.993 | 10.457 | 14.054 | 28.853 | 437.762 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.028 | 2.026 | 3128 | 0 | 622.074 | 30.32 | 33.236 | 34.738 | 436.586 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 8814 | 0 | 1759.648 | 10.077 | 13.635 | 28.136 | 405.77 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 8801 | 0 | 1757.077 | 10.076 | 13.742 | 28.39 | 368.512 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.032 | 2.013 | 6404 | 0 | 1272.594 | 13.865 | 18.59 | 34.288 | 504.219 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.055 | 2.799 | 1833 | 0 | 362.631 | 51.875 | 56.493 | 57.846 | 506.84 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.011 | 6609 | 0 | 1317.797 | 13.251 | 18.216 | 35.167 | 454.449 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.011 | 6783 | 0 | 1353.61 | 12.929 | 17.949 | 34.593 | 395.648 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.045 | 2.02 | 3936 | 0 | 780.252 | 22.868 | 42.119 | 46.145 | 493.281 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.243 | 5.129 | 1000 | 0 | 190.72 | 99.675 | 106.165 | 109.706 | 494.273 | 19 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.033 | 4029 | 0 | 802.958 | 22.15 | 42.02 | 45.482 | 498.059 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.019 | 4052 | 0 | 807.121 | 21.975 | 42.951 | 46.189 | 440.906 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.038 | 2.07 | 2362 | 0 | 468.805 | 40.274 | 44.072 | 45.93 | 509.316 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 10.075 | 9.748 | 1000 | 0 | 99.256 | 190.762 | 202.241 | 210.198 | 525.285 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.037 | 2.035 | 2560 | 0 | 508.266 | 37.02 | 40.396 | 43.97 | 518.348 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.035 | 2.034 | 2563 | 0 | 509.016 | 36.904 | 40.716 | 46.768 | 467.57 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 71.413 | 38.04 | 1440 | 0 | 20.164 | 2633.459 | 3713.215 | 3794.131 | 469.57 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 54.333 | 42.767 | 960 | 0 | 17.669 | 1829.203 | 2884.985 | 2907.342 | 515.219 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 34.282 | 28.604 | 720 | 0 | 21.002 | 1547.01 | 1745.375 | 1778.871 | 523.926 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.72 | 31.353 | 480 | 0 | 18.663 | 873.177 | 1320.541 | 1337.568 | 529.551 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.672 | 19.947 | 365 | 0 | 14.218 | 834.349 | 1315.279 | 1347.861 | 534.977 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.126 | 17.095 | 240 | 0 | 14.014 | 481.459 | 879.821 | 894.339 | 536.727 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.63 | 8.563 | 135 | 0 | 15.644 | 202.739 | 445.696 | 496.148 | 536.727 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.0 | 3610 | 0 | 721.803 | 1.349 | 1.475 | 1.857 | 549.141 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.004 | 920 | 0 | 183.937 | 5.385 | 5.55 | 5.908 | 564.133 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.009 | 475 | 0 | 94.934 | 10.478 | 10.607 | 10.77 | 562.074 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.031 | 2.032 | 99 | 0 | 19.679 | 50.734 | 50.899 | 51.376 | 560.57 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.04 | 2.018 | 50 | 0 | 9.921 | 100.713 | 100.784 | 101.026 | 562.09 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.02 | 2.009 | 25 | 0 | 4.98 | 200.746 | 200.786 | 200.797 | 562.152 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 14547 | 0 | 2906.182 | 6.344 | 7.772 | 8.805 | 237.348 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14198 | 0 | 2836.658 | 6.512 | 7.936 | 8.858 | 255.371 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14482 | 0 | 2893.652 | 6.382 | 7.689 | 8.738 | 273.754 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14634 | 0 | 2923.729 | 6.337 | 7.646 | 8.546 | 276.328 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14769 | 0 | 2950.583 | 6.284 | 7.483 | 8.197 | 299.75 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12262 | 0 | 2448.906 | 7.573 | 9.101 | 9.898 | 302.996 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 14836 | 0 | 2964.126 | 6.244 | 7.493 | 8.162 | 316.563 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 14547 | 0 | 2906.201 | 6.393 | 7.649 | 8.422 | 327.648 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.007 | 11295 | 0 | 2255.283 | 8.275 | 9.694 | 10.442 | 415.117 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.015 | 5669 | 0 | 1130.821 | 16.686 | 18.707 | 19.706 | 396.098 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 11212 | 0 | 2238.474 | 8.349 | 9.702 | 10.393 | 419.938 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11259 | 0 | 2248.835 | 8.259 | 9.694 | 10.753 | 333.32 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.008 | 8047 | 0 | 1606.245 | 10.963 | 15.111 | 31.627 | 449.586 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.027 | 2.027 | 3082 | 0 | 613.104 | 30.82 | 33.747 | 35.053 | 445.754 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.009 | 8422 | 0 | 1681.119 | 10.444 | 14.444 | 31.435 | 404.84 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.009 | 8533 | 0 | 1703.555 | 10.326 | 14.253 | 31.296 | 369.727 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.014 | 6085 | 0 | 1213.966 | 14.406 | 20.628 | 38.194 | 526.105 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.05 | 2.867 | 1737 | 0 | 343.955 | 54.868 | 59.473 | 62.265 | 454.43 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.011 | 6442 | 0 | 1285.252 | 13.51 | 18.084 | 37.961 | 421.508 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.036 | 2.011 | 6378 | 0 | 1266.455 | 13.599 | 19.779 | 40.054 | 393.426 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.021 | 2.035 | 3915 | 0 | 779.784 | 22.819 | 45.161 | 50.264 | 528.578 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.303 | 5.283 | 1000 | 0 | 188.586 | 100.098 | 107.231 | 111.244 | 503.355 | 19 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.021 | 2.019 | 4073 | 0 | 811.266 | 21.757 | 45.183 | 48.874 | 478.781 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.024 | 2.028 | 4147 | 0 | 825.489 | 21.432 | 43.977 | 46.966 | 421.152 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.039 | 2.14 | 2312 | 0 | 458.848 | 40.808 | 45.683 | 49.908 | 529.094 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.841 | 10.039 | 1000 | 0 | 101.616 | 186.04 | 199.333 | 207.136 | 543.035 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.033 | 2.036 | 2650 | 0 | 526.479 | 35.675 | 39.294 | 42.177 | 528.168 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.033 | 2.033 | 2750 | 0 | 546.397 | 34.258 | 37.813 | 41.695 | 465.082 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 59.989 | 49.602 | 1440 | 0 | 24.005 | 2653.34 | 3047.855 | 3092.521 | 451.887 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 59.765 | 37.099 | 960 | 0 | 16.063 | 2770.286 | 3025.792 | 3069.06 | 480.98 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 45.664 | 42.715 | 720 | 0 | 15.767 | 1307.286 | 2404.13 | 2504.395 | 503.723 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 28.58 | 22.845 | 485 | 0 | 16.97 | 1300.694 | 1548.349 | 1603.792 | 527.289 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 19.941 | 34.149 | 360 | 0 | 18.053 | 628.13 | 1139.698 | 1223.415 | 526.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.074 | 14.257 | 240 | 0 | 14.057 | 757.961 | 879.583 | 899.377 | 527.422 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.538 | 8.533 | 125 | 0 | 14.64 | 298.446 | 437.733 | 469.548 | 533.488 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.0 | 2.001 | 3627 | 0 | 725.344 | 1.347 | 1.462 | 1.801 | 564.352 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.004 | 938 | 0 | 187.513 | 5.292 | 5.387 | 5.697 | 580.453 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.008 | 2.005 | 482 | 0 | 96.24 | 10.334 | 10.566 | 10.902 | 576.383 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.016 | 2.027 | 99 | 0 | 19.737 | 50.605 | 50.687 | 50.94 | 576.383 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.039 | 2.016 | 50 | 0 | 9.923 | 100.667 | 100.927 | 101.359 | 576.387 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.02 | 2.009 | 25 | 0 | 4.98 | 200.71 | 200.768 | 200.866 | 576.387 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.173 | 4.382 | 1691 | 0 | 273.954 | 40.994 | 42.438 | 44.205 | 36.684 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.174 | 4.348 | 1691 | 0 | 273.906 | 41.099 | 42.527 | 44.128 | 37.828 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.172 | 4.301 | 1691 | 0 | 273.991 | 40.994 | 42.379 | 44.114 | 38.488 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.179 | 4.349 | 1691 | 0 | 273.671 | 41.055 | 42.479 | 44.043 | 39.094 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.191 | 4.294 | 1691 | 0 | 273.144 | 40.993 | 42.173 | 44.321 | 39.43 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.2 | 4.263 | 1686 | 0 | 271.948 | 41.182 | 42.856 | 44.71 | 39.523 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.157 | 4.282 | 1691 | 0 | 274.664 | 40.988 | 42.266 | 45.001 | 39.617 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.177 | 4.323 | 1689 | 0 | 273.456 | 41.014 | 42.682 | 44.932 | 40.602 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.049 | 2.071 | 5973 | 0 | 1182.974 | 5.515 | 41.07 | 49.839 | 40.637 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.052 | 2.046 | 2556 | 0 | 505.934 | 40.91 | 41.981 | 277.999 | 40.637 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.007 | 11578 | 0 | 2311.349 | 5.06 | 6.718 | 11.622 | 42.504 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.05 | 4.11 | 3395 | 0 | 672.33 | 6.062 | 42.074 | 49.956 | 55.824 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.029 | 2.025 | 5734 | 0 | 1140.195 | 7.799 | 41.978 | 59.701 | 55.824 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.043 | 3.986 | 4191 | 0 | 831.007 | 8.417 | 42.476 | 131.892 | 55.824 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.009 | 2.009 | 8326 | 0 | 1662.061 | 6.493 | 11.389 | 30.288 | 56.324 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 4.213 | 1958 | 0 | 388.303 | 41.959 | 44.054 | 64.253 | 73.414 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.02 | 2.142 | 4511 | 0 | 898.569 | 12.233 | 19.627 | 59.229 | 72.902 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.015 | 2.144 | 4421 | 0 | 881.469 | 12.47 | 19.81 | 58.865 | 72.902 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.014 | 2.013 | 5676 | 0 | 1131.987 | 9.405 | 16.632 | 38.814 | 74.133 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.053 | 3.603 | 3554 | 0 | 703.401 | 12.469 | 53.735 | 77.877 | 93.738 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.055 | 3.415 | 2853 | 0 | 564.428 | 19.599 | 43.737 | 72.651 | 92.469 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.028 | 3.404 | 2811 | 0 | 559.073 | 19.855 | 46.078 | 84.49 | 92.473 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.022 | 2.261 | 3815 | 0 | 759.727 | 14.413 | 29.979 | 46.24 | 100.648 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.065 | 3.699 | 2306 | 0 | 455.325 | 22.42 | 62.853 | 97.054 | 127.516 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.446 | 3.285 | 1754 | 0 | 322.074 | 35.527 | 49.918 | 94.248 | 118.484 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.408 | 3.157 | 1752 | 0 | 323.951 | 35.568 | 50.558 | 67.802 | 118.484 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.037 | 2.837 | 2399 | 0 | 476.296 | 24.55 | 32.464 | 49.788 | 143.898 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.756 | 4.536 | 1600 | 0 | 236.836 | 43.299 | 85.976 | 237.744 | 193.508 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.255 | 140.216 | 0 | 1440 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.022 | 0 | 960 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.018 | 5.013 | 0 | 720 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.012 | 0 | 480 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.009 | 0 | 360 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.008 | 0 | 240 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.004 | 0 | 10 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 190.137 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.168 | 4.443 | 1691 | 0 | 274.138 | 41.001 | 42.397 | 44.874 | 36.469 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.178 | 4.403 | 1687 | 0 | 273.087 | 41.036 | 42.602 | 44.482 | 38.07 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.169 | 4.327 | 1686 | 0 | 273.283 | 41.029 | 42.561 | 44.485 | 39.094 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.176 | 4.338 | 1691 | 0 | 273.808 | 41.023 | 42.509 | 44.769 | 39.492 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.19 | 4.298 | 1690 | 0 | 273.033 | 40.993 | 42.312 | 44.71 | 39.801 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.194 | 4.282 | 1689 | 0 | 272.7 | 41.0 | 42.429 | 45.432 | 39.918 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.202 | 4.26 | 1686 | 0 | 271.862 | 41.253 | 42.807 | 44.64 | 39.973 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.175 | 4.271 | 1691 | 0 | 273.842 | 40.999 | 42.387 | 45.233 | 41.059 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.07 | 2.008 | 2668 | 0 | 526.282 | 8.654 | 41.981 | 228.598 | 41.063 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.046 | 2.052 | 3871 | 0 | 767.193 | 5.587 | 41.928 | 61.363 | 41.07 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.006 | 2.007 | 12048 | 0 | 2406.476 | 4.868 | 6.275 | 10.348 | 43.039 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.048 | 2.47 | 3543 | 0 | 701.817 | 6.06 | 41.982 | 49.622 | 54.875 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.012 | 2.035 | 6491 | 0 | 1295.111 | 7.803 | 27.31 | 68.901 | 54.879 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 2.012 | 5810 | 0 | 1152.332 | 7.894 | 41.947 | 55.283 | 54.879 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.008 | 2.009 | 8517 | 0 | 1700.68 | 6.34 | 10.904 | 42.331 | 56.066 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.054 | 3.862 | 1971 | 0 | 389.985 | 41.954 | 43.134 | 67.325 | 73.938 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 2.057 | 4530 | 0 | 897.931 | 12.025 | 20.673 | 63.296 | 73.938 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.016 | 2.028 | 4542 | 0 | 905.437 | 12.194 | 19.099 | 55.434 | 73.938 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.014 | 2.012 | 5626 | 0 | 1122.028 | 9.313 | 17.993 | 39.004 | 74.996 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.042 | 3.997 | 3335 | 0 | 661.426 | 12.272 | 53.096 | 83.966 | 92.031 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.03 | 3.577 | 2943 | 0 | 585.101 | 18.871 | 44.217 | 95.997 | 92.055 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.039 | 3.306 | 2831 | 0 | 561.788 | 19.729 | 46.293 | 133.971 | 92.055 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.024 | 2.182 | 3858 | 0 | 767.893 | 14.029 | 29.221 | 60.33 | 98.922 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.061 | 3.591 | 2303 | 0 | 455.068 | 22.176 | 64.576 | 92.511 | 132.477 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.565 | 3.53 | 1719 | 0 | 308.885 | 37.404 | 52.586 | 84.775 | 122.984 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.534 | 3.328 | 1746 | 0 | 315.495 | 36.164 | 50.111 | 86.051 | 122.984 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 2.796 | 2102 | 0 | 416.676 | 28.844 | 34.624 | 58.762 | 150.66 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.644 | 4.317 | 1590 | 0 | 239.306 | 44.652 | 84.402 | 230.819 | 202.527 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.255 | 140.205 | 0 | 1440 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.022 | 5.022 | 0 | 960 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.024 | 0 | 720 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.012 | 0 | 480 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.011 | 5.009 | 0 | 360 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.009 | 5.008 | 0 | 240 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.007 | 5.007 | 0 | 120 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 191.156 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.166 | 4.412 | 1691 | 0 | 274.258 | 41.009 | 42.407 | 43.748 | 36.746 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.167 | 4.314 | 1691 | 0 | 274.212 | 40.998 | 42.423 | 44.951 | 37.988 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.183 | 4.295 | 1688 | 0 | 273.012 | 41.083 | 42.677 | 44.237 | 38.609 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.182 | 4.341 | 1691 | 0 | 273.534 | 41.009 | 42.634 | 44.135 | 39.121 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.168 | 4.288 | 1690 | 0 | 273.997 | 41.003 | 42.479 | 44.221 | 39.414 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.157 | 4.298 | 1691 | 0 | 274.649 | 40.991 | 42.205 | 43.273 | 39.461 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.193 | 4.299 | 1691 | 0 | 273.056 | 41.106 | 42.707 | 44.253 | 39.543 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.19 | 4.323 | 1690 | 0 | 273.036 | 40.996 | 42.447 | 45.447 | 40.547 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.057 | 4.156 | 2003 | 0 | 396.11 | 40.969 | 41.982 | 47.943 | 40.586 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.049 | 2.01 | 2630 | 0 | 520.884 | 40.723 | 41.98 | 267.238 | 40.598 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.007 | 2.007 | 11868 | 0 | 2370.162 | 4.936 | 6.389 | 10.585 | 42.434 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.062 | 4.073 | 3817 | 0 | 754.006 | 5.996 | 41.975 | 63.396 | 53.992 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 4.022 | 6795 | 0 | 1355.367 | 7.74 | 13.281 | 55.451 | 53.992 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.017 | 2.023 | 4314 | 0 | 859.958 | 8.075 | 42.471 | 60.467 | 53.992 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.01 | 8535 | 0 | 1702.536 | 6.342 | 10.774 | 34.854 | 54.129 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.051 | 4.156 | 2137 | 0 | 423.045 | 41.921 | 43.224 | 63.771 | 69.766 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.041 | 2.021 | 4572 | 0 | 907.045 | 11.88 | 19.835 | 60.437 | 69.766 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.019 | 2.028 | 4457 | 0 | 887.964 | 12.294 | 20.038 | 65.034 | 69.766 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.013 | 2.016 | 5937 | 0 | 1184.31 | 8.914 | 15.227 | 38.485 | 71.336 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.054 | 3.858 | 3061 | 0 | 605.676 | 12.64 | 52.384 | 142.97 | 91.766 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.058 | 3.105 | 2875 | 0 | 568.386 | 18.997 | 47.294 | 90.055 | 88.926 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.045 | 3.589 | 2837 | 0 | 562.375 | 19.522 | 46.724 | 84.497 | 88.926 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.025 | 2.23 | 3850 | 0 | 766.11 | 14.26 | 28.851 | 50.071 | 99.297 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.029 | 4.106 | 2332 | 0 | 463.749 | 22.389 | 64.523 | 89.039 | 120.672 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.573 | 3.511 | 1732 | 0 | 310.781 | 36.947 | 52.884 | 85.143 | 118.988 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.624 | 3.337 | 1730 | 0 | 307.612 | 36.913 | 53.369 | 115.469 | 119.0 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 5.044 | 2.774 | 2481 | 0 | 491.843 | 22.704 | 36.67 | 59.208 | 148.34 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-12r | 12 | 6.453 | 4.523 | 1592 | 0 | 246.719 | 43.117 | 82.159 | 256.56 | 186.109 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 200.254 | 140.204 | 0 | 1440 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.019 | 5.023 | 0 | 960 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.015 | 5.019 | 0 | 720 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.011 | 0 | 480 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.012 | 5.009 | 0 | 360 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.008 | 0 | 240 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.008 | 5.007 | 0 | 120 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.004 | 5.006 | 0 | 10 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.003 | 0 | 10 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-12r | 12 | 5.006 | 5.006 | 0 | 10 | 0.0 |  |  |  | 182.844 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15633 | 0 | 3123.56 | 5.876 | 7.192 | 8.128 | 248.191 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 15145 | 0 | 3025.361 | 6.101 | 7.395 | 8.227 | 266.164 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15525 | 0 | 3101.267 | 5.967 | 7.195 | 8.082 | 279.633 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 14901 | 0 | 2977.268 | 6.225 | 7.467 | 8.299 | 287.332 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15210 | 0 | 3038.395 | 6.079 | 7.407 | 8.149 | 317.262 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.006 | 12634 | 0 | 2522.635 | 7.381 | 8.838 | 9.627 | 319.383 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 14822 | 0 | 2960.632 | 6.212 | 7.627 | 9.729 | 328.512 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15006 | 0 | 2998.036 | 6.181 | 7.362 | 8.219 | 342.73 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 11492 | 0 | 2295.103 | 8.016 | 9.919 | 11.531 | 433.527 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.015 | 2.013 | 5830 | 0 | 1162.507 | 16.144 | 18.467 | 20.645 | 399.211 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.007 | 11821 | 0 | 2361.288 | 7.892 | 9.114 | 10.203 | 418.57 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.025 | 11704 | 0 | 2337.578 | 7.918 | 9.237 | 11.941 | 348.273 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.01 | 8291 | 0 | 1655.294 | 10.522 | 14.084 | 38.388 | 477.891 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.029 | 2.026 | 3138 | 0 | 623.925 | 30.25 | 33.286 | 35.408 | 445.414 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.008 | 8474 | 0 | 1691.502 | 10.155 | 14.252 | 38.878 | 394.707 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 8719 | 0 | 1740.699 | 9.893 | 13.71 | 37.02 | 377.742 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.014 | 2.04 | 6202 | 0 | 1237.016 | 13.849 | 20.578 | 42.936 | 543.426 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.051 | 2.787 | 1805 | 0 | 357.345 | 52.825 | 57.414 | 59.533 | 493.656 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.012 | 6304 | 0 | 1257.853 | 13.59 | 19.091 | 44.192 | 428.438 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.013 | 6352 | 0 | 1267.54 | 13.339 | 19.776 | 45.51 | 403.98 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.02 | 3840 | 0 | 764.703 | 22.876 | 51.816 | 55.326 | 533.953 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.101 | 5.074 | 1005 | 0 | 197.036 | 95.907 | 103.263 | 106.001 | 523.0 | 19 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.022 | 2.017 | 4020 | 0 | 800.534 | 21.782 | 49.371 | 53.868 | 491.27 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.023 | 2.019 | 4034 | 0 | 803.101 | 21.764 | 48.585 | 52.717 | 443.773 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.036 | 2.128 | 2326 | 0 | 461.867 | 40.555 | 44.948 | 50.944 | 537.055 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.915 | 9.764 | 1000 | 0 | 100.86 | 186.886 | 206.459 | 222.384 | 574.723 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.035 | 2.037 | 2579 | 0 | 512.17 | 36.834 | 40.608 | 43.273 | 536.414 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.035 | 2.052 | 2546 | 0 | 505.661 | 37.01 | 40.896 | 45.237 | 458.926 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 65.842 | 37.522 | 1440 | 0 | 21.871 | 2464.088 | 3411.495 | 3454.259 | 479.215 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 48.759 | 42.818 | 960 | 0 | 19.689 | 1766.836 | 2586.182 | 2611.664 | 499.211 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 40.148 | 45.565 | 720 | 0 | 17.934 | 1247.37 | 2113.948 | 2158.659 | 504.0 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.318 | 20.037 | 480 | 0 | 27.717 | 861.067 | 893.923 | 911.46 | 509.418 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 20.116 | 28.607 | 360 | 0 | 17.896 | 827.132 | 1204.777 | 1259.411 | 510.234 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.544 | 17.144 | 240 | 0 | 20.79 | 434.319 | 749.759 | 813.599 | 515.117 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 8.606 | 11.374 | 125 | 0 | 14.524 | 298.945 | 444.333 | 450.964 | 520.105 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.002 | 2.001 | 1641 | 0 | 328.084 | 3.057 | 3.194 | 3.512 | 543.102 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.004 | 2.005 | 483 | 0 | 96.532 | 10.444 | 10.56 | 10.812 | 543.102 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.001 | 2.001 | 358 | 0 | 71.59 | 13.944 | 14.214 | 14.478 | 547.684 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.007 | 2.027 | 99 | 0 | 19.773 | 50.487 | 50.651 | 51.029 | 547.746 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.031 | 2.015 | 50 | 0 | 9.939 | 100.551 | 100.661 | 100.772 | 549.27 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.631 | 200.671 | 200.75 | 550.922 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15878 | 0 | 3172.388 | 5.798 | 7.023 | 7.921 | 244.617 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.005 | 15465 | 0 | 3088.96 | 5.985 | 7.136 | 7.876 | 262.734 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.005 | 16116 | 0 | 3218.659 | 5.746 | 6.839 | 7.469 | 273.203 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.004 | 2.005 | 15911 | 0 | 3179.372 | 5.842 | 6.837 | 7.357 | 279.41 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15990 | 0 | 3194.79 | 5.793 | 6.817 | 7.392 | 306.0 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.006 | 13626 | 0 | 2721.072 | 6.813 | 8.042 | 8.815 | 302.102 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 15833 | 0 | 3163.695 | 5.834 | 6.878 | 8.233 | 311.047 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15417 | 0 | 3079.804 | 6.03 | 7.085 | 7.626 | 323.359 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12150 | 0 | 2426.754 | 7.703 | 8.798 | 9.588 | 400.77 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.014 | 2.013 | 6033 | 0 | 1203.243 | 15.685 | 17.578 | 18.977 | 384.746 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 12313 | 0 | 2459.098 | 7.622 | 8.664 | 9.191 | 413.508 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 11921 | 0 | 2380.869 | 7.849 | 9.053 | 9.971 | 332.813 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.008 | 8700 | 0 | 1737.269 | 10.013 | 13.53 | 36.94 | 468.422 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.026 | 2.025 | 3269 | 0 | 650.398 | 29.123 | 31.965 | 33.268 | 451.316 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.009 | 2.008 | 9221 | 0 | 1840.837 | 9.377 | 12.642 | 35.601 | 385.305 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.024 | 2.007 | 8851 | 0 | 1761.696 | 9.735 | 13.636 | 37.113 | 377.652 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.013 | 6368 | 0 | 1270.97 | 13.415 | 19.624 | 43.678 | 541.563 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.048 | 2.707 | 1862 | 0 | 368.88 | 51.083 | 55.847 | 58.361 | 449.438 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.011 | 6757 | 0 | 1348.398 | 12.606 | 17.152 | 43.065 | 425.031 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.043 | 2.011 | 6577 | 0 | 1304.245 | 12.71 | 17.819 | 45.733 | 413.828 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.019 | 2.018 | 4028 | 0 | 802.629 | 21.735 | 49.184 | 51.903 | 498.313 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.086 | 4.849 | 1018 | 0 | 200.16 | 94.322 | 102.079 | 106.594 | 491.391 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.018 | 4143 | 0 | 825.238 | 21.294 | 47.818 | 52.004 | 456.992 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.017 | 4172 | 0 | 831.453 | 20.918 | 48.299 | 55.163 | 449.652 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.034 | 2.034 | 2406 | 0 | 477.929 | 38.227 | 44.822 | 73.79 | 500.488 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.602 | 9.459 | 1000 | 0 | 104.143 | 182.214 | 193.558 | 202.964 | 518.938 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.037 | 2.035 | 2602 | 0 | 516.57 | 36.271 | 39.801 | 45.866 | 494.422 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.035 | 2.032 | 2635 | 0 | 523.299 | 35.781 | 39.846 | 48.226 | 476.168 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 60.211 | 39.842 | 1440 | 0 | 23.916 | 2698.889 | 3046.797 | 3066.784 | 481.582 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 60.058 | 42.579 | 960 | 0 | 15.984 | 1671.899 | 3058.007 | 3091.937 | 512.32 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 31.668 | 37.294 | 720 | 0 | 22.736 | 1356.83 | 1693.618 | 1733.811 | 523.359 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 28.767 | 22.806 | 480 | 0 | 16.686 | 882.268 | 1672.295 | 1703.408 | 530.375 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.299 | 22.779 | 360 | 0 | 20.81 | 831.273 | 882.448 | 906.564 | 532.246 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 14.304 | 17.246 | 245 | 0 | 17.128 | 543.323 | 841.413 | 856.987 | 534.879 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.423 | 8.555 | 130 | 0 | 11.38 | 438.198 | 786.817 | 828.51 | 535.012 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.0 | 1626 | 0 | 325.027 | 3.065 | 3.255 | 3.581 | 550.016 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.005 | 2.005 | 482 | 0 | 96.312 | 10.436 | 10.586 | 10.68 | 563.398 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.005 | 2.01 | 364 | 0 | 72.73 | 13.83 | 14.086 | 14.214 | 573.242 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.008 | 2.024 | 99 | 0 | 19.769 | 50.522 | 50.633 | 50.769 | 573.242 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.031 | 2.014 | 50 | 0 | 9.939 | 100.546 | 100.617 | 100.913 | 573.305 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.018 | 2.008 | 25 | 0 | 4.982 | 200.61 | 200.857 | 201.074 | 573.309 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15057 | 0 | 3008.422 | 6.14 | 7.49 | 8.395 | 235.574 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.005 | 15574 | 0 | 3111.329 | 5.932 | 7.092 | 7.808 | 246.09 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 16039 | 0 | 3204.72 | 5.745 | 6.888 | 8.036 | 256.43 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 15804 | 0 | 3157.504 | 5.868 | 6.927 | 7.495 | 260.176 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15923 | 0 | 3181.493 | 5.818 | 6.931 | 7.613 | 281.895 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.006 | 13643 | 0 | 2725.787 | 6.822 | 8.001 | 8.639 | 277.242 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 16066 | 0 | 3210.007 | 5.772 | 6.794 | 7.4 | 284.262 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.005 | 2.005 | 15715 | 0 | 3140.068 | 5.907 | 6.975 | 7.608 | 294.172 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.006 | 2.006 | 12436 | 0 | 2484.09 | 7.528 | 8.538 | 9.014 | 387.945 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.014 | 2.013 | 6027 | 0 | 1202.044 | 15.507 | 18.641 | 21.302 | 347.215 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.006 | 12233 | 0 | 2443.04 | 7.599 | 8.917 | 9.667 | 385.426 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.007 | 2.007 | 12382 | 0 | 2472.76 | 7.555 | 8.604 | 9.083 | 304.559 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.01 | 2.01 | 8728 | 0 | 1742.231 | 9.856 | 13.492 | 39.533 | 435.023 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.026 | 2.029 | 3260 | 0 | 648.675 | 29.167 | 32.069 | 33.392 | 398.566 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.012 | 9041 | 0 | 1805.186 | 9.527 | 13.109 | 37.476 | 372.73 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.008 | 2.037 | 8950 | 0 | 1787.23 | 9.613 | 13.026 | 39.018 | 337.188 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.013 | 2.012 | 6307 | 0 | 1258.118 | 13.424 | 19.89 | 45.655 | 512.188 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.051 | 2.894 | 1850 | 0 | 366.279 | 51.405 | 56.514 | 58.811 | 426.613 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.011 | 2.011 | 6566 | 0 | 1310.409 | 12.836 | 18.167 | 47.081 | 368.176 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.012 | 2.049 | 6549 | 0 | 1306.583 | 12.799 | 19.348 | 47.532 | 358.434 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.021 | 2.018 | 3977 | 0 | 792.011 | 22.097 | 49.997 | 54.654 | 481.02 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.082 | 4.973 | 1012 | 0 | 199.128 | 95.175 | 102.883 | 108.286 | 440.43 | 19 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.018 | 2.02 | 4168 | 0 | 830.598 | 20.986 | 50.184 | 54.352 | 420.574 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.02 | 2.019 | 4162 | 0 | 829.091 | 21.011 | 50.431 | 54.13 | 393.766 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.037 | 2.037 | 2497 | 0 | 495.767 | 37.765 | 41.604 | 47.581 | 450.664 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 9.534 | 9.512 | 1000 | 0 | 104.89 | 180.014 | 193.259 | 199.5 | 462.078 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.034 | 2.036 | 2564 | 0 | 509.298 | 36.612 | 41.387 | 52.541 | 423.422 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-4w-3t | 12 | 5.038 | 2.033 | 2582 | 0 | 512.468 | 36.537 | 40.823 | 45.916 | 413.52 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 57.574 | 43.551 | 1440 | 0 | 25.011 | 2631.673 | 3001.475 | 3024.839 | 443.949 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 40.121 | 42.641 | 960 | 0 | 23.928 | 1731.003 | 2141.424 | 2164.245 | 451.434 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 40.078 | 31.281 | 720 | 0 | 17.965 | 1256.894 | 2111.603 | 2166.985 | 462.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 25.873 | 25.832 | 480 | 0 | 18.552 | 878.027 | 1321.198 | 1335.864 | 479.555 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.404 | 20.211 | 360 | 0 | 20.685 | 823.837 | 891.468 | 897.18 | 484.539 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 17.182 | 14.415 | 245 | 0 | 14.259 | 449.891 | 879.604 | 908.996 | 478.785 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 11.444 | 8.518 | 120 | 0 | 10.486 | 443.021 | 803.372 | 832.574 | 482.141 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.003 | 2.001 | 1635 | 0 | 326.823 | 3.061 | 3.151 | 3.447 | 505.984 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.01 | 2.008 | 481 | 0 | 96.015 | 10.468 | 10.571 | 10.784 | 517.836 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.006 | 2.012 | 361 | 0 | 72.118 | 13.859 | 14.026 | 14.215 | 532.59 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.004 | 2.018 | 99 | 0 | 19.784 | 50.454 | 50.818 | 51.313 | 533.988 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.03 | 2.013 | 50 | 0 | 9.941 | 100.517 | 100.645 | 100.948 | 533.988 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-4w-3t | 12 | 5.016 | 2.007 | 25 | 0 | 4.984 | 200.568 | 200.639 | 200.688 | 533.992 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

# Puma vs Raptor Simulation

Run ID: `20260810-035425`

## Environment

- Ruby: `ruby 4.0.6 (2026-07-14 revision 03b6d3f889) +PRISM [aarch64-linux]`
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
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.127 | 16.158 | 1000 | 0 | 62.007 | 40.983 | 41.952 | 42.555 | 29.297 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.134 | 1000 | 0 | 62.053 | 40.981 | 41.947 | 42.288 | 29.488 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.138 | 1000 | 0 | 62.051 | 40.977 | 41.961 | 42.398 | 29.492 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.145 | 1000 | 0 | 62.035 | 40.978 | 41.973 | 42.257 | 29.492 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.111 | 16.145 | 1000 | 0 | 62.07 | 40.976 | 41.973 | 42.409 | 29.539 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.149 | 1000 | 0 | 62.054 | 40.978 | 41.961 | 42.291 | 29.594 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.098 | 16.161 | 1000 | 0 | 62.121 | 40.973 | 41.763 | 42.238 | 29.609 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.172 | 1000 | 0 | 62.029 | 40.977 | 41.97 | 42.316 | 30.273 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.407 | 13.689 | 1000 | 0 | 69.411 | 40.955 | 41.945 | 42.929 | 30.352 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.038 | 13.308 | 1000 | 0 | 66.499 | 40.961 | 41.956 | 42.264 | 30.352 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 13491 | 0 | 2697.458 | 1.001 | 1.906 | 7.782 | 30.531 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.142 | 14.044 | 1000 | 0 | 70.712 | 40.967 | 41.999 | 42.659 | 41.32 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.909 | 8.65 | 1000 | 0 | 112.244 | 40.966 | 42.289 | 43.18 | 41.32 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.037 | 10.769 | 1000 | 0 | 90.602 | 41.033 | 42.253 | 43.119 | 41.32 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 10273 | 0 | 2053.853 | 1.279 | 2.539 | 7.023 | 41.32 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.247 | 10.859 | 1000 | 0 | 97.592 | 41.749 | 42.726 | 43.692 | 51.363 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.789 | 13.468 | 1000 | 0 | 72.524 | 41.936 | 42.939 | 43.404 | 51.363 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.038 | 13.243 | 1000 | 0 | 83.071 | 41.913 | 42.906 | 43.734 | 51.363 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 7279 | 0 | 1455.081 | 1.746 | 3.574 | 13.101 | 51.363 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.206 | 14.366 | 1000 | 0 | 81.926 | 41.968 | 43.427 | 44.747 | 65.363 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.603 | 14.652 | 1000 | 0 | 68.479 | 42.022 | 43.883 | 45.512 | 65.363 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.667 | 15.376 | 1000 | 0 | 68.181 | 42.63 | 44.002 | 45.902 | 65.363 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5396 | 0 | 1078.351 | 2.406 | 4.778 | 15.06 | 65.363 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.971 | 16.223 | 1000 | 0 | 66.795 | 42.979 | 44.98 | 48.921 | 74.746 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.311 | 15.901 | 1000 | 0 | 65.312 | 43.958 | 47.479 | 49.171 | 74.746 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.739 | 15.873 | 1000 | 0 | 63.536 | 43.992 | 46.594 | 49.364 | 74.746 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.008 | 2.007 | 3378 | 0 | 674.567 | 4.107 | 7.732 | 39.653 | 76.254 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.795 | 17.349 | 1000 | 0 | 59.54 | 45.06 | 49.209 | 51.606 | 88.043 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.019 | 28.78 | 363 | 0 | 12.509 | 241.929 | 243.014 | 19609.829 | 88.227 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.415 | 19.189 | 243 | 0 | 12.516 | 241.776 | 242.951 | 12805.934 | 88.242 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.392 | 183 | 0 | 12.512 | 241.764 | 243.007 | 10021.416 | 88.25 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.831 | 9.597 | 123 | 0 | 12.512 | 241.827 | 242.945 | 5229.85 | 88.262 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.834 | 9.584 | 103 | 0 | 10.474 | 241.913 | 242.508 | 5135.191 | 88.266 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 4.798 | 63 | 0 | 12.499 | 241.796 | 243.264 | 243.791 | 88.277 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.8 | 42 | 0 | 8.344 | 241.713 | 242.219 | 242.266 | 88.277 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.019 | 122 | 0 | 24.358 | 41.954 | 42.564 | 42.968 | 88.277 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.041 | 2.022 | 110 | 0 | 21.822 | 46.957 | 47.94 | 48.088 | 88.344 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.026 | 2.033 | 98 | 0 | 19.499 | 51.903 | 52.271 | 52.993 | 88.344 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.075 | 55 | 0 | 10.965 | 91.954 | 92.134 | 92.984 | 88.352 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.072 | 2.088 | 36 | 0 | 7.098 | 141.966 | 142.137 | 142.396 | 88.352 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.039 | 2.383 | 21 | 0 | 4.168 | 241.952 | 242.072 | 242.08 | 88.352 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.143 | 1000 | 0 | 62.083 | 40.973 | 41.965 | 42.251 | 27.285 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.115 | 16.143 | 1000 | 0 | 62.054 | 40.974 | 41.944 | 42.245 | 27.297 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.12 | 16.143 | 1000 | 0 | 62.033 | 40.978 | 41.942 | 42.436 | 27.457 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.125 | 16.165 | 1000 | 0 | 62.015 | 40.979 | 41.944 | 42.341 | 27.457 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.134 | 1000 | 0 | 62.086 | 40.976 | 41.918 | 42.345 | 27.457 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.146 | 1000 | 0 | 62.079 | 40.975 | 41.943 | 42.155 | 27.477 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.137 | 1000 | 0 | 62.085 | 40.976 | 41.801 | 42.368 | 27.504 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.174 | 1000 | 0 | 62.063 | 40.975 | 41.937 | 42.555 | 28.113 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.452 | 13.149 | 1000 | 0 | 64.718 | 40.965 | 41.96 | 42.125 | 28.113 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.016 | 14.629 | 1000 | 0 | 66.596 | 40.96 | 41.963 | 42.144 | 28.113 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 12858 | 0 | 2570.84 | 1.027 | 2.073 | 6.781 | 28.508 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.62 | 13.768 | 1000 | 0 | 79.24 | 40.969 | 41.977 | 42.616 | 31.691 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.452 | 9.09 | 1000 | 0 | 80.306 | 41.032 | 42.335 | 43.089 | 31.691 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.261 | 9.455 | 1000 | 0 | 88.8 | 41.067 | 42.355 | 43.31 | 31.691 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 10087 | 0 | 2016.497 | 1.283 | 2.595 | 33.609 | 32.141 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.365 | 12.725 | 1000 | 0 | 87.987 | 41.905 | 42.818 | 43.651 | 38.387 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.14 | 13.698 | 1000 | 0 | 76.106 | 41.932 | 42.916 | 43.674 | 37.43 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.627 | 13.303 | 1000 | 0 | 73.383 | 41.93 | 42.929 | 43.629 | 37.43 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 7447 | 0 | 1488.716 | 1.657 | 3.326 | 87.607 | 37.93 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.808 | 14.388 | 1000 | 0 | 67.533 | 41.962 | 43.119 | 44.028 | 42.422 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.478 | 14.776 | 1000 | 0 | 69.071 | 42.005 | 43.977 | 45.482 | 42.422 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.672 | 14.732 | 1000 | 0 | 68.155 | 42.079 | 44.031 | 45.724 | 42.422 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5378 | 0 | 1074.767 | 2.415 | 4.989 | 16.191 | 45.609 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.304 | 16.635 | 1000 | 0 | 65.342 | 43.007 | 45.576 | 46.728 | 51.863 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.423 | 15.866 | 1000 | 0 | 64.84 | 43.967 | 46.716 | 48.953 | 51.863 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.452 | 16.341 | 1000 | 0 | 64.718 | 43.98 | 46.962 | 50.339 | 51.863 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.007 | 3516 | 0 | 702.429 | 3.966 | 7.291 | 13.051 | 57.875 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.74 | 17.29 | 1000 | 0 | 59.736 | 45.35 | 49.979 | 51.384 | 78.84 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.003 | 28.749 | 363 | 0 | 12.516 | 241.734 | 243.341 | 19603.578 | 79.063 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.423 | 19.163 | 243 | 0 | 12.511 | 241.928 | 243.029 | 12798.686 | 79.105 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.634 | 14.378 | 183 | 0 | 12.505 | 241.936 | 242.955 | 10026.207 | 79.125 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.833 | 9.583 | 123 | 0 | 12.509 | 241.809 | 242.959 | 5234.991 | 79.125 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.825 | 9.583 | 103 | 0 | 10.484 | 241.535 | 242.64 | 5130.062 | 79.137 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.794 | 63 | 0 | 12.508 | 241.725 | 242.717 | 243.788 | 79.137 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.797 | 42 | 0 | 8.342 | 241.673 | 242.536 | 242.998 | 79.137 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.01 | 2.019 | 122 | 0 | 24.349 | 41.963 | 42.782 | 43.015 | 79.148 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 2.044 | 110 | 0 | 21.869 | 46.957 | 47.238 | 47.961 | 79.148 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 2.024 | 99 | 0 | 19.655 | 50.979 | 51.997 | 52.034 | 79.289 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.09 | 2.068 | 56 | 0 | 11.002 | 91.901 | 92.009 | 92.505 | 79.289 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.067 | 2.086 | 36 | 0 | 7.104 | 141.953 | 142.175 | 142.682 | 79.289 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 2.38 | 21 | 0 | 4.17 | 241.94 | 242.088 | 242.135 | 79.289 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.146 | 1000 | 0 | 62.062 | 40.978 | 41.983 | 42.383 | 27.445 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.151 | 1000 | 0 | 62.063 | 40.972 | 41.969 | 42.43 | 27.66 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.138 | 1000 | 0 | 62.089 | 40.974 | 41.942 | 42.206 | 27.664 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.159 | 1000 | 0 | 62.065 | 40.976 | 41.939 | 42.579 | 27.777 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.141 | 1000 | 0 | 62.063 | 40.976 | 41.964 | 42.38 | 27.777 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.134 | 1000 | 0 | 62.073 | 40.978 | 41.933 | 42.477 | 27.777 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.102 | 16.14 | 1000 | 0 | 62.105 | 40.974 | 41.919 | 42.287 | 27.785 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.157 | 1000 | 0 | 62.089 | 40.975 | 41.85 | 42.288 | 28.379 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.601 | 14.067 | 1000 | 0 | 68.486 | 40.964 | 41.954 | 42.553 | 28.379 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.203 | 14.345 | 1000 | 0 | 65.778 | 40.961 | 41.954 | 42.13 | 28.379 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 13680 | 0 | 2735.319 | 0.996 | 1.782 | 7.089 | 28.82 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.212 | 14.371 | 1000 | 0 | 70.364 | 40.969 | 41.992 | 42.974 | 33.27 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.601 | 8.534 | 1000 | 0 | 94.333 | 40.992 | 42.222 | 43.13 | 32.285 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.112 | 8.477 | 1001 | 0 | 98.99 | 40.979 | 42.288 | 43.418 | 32.285 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9953 | 0 | 1989.725 | 1.315 | 2.685 | 35.005 | 32.754 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.265 | 12.075 | 1000 | 0 | 97.419 | 41.763 | 42.717 | 43.581 | 40.438 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.848 | 12.816 | 1000 | 0 | 72.213 | 41.931 | 42.907 | 43.553 | 40.438 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.81 | 12.864 | 1000 | 0 | 84.677 | 41.933 | 42.956 | 44.544 | 40.438 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.085 | 2.003 | 7421 | 0 | 1459.318 | 1.723 | 3.486 | 27.34 | 40.438 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.733 | 13.962 | 1000 | 0 | 67.875 | 41.966 | 43.205 | 43.976 | 48.039 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.68 | 15.209 | 1000 | 0 | 68.121 | 41.99 | 44.191 | 50.029 | 48.039 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.532 | 15.169 | 1000 | 0 | 68.816 | 42.009 | 44.094 | 45.028 | 48.039 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.003 | 5342 | 0 | 1067.44 | 2.389 | 4.966 | 30.013 | 49.012 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.402 | 16.031 | 1000 | 0 | 64.927 | 43.039 | 45.63 | 46.894 | 52.852 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.5 | 16.058 | 1000 | 0 | 64.515 | 43.953 | 47.48 | 50.6 | 52.852 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.731 | 16.438 | 1000 | 0 | 67.884 | 43.962 | 47.157 | 49.333 | 52.852 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.007 | 2.008 | 3537 | 0 | 706.471 | 3.971 | 7.237 | 11.758 | 58.863 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.599 | 17.277 | 1000 | 0 | 60.244 | 45.084 | 48.988 | 51.259 | 66.133 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.006 | 28.75 | 363 | 0 | 12.515 | 241.889 | 243.222 | 19609.494 | 66.348 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.417 | 19.181 | 243 | 0 | 12.515 | 241.786 | 242.943 | 12800.295 | 66.367 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.618 | 14.383 | 183 | 0 | 12.519 | 241.66 | 242.749 | 10022.141 | 66.371 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.587 | 123 | 0 | 12.511 | 241.798 | 242.889 | 5235.399 | 66.375 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.591 | 103 | 0 | 10.479 | 241.719 | 242.742 | 5133.057 | 66.375 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.794 | 63 | 0 | 12.513 | 241.724 | 242.371 | 242.715 | 66.398 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.036 | 4.798 | 42 | 0 | 8.34 | 241.724 | 242.224 | 242.239 | 66.398 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.017 | 122 | 0 | 24.358 | 41.961 | 42.789 | 43.045 | 66.41 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.004 | 2.015 | 109 | 0 | 21.783 | 46.964 | 47.547 | 47.969 | 66.41 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.028 | 2.023 | 99 | 0 | 19.69 | 50.975 | 51.951 | 52.021 | 66.488 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.021 | 2.075 | 55 | 0 | 10.954 | 91.967 | 92.123 | 92.963 | 66.488 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.064 | 2.091 | 36 | 0 | 7.109 | 141.948 | 142.086 | 142.663 | 66.488 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 2.383 | 21 | 0 | 4.168 | 241.85 | 242.084 | 243.507 | 66.488 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18740 | 0 | 3747.255 | 1.257 | 1.837 | 2.226 | 63.684 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18275 | 0 | 3654.31 | 1.293 | 1.889 | 2.253 | 64.27 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18510 | 0 | 3701.167 | 1.275 | 1.861 | 2.237 | 63.965 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18159 | 0 | 3631.076 | 1.295 | 2.08 | 2.499 | 63.813 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 18257 | 0 | 3650.273 | 1.282 | 1.953 | 2.397 | 65.781 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16314 | 0 | 3262.047 | 1.45 | 2.052 | 2.653 | 65.328 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18343 | 0 | 3667.684 | 1.282 | 1.861 | 2.273 | 65.563 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17560 | 0 | 3511.047 | 1.341 | 2.099 | 2.584 | 68.301 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14093 | 0 | 2817.989 | 1.677 | 2.416 | 3.01 | 77.281 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7725 | 0 | 1544.058 | 3.138 | 4.221 | 5.822 | 70.168 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 14243 | 0 | 2847.494 | 1.654 | 2.404 | 3.116 | 76.723 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.027 | 2.002 | 14533 | 0 | 2890.904 | 1.409 | 2.176 | 3.105 | 66.484 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10603 | 0 | 2119.773 | 2.105 | 3.529 | 5.802 | 98.875 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4332 | 0 | 865.57 | 5.694 | 9.021 | 10.839 | 74.777 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10792 | 0 | 2157.497 | 2.022 | 3.706 | 5.822 | 70.461 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10507 | 0 | 2100.746 | 2.091 | 3.802 | 5.594 | 70.273 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 8116 | 0 | 1622.347 | 2.739 | 4.631 | 8.237 | 120.691 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.079 | 2362 | 0 | 471.56 | 10.499 | 16.523 | 19.574 | 78.121 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.002 | 8163 | 0 | 1628.304 | 2.642 | 4.954 | 8.784 | 73.512 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8119 | 0 | 1623.122 | 2.538 | 4.82 | 8.408 | 73.512 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.004 | 5285 | 0 | 1055.94 | 4.432 | 7.242 | 16.921 | 140.41 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.015 | 3.853 | 1296 | 0 | 258.432 | 19.083 | 30.645 | 34.788 | 78.832 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.005 | 5523 | 0 | 1100.954 | 3.885 | 7.553 | 17.116 | 78.332 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.005 | 5279 | 0 | 1055.075 | 4.103 | 7.673 | 17.441 | 78.402 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.009 | 2975 | 0 | 593.976 | 8.234 | 13.42 | 15.243 | 120.887 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.387 | 7.336 | 1000 | 0 | 135.372 | 36.781 | 37.823 | 66.309 | 80.434 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.007 | 3407 | 0 | 680.283 | 6.951 | 12.295 | 13.697 | 80.063 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3596 | 0 | 718.442 | 6.623 | 11.533 | 13.016 | 80.063 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.986 | 51.108 | 360 | 0 | 7.061 | 2549.819 | 2561.808 | 2569.238 | 98.039 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.985 | 34.046 | 240 | 0 | 7.062 | 1699.262 | 1713.273 | 1723.829 | 98.172 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.48 | 25.547 | 180 | 0 | 7.064 | 1273.871 | 1282.579 | 1291.784 | 98.238 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.983 | 17.03 | 120 | 0 | 7.066 | 849.016 | 859.073 | 859.32 | 104.746 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.165 | 14.244 | 100 | 0 | 7.06 | 817.137 | 850.292 | 850.797 | 100.871 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.495 | 8.509 | 60 | 0 | 7.063 | 424.613 | 428.089 | 428.346 | 103.184 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.666 | 5.668 | 40 | 0 | 7.06 | 283.158 | 283.482 | 283.628 | 104.688 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3637 | 0 | 727.204 | 1.334 | 1.454 | 1.644 | 106.813 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.003 | 945 | 0 | 188.889 | 5.246 | 5.417 | 5.748 | 106.992 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.005 | 484 | 0 | 96.644 | 10.3 | 10.428 | 10.592 | 109.246 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.023 | 99 | 0 | 19.785 | 50.482 | 50.6 | 50.798 | 109.684 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.015 | 50 | 0 | 9.938 | 100.538 | 100.684 | 100.718 | 109.684 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.008 | 25 | 0 | 4.985 | 200.519 | 200.708 | 200.765 | 109.684 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18977 | 0 | 3794.63 | 1.248 | 1.794 | 2.144 | 63.566 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18405 | 0 | 3680.321 | 1.283 | 1.83 | 2.249 | 64.031 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18703 | 0 | 3739.758 | 1.263 | 1.811 | 2.194 | 63.754 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18099 | 0 | 3618.806 | 1.312 | 2.017 | 2.494 | 63.996 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18433 | 0 | 3685.615 | 1.277 | 1.85 | 2.266 | 65.625 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16165 | 0 | 3232.29 | 1.468 | 2.143 | 2.663 | 65.844 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18413 | 0 | 3681.783 | 1.279 | 1.863 | 2.3 | 65.852 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17407 | 0 | 3480.633 | 1.364 | 2.134 | 2.59 | 68.316 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14064 | 0 | 2812.08 | 1.684 | 2.424 | 3.034 | 76.813 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7770 | 0 | 1553.206 | 3.117 | 4.115 | 5.872 | 71.121 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14188 | 0 | 2836.844 | 1.644 | 2.511 | 3.181 | 76.688 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.036 | 2.001 | 14295 | 0 | 2838.341 | 1.579 | 2.366 | 3.076 | 66.879 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10706 | 0 | 2140.361 | 2.09 | 3.432 | 5.087 | 95.934 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 4316 | 0 | 862.234 | 5.619 | 9.365 | 10.825 | 75.578 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10668 | 0 | 2132.894 | 2.052 | 3.746 | 5.719 | 72.984 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10700 | 0 | 2139.118 | 2.051 | 3.697 | 5.563 | 72.859 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 8217 | 0 | 1642.421 | 2.719 | 4.501 | 14.707 | 126.035 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.035 | 2488 | 0 | 496.757 | 9.96 | 14.617 | 18.29 | 80.852 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8386 | 0 | 1676.411 | 2.542 | 4.785 | 14.844 | 77.145 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8177 | 0 | 1634.486 | 2.621 | 4.973 | 14.65 | 77.395 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5164 | 0 | 1032.122 | 4.529 | 7.465 | 17.367 | 116.414 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.791 | 1306 | 0 | 260.361 | 18.996 | 20.894 | 34.595 | 80.574 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5497 | 0 | 1098.644 | 3.995 | 7.455 | 17.68 | 83.695 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5397 | 0 | 1078.617 | 4.066 | 7.66 | 17.739 | 83.766 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.007 | 3007 | 0 | 600.339 | 8.216 | 13.103 | 14.738 | 106.938 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.233 | 7.18 | 1000 | 0 | 138.254 | 35.935 | 37.04 | 65.708 | 84.008 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.006 | 3504 | 0 | 699.689 | 6.712 | 11.981 | 13.467 | 86.449 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3536 | 0 | 706.183 | 6.676 | 11.829 | 13.518 | 86.449 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 51.039 | 51.169 | 360 | 0 | 7.053 | 2552.745 | 2569.945 | 2581.183 | 106.813 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 34.029 | 34.094 | 240 | 0 | 7.053 | 1701.531 | 1718.987 | 1724.733 | 107.516 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.524 | 25.6 | 180 | 0 | 7.052 | 1275.966 | 1290.439 | 1291.414 | 107.582 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 17.011 | 17.054 | 120 | 0 | 7.054 | 850.823 | 860.77 | 861.009 | 107.586 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.182 | 14.19 | 100 | 0 | 7.051 | 818.693 | 851.77 | 852.412 | 107.777 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.505 | 8.532 | 60 | 0 | 7.054 | 425.381 | 428.664 | 429.125 | 107.781 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.665 | 5.664 | 40 | 0 | 7.061 | 283.467 | 284.16 | 284.169 | 107.781 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 3638 | 0 | 727.39 | 1.338 | 1.442 | 1.604 | 109.84 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.001 | 946 | 0 | 189.103 | 5.243 | 5.406 | 5.736 | 111.09 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 483 | 0 | 96.583 | 10.308 | 10.442 | 10.687 | 114.848 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.025 | 99 | 0 | 19.787 | 50.46 | 50.667 | 50.908 | 114.852 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.031 | 2.015 | 50 | 0 | 9.938 | 100.517 | 100.663 | 101.185 | 114.852 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.016 | 2.008 | 25 | 0 | 4.984 | 200.552 | 200.674 | 200.684 | 114.852 | 20 |
| yjit-off | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18916 | 0 | 3782.352 | 1.251 | 1.781 | 2.151 | 63.695 | 20 |
| yjit-off | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18473 | 0 | 3694.054 | 1.282 | 1.814 | 2.236 | 64.023 | 20 |
| yjit-off | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19076 | 0 | 3814.251 | 1.243 | 1.745 | 2.126 | 63.91 | 20 |
| yjit-off | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 18311 | 0 | 3661.397 | 1.297 | 1.997 | 2.429 | 64.113 | 20 |
| yjit-off | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18394 | 0 | 3678.145 | 1.286 | 1.869 | 2.31 | 65.297 | 20 |
| yjit-off | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 16210 | 0 | 3241.332 | 1.468 | 2.137 | 2.627 | 66.707 | 20 |
| yjit-off | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18355 | 0 | 3670.222 | 1.278 | 1.874 | 2.336 | 67.375 | 20 |
| yjit-off | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17725 | 0 | 3544.307 | 1.323 | 2.214 | 2.704 | 68.133 | 20 |
| yjit-off | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14339 | 0 | 2867.087 | 1.643 | 2.381 | 2.995 | 76.293 | 20 |
| yjit-off | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7846 | 0 | 1568.4 | 3.092 | 3.994 | 5.77 | 71.359 | 20 |
| yjit-off | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14580 | 0 | 2915.219 | 1.609 | 2.401 | 3.055 | 76.293 | 20 |
| yjit-off | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.026 | 2.001 | 14418 | 0 | 2868.968 | 1.57 | 2.395 | 3.081 | 68.555 | 20 |
| yjit-off | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10872 | 0 | 2173.663 | 2.062 | 3.315 | 5.036 | 110.129 | 20 |
| yjit-off | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 4338 | 0 | 866.84 | 5.651 | 9.11 | 10.684 | 78.945 | 20 |
| yjit-off | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10957 | 0 | 2190.577 | 2.017 | 3.574 | 5.077 | 75.512 | 20 |
| yjit-off | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10933 | 0 | 2185.774 | 2.015 | 3.639 | 5.081 | 75.699 | 20 |
| yjit-off | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.014 | 8276 | 0 | 1654.367 | 2.698 | 4.41 | 15.125 | 130.871 | 20 |
| yjit-off | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.087 | 2400 | 0 | 479.197 | 10.314 | 15.856 | 19.092 | 82.441 | 20 |
| yjit-off | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8326 | 0 | 1664.461 | 2.587 | 4.787 | 15.619 | 81.723 | 20 |
| yjit-off | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8396 | 0 | 1678.597 | 2.536 | 4.727 | 15.432 | 81.723 | 20 |
| yjit-off | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 5248 | 0 | 1048.917 | 4.415 | 7.338 | 18.887 | 144.547 | 20 |
| yjit-off | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.016 | 3.767 | 1324 | 0 | 263.949 | 18.689 | 20.562 | 34.438 | 85.016 | 20 |
| yjit-off | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.003 | 5490 | 0 | 1097.005 | 3.894 | 7.509 | 18.846 | 82.766 | 20 |
| yjit-off | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5321 | 0 | 1063.364 | 4.079 | 7.703 | 18.888 | 82.828 | 20 |
| yjit-off | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.008 | 2930 | 0 | 584.941 | 8.45 | 13.374 | 16.101 | 119.586 | 20 |
| yjit-off | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.22 | 7.124 | 1000 | 0 | 138.506 | 35.951 | 36.98 | 65.27 | 86.746 | 20 |
| yjit-off | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3683 | 0 | 735.617 | 6.298 | 11.441 | 12.976 | 88.266 | 20 |
| yjit-off | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.006 | 3545 | 0 | 707.97 | 6.531 | 11.633 | 14.227 | 88.27 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.745 | 50.848 | 360 | 0 | 7.094 | 2536.714 | 2553.095 | 2563.034 | 111.168 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.831 | 33.881 | 240 | 0 | 7.094 | 1691.62 | 1707.07 | 1717.538 | 112.383 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.38 | 25.437 | 180 | 0 | 7.092 | 1267.864 | 1286.678 | 1293.802 | 113.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.922 | 16.945 | 120 | 0 | 7.091 | 845.685 | 864.479 | 872.377 | 113.328 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.093 | 14.135 | 100 | 0 | 7.096 | 813.962 | 845.689 | 846.677 | 113.332 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.459 | 8.474 | 60 | 0 | 7.093 | 422.877 | 431.452 | 432.938 | 113.332 | 20 |
| yjit-off | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.638 | 5.639 | 40 | 0 | 7.095 | 281.816 | 282.24 | 282.326 | 115.078 | 20 |
| yjit-off | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.0 | 3654 | 0 | 730.638 | 1.33 | 1.452 | 1.709 | 124.855 | 20 |
| yjit-off | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.001 | 2.001 | 943 | 0 | 188.577 | 5.26 | 5.391 | 5.532 | 125.426 | 20 |
| yjit-off | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.004 | 2.008 | 482 | 0 | 96.328 | 10.326 | 10.495 | 10.755 | 127.141 | 20 |
| yjit-off | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.013 | 2.03 | 99 | 0 | 19.748 | 50.533 | 50.893 | 51.344 | 127.141 | 20 |
| yjit-off | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.028 | 2.016 | 50 | 0 | 9.944 | 100.483 | 100.654 | 100.802 | 127.141 | 20 |
| yjit-off | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.017 | 2.007 | 25 | 0 | 4.983 | 200.57 | 200.779 | 201.115 | 127.141 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.19 | 1000 | 0 | 62.067 | 40.981 | 41.92 | 42.47 | 28.859 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.167 | 1000 | 0 | 62.096 | 40.977 | 41.967 | 42.415 | 29.289 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.108 | 16.149 | 1000 | 0 | 62.08 | 40.977 | 41.968 | 42.475 | 29.383 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.105 | 16.141 | 1000 | 0 | 62.092 | 40.978 | 41.932 | 42.129 | 29.434 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.109 | 16.156 | 1000 | 0 | 62.076 | 40.974 | 41.957 | 42.132 | 29.465 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.104 | 16.127 | 1000 | 0 | 62.098 | 40.978 | 41.951 | 42.199 | 29.5 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.127 | 1000 | 0 | 62.067 | 40.981 | 41.939 | 42.315 | 29.516 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.118 | 16.147 | 1000 | 0 | 62.041 | 40.978 | 41.963 | 42.123 | 30.168 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.381 | 14.112 | 1000 | 0 | 69.537 | 40.961 | 41.961 | 42.284 | 30.199 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.646 | 13.348 | 1000 | 0 | 68.28 | 40.965 | 41.962 | 42.146 | 30.199 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.002 | 12972 | 0 | 2593.664 | 1.041 | 1.951 | 6.427 | 30.613 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.221 | 14.522 | 1000 | 0 | 70.317 | 40.964 | 41.974 | 42.937 | 34.73 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.357 | 9.361 | 1000 | 0 | 119.662 | 40.927 | 42.195 | 43.282 | 34.73 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 6.41 | 6.289 | 1024 | 0 | 159.757 | 1.295 | 42.254 | 43.575 | 34.73 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.024 | 9684 | 0 | 1935.977 | 1.311 | 2.781 | 37.862 | 34.746 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.501 | 9.585 | 1000 | 0 | 95.229 | 41.397 | 42.775 | 43.664 | 41.207 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.656 | 13.002 | 1000 | 0 | 85.793 | 41.864 | 42.749 | 43.433 | 38.477 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 12.315 | 12.205 | 1000 | 0 | 81.201 | 41.936 | 42.87 | 44.144 | 38.477 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.179 | 2.004 | 7634 | 0 | 1474.062 | 1.581 | 3.165 | 18.96 | 38.957 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.451 | 14.077 | 1000 | 0 | 69.197 | 41.973 | 43.293 | 44.472 | 43.805 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.016 | 14.787 | 1000 | 0 | 71.345 | 41.968 | 43.577 | 45.264 | 41.355 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.325 | 15.008 | 1000 | 0 | 69.809 | 41.974 | 43.48 | 45.039 | 41.355 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5127 | 0 | 1024.678 | 2.422 | 5.253 | 34.711 | 46.039 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.275 | 16.041 | 1000 | 0 | 65.465 | 42.975 | 44.948 | 46.4 | 57.047 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.016 | 15.44 | 1000 | 0 | 66.597 | 43.022 | 46.298 | 48.91 | 57.047 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.095 | 15.128 | 1000 | 0 | 66.246 | 43.943 | 46.99 | 60.467 | 57.047 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.008 | 3389 | 0 | 677.128 | 4.062 | 7.679 | 34.527 | 63.059 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.67 | 17.044 | 1000 | 0 | 59.99 | 45.355 | 50.562 | 53.326 | 68.426 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.997 | 28.775 | 363 | 0 | 12.519 | 241.73 | 242.801 | 19606.01 | 66.277 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.407 | 19.167 | 243 | 0 | 12.521 | 241.682 | 242.65 | 12798.907 | 66.285 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.616 | 14.376 | 183 | 0 | 12.52 | 241.595 | 242.465 | 10016.454 | 66.285 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.821 | 9.588 | 123 | 0 | 12.524 | 241.396 | 242.441 | 5229.977 | 66.289 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.829 | 9.587 | 103 | 0 | 10.479 | 241.714 | 242.659 | 5134.672 | 66.305 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.034 | 4.794 | 63 | 0 | 12.516 | 241.569 | 242.533 | 242.965 | 66.305 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.038 | 4.801 | 42 | 0 | 8.337 | 241.947 | 242.29 | 242.712 | 66.305 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.009 | 2.018 | 122 | 0 | 24.357 | 41.967 | 42.145 | 43.032 | 66.355 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.03 | 114 | 0 | 22.741 | 44.967 | 45.109 | 45.969 | 66.367 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.007 | 2.039 | 97 | 0 | 19.373 | 51.964 | 52.049 | 52.965 | 66.387 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.07 | 2.059 | 56 | 0 | 11.046 | 90.975 | 91.972 | 92.557 | 66.402 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.085 | 36 | 0 | 7.133 | 140.978 | 142.003 | 142.113 | 66.402 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.042 | 2.38 | 21 | 0 | 4.165 | 241.969 | 242.044 | 242.822 | 66.402 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.113 | 16.156 | 1000 | 0 | 62.061 | 40.98 | 41.934 | 42.26 | 28.867 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.137 | 1000 | 0 | 62.073 | 40.983 | 41.961 | 42.346 | 29.164 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.118 | 1000 | 0 | 62.085 | 40.98 | 41.973 | 42.264 | 29.344 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.133 | 1000 | 0 | 62.116 | 40.981 | 41.944 | 42.303 | 29.434 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.117 | 1000 | 0 | 62.115 | 40.982 | 41.929 | 42.27 | 29.531 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.097 | 16.134 | 1000 | 0 | 62.124 | 40.979 | 41.881 | 42.172 | 29.531 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.116 | 16.12 | 1000 | 0 | 62.049 | 40.978 | 41.984 | 42.492 | 29.543 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.133 | 1000 | 0 | 62.088 | 40.978 | 41.964 | 42.416 | 30.098 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.676 | 14.179 | 1000 | 0 | 68.138 | 40.964 | 41.959 | 42.138 | 30.113 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.866 | 13.056 | 1000 | 0 | 67.266 | 40.965 | 41.953 | 42.167 | 30.121 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.001 | 13747 | 0 | 2748.535 | 1.005 | 1.768 | 6.703 | 30.477 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.244 | 14.354 | 1000 | 0 | 65.6 | 40.971 | 41.969 | 42.346 | 33.398 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.484 | 8.535 | 1001 | 0 | 133.746 | 40.839 | 42.092 | 43.591 | 33.398 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.724 | 8.463 | 1000 | 0 | 114.627 | 40.928 | 42.265 | 43.341 | 33.398 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.002 | 9588 | 0 | 1916.863 | 1.323 | 2.742 | 21.615 | 33.852 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 9.345 | 11.088 | 1000 | 0 | 107.008 | 41.49 | 42.893 | 43.73 | 40.945 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.399 | 12.039 | 1000 | 0 | 96.162 | 41.833 | 42.963 | 45.161 | 40.945 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.084 | 13.128 | 1000 | 0 | 90.22 | 41.914 | 42.924 | 46.3 | 40.945 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.003 | 7360 | 0 | 1471.242 | 1.612 | 3.295 | 44.741 | 40.945 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.052 | 14.381 | 1000 | 0 | 71.164 | 41.974 | 43.588 | 44.657 | 45.074 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 13.767 | 14.907 | 1000 | 0 | 72.638 | 41.975 | 43.933 | 45.952 | 45.074 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.166 | 15.077 | 1000 | 0 | 70.591 | 41.97 | 43.958 | 47.055 | 45.074 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.004 | 2.004 | 5458 | 0 | 1090.667 | 2.283 | 4.877 | 43.951 | 48.254 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.162 | 15.804 | 1000 | 0 | 65.956 | 42.976 | 45.064 | 47.703 | 52.098 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.324 | 15.256 | 1000 | 0 | 65.257 | 42.981 | 45.951 | 49.667 | 52.098 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.401 | 15.002 | 1000 | 0 | 69.441 | 43.604 | 46.36 | 50.295 | 52.098 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.005 | 2.006 | 3569 | 0 | 713.034 | 3.845 | 7.351 | 13.381 | 58.109 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.406 | 17.181 | 1000 | 0 | 60.952 | 45.001 | 50.322 | 58.445 | 65.781 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 28.998 | 28.77 | 363 | 0 | 12.518 | 241.686 | 243.012 | 19604.183 | 66.254 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.413 | 19.169 | 243 | 0 | 12.518 | 241.724 | 242.95 | 12803.995 | 66.258 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.619 | 14.374 | 183 | 0 | 12.518 | 241.699 | 242.696 | 10019.956 | 66.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.832 | 9.586 | 123 | 0 | 12.511 | 241.805 | 243.068 | 5233.435 | 66.262 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.83 | 9.589 | 103 | 0 | 10.478 | 241.711 | 242.967 | 5134.033 | 66.273 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.794 | 63 | 0 | 12.513 | 241.527 | 242.343 | 242.671 | 66.277 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.035 | 4.8 | 42 | 0 | 8.342 | 241.732 | 242.215 | 242.498 | 66.277 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.011 | 2.018 | 122 | 0 | 24.348 | 41.965 | 42.962 | 43.078 | 66.297 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.013 | 2.029 | 114 | 0 | 22.741 | 44.962 | 45.132 | 46.023 | 66.363 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.005 | 2.037 | 97 | 0 | 19.38 | 51.963 | 52.228 | 52.998 | 66.363 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.06 | 2.054 | 56 | 0 | 11.068 | 90.964 | 91.405 | 91.948 | 66.367 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.047 | 2.086 | 36 | 0 | 7.133 | 140.98 | 141.987 | 142.259 | 66.367 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.043 | 2.377 | 21 | 0 | 4.164 | 241.959 | 242.875 | 242.972 | 66.367 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.107 | 16.138 | 1000 | 0 | 62.085 | 40.978 | 41.973 | 42.149 | 28.836 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.106 | 16.132 | 1000 | 0 | 62.089 | 40.977 | 41.777 | 42.29 | 29.191 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.099 | 16.145 | 1000 | 0 | 62.115 | 40.974 | 41.927 | 42.166 | 29.297 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.11 | 16.148 | 1000 | 0 | 62.073 | 40.979 | 41.962 | 42.345 | 29.465 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.112 | 16.133 | 1000 | 0 | 62.066 | 40.975 | 41.967 | 42.254 | 29.516 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.121 | 16.123 | 1000 | 0 | 62.031 | 40.978 | 41.98 | 42.52 | 29.52 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.117 | 16.137 | 1000 | 0 | 62.046 | 40.976 | 41.963 | 42.228 | 29.543 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.119 | 16.146 | 1000 | 0 | 62.04 | 40.98 | 41.901 | 42.571 | 29.82 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.8 | 14.318 | 1000 | 0 | 67.567 | 40.96 | 41.959 | 42.185 | 29.898 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.042 | 13.651 | 1000 | 0 | 66.481 | 40.966 | 41.963 | 42.981 | 29.941 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.001 | 2.001 | 13697 | 0 | 2738.686 | 0.994 | 1.796 | 6.771 | 30.48 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.079 | 14.412 | 1000 | 0 | 66.316 | 40.969 | 41.985 | 42.964 | 34.656 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 8.804 | 7.846 | 1000 | 0 | 113.584 | 40.918 | 42.244 | 43.224 | 34.656 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 7.525 | 9.028 | 1018 | 0 | 135.276 | 1.748 | 42.391 | 44.463 | 34.66 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.003 | 2.002 | 9081 | 0 | 1815.205 | 1.341 | 2.916 | 42.691 | 34.973 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.868 | 9.598 | 1000 | 0 | 84.26 | 41.823 | 42.955 | 44.001 | 40.137 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 10.172 | 12.195 | 1000 | 0 | 98.308 | 41.888 | 42.907 | 43.875 | 40.137 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 11.757 | 12.138 | 1000 | 0 | 85.059 | 41.914 | 42.633 | 43.524 | 40.137 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.002 | 2.003 | 7159 | 0 | 1431.174 | 1.648 | 3.451 | 90.093 | 40.141 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.184 | 14.14 | 1000 | 0 | 70.501 | 41.96 | 43.517 | 46.229 | 47.488 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.49 | 15.0 | 1000 | 0 | 69.013 | 41.982 | 44.191 | 46.044 | 47.488 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.235 | 14.633 | 1000 | 0 | 70.25 | 41.969 | 43.677 | 45.356 | 47.492 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.175 | 2.004 | 5212 | 0 | 1007.112 | 2.441 | 5.138 | 24.146 | 48.551 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 15.36 | 16.099 | 1000 | 0 | 65.104 | 42.976 | 45.108 | 46.291 | 52.551 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.341 | 14.83 | 1000 | 0 | 69.732 | 43.705 | 46.27 | 48.521 | 52.332 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 14.897 | 14.904 | 1000 | 0 | 67.129 | 43.954 | 46.944 | 48.286 | 52.332 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 5.006 | 2.007 | 3528 | 0 | 704.751 | 3.942 | 7.433 | 11.443 | 58.344 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | raptor-3r | 3 | 16.496 | 16.776 | 1000 | 0 | 60.62 | 44.991 | 49.952 | 56.948 | 65.711 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 29.005 | 28.77 | 363 | 0 | 12.515 | 241.808 | 242.795 | 19615.897 | 64.129 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 19.413 | 19.169 | 243 | 0 | 12.517 | 241.719 | 242.712 | 12802.358 | 64.148 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 14.626 | 14.385 | 183 | 0 | 12.512 | 241.812 | 242.597 | 10022.968 | 64.156 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.826 | 9.591 | 123 | 0 | 12.518 | 241.566 | 242.959 | 5230.823 | 64.164 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 9.827 | 9.6 | 103 | 0 | 10.482 | 241.734 | 242.215 | 5128.992 | 64.172 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.037 | 4.796 | 63 | 0 | 12.508 | 241.784 | 242.489 | 243.082 | 64.18 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.032 | 4.796 | 42 | 0 | 8.347 | 241.277 | 242.207 | 242.327 | 64.18 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.008 | 2.019 | 122 | 0 | 24.361 | 41.975 | 42.145 | 42.957 | 64.211 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.016 | 2.03 | 114 | 0 | 22.728 | 44.975 | 45.945 | 45.981 | 64.242 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.03 | 2.039 | 98 | 0 | 19.483 | 51.951 | 52.037 | 52.905 | 64.262 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.064 | 2.053 | 56 | 0 | 11.059 | 90.966 | 92.001 | 92.033 | 64.289 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.053 | 2.079 | 36 | 0 | 7.124 | 141.093 | 142.031 | 142.074 | 64.289 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | raptor-3r | 3 | 5.04 | 2.377 | 21 | 0 | 4.166 | 241.957 | 242.375 | 242.84 | 64.289 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20076 | 0 | 4014.397 | 1.176 | 1.669 | 2.138 | 67.805 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19424 | 0 | 3883.952 | 1.214 | 1.745 | 2.237 | 67.992 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 20104 | 0 | 4020.041 | 1.176 | 1.672 | 2.116 | 67.793 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19830 | 0 | 3965.259 | 1.191 | 1.753 | 2.154 | 68.488 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19404 | 0 | 3880.18 | 1.218 | 1.767 | 2.237 | 70.121 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 17005 | 0 | 3400.163 | 1.402 | 1.967 | 2.579 | 69.797 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19806 | 0 | 3960.477 | 1.19 | 1.694 | 2.177 | 69.867 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19359 | 0 | 3871.148 | 1.218 | 1.802 | 2.199 | 72.652 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14855 | 0 | 2970.395 | 1.6 | 2.177 | 2.933 | 81.402 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 7977 | 0 | 1594.642 | 3.054 | 3.803 | 5.624 | 76.09 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14854 | 0 | 2970.051 | 1.603 | 2.149 | 2.951 | 81.695 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 2.022 | 14945 | 0 | 2979.014 | 1.268 | 1.92 | 3.114 | 71.609 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10620 | 0 | 2123.273 | 2.028 | 3.645 | 5.804 | 102.988 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4330 | 0 | 865.189 | 5.658 | 9.133 | 10.745 | 79.449 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10422 | 0 | 2083.595 | 2.074 | 3.739 | 6.114 | 72.832 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 10394 | 0 | 2077.705 | 2.082 | 3.787 | 5.785 | 73.02 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.003 | 8077 | 0 | 1614.682 | 2.598 | 4.86 | 19.933 | 113.848 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.01 | 2.063 | 2425 | 0 | 484.019 | 10.224 | 15.455 | 19.01 | 86.781 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7829 | 0 | 1565.202 | 2.712 | 5.087 | 20.057 | 83.871 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.004 | 8057 | 0 | 1610.74 | 2.588 | 4.903 | 19.683 | 84.023 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5488 | 0 | 1096.773 | 3.862 | 7.354 | 22.211 | 150.5 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.764 | 1315 | 0 | 262.098 | 18.769 | 30.132 | 34.954 | 84.668 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.003 | 5378 | 0 | 1073.892 | 3.955 | 7.607 | 23.186 | 81.375 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.005 | 5288 | 0 | 1056.658 | 4.075 | 7.576 | 22.663 | 81.438 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.007 | 3437 | 0 | 686.735 | 6.978 | 11.252 | 12.937 | 91.852 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.33 | 7.265 | 1000 | 0 | 136.431 | 36.49 | 37.793 | 65.554 | 85.945 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3545 | 0 | 708.112 | 6.613 | 11.798 | 13.2 | 86.625 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3465 | 0 | 692.12 | 6.861 | 11.653 | 13.466 | 86.625 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.843 | 50.856 | 360 | 0 | 7.081 | 2541.722 | 2546.198 | 2547.488 | 105.254 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.898 | 33.901 | 240 | 0 | 7.08 | 1694.529 | 1698.987 | 1699.59 | 105.258 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.421 | 25.424 | 180 | 0 | 7.081 | 1270.855 | 1275.261 | 1275.643 | 105.449 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.952 | 16.948 | 120 | 0 | 7.079 | 847.44 | 849.742 | 850.4 | 105.453 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.13 | 14.128 | 100 | 0 | 7.077 | 839.774 | 848.057 | 848.269 | 105.457 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.476 | 8.477 | 60 | 0 | 7.079 | 423.713 | 425.646 | 425.81 | 105.457 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.651 | 5.65 | 40 | 0 | 7.078 | 282.428 | 282.777 | 282.961 | 105.457 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.001 | 1969 | 0 | 393.66 | 2.493 | 2.641 | 2.993 | 115.648 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.008 | 2.008 | 576 | 0 | 115.018 | 8.634 | 8.843 | 8.973 | 115.648 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.011 | 411 | 0 | 82.195 | 12.123 | 12.276 | 12.392 | 115.711 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.045 | 2.019 | 100 | 0 | 19.82 | 50.402 | 50.497 | 50.589 | 115.711 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.027 | 2.013 | 50 | 0 | 9.947 | 100.453 | 100.572 | 100.988 | 116.594 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.008 | 25 | 0 | 4.987 | 200.461 | 200.551 | 200.562 | 116.594 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19264 | 0 | 3852.094 | 1.219 | 1.759 | 2.254 | 67.668 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18887 | 0 | 3776.712 | 1.249 | 1.816 | 2.273 | 67.938 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19227 | 0 | 3844.68 | 1.228 | 1.767 | 2.208 | 68.188 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18967 | 0 | 3792.398 | 1.244 | 1.831 | 2.262 | 68.602 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18913 | 0 | 3781.82 | 1.243 | 1.858 | 2.315 | 70.176 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16471 | 0 | 3293.52 | 1.434 | 2.159 | 2.672 | 70.422 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19129 | 0 | 3825.023 | 1.232 | 1.787 | 2.271 | 70.508 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 18247 | 0 | 3648.425 | 1.277 | 1.971 | 2.512 | 72.754 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 14628 | 0 | 2924.963 | 1.62 | 2.204 | 3.015 | 81.781 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 7730 | 0 | 1545.162 | 3.147 | 4.008 | 5.955 | 76.398 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14459 | 0 | 2891.179 | 1.638 | 2.232 | 3.065 | 81.988 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.027 | 2.001 | 14384 | 0 | 2861.115 | 1.135 | 1.946 | 41.074 | 70.863 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10699 | 0 | 2139.101 | 2.008 | 3.659 | 5.873 | 102.125 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 4366 | 0 | 872.246 | 5.59 | 9.062 | 10.695 | 81.031 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.013 | 2.001 | 10671 | 0 | 2128.628 | 2.012 | 3.685 | 5.98 | 72.625 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.002 | 10792 | 0 | 2157.873 | 1.995 | 3.629 | 5.819 | 72.813 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8350 | 0 | 1669.292 | 2.511 | 4.619 | 20.133 | 116.07 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.008 | 2.011 | 2472 | 0 | 493.625 | 10.018 | 14.2 | 18.784 | 83.199 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.002 | 8205 | 0 | 1639.98 | 2.508 | 4.85 | 20.406 | 79.145 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8220 | 0 | 1643.358 | 2.54 | 4.806 | 20.421 | 79.211 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5612 | 0 | 1121.697 | 3.732 | 7.078 | 23.229 | 155.738 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.658 | 1351 | 0 | 269.275 | 18.255 | 28.595 | 33.858 | 86.617 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5597 | 0 | 1118.638 | 3.81 | 7.04 | 23.574 | 79.633 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.004 | 2.003 | 5489 | 0 | 1096.973 | 3.879 | 7.286 | 23.318 | 79.695 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.007 | 3705 | 0 | 740.157 | 6.457 | 10.41 | 11.791 | 139.953 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 6.984 | 6.909 | 1000 | 0 | 143.186 | 34.622 | 48.57 | 62.97 | 87.336 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.005 | 3811 | 0 | 761.409 | 6.226 | 11.053 | 12.189 | 86.563 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.005 | 2.006 | 3845 | 0 | 768.215 | 6.189 | 10.708 | 12.025 | 86.563 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.849 | 50.853 | 360 | 0 | 7.08 | 2542.062 | 2546.021 | 2546.953 | 105.051 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.916 | 33.897 | 240 | 0 | 7.076 | 1695.203 | 1699.914 | 1700.637 | 105.328 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.424 | 25.42 | 180 | 0 | 7.08 | 1271.007 | 1274.883 | 1275.04 | 110.457 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.947 | 16.948 | 120 | 0 | 7.081 | 847.19 | 850.905 | 851.066 | 110.461 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.127 | 14.124 | 100 | 0 | 7.079 | 839.735 | 847.757 | 848.383 | 110.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.475 | 8.476 | 60 | 0 | 7.079 | 423.702 | 425.37 | 425.48 | 110.777 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.648 | 5.649 | 40 | 0 | 7.082 | 282.338 | 282.783 | 283.329 | 110.777 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.0 | 2.001 | 1973 | 0 | 394.594 | 2.494 | 2.621 | 2.883 | 115.184 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.007 | 2.0 | 579 | 0 | 115.629 | 8.593 | 8.831 | 9.122 | 115.816 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.01 | 411 | 0 | 82.152 | 12.126 | 12.263 | 12.559 | 116.004 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.047 | 2.023 | 100 | 0 | 19.813 | 50.405 | 50.538 | 50.683 | 116.004 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.014 | 50 | 0 | 9.948 | 100.466 | 100.582 | 100.796 | 116.004 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.014 | 2.007 | 25 | 0 | 4.986 | 200.463 | 200.623 | 200.688 | 116.004 | 20 |
| yjit-on | puma-response-array-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19261 | 0 | 3851.348 | 1.22 | 1.757 | 2.246 | 67.602 | 20 |
| yjit-on | puma-response-chunk-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19441 | 0 | 3887.477 | 1.217 | 1.744 | 2.235 | 68.156 | 20 |
| yjit-on | puma-response-string-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19718 | 0 | 3942.834 | 1.197 | 1.705 | 2.159 | 67.863 | 20 |
| yjit-on | puma-response-io-1kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 19239 | 0 | 3846.595 | 1.222 | 1.827 | 2.263 | 68.48 | 20 |
| yjit-on | puma-response-array-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19388 | 0 | 3876.859 | 1.215 | 1.783 | 2.241 | 70.156 | 20 |
| yjit-on | puma-response-chunk-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 16756 | 0 | 3350.377 | 1.416 | 2.018 | 2.605 | 69.281 | 20 |
| yjit-on | puma-response-string-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 19311 | 0 | 3860.79 | 1.219 | 1.78 | 2.256 | 69.746 | 20 |
| yjit-on | puma-response-io-10kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 19059 | 0 | 3810.979 | 1.234 | 1.83 | 2.26 | 72.762 | 20 |
| yjit-on | puma-response-array-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.001 | 2.001 | 14670 | 0 | 2933.238 | 1.609 | 2.263 | 3.025 | 82.32 | 20 |
| yjit-on | puma-response-chunk-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 7799 | 0 | 1558.876 | 3.116 | 4.059 | 5.914 | 75.117 | 20 |
| yjit-on | puma-response-string-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 14620 | 0 | 2923.047 | 1.615 | 2.285 | 3.07 | 81.348 | 20 |
| yjit-on | puma-response-io-100kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.033 | 2.008 | 14551 | 0 | 2891.311 | 1.215 | 2.004 | 40.839 | 72.258 | 20 |
| yjit-on | puma-response-array-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 10428 | 0 | 2084.879 | 2.041 | 3.73 | 6.034 | 100.855 | 20 |
| yjit-on | puma-response-chunk-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.004 | 4361 | 0 | 871.19 | 5.583 | 9.005 | 10.687 | 78.324 | 20 |
| yjit-on | puma-response-string-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10563 | 0 | 2111.962 | 2.024 | 3.715 | 5.811 | 76.32 | 20 |
| yjit-on | puma-response-io-256kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.001 | 10334 | 0 | 2066.052 | 2.054 | 3.803 | 6.367 | 76.25 | 20 |
| yjit-on | puma-response-array-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.013 | 8019 | 0 | 1603.004 | 2.578 | 4.907 | 22.027 | 122.898 | 20 |
| yjit-on | puma-response-chunk-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.009 | 2.048 | 2419 | 0 | 482.92 | 10.179 | 16.464 | 19.244 | 83.695 | 20 |
| yjit-on | puma-response-string-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 7971 | 0 | 1593.515 | 2.604 | 4.933 | 21.94 | 81.551 | 20 |
| yjit-on | puma-response-io-512kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.002 | 2.002 | 8010 | 0 | 1601.353 | 2.604 | 4.911 | 21.816 | 81.641 | 20 |
| yjit-on | puma-response-array-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.004 | 4943 | 0 | 987.997 | 4.137 | 8.358 | 25.911 | 154.207 | 20 |
| yjit-on | puma-response-chunk-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.017 | 3.834 | 1307 | 0 | 260.49 | 18.98 | 23.007 | 34.857 | 85.211 | 20 |
| yjit-on | puma-response-string-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.003 | 2.003 | 5444 | 0 | 1088.117 | 3.92 | 7.293 | 25.137 | 83.355 | 20 |
| yjit-on | puma-response-io-1024kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.021 | 2.005 | 5292 | 0 | 1053.892 | 4.013 | 7.437 | 25.359 | 83.418 | 20 |
| yjit-on | puma-response-array-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.005 | 3686 | 0 | 736.338 | 6.538 | 10.498 | 12.012 | 118.867 | 20 |
| yjit-on | puma-response-chunk-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 7.274 | 7.198 | 1000 | 0 | 137.483 | 36.148 | 38.07 | 65.521 | 85.863 | 20 |
| yjit-on | puma-response-string-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.006 | 2.006 | 3629 | 0 | 724.869 | 6.456 | 11.484 | 12.853 | 87.164 | 20 |
| yjit-on | puma-response-io-2048kb | puma/benchmarks/local/response_time_wrk | puma-1w-3t | 3 | 5.007 | 2.005 | 3601 | 0 | 719.25 | 6.597 | 11.285 | 12.995 | 87.227 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x6p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 50.865 | 50.867 | 360 | 0 | 7.078 | 2542.797 | 2546.235 | 2549.366 | 104.633 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x4p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 33.899 | 33.896 | 240 | 0 | 7.08 | 1694.684 | 1698.884 | 1701.222 | 105.199 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x3p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 25.424 | 25.422 | 180 | 0 | 7.08 | 1270.976 | 1275.084 | 1275.291 | 105.266 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x2p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 16.949 | 16.95 | 120 | 0 | 7.08 | 847.231 | 851.339 | 852.456 | 105.453 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 14.128 | 14.127 | 100 | 0 | 7.078 | 839.705 | 847.915 | 848.106 | 105.453 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x1p0 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 8.476 | 8.478 | 60 | 0 | 7.079 | 423.677 | 425.516 | 425.686 | 105.453 | 20 |
| yjit-on | puma-long-tail-fib-200ms-x0p5 | puma/benchmarks/local/long_tail_hey + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.65 | 5.65 | 40 | 0 | 7.08 | 282.382 | 282.66 | 283.125 | 105.453 | 20 |
| yjit-on | puma-sleep-fibonacci-1ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 1951 | 0 | 390.038 | 2.52 | 2.638 | 2.854 | 105.453 | 20 |
| yjit-on | puma-sleep-fibonacci-5ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.003 | 2.005 | 576 | 0 | 115.125 | 8.635 | 8.802 | 8.926 | 105.453 | 20 |
| yjit-on | puma-sleep-fibonacci-10ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.002 | 2.002 | 409 | 0 | 81.764 | 12.177 | 12.308 | 12.554 | 105.453 | 20 |
| yjit-on | puma-sleep-fibonacci-50ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.048 | 2.024 | 100 | 0 | 19.811 | 50.424 | 50.572 | 50.742 | 105.457 | 20 |
| yjit-on | puma-sleep-fibonacci-100ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.026 | 2.012 | 50 | 0 | 9.948 | 100.436 | 100.616 | 101.181 | 105.457 | 20 |
| yjit-on | puma-sleep-fibonacci-200ms | puma/benchmarks/local/sleep_fibonacci_test + test/rackup/sleep_fibonacci | puma-1w-3t | 3 | 5.015 | 2.007 | 25 | 0 | 4.985 | 200.499 | 200.632 | 200.657 | 105.457 | 20 |

## Caveats

- This harness uses a built-in Ruby HTTP client, so it is a practical local simulation rather than a replacement for wrk/wrk2.
- Latency is closed-loop request latency. Use a constant-rate load tool before making production tail-latency claims.
- RSS sampling depends on `ps`; sandboxed environments may mark memory metrics unavailable.
- GC deltas are reported only when before/after probes hit the same worker. Puma cluster rows keep raw sampled metrics but leave aggregate GC deltas blank until per-worker aggregation exists.
- Compare absolute values first. Percent deltas are only meaningful with the raw latency, throughput, CPU, RSS, and GC numbers beside them.

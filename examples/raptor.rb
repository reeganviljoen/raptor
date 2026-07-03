port 9292, "127.0.0.1"
workers 2
threads 1, 8
rackup File.expand_path("config.ru", __dir__)
log_requests true

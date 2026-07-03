run Ractor.shareable_proc { |env|
  body = "hello from raptor worker on #{env.fetch("PATH_INFO")}\n"
  [200, { "content-type" => "text/plain", "content-length" => body.bytesize.to_s }, [body]]
}

app = proc do |env|
  body = [
    "fixture=rack_basic",
    "path=#{env.fetch("PATH_INFO")}",
    "method=#{env.fetch("REQUEST_METHOD")}",
    "query=#{env.fetch("QUERY_STRING")}",
    "multiractor=#{env.fetch("raptor.multiractor")}"
  ].join("\n")

  [200, { "content-type" => "text/plain" }, [body]]
end

run app

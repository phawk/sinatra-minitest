module StoryHelpers

  # Request helpers

  def get_json(path)
    get path
    json_parse(last_response.body)
  end

  def post_json(url, data)
    post(url, json(data), { "CONTENT_TYPE" => "application/json" })
    json_parse(last_response.body)
  end

  # JSON helpers

  def json_parse(body)
    MultiJson.load(body, symbolize_keys: true)
  end

  def json(hash)
    MultiJson.dump(hash, pretty: true)
  end

end

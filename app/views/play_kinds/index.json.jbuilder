json.array!(@play_kinds) do |play_kind|
  json.extract! play_kind, :id, :kind
  json.url play_kind_url(play_kind, format: :json)
end

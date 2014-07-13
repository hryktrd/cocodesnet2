json.array!(@casts) do |cast|
  json.extract! cast, :id, :shop_info_id, :play_kind_id, :name, :age, :tall, :bust, :cup, :waist, :hip, :photo, :free_after, :price
  json.url cast_url(cast, format: :json)
end

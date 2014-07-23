json.array!(@shop_infos) do |shop_info|
    json.extract! shop_info, :name, :tel, :lat, :lng
    json.array!(shop_info.casts) do |cast|
        json.extract! cast, :id, :shop_info_id, :play_kind_id, :name, :age, :tall, :bust, :cup, :waist, :hip, :free_after
        json.url shop_info_url(shop_info, format: :json)
    end
end

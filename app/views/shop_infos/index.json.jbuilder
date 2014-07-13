json.array!(@shop_infos) do |shop_info|
  json.extract! shop_info, :id, :name, :address, :url, :lat, :lng, :photo, :tel, :shop_category_id
  json.url shop_info_url(shop_info, format: :json)
end

json.array!(@shop_categories) do |shop_category|
  json.extract! shop_category, :id, :category
  json.url shop_category_url(shop_category, format: :json)
end

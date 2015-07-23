json.array!(@products) do |product|
  json.extract! product, :id, :product_type_id, :name, :saleprice, :provider_id
  json.url product_url(product, format: :json)
end

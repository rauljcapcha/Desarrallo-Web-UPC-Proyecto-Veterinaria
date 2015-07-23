json.array!(@detail_guides) do |detail_guide|
  json.extract! detail_guide, :id, :guide_id, :product_id, :unitprice, :quantity, :subtotal, :note
  json.url detail_guide_url(detail_guide, format: :json)
end

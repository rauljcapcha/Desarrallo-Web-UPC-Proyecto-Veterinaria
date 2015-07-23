json.array!(@consumptions) do |consumption|
  json.extract! consumption, :id, :atention_id, :service_id, :guide_id, :unitprice, :quantity, :subtotal
  json.url consumption_url(consumption, format: :json)
end

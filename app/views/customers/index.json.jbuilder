json.array!(@customers) do |customer|
  json.extract! customer, :id, :document_type_id, :documentnumber, :name, :streetaddresss, :postalcode, :phone, :email
  json.url customer_url(customer, format: :json)
end

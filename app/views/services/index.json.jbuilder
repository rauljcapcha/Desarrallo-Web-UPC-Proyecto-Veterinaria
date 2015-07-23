json.array!(@services) do |service|
  json.extract! service, :id, :service_type_id, :name, :saleprice
  json.url service_url(service, format: :json)
end

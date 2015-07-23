json.array!(@providers) do |provider|
  json.extract! provider, :id, :name, :streetaddress, :phone, :postalcode
  json.url provider_url(provider, format: :json)
end

json.array!(@branches) do |branch|
  json.extract! branch, :id, :name, :streetaddress, :phone, :postalcode
  json.url branch_url(branch, format: :json)
end

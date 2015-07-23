json.array!(@voucher_types) do |voucher_type|
  json.extract! voucher_type, :id, :name
  json.url voucher_type_url(voucher_type, format: :json)
end

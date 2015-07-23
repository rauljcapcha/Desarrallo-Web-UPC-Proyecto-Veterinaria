json.array!(@vouchers) do |voucher|
  json.extract! voucher, :id, :voucher_type_id, :serialnumber, :vouchernumber, :atention_id, :customer_id, :pet_id, :total, :seller_id, :datevoucher
  json.url voucher_url(voucher, format: :json)
end

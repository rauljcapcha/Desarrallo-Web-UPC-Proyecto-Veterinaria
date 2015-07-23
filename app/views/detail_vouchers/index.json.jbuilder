json.array!(@detail_vouchers) do |detail_voucher|
  json.extract! detail_voucher, :id, :voucher_id, :service_id, :guide_id, :unitprice, :quantity, :subtotal
  json.url detail_voucher_url(detail_voucher, format: :json)
end

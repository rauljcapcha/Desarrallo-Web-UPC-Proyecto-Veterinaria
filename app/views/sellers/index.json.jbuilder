json.array!(@sellers) do |seller|
  json.extract! seller, :id, :employee_id, :veterinary_user_id, :observation
  json.url seller_url(seller, format: :json)
end

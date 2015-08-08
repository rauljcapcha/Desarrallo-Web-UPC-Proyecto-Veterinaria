json.array!(@sellers) do |seller|
  json.extract! seller, :id, :employee_id, :user_id
  json.url seller_url(seller, format: :json)
end

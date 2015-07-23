json.array!(@atentions) do |atention|
  json.extract! atention, :id, :veterinary_appointment_id, :customer_id, :pet_id
  json.url atention_url(atention, format: :json)
end

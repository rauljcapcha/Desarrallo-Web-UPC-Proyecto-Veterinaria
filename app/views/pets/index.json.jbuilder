json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :sex, :datebirth, :color, :allergies, :chroniccondition, :observation, :customer_id, :species_id, :breed_id
  json.url pet_url(pet, format: :json)
end

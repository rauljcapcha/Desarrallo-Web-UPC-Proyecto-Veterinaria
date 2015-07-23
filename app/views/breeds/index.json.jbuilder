json.array!(@breeds) do |breed|
  json.extract! breed, :id, :name, :species_id
  json.url breed_url(breed, format: :json)
end

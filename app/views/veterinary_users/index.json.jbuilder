json.array!(@veterinary_users) do |veterinary_user|
  json.extract! veterinary_user, :id, :nameuser, :passworduser
  json.url veterinary_user_url(veterinary_user, format: :json)
end

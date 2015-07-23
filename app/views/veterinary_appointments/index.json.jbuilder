json.array!(@veterinary_appointments) do |veterinary_appointment|
  json.extract! veterinary_appointment, :id, :customer_id, :pet_id, :dateappointment, :note
  json.url veterinary_appointment_url(veterinary_appointment, format: :json)
end

class VeterinaryAppointment < ActiveRecord::Base
  belongs_to :customer
  belongs_to :pet
  has_many :atentions
end

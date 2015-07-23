class Atention < ActiveRecord::Base
  belongs_to :veterinary_appointment
  belongs_to :customer
  belongs_to :pet
  has_many :consumptions
end

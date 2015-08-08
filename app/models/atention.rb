# == Schema Information
#
# Table name: atentions
#
#  id                        :integer          not null, primary key
#  veterinary_appointment_id :integer
#  customer_id               :integer
#  pet_id                    :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  date                      :datetime
#

class Atention < ActiveRecord::Base
  belongs_to :veterinary_appointment
  belongs_to :customer
  belongs_to :pet
  has_many :consumptions
  
  def customer_name
    customer.try(:name)
  end
  
  def customer_name=(name)
    self.customer = Customer.find_by_name(name) if name.present?
  end
  
end

# == Schema Information
#
# Table name: pets
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  sex              :string(255)
#  datebirth        :datetime
#  color            :string(255)
#  allergies        :text(65535)
#  chroniccondition :string(255)
#  observation      :string(255)
#  customer_id      :integer
#  species_id       :integer
#  breed_id         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Pet < ActiveRecord::Base
  belongs_to :customer
  belongs_to :species
  belongs_to :breed
end

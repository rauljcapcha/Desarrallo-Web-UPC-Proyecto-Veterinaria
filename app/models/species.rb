# == Schema Information
#
# Table name: species
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Species < ActiveRecord::Base
    has_many :pets
    has_many :breeds
end

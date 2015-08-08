# == Schema Information
#
# Table name: breeds
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  species_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Breed < ActiveRecord::Base
  belongs_to :species
  has_many :pets
  
  def self.search(query)
    where("name like ?", "%#{query}%") 
  end
  
end

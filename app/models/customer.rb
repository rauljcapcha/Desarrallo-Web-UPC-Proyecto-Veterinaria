# == Schema Information
#
# Table name: customers
#
#  id               :integer          not null, primary key
#  document_type_id :integer
#  documentnumber   :string(255)
#  name             :string(255)
#  streetaddresss   :string(255)
#  postalcode       :string(255)
#  phone            :string(255)
#  email            :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Customer < ActiveRecord::Base
  belongs_to :document_type
  has_many :pets
  
  def self.search(query)
    where("name like ?", "%#{query}%") 
  end

end

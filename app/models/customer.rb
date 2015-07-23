class Customer < ActiveRecord::Base
  belongs_to :document_type
  has_many :pets
end

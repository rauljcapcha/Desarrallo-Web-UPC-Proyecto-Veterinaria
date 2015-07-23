class Seller < ActiveRecord::Base
  belongs_to :employee
  belongs_to :veterinary_user
end

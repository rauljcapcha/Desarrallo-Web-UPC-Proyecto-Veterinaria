class Product < ActiveRecord::Base
  belongs_to :product_type
  belongs_to :provider
end

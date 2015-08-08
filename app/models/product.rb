# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  product_type_id :integer
#  name            :string(255)
#  saleprice       :decimal(10, )
#  provider_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Product < ActiveRecord::Base
  belongs_to :product_type
  belongs_to :provider
end

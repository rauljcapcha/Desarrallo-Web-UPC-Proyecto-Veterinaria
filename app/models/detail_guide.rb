# == Schema Information
#
# Table name: detail_guides
#
#  id         :integer          not null, primary key
#  guide_id   :integer
#  product_id :integer
#  unitprice  :decimal(10, )
#  quantity   :decimal(10, )
#  subtotal   :decimal(10, )
#  note       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DetailGuide < ActiveRecord::Base
  belongs_to :guide
  belongs_to :product
end

# == Schema Information
#
# Table name: consumptions
#
#  id          :integer          not null, primary key
#  atention_id :integer
#  service_id  :integer
#  guide_id    :integer
#  unitprice   :decimal(10, )
#  quantity    :decimal(10, )
#  subtotal    :decimal(10, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ConsumptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: guides
#
#  id          :integer          not null, primary key
#  atention_id :integer
#  service_id  :integer
#  total       :decimal(10, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class GuideTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

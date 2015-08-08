# == Schema Information
#
# Table name: services
#
#  id              :integer          not null, primary key
#  service_type_id :integer
#  name            :string(255)
#  saleprice       :decimal(10, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: atentions
#
#  id                        :integer          not null, primary key
#  veterinary_appointment_id :integer
#  customer_id               :integer
#  pet_id                    :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  dateatention              :datetime
#

require 'test_helper'

class AtentionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

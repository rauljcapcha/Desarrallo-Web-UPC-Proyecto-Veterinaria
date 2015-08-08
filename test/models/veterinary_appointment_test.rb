# == Schema Information
#
# Table name: veterinary_appointments
#
#  id              :integer          not null, primary key
#  customer_id     :integer
#  pet_id          :integer
#  date :date
#  note            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  time :time
#

require 'test_helper'

class VeterinaryAppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: employees
#
#  id               :integer          not null, primary key
#  document_type_id :integer
#  documentnumber   :string(255)
#  name             :string(255)
#  lastname         :string(255)
#  motherslastname  :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

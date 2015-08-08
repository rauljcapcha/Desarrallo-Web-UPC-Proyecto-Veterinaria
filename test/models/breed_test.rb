# == Schema Information
#
# Table name: breeds
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  species_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BreedTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: branches
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  streetaddress :string(255)
#  phone         :string(255)
#  postalcode    :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Branch < ActiveRecord::Base
end

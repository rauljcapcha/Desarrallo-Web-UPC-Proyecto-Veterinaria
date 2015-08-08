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

class Service < ActiveRecord::Base
  belongs_to :service_type
end

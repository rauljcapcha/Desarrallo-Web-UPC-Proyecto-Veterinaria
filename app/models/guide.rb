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

class Guide < ActiveRecord::Base
  belongs_to :atention
  belongs_to :service
  has_many :detail_guides
end

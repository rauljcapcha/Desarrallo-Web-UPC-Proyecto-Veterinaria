class Guide < ActiveRecord::Base
  belongs_to :atention
  belongs_to :service
  has_many :detail_guides
end

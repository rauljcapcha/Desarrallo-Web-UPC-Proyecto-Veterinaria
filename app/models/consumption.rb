class Consumption < ActiveRecord::Base
  belongs_to :atention
  belongs_to :service
  belongs_to :guide
end

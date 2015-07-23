class DetailGuide < ActiveRecord::Base
  belongs_to :guide
  belongs_to :product
end

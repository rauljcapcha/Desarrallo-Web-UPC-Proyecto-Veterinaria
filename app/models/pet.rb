class Pet < ActiveRecord::Base
  belongs_to :customer
  belongs_to :species
  belongs_to :breed
end

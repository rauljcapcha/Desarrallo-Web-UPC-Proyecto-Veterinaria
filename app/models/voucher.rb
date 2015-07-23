class Voucher < ActiveRecord::Base
  belongs_to :voucher_type
  belongs_to :atention
  belongs_to :customer
  belongs_to :pet
  belongs_to :seller
end

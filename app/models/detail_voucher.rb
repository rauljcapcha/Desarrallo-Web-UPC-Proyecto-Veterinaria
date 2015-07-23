class DetailVoucher < ActiveRecord::Base
  belongs_to :voucher
  belongs_to :service
  belongs_to :guide
end

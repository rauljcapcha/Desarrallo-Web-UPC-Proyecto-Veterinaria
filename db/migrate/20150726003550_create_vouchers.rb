class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.references :voucher_type, index: true, foreign_key: true
      t.string :serialnumber
      t.string :vouchernumber
      t.references :atention, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.references :pet, index: true, foreign_key: true
      t.decimal :total
      t.references :seller, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

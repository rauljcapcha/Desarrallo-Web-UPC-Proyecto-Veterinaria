class CreateVoucherTypes < ActiveRecord::Migration
  def change
    create_table :voucher_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

class CreateConsumptions < ActiveRecord::Migration
  def change
    create_table :consumptions do |t|
      t.references :atention, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true
      t.references :guide, index: true, foreign_key: true
      t.decimal :unitprice
      t.decimal :quantity
      t.decimal :subtotal

      t.timestamps null: false
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :product_type, index: true, foreign_key: true
      t.string :name
      t.decimal :saleprice
      t.references :provider, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

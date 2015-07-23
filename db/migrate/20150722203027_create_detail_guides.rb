class CreateDetailGuides < ActiveRecord::Migration
  def change
    create_table :detail_guides do |t|
      t.references :guide, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.decimal :unitprice
      t.decimal :quantity
      t.decimal :subtotal
      t.text :note

      t.timestamps null: false
    end
  end
end

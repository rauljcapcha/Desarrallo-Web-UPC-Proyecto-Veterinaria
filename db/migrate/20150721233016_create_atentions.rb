class CreateAtentions < ActiveRecord::Migration
  def change
    create_table :atentions do |t|
      t.references :veterinary_appointment, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.references :pet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

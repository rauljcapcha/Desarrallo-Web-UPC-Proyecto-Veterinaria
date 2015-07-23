class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :sex
      t.datetime :datebirth
      t.string :color
      t.text :allergies
      t.string :chroniccondition
      t.string :observation
      t.references :customer, index: true, foreign_key: true
      t.references :species, index: true, foreign_key: true
      t.references :breed, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :name
      t.references :species, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

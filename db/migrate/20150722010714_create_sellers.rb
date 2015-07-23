class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.references :employee, index: true, foreign_key: true
      t.references :veterinary_user, index: true, foreign_key: true
      t.string :observation

      t.timestamps null: false
    end
  end
end

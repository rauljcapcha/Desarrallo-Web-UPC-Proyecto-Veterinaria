class CreateVeterinaryUsers < ActiveRecord::Migration
  def change
    create_table :veterinary_users do |t|
      t.string :nameuser
      t.string :passworduser

      t.timestamps null: false
    end
  end
end

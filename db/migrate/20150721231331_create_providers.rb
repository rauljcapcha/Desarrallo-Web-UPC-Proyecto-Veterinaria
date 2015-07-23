class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :streetaddress
      t.string :phone
      t.string :postalcode

      t.timestamps null: false
    end
  end
end

class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :streetaddress
      t.string :phone
      t.string :postalcode

      t.timestamps null: false
    end
  end
end

class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.references :document_type, index: true, foreign_key: true
      t.string :documentnumber
      t.string :name
      t.string :streetaddresss
      t.string :postalcode
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end

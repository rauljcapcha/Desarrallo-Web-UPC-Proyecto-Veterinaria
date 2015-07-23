class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :document_type, index: true, foreign_key: true
      t.string :documentnumber
      t.string :name
      t.string :lastname
      t.string :motherslastname

      t.timestamps null: false
    end
  end
end

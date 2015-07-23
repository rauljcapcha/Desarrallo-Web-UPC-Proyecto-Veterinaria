class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :service_type, index: true, foreign_key: true
      t.string :name
      t.decimal :saleprice

      t.timestamps null: false
    end
  end
end

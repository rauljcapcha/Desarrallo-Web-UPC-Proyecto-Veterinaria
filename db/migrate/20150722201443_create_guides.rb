class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.references :atention, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true
      t.decimal :total

      t.timestamps null: false
    end
  end
end

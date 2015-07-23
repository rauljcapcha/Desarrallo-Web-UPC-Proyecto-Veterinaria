class CreateDocumentTypes < ActiveRecord::Migration
  def change
    create_table :document_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

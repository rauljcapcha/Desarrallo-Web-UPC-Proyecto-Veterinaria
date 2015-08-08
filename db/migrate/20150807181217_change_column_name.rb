class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :atentions, :dateatention, :date
  end
end

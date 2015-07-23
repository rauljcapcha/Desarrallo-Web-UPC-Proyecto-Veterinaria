class AddDateAtentionToAtentions < ActiveRecord::Migration
  def change
    add_column :atentions, :dateatention, :datetime
  end
end

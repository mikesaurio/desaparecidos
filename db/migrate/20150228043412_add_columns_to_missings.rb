class AddColumnsToMissings < ActiveRecord::Migration
  def up
  unless  column_exists?(:missings, :state)
    add_column :missings, :city, :text
    add_column :missings, :state, :text
  end
end

  def down
    remove_column :missings, :where_missing
  end
end

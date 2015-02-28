class CreateMissings < ActiveRecord::Migration
  def change
    create_table :missings do |t|
      t.text :name
      t.text :since
      t.text :where_missing
      t.text :detail
      t.text :status
      t.text :picture

      t.timestamps null: false
    end
  end
end

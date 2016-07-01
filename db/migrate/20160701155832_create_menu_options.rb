class CreateMenuOptions < ActiveRecord::Migration
  def change
    create_table :menu_options do |t|
      t.integer :menu_id
      t.integer :menu_item_id
      t.timestamps null: false
    end
    add_index :menu_options, [:menu_id, :menu_item_id], unique: true
  end
end

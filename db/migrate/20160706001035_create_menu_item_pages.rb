class CreateMenuItemPages < ActiveRecord::Migration
  def change
    create_table :menu_item_pages do |t|
      t.integer :menu_item_id, null: false
      t.integer :page_id, null: false
      t.timestamps null: false
    end
    add_index :menu_item_pages, [:menu_item_id, :page_id]
  end
end

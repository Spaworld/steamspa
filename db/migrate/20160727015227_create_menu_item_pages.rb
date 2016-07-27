class CreateMenuItemPages < ActiveRecord::Migration
  def change
    create_table :menu_item_pages do |t|
      t.integer :menu_item_id
      t.integer :page_id

      t.timestamps null: false
    end
  end
end

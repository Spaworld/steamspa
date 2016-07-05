class CreateMenuItemCategories < ActiveRecord::Migration
  def change
    create_table :menu_item_categories do |t|
      t.integer :category_id, null: false
      t.integer :menu_item_id, null: false
      t.timestamps null: false
    end
    add_index :menu_item_categories, [:menu_item_id, :category_id], unique: true
  end
end

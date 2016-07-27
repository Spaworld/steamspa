class CreateMenuItemCategories < ActiveRecord::Migration
  def change
    create_table :menu_item_categories do |t|
      t.integer :menu_item_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end

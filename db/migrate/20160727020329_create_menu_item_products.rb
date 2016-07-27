class CreateMenuItemProducts < ActiveRecord::Migration
  def change
    create_table :menu_item_products do |t|
      t.integer :menu_item_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end

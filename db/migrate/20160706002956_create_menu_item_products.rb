class CreateMenuItemProducts < ActiveRecord::Migration
  def change
    create_table :menu_item_products do |t|
      t.integer :menu_item_id, null: false
      t.integer :product_id, null: false
      t.timestamps null: false
    end
    add_index :menu_item_products, [:menu_item_id, :product_id]
  end
end

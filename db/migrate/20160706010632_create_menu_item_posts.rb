class CreateMenuItemPosts < ActiveRecord::Migration
  def change
    create_table :menu_item_posts do |t|
      t.integer :post_id, null: false
      t.integer :menu_item_id, null: false
      t.timestamps null: false
    end
    add_index :menu_item_posts, [:menu_item_id, :post_id]
  end
end

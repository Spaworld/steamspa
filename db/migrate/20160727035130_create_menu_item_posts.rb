class CreateMenuItemPosts < ActiveRecord::Migration
  def change
    create_table :menu_item_posts do |t|
      t.integer :menu_item_id
      t.integer :post_id

      t.timestamps null: false
    end
  end
end

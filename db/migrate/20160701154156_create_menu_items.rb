class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string  :name
      t.integer :menu_position
      t.timestamps null: false
    end
  end
end

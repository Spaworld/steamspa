class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
    add_index :menus, :name, unique: true
  end
end

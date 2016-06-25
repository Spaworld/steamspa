class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :gallery_id
      t.integer :user_id
      t.timestamps null: false
    end
    add_index :photos, [:gallery_id, :user_id]
  end
end

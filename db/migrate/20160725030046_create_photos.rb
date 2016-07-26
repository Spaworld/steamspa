class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.timestamps null: false
    end
    add_attachment :photos, :image
  end
end

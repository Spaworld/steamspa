class CreateVariationPhotos < ActiveRecord::Migration
  def change
    create_table :variation_photos do |t|
      t.integer :variation_id
      t.integer :photo_id

      t.timestamps null: false
    end
  end
end

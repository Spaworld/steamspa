class CreateBlurbGalleries < ActiveRecord::Migration
  def change
    create_table :blurb_galleries do |t|
      t.integer :blurb_id
      t.integer :gallery_id
      t.timestamps null: false
    end
    add_index :blurb_galleries, [:blurb_id, :gallery_id], unique: true
  end
end

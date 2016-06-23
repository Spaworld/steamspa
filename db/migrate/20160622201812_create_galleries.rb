class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.integer :product_id
      t.integer :variation_id
      t.timestamps null: false
    end
    add_index :galleries, [:product_id, :variation_id]
  end
end

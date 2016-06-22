class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.integer :product_id, null: false
      t.timestamps null: false
    end
    add_index :galleries, :product_id
  end
end

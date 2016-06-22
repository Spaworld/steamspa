class CreateVariations < ActiveRecord::Migration
  def change
    create_table :variations do |t|
      t.string :type, null: false
      t.text :value, null: false
      t.text :description
      t.integer :product_id, null: false
      t.timestamps null: false
    end
    add_index :variations, :product_id
  end
end

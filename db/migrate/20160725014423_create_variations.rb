class CreateVariations < ActiveRecord::Migration
  def change
    create_table :variations do |t|
      t.string :name
      t.text :description
      t.integer :product_id

      t.timestamps null: false
    end
  end
end

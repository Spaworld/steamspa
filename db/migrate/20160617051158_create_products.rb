class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :features, array: true
      t.integer :category_id
      t.timestamps null: false
    end
    add_index :products, :features, using: 'gin'
  end
end

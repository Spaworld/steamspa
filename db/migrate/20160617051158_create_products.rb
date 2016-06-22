class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.string :features, array: true
      t.timestamps null: false
    end
    add_index :products, :features, using: 'gin'
    add_index :products, :name
  end
end

class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :name, null: false
      t.string :value, null: false
      t.integer :variation_id

      t.timestamps null: false
    end
    add_index :attributes, :variation_id
  end
end

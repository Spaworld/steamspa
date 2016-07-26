class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text   :description
      t.text   :features, array: true
      t.index  :name
      t.timestamps null: false
    end
  end
end

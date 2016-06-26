class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name, null: false
      t.text   :description
      t.string :slug
      t.timestamps null: false
    end
    add_index :pages, [:name, :slug], unique: true
  end
end

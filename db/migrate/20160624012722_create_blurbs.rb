class CreateBlurbs < ActiveRecord::Migration
  def change
    create_table :blurbs do |t|
      t.string  :name, null: false
      t.text    :content, null: false
      t.integer :page_id
      t.timestamps null: false
    end
    add_index :blurbs, :page_id
  end
end

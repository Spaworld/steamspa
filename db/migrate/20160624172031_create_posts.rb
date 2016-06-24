class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title, null: false
      t.text    :body, null: false
      t.integer :author_id
      t.text    :tags, array: true, default: []
      t.string  :slug
      t.timestamps null: false
    end
    add_index :posts, [:title, :tags, :slug], unique: true
  end
end

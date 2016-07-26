class CreateJoinTableCategoriesPhotos < ActiveRecord::Migration
  def change
    create_join_table :categories, :photos do |t|
      t.index [:category_id, :photo_id]
      t.index [:photo_id, :category_id]
    end
  end
end

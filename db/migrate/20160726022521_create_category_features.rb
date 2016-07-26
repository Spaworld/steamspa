class CreateCategoryFeatures < ActiveRecord::Migration
  def change
    create_table :category_features do |t|
      t.integer :category_id
      t.integer :feature_id

      t.timestamps null: false
    end
  end
end

class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.string :value
      t.timestamps null: false
    end
  end
end

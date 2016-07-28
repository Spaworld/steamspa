class CreateJoinTablePagesTags < ActiveRecord::Migration
  def change
    create_join_table :pages, :tags do |t|
      t.index [:page_id, :tag_id]
      t.index [:tag_id, :page_id]
    end
  end
end

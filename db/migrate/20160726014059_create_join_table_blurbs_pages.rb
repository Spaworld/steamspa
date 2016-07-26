class CreateJoinTableBlurbsPages < ActiveRecord::Migration
  def change
    create_join_table :blurbs, :pages do |t|
      t.index [:blurb_id, :page_id]
      t.index [:page_id, :blurb_id]
    end
  end
end

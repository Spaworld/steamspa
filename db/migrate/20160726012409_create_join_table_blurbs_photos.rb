class CreateJoinTableBlurbsPhotos < ActiveRecord::Migration
  def change
    create_join_table :blurbs, :photos do |t|
      t.index [:blurb_id, :photo_id]
      t.index [:photo_id, :blurb_id]
    end
  end
end

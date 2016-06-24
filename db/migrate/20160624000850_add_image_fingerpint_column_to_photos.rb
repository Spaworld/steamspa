class AddImageFingerpintColumnToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :image_fingerprint, :string
    add_index :photos, :image_fingerprint, unique: true
  end
end

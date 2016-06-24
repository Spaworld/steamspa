class Photo < ActiveRecord::Base

  belongs_to :gallery

  has_attached_file :image, styles: { thumb: '250x250>', medium: '500x500>', large: '1000x1000>' }
  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }, presence: true

  def uniqueness_of_image
    errors.add_to_base "File already exists" unless Photo.all.find_by(image_fingerprint: image_fingerprint).nil?
  end

end

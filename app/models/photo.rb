class Photo < ActiveRecord::Base

  belongs_to :gallery

  has_attached_file :image, styles: { thumb: '250x250>', medium: '500x500>', large: '1000x1000>' }
  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }, presence: true

end

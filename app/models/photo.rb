class Photo < ActiveRecord::Base
  belongs_to :gallery
  has_attached_file :image, styles: { thumb: '250x250>', medium: '500x500>', large: '1000x1000>' }
  validates_attachment_content_type :image, content_type: /Aimage\/.*\Z/
end

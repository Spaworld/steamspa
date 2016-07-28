class Photo < ActiveRecord::Base

  has_many :product_photos
  has_many :products, through: :product_photos

  has_many :variation_photos
  has_many :variations, through: :variation_photos

  has_and_belongs_to_many :categories
  has_and_belongs_to_many :blurbs
  has_and_belongs_to_many :tags

  # PaperClip
  has_attached_file :image,
    styles: {
    large:  '1000x1000>',
    medium: '300x300>',
    thumb:  '100x100>' },

    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end

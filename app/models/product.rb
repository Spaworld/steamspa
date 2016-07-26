class Product < ActiveRecord::Base

  validates_presence_of :name

  has_many :variations, dependent: :destroy

  has_many :product_photos
  has_many :photos, through: :product_photos, dependent: :destroy

  has_many :product_categories
  has_many :categories, through: :product_categories


end

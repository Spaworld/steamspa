class Category < ActiveRecord::Base

  validates_presence_of :name, :description

  has_many :product_categories
  has_many :products, through: :product_categories
  has_many :post_categories
  has_many :posts, through: :post_categories
end

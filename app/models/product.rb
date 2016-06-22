class Product < ActiveRecord::Base

  validates_presence_of :name, :description, :features

  has_many :product_categories
  has_many :categories, through: :product_categories

end

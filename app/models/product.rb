class Product < ActiveRecord::Base
  validates_presence_of :name, :description, :features
  has_many :categories, through: :product_categories
end

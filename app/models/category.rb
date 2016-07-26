class Category < ActiveRecord::Base

  validates_presence_of :name

  has_and_belongs_to_many :photos

  has_many :product_categories
  has_many :products, through: :product_categories

  has_many :category_features
  has_many :features, through: :category_features

  has_one :parent, class_name: Category, foreign_key: :parent_id

end

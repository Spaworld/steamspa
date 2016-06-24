class Post < ActiveRecord::Base

  validates  :title, :body , presence: true, uniqueness: true

  has_many :post_categories
  has_many :categories, through: :post_categories

end

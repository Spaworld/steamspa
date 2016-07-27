class Post < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true

  has_many :menu_item_posts
  has_many :menu_items, through: :menu_item_posts, dependent: :destroy

  has_many :post_categories
  has_many :categories, through: :post_categories

end

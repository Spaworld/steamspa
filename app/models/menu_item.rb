class MenuItem < ActiveRecord::Base

  validates_presence_of :name, :menu_id

  belongs_to :menu, inverse_of: :menu_items

  has_many :menu_item_pages
  has_many :pages, through: :menu_item_pages

  has_many :menu_item_products
  has_many :products, through: :menu_item_products

  has_many :menu_item_categories
  has_many :categories, through: :menu_item_categories

end

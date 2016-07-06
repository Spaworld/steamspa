class Page < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  has_many :blurbs, dependent: :destroy

  has_many :menu_item_pages
  has_many :menu_items, through: :menu_item_pages

end

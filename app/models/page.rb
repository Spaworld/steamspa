class Page < ActiveRecord::Base

  validates_presence_of :name

  has_and_belongs_to_many :blurbs

  has_many :menu_item_pages
  has_many :menu_items, through: :menu_item_pages, dependent: :destroy

  has_and_belongs_to_many :tags

end

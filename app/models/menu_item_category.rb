class MenuItemCategory < ActiveRecord::Base

  belongs_to :category
  belongs_to :menu_item

  validates_presence_of :menu_item_id, :category_id
end

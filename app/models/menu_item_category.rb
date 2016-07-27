class MenuItemCategory < ActiveRecord::Base

  validates_presence_of :menu_item_id, :category_id

  belongs_to :menu_item
  belongs_to :category

end

class MenuItemPost < ActiveRecord::Base

  belongs_to :menu_item
  belongs_to :post

  validates_presence_of :menu_item_id, :post_id
end


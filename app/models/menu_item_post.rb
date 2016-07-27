class MenuItemPost < ActiveRecord::Base

  validates_presence_of :menu_item_id, :post_id

  belongs_to :post
  belongs_to :menu_item

end

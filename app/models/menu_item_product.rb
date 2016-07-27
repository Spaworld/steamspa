class MenuItemProduct < ActiveRecord::Base

  validates_presence_of :menu_item_id, :product_id

  belongs_to :menu_item
  belongs_to :product

end

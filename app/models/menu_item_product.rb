class MenuItemProduct < ActiveRecord::Base

  belongs_to :product
  belongs_to :menu_item

  validates_presence_of :menu_item_id, :product_id

end

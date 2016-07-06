class MenuItemPage < ActiveRecord::Base

  belongs_to :page
  belongs_to :menu_item

  validates_presence_of :menu_item_id, :page_id

end

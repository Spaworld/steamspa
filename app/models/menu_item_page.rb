class MenuItemPage < ActiveRecord::Base

  validates_presence_of :menu_item_id, :page_id

  belongs_to :menu_item
  belongs_to :page

end

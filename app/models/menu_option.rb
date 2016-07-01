class MenuOption < ActiveRecord::Base

  validates :menu_id, :menu_item_id, presence: true, uniqueness: true

  belongs_to :menu
  belongs_to :menu_item

end

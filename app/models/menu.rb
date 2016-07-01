class Menu < ActiveRecord::Base

  validates_presence_of :name

  has_many :menu_options
  has_many :menu_items, through: :menu_options

end

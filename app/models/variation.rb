class Variation < ActiveRecord::Base

  validates_presence_of :name, :product_id

  belongs_to :product
  has_one :gallery, dependent: :destroy

end

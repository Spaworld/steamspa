class ProductPhoto < ActiveRecord::Base

  validates_presence_of :product_id, :photo_id

  belongs_to :product
  belongs_to :photo

end

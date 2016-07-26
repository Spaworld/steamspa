class ProductCategory < ActiveRecord::Base

  validates_presence_of :product_id, :category_id

  belongs_to :product
  belongs_to :category

end

class Gallery < ActiveRecord::Base
  belongs_to  :product
  belongs_to  :variation
  has_many    :photos, dependent: :destroy
  validates_uniqueness_of :product_id, :variation_id
end

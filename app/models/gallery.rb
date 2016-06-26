class Gallery < ActiveRecord::Base
  belongs_to  :product
  belongs_to  :variation
  has_many    :photos, dependent: :destroy
  has_many    :blurb_galleries
  has_many    :blurbs, through: :blurb_galleries
  validates_uniqueness_of :product_id, :variation_id
end

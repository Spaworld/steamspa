class Gallery < ActiveRecord::Base
  belongs_to  :product
  has_many    :photos, dependent: :destroy
  validates_presence_of :product_id
end

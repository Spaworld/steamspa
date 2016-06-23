class Variation < ActiveRecord::Base
  belongs_to :product
  has_one :gallery, dependent: :destroy
  validates_presence_of :type, :value, :product_id
end

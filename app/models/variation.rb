class Variation < ActiveRecord::Base
  belongs_to :product
  validates_presence_of :type, :value, :product_id
end

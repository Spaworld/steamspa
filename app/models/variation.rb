class Variation < ActiveRecord::Base

  validates_presence_of :name, :product_id

  belongs_to :product, inverse_of: :variations

  has_many :variation_photos
  has_many :photos, through: :variation_photos, dependent: :destroy

  def features
    CategoryFeature.where(category_id: product.id).map(&:features)
  end

end

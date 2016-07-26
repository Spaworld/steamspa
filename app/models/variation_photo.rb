class VariationPhoto < ActiveRecord::Base

  validates_presence_of :photo_id, :variation_id

  belongs_to :photo
  belongs_to :variation

end

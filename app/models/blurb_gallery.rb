class BlurbGallery < ActiveRecord::Base

  belongs_to :blurb
  belongs_to :gallery, dependent: :destroy

  validates :blurb_id, :gallery_id, presence: true

end

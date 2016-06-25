class Photo < ActiveRecord::Base

  belongs_to :gallery
  belongs_to :user

  has_attached_file :image, styles: { thumb: '250x250>', medium: '500x500>', large: '1000x1000>' }
  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }, presence: true

  validates :gallery_id, :user_id, uniqueness: true
  validate :orphanage

  private

  def orphanage
    errors.add(:base, 'Has to be belong to something') unless gallery_id.present? || user_id.present?
  end

end


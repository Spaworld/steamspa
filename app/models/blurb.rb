class Blurb < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  belongs_to :page
  has_many :photos, dependent: :destroy
  has_many :blurb_galleries
  has_many :galleries, through: :blurb_galleries, dependent: :destroy

  def self.logo_image
    unless Rails.env.test?
      find_by(name: 'Logo').photos.first.image(:medium)
    end
  end

  def self.promo_message_blurb
    unless Rails.env.test?
      find_by(name: 'Promo Message').content.html_safe
    end
  end

end

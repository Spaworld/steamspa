class Blurb < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  belongs_to :page
  has_many :photos, dependent: :destroy
  has_many :blurb_galleries
  has_many :galleries, through: :blurb_galleries, dependent: :destroy

end

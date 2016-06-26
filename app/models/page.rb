class Page < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  has_many :blurbs, dependent: :destroy

end

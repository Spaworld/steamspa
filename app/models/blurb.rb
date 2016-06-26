class Blurb < ActiveRecord::Base

  validates :name, :content, presence: true, uniqueness: true

  belongs_to :page

end

class Blurb < ActiveRecord::Base

  validates_presence_of :name, :content

  has_and_belongs_to_many :photos
  has_and_belongs_to_many :pages

end

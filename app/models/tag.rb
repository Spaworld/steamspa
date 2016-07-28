class Tag < ActiveRecord::Base

  validates_presence_of :name

  has_and_belongs_to_many(:photos)
  has_and_belongs_to_many(:posts)
  has_and_belongs_to_many(:products)
  has_and_belongs_to_many(:pages)

end

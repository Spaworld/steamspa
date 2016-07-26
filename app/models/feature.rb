class Feature < ActiveRecord::Base

  validates_presence_of :name, :value

  has_many :category_features
  has_many :categories, through: :category_features

end

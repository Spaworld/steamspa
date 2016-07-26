class CategoryFeature < ActiveRecord::Base

  validates_presence_of :feature_id, :category_id

  belongs_to :category
  belongs_to :feature

end

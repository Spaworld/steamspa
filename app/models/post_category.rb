class PostCategory < ActiveRecord::Base

  validates_presence_of :category_id, :post_id

  belongs_to :category
  belongs_to :post

end

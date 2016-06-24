class PostCategory < ActiveRecord::Base

  belongs_to :post
  belongs_to :category

  validates :post_id, :category_id, presence: true
end

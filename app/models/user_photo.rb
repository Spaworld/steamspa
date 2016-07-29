class UserPhoto < ActiveRecord::Base

  validates_presence_of :user_id, :photo_id

  belongs_to :user
  belongs_to :photo

end

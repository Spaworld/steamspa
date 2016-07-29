require "#{Rails.root}/lib/hash_serializer"

class User < ActiveRecord::Base

  validates_presence_of :username, :email

  has_many :user_photos
  has_many :photos, through: :user_photos, dependent: :destroy

  after_destroy :destroy_user_photos

  serialize :roles, HashSerializer
  store_accessor :roles, :admin, :contributor, :member

  def admin?
    roles[:admin]
  end

  def contributor?
    roles[:contributor]
  end

  def member?
    roles[:member]
  end

  private

  def destroy_user_photos
    photo_ids = UserPhoto.where(user_id: id).pluck(:id)
    Photo.where(photo_ids).destroy_all
  end

end

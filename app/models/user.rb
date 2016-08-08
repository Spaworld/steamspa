class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  rolify

  validates_presence_of :username, :email

  has_many :user_photos
  has_many :photos, through: :user_photos, dependent: :destroy

  after_destroy :destroy_user_photos

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  private

  def destroy_user_photos
    photo_ids = UserPhoto.where(user_id: id).pluck(:id)
    Photo.where(photo_ids).destroy_all
  end

end

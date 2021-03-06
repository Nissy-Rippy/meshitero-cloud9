class User < ApplicationRecord
  has_many :post_coments,dependent: :destroy
  has_many :post_images,dependent: :destroy
  has_many :favorites,dependent: :destroy
  attachment :profile_image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

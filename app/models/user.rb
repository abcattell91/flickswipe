class User < ApplicationRecord
  has_one_attached :photo, dependent: :destroy
  has_many :initiated_friendships, class_name: "Friendship", foreign_key: "initiator_id", dependent: :destroy
  has_many :received_friendships, class_name: "Friendship", foreign_key: "contact_id", dependent: :destroy
  has_many :user_contents, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

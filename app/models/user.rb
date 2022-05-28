class User < ApplicationRecord
  has_many :initiated_friendships, class_name: "Friendship", foreign_key: "initiator_id"
  has_many :received_friendships, class_name: "Friendship", foreign_key: "contact_id"
  has_many :user_contents
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

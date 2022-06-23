class User < ApplicationRecord
  has_one_attached :photo
  has_many :initiated_friendships, class_name: "Friendship", foreign_key: "initiator_id"
  has_many :received_friendships, class_name: "Friendship", foreign_key: "contact_id"
  has_many :user_contents
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include PgSearch::Model
  pg_search_scope :search_by_first_name,
    against: [ :first_name ],
    using: {
      tsearch: { prefix: true }
  }
end

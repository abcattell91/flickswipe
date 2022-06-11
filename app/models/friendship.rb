class Friendship < ApplicationRecord
  belongs_to :initiator, class_name: "User"
  belongs_to :user, class_name: "User"

  validates :contact, uniqueness: true
end

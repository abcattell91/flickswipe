class Friendship < ApplicationRecord
  belongs_to :initiator, class_name: "User"
  belongs_to :contact, class_name: "User"
  has_many :matches
end

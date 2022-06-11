class Friendship < ApplicationRecord
  belongs_to :initiator, class_name: "User"
<<<<<<< HEAD
  belongs_to :user, class_name: "User"

  validates :contact, uniqueness: true
=======
  belongs_to :contact, class_name: "User"
  has_many :matches
>>>>>>> 4cff65d17230821ecb4efa9695ba5f2c0291bff9
end

class UserMedium < ApplicationRecord
  belongs_to :user
  belongs_to :media
end

class Content < ApplicationRecord
  has_many :content_streaming_services, dependent: :destroy
  has_many :user_contents, dependent: :destroy
  has_many :streaming_services, through: :content_streaming_services

  # scope :filter_by_content, ->(content_type) { where content_type: content_type }
  # scope :filter_by_rating, ->(rating) { where rating: rating }
  # scope :filter_by_duration, ->(duration) { where duration: duration }
end

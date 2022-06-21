class Content < ApplicationRecord
  has_many :content_streaming_services
  has_many :user_contents
  has_many :streaming_services, through: :content_streaming_services
end

class Content < ApplicationRecord
  has_many :content_streaming_services, dependent: :destroy
  has_many :user_contents, dependent: :destroy
  has_many :streaming_services, through: :content_streaming_services
end

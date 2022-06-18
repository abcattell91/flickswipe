class ContentStreamingService < ApplicationRecord
  belongs_to :streaming_service
  belongs_to :content
end

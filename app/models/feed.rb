class Feed < ApplicationRecord
  mount_uploader :image, ImageUploader
 validates :feeds, presence: true
 validates :image, presence: true
 belongs_to :user
end

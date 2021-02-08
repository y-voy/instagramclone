class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :content, presence: true, length: { in: 1..500 }
  validates :image, presence: true
end

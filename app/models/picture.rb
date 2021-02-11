class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :content, presence: true, length: { in: 1..500 }
  validates :image, presence: true
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
end

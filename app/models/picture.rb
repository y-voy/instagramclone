class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :content, presence: true, length: { in: 1..500 }
  validates :image, presence: true
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :comments, dependent: :destroy
  has_many :comments_users, through: :comments, source: :user
  has_many :likes, dependent: :destroy
  has_many :like_users, through: :likes, source: :user
end

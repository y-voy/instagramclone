class User < ApplicationRecord
  before_validation { email.downcase! }
  attr_accessor :image_x, :image_y, :image_w, :image_h
  has_one_attached :image
  validates :name, presence: true, length: { maximum: 30 }
  validates :nickname, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  mount_uploader :image, ImageUploader
  has_many :pictures
  has_many :favorites, dependent: :destroy
end

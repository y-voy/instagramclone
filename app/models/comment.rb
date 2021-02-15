class Comment < ApplicationRecord
  validates :comment, presence: true, length: { in: 1..500 }
  belongs_to :user
  belongs_to :picture
end

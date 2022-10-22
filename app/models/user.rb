class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :username, presence: true, length: { in: 6..16 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
end

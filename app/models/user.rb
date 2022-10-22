class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments

  validates :username, presence: true, length: { in: 4..20 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
end

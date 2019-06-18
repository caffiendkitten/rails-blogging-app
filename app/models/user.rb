class User < ApplicationRecord
  has_many :posts
  has_many :likes, through: :posts
  has_many :comments, through: :posts

  validates :user_name, uniqueness: true

  has_secure_password
end

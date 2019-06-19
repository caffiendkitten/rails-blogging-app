class Post < ApplicationRecord
  belongs_to :user
  has_many :post_likes
  has_many :comments


  # validates :user, uniqueness: true

end

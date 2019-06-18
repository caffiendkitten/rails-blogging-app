class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments


  # validates :user, uniqueness: true

end

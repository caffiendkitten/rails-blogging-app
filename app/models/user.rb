class User < ApplicationRecord
  has_many :posts
  has_many :likes, through: :posts
  has_many :comments, through: :posts

  validates :user_name, uniqueness: true
  validates :user_name, presence: true

  has_secure_password


  def self.user_with_most_posts
    @user = ""
    @most_posts = 0
    User.all.each do |user|
      if user.posts.length > @most_posts
        @user = user.user_name
        @most_posts = user.posts.length
      end
    end
    @user
  end

end

class Post < ApplicationRecord
  belongs_to :user
  has_many :post_likes, dependent: :destroy
  has_many :comments, dependent: :destroy


  validates :content, presence: true
  validates :title, presence: true

  def self.most_likes
    @most_likes = 0
    Post.all.each do |post|
      if post.post_likes.count > @most_likes
          @most_likes = post.post_likes.count
      end
    end
    @most_likes
  end

  def self.total_word_count
    @total_word_count = 0
    Post.all.each do |post|
      words = post.content.split(" ")
      @total_word_count += words.length
    end
    @total_word_count
  end

  def self.average_word_count
    @avg = (Post.total_word_count / Post.all.length)
  end

  def self.total_likes
    @total = 0
    Post.all.each do |post|
      @total += post.post_likes.length
    end
    @total
  end

  def self.avg_likes_per_post
    @avg = (Post.total_likes / Post.all.length)
  end


end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = RestClient.get('http://reddit.com/.json')
json = JSON.parse(response.body)
posts = json["data"]["children"]
# post_content = posts["data"]["selftext_html"]


def display_post(post, index)
  ups = post["data"]["ups"]
  downs = post["data"]["downs"]
  votes = "(#{ups}/#{downs})"
  title = post["data"]["title"][0..20]
  puts "#{index}. #{votes} #{title}"
end

response = RestClient.get('http://reddit.com/.json')
json = JSON.parse(response.body)
posts = json["data"]["children"]




# =================
# data for users:
u1 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "404 bio not found", pic: Faker::Avatar.image, password_digest: "qwert")
u2 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "404 bio not found", pic: Faker::Avatar.image, password_digest: "34567")
u3 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "yeeeeeeeeeet?", pic: Faker::Avatar.image, password_digest: "yeet")
u4 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "404 bio not found", pic: Faker::Avatar.image, password_digest: "sdfm")
u5 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "404 bio not found", pic: Faker::Avatar.image, password_digest: "lkjhgfds")
u6 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "404 bio not found", pic: Faker::Avatar.image, password_digest: "lkjhgfds")
u7 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "404 bio not found", pic: Faker::Avatar.image, password_digest: "lkjhgfds")
u8 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "404 bio not found", pic: Faker::Avatar.image, password_digest: "lkjhgfds")
u9 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "404 bio not found", pic: Faker::Avatar.image, password_digest: "lkjhgfds")

# =================
# data for Posts:

# Faker::Lorem.paragraphs

# p1 = Post.create(user_id: 1, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
# p2 = Post.create(user_id: 2, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
# p3 = Post.create(user_id: 3, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
# p4 = Post.create(user_id: 4, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
# p5 = Post.create(user_id: 5, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
# p6 = Post.create(user_id: 1, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
# p7 = Post.create(user_id: 3, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
# p8 = Post.create(user_id: 4, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))



# Faker::TvShows::SiliconValley.quote # => "I don't want to live in a world where someone else is making the world a better place better than we are."


# =====

# puts "All posts:"
count = 1

posts.each do |post|
  # byebug
  title = post["data"]["title"]
  post_content = post["data"]["selftext"]

  # 1.times do
    Post.create(
      user_id: count,
      title: title,
      content: if post_content == ""
        Faker::Lorem.paragraph_by_chars(256, false)
      else
        post_content
      end
    )
  # end
  count += 1
end

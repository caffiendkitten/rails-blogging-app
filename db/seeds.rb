# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



u1 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "404 bio not found", password_digest: "qwert")
u2 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "404 bio not found", password_digest: "34567")
u3 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "yeeeeeeeeeet?", password_digest: "yeet")
u4 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "404 bio not found", password_digest: "sdfm")
u5 = User.create(user_name: Faker::TvShows::SiliconValley.character, bio: "404 bio not found", password_digest: "lkjhgfds")

# Faker::Lorem.paragraphs

p1 = Post.create(user_id: 1, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
p2 = Post.create(user_id: 2, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
p3 = Post.create(user_id: 3, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
p4 = Post.create(user_id: 4, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
p5 = Post.create(user_id: 5, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
p6 = Post.create(user_id: 1, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
p7 = Post.create(user_id: 3, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))
p8 = Post.create(user_id: 4, title: Faker::TvShows::SiliconValley.quote, content: Faker::Lorem.paragraph_by_chars(256, false))



# Faker::TvShows::SiliconValley.quote # => "I don't want to live in a world where someone else is making the world a better place better than we are."

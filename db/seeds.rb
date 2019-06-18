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



p1 = Post.create(user_id: 1, title: "title1", content: Faker::TvShows::SiliconValley.quote)
p2 = Post.create(user_id: 2, title: "title2", content: Faker::TvShows::SiliconValley.quote)
p3 = Post.create(user_id: 3, title: "title3", content: Faker::TvShows::SiliconValley.quote)
p4 = Post.create(user_id: 4, title: "title4", content: Faker::TvShows::SiliconValley.quote)
p5 = Post.create(user_id: 5, title: "title5", content: Faker::TvShows::SiliconValley.quote)
p6 = Post.create(user_id: 1, title: "title6", content: Faker::TvShows::SiliconValley.quote)
p7 = Post.create(user_id: 3, title: "title7", content: Faker::TvShows::SiliconValley.quote)
p8 = Post.create(user_id: 4, title: "title7", content: Faker::TvShows::SiliconValley.quote)



# Faker::TvShows::SiliconValley.quote # => "I don't want to live in a world where someone else is making the world a better place better than we are."

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# rake db:drop db:create db:migrate db:seed

require 'faker'

puts 'Creating 100 fake users...'
100.times do
  user = User.new(
    username: Faker::Internet.unique.username(specifier: 4..20),
    email: Faker::Internet.email
  )
  user.save!
end
puts '...Finished!'

puts 'Creating 100 fake posts'
100.times do
  post = Post.new(
    title: Faker::Restaurant.name,
    body: Faker::Restaurant.description,
    user_id: Faker::Number.within(range: 1..100)
  )
  post.save
end
puts '...Finished!'

puts 'Creating 100 fake comments'
100.times do
  comment = Comment.new(
    body: Faker::Restaurant.review,
    user_id: Faker::Number.within(range: 1..100),
    post_id: Faker::Number.within(range: 1..100)
  )
  comment.save
end
puts '...Finished'

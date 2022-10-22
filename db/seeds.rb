# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Creating 100 fake users...'
20.times do
  user = User.new(
    username: Faker::Superhero.name.gsub(' ', '_')[0..18],
    email: Faker::Internet.email.to_s
  )
  user.save!
end
puts '...Finished!'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Create Wikis

50.times do
  Wiki.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
  )
end
wikis = Wiki.all

10.times do
  User.create!(
    email: Faker::Internet.unique.email,
    password: Faker::Lorem.characters(6)
  )
end
users = User.all

puts "Seed finished"
puts "#{Wiki.count} wikis created"
puts "#{User.count} users created"

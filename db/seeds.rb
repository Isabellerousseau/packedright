# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# puts 'Creating 10 fake users...'
# 10.times do
#   user = User.new(
#     name: Faker::Name,
#     phone_number: Faker::PhoneNumber,
#     email: Faker::Internet.email,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     rating: rand(0..5)
#   )
#   driver.save!
# end
# puts 'Finished!'

puts 'Creating 10 fake drivers...'
# 10.times do
#   driver = Driver.new(
#     name: Faker::Name,
#     phone_number: Faker::PhoneNumber,
#     email: Faker::Internet.email,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}"
#   )
#   driver.save!
# end

Driver.create(name: 'anton', phone_number: '012381823', email: 'emiel@gmail.com', address: 'Oude Waal 5')
puts 'Finished!'

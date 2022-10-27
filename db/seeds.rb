# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Creating 50 fake jobs...'
50.times do
  job = Job.new(
    name: Faker::Company.name,
    title: Faker::Job.title,
    location: Faker::Address.city,
    salary: rand(0..5),
    japanese: ["N1", "N2", "N3", "N4", "N5", "none"].sample,
    moreInfo: Faker::Lorem.paragraph_by_chars,
    benefits: Faker::Games::Zelda.item
  )
  job.save!
end
puts 'Finished!'

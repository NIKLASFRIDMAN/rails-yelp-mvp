# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "248484", category: 'fast-food' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "232323", category: 'fine-dining' }
mcdonalds = { name: "Mcdonalds", address: "7 Bsdsdsdsd, London E2 7JE", phone_number: "242323", category: 'fast-food' }
heaven =  { name: "Heaven", address: "5asdasdditch High St, London E1 6PQ", phone_number: "125673", category: 'fine-dining' }
dirty =  { name: "Dirty", address: "Paris 43234 High St, London E1 6PQ", phone_number: "211132323", category: 'fine-dining' }

[ dishoom, pizza_east, mcdonalds, heaven, dirty ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

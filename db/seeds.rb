# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Seeding..."
restaurant_one = Restaurant.new(name: "Regina's Corner", address: "Mars", phone_number:"38317-2321", category: "french")
restaurant_two = Restaurant.new(name: "Leao's Place", address: "Jupiter", phone_number:"38537-52321", category: "french")
restaurant_three = Restaurant.new(name: "Sushi Bar", address: "Pluto", phone_number:"12117-2345", category: "japanese")
restaurant_four = Restaurant.new(name: "Pizza Pizza", address: "Saturn", phone_number:"45317-24271", category: "italian")
restaurant_five = Restaurant.new(name: "Lecker", address: "Earth", phone_number:"32317-9887", category: "chinese")
restaurant_one.save
restaurant_two.save
restaurant_three.save
restaurant_four.save
restaurant_five.save
review_one = Review.new(rating: 5, content: "Amazing", restaurant_id: 3)
review_two = Review.new(rating: 4, content: "Amazing", restaurant_id: 1)
review_three = Review.new(rating: 3, content: "Amazing", restaurant_id: 1)
review_four = Review.new(rating: 3, content: "Amazing", restaurant_id: 2)
review_five = Review.new(rating: 5, content: "Amazing", restaurant_id: 4)
review_one.save
review_two.save
review_three.save
review_four.save
review_five.save
puts "Seeding completed"

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating users..."

User.create!(email: "random@gmail.com", password: "qwerty")

puts "Users created!"

puts "---------------------"

puts "Creating hotels..."


Hotel.create!(name: "Hôtel Les Quatre Dauphins", address: "54 Rue Roux Alpheran, 13100 Aix-en-Provence")
Hotel.create!(name: "Adonis Arc hôtel", address: "40 Av. Henri Malacrida, 13100 Aix-en-Provence")
Hotel.create!(name: "Hôtel le Concorde", address: "66/68, Bd du Roi René, 13100 Aix-en-Provence")
Hotel.create!(name: "Hôtel Renaissance", address: "256 Av. de Pérouse, 13100 Aix-en-Provence")
Hotel.create!(name: "Hôtel de France", address: "63 Rue Espariat, 13100 Aix-en-Provence")
Hotel.create!(name: "Hôtel Escale Oceania", address: "12 Avenue de la Cible, 13100 Aix-en-Provence")
Hotel.create!(name: "Hôtel Les Quatre Dauphins", address: "54 Rue Roux Alpheran, 13100 Aix-en-Provence")
Hotel.create!(name: "Adonis Arc hôtel", address: "40 Av. Henri Malacrida, 13100 Aix-en-Provence")

puts "Hotels created!"

puts "---------------------"

puts "Creating rooms..."

6.times do
  Room.create!(price_per_night: rand(50..250), capacity: rand(1..4), hotel_id: 1)
end

6.times do
  Room.create!(price_per_night: rand(50..250), capacity: rand(1..4), hotel_id: 2)
end

6.times do
  Room.create!(price_per_night: rand(50..250), capacity: rand(1..4), hotel_id: 3)
end

6.times do
  Room.create!(price_per_night: rand(50..250), capacity: rand(1..4), hotel_id: 4)
end

6.times do
  Room.create!(price_per_night: rand(50..250), capacity: rand(1..4), hotel_id: 5)
end

6.times do
  Room.create!(price_per_night: rand(50..250), capacity: rand(1..4), hotel_id: 6)
end

6.times do
  Room.create!(price_per_night: rand(50..250), capacity: rand(1..4), hotel_id: 7)
end
6.times do
  Room.create!(price_per_night: rand(50..250), capacity: rand(1..4), hotel_id: 8)
end

puts "Rooms created!"

puts "---------------------"

puts "Creating bookings..."

Booking.create!(starts_at: "2021-09-01", ends_at: "2021-09-05", user_id: 1, room_id: 1)

puts "Bookings created!"

puts "---------------------"

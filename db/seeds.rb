# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Airports
Airport.create(code: 'LAX')
Airport.create(code: 'SFO')
Airport.create(code: 'NYC')
Airport.create(code: 'LAS')

# Flights
Flight.create(departure_airport: Airport.find_by(code: 'LAX'), arrival_airport: Airport.find_by(code: 'SFO'), start_datetime: 2.days.from_now, duration: 90)
Flight.create(departure_airport: Airport.find_by(code: 'NYC'), arrival_airport: Airport.find_by(code: 'LAS'), start_datetime: 3.days.from_now, duration: 300)

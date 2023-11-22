# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airports_data = [
  { code: 'SFO', city: 'San Francisco' },
  { code: 'NYC', city: 'New York City' },
  { code: 'LAX', city: 'Los Angeles' },
  { code: 'ORD', city: 'Chicago' },
  { code: 'DFW', city: 'Dallas/Fort Worth' },
  { code: 'ATL', city: 'Atlanta' },
  { code: 'DEN', city: 'Denver' },
  { code: 'SEA', city: 'Seattle' },
  { code: 'MIA', city: 'Miami' },
  { code: 'LAS', city: 'Las Vegas' }
]

airports_data.each do |airport|
    Airport.create(airport)
end

flights_data = [
  {
    departure_airport: Airport.find_by(code: 'SFO'),
    arrival_airport: Airport.find_by(code: 'NYC'),
    start_datetime: DateTime.now + 10.days,
    flight_duration: 3.hours.to_i
  },
  {
    departure_airport: Airport.find_by(code: 'LAX'),
    arrival_airport: Airport.find_by(code: 'ORD'),
    start_datetime: DateTime.now + 15.days,
    flight_duration: 4.hours.to_i
  },
  {
    departure_airport: Airport.find_by(code: 'ATL'),
    arrival_airport: Airport.find_by(code: 'SEA'),
    start_datetime: DateTime.now + 20.days,
    flight_duration: 5.hours.to_i
  },
  {
    departure_airport: Airport.find_by(code: 'DEN'),
    arrival_airport: Airport.find_by(code: 'MIA'),
    start_datetime: DateTime.now + 25.days,
    flight_duration: 2.hours.to_i
  },
  {
    departure_airport: Airport.find_by(code: 'LAS'),
    arrival_airport: Airport.find_by(code: 'NYC'),
    start_datetime: DateTime.now + 30.days,
    flight_duration: 6.hours.to_i
  }
]

flights_data.each do |flight|
  Flight.create(flight)
end
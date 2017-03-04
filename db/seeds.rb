# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@client = GooglePlaces::Client.new(ENV["google_places_key"])
@google_downtown_venues = @client.spots_by_query('Downtown Miami Florida', :types => ['bar', 'night_club'])

@google_downtown_venues.each do |v|
  Venue.create!(title: v.name, location: v.formatted_address, description: v.rating, user_id: 1)
end

@google_sobe_venues = @client.spots_by_query('South Beach Florida', :types => ['bar', 'night_club'])

@google_sobe_venues.each do |v|
  Venue.create!(title: v.name, location: v.formatted_address, description: v.rating, user_id: 1)
end

@google_brickell_venues = @client.spots_by_query('Brickell Florida', :types => ['bar', 'night_club'])

@google_brickell_venues.each do |v|
  Venue.create!(title: v.name, location: v.formatted_address, description: v.rating, user_id: 1)
end

@google_wynwood_venues = @client.spots_by_query('Wynwood Florida', :types => ['bar', 'night_club'])

@google_wynwood_venues.each do |v|
  Venue.create!(title: v.name, location: v.formatted_address, description: v.rating, user_id: 1)
end

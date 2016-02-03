require 'weather-underground'

puts "What is your zip code?"
zip = gets
client = Weatherman::Client.new

client.lookup_by_location('gets').condition['temp']
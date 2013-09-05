require './lib/van.rb'
require './lib/garage.rb'
require './lib/bike_station.rb'
require './lib/bike.rb'

van = Van.new
garage = Garage.new

maybike1 = Bike.new(1)
maybike2 = Bike.new(2)
maybike3 = Bike.new(3)

#oxford = BikeStation.new(Bike.new("OxBike1"),Bike.new("OxBike2"),Bike.new("OxBike3"),Bike.new("OxBike4"),Bike.new("OxBike5"),Bike.new("OxBike6"),Bike.new("OxBike7"),Bike.new("OxBike8"),Bike.new("OxBike9"),Bike.new("OxBike10"))
#mayfair = BikeStation.new(Bike.new("MayBike1"),Bike.new("MayBike2"),Bike.new("MayBike3"),Bike.new("MayBike4"),Bike.new("MayBike5"),Bike.new("MayBike6"),Bike.new("MayBike7"),Bike.new("MayBike8"),Bike.new("MayBike9"),Bike.new("MayBike10"))
mayfair = BikeStation.new(maybike1, maybike2, maybike3)

puts "Bikes at Mayfair"
puts mayfair.station_bikes.inspect

puts "Break a bike"
maybike1.break!

van.load_van_at_station(mayfair)

puts "Pickup - all broken bikes in the van from mayfair"
print van.van_bikes

garage.receive_bikes(van)

puts "All bikes at the garage"
print garage.garage_bikes

puts "Fix bikes"
garage.fix_bikes

print van.load_van_at_garage(garage)

puts "Bikes back in the van"
print van.van_bikes
print mayfair.checkin_van_bikes(van)

puts "Bikes Back at mayfair"
print mayfair.station_bikes
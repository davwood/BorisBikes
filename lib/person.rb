require '../lib/bike.rb'
require '../lib/bike_station.rb'

class Person

	def initialize(name)
		@bike = nil
	end

	def rent_bike(fromstation)
		@bike = fromstation.checkout
	end

	def return_bike(tostation)
		tostation.checkin(@bike)
		@bike = nil
	end

	def has_bike?
		if @bike != nil
		puts "has bike? #{@has_bike = true}"
		else 
		puts false
		end
	end

	def broken_bike_alert(bike)
		bike.break!

	end

	def rentedbike
		@bike
	end


end

station = BikeStation.new("Old Street", "bike1", "bike2")
jay = Person.new('jay')
jay.has_bike?
jay.rent_bike(station)
jay.has_bike?
jay.broken_bike_alert(Bike.new(20))




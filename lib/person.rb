# require_relative '../lib/bike.rb'
# require_relative '../lib/bike_station.rb'

class Person

	def initialize
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
		!@bike.nil?
	end

	
	def broken_bike_alert(bike)
		bike.break!
	end

	def rentedbike
		@bike
	end


end


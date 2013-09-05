class Van

	def initialize
		@van_bikes = Array.new
	end

	def load_van_at_station(fromstation)
		@van_bikes.concat(fromstation.checkout_broken)
		fromstation.clear_broken_bikes
	end	

	def load_van_at_garage(garage)
		@van_bikes.concat(garage.garage_bikes)
		garage.clear_bikes
	end

	def clear_bikes
		@van_bikes.clear
	end

	def countofbikes
		@van_bikes.length
	end

	def driving
		puts "I'm driving around London!"
	end

	def van_bikes
		@van_bikes
	end

end
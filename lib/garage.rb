class Garage

	def initialize
		@fixedbikes = 0
		@garage_bikes = Array.new
	end

	def receive_bikes(from_van)
		@garage_bikes.concat(from_van.van_bikes)
		from_van.clear_bikes
	end

	def fix_bikes
		@garage_bikes.each {|bike| bike.fix 
		@fixedbikes =+ 1} 		
	end

	def clear_bikes
		@garage_bikes.clear
	end

	def garage_bikes
		@garage_bikes
	end

	def fixedbikes
		@fixedbikes
	end

end


class BikeStation

	def initialize(*bikes)
		@station_bikes = bikes
		@capacity = @station_bikes.length
	end

	def capacity
		@capacity
	end

	def bikecount
		@bikecount = @station_bikes.length
	end

 	def checkin(bike)
 		@station_bikes.push(bike)
 	end

 	#checkout working bikes
 	def checkout
		@working_bikes = @station_bikes.select {|bike| bike.working? == true}
		@checkedbike = @working_bikes.last
 		@working_bikes.pop
 		puts "A bike has been checked out."
 		return @checkedbike	
 	end

 	#checkout ALL broken bikes
 	def checkout_broken
		@broken_bikes = @station_bikes.select {|bike| bike.working? == false }
 		return @broken_bikes
 	end


#need to insert an if statement so that the bikes 
# are dealt with when over capacity
 	def checkin_van_bikes(van)
		@station_bikes.concat(van.van_bikes)
 		van.clear_bikes
 	end

 	def clear_bikes
 		@station_bikes.clear
 	end

 	def clear_broken_bikes
		@broken_bikes.clear
 	end

 	def station_bikes
 		@station_bikes
 	end

 
 end















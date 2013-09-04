class BikeStation

	def initialize(stationname, *bikenames)
		@Stationname = stationname
		@bikes = bikenames
		@capacity = @bikes.length

	end

	def capacity
		@capacity
	end

	def stationname
		@Stationname
	end 

	# def places
	# 	@Stationinfo[1]
	# end

	def bikecount
		@bikecount = @bikes.length
	end

 	def checkin(bike)
 		@bikes.push(bike)
 	end

 	def checkout
		# @checkedbike = @bikes.last
 		# @bikes.pop
 		puts "A bike has been checked out."
 		 		@bikes.pop
 		# return @checkedbike	
 	end

 	def bikes
 		@bikes.inspect
 	end

 
 end


# b = BikeStation.new("Oxford","Bike1","Bike2","Bike3","Bike4","Bike5","Bike6","Bike7","Bike8","Bike9","Bike10")
# puts b.bikecount
# puts b.stationname
# puts b.bikes
# b.checkin("mybike")
# puts b.bikes
# puts b.bikecount

# # newstation = Bike_station.new(15,20)
# # puts "This is the bike count: #{newstation.checkin}"
# #mem.bikecount

# Oxford = BikeStation.new("Oxford","OxBike1","OxBike2","OxBike3","OxBike4","OxBike5","OxBike6","OxBike7","OxBike8","OxBike9","OxBike10")
# Mayfair = BikeStation.new("Mayfair","MayBike1","MayBike2","MayBike3","MayBike4","MayBike5","MayBike6","MayBike7","MayBike8","MayBike9","MayBike10")
# Staines = BikeStation.new("Staines","StaBike1","StaBike2","StaBike3","StaBike4","StaBike5","StaBike6","StaBike7","StaBike8","StaBike9","StaBike10")
# Peckham = BikeStation.new("Peckham","PeckBike1","PeckBike2","PeckBike3","PeckBike4","PeckBike5","PeckBike6","PeckBike7","PeckBike8","PeckBike9","PeckBike10")
# Brixton = BikeStation.new("Brixton","BrixBike1","BrixBike2","BrixBike3","BrixBike4","BrixBike5","BrixBike6","BrixBike7","BrixBike8","BrixBike9","BrixBike10")












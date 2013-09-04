class Bike

	def initialize(bikeid)
		@working = true
		@bikeinfo = {:bikeid => bikeid,
					:checkouttime => Time.new, 
					:checkintime => Time.new}
	end

	def working?
		@working
	end

	def break!
		@working = false
		puts "The bike is broken."
	end

	def fix
	 	@working = true
	end

	def bikeinfo
		@bikeinfo
	end

end

# newbike = Bike.new
# puts newbike.working?

# oldstreet = Bike.new('epsworthhouse')
# puts oldstreet.bikeinfo
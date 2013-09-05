class Bike

	def initialize(id)
		@working = true
		@id = id
	end

	def working?
		@working
	end

	def break!
		@working = false
	end

	def fix
	 	@working = true
	end

	def bikeinfo
		@bikeinfo
	end

	def id
	 	@id
	end
end

# newbike = Bike.new
# puts newbike.working?


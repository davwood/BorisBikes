require_relative '../lib/bike'

describe Bike do		

	it 'should have a new bike that is working?' do 
		biked = Bike.new
		result = biked.working?
		expect(result).to be_true
	end

	it 'should know if a broken bike is not working' do
		biked = Bike.new
		breaking = biked.break!
		expect(breaking).to be_false
	end


end


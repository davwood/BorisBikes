require_relative '../lib/garage'
require_relative '../lib/van'


describe Garage do
	
	# it 'bike can be fixed by the garage' do
	# 	bike = double Bike
	# 	bike.should_receive(:fix!)
	# 	Garage.fix!(bike)
	# end


	let(:bike) { double(:bike) }
	let(:from_van)  {double (:from_van) }

	before do
		@maingarage = Garage.new
		@van = Van.new
	end


	
	it 'should receive bike/s from the van' do
		expect(from_van).to receive(:van_bikes)
		@maingarage.receive_bikes(from_van)
	end

	it 'should initialize with fixed bikes = 0' do
		expect(@maingarage.fixedbikes).to eq(0)
	end
		
	it 'should clear the bikes from the garage' do
		@garage_bikes = ["Bike1","Bike2"]
		b = @maingarage.clear_bikes
		expect(b).to eq([]) 
	end

	# it 'should fix a bike' do
	# 	expect(bike).to receive(:fix)
	# 	garage.fix_bike(bike)
	# end

end

require_relative '../lib/van'
require_relative '../lib/bike'
require_relative '../lib/bike_station'

describe Van do
	
	
	let(:bike) { double(:bike) }
	let(:fromstation) { 
		double(:fromstation, checkout_broken: [double(:bike)], clear_broken_bikes: nil)
	}
	let(:garage) {
		double(:garage, garage_bikes: [double(:bike)], clear_bikes: nil)
	}
	let(:tostation) { double(:tostation)}
	

	it 'should take broken bikes from a bike station' do
		van = Van.new
		expect(fromstation).to receive(:checkout_broken)
		allow(fromstation).to receive(:clear_broken_bikes)
		van.load_van_at_station(fromstation)
	end

	it 'should load van at the garage' do
		van = Van.new
		expect(garage).to receive(:garage_bikes)
		allow(garage).to receive(:clear_bikes)
		van.load_van_at_garage(garage)
	end

	it 'should count the number of bikes in the van' do
		van = Van.new
		van.load_van_at_station(:fromstation)
		result = van.countofbikes
		expect(result).to eq(1)
	end



	it 'should return to the bike station' do
	
	expect(tostation).to receive(:checkin) {"I'm returning to bike station"}
	@van.drop(tostation)
	end

	# it 'should return a statement about where it\'s going' do
	# expect(van.drop(tostation)).to eq("I'm returning to bike station")
	# end

	# it 'should pick up a fixed bike from the garage and return to a station' do

	# end

end


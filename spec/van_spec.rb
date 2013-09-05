require_relative '../lib/van'
require_relative '../lib/bike'
require_relative '../lib/bike_station'

describe Van do
	
	let(:van) { Van.new }
	let(:bike) { double(:bike) }
	let(:fromstation) { double(:fromstation)}
	let(:tostation) { double(:tostation)}
		
	it 'should take a broken bike from a bike station' do
		expect(bike).to receive(:working?) {false}
		expect(fromstation).to receive(:checkout)

		van.collectbrokenbike(bike,fromstation)

	end

	it 'should take the broken bike to the garage' do

	expect(van.drive).to eq("I'm driving to the garage")

	end

	it 'should return to the bike station' do
	
	expect(tostation).to receive(:checkin) {"I'm returning to bike station"}
	van.drop(tostation)
	end

	# it 'should return a statement about where it\'s going' do
	# expect(van.drop(tostation)).to eq("I'm returning to bike station")
	# end

	# it 'should pick up a fixed bike from the garage and return to a station' do

	# end

end


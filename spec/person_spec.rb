require_relative '../lib/person'


describe Person do
	
	let(:aperson) {Person.new}
	let(:fromstation) { double(:fromstation)}
	let(:tostation) { double(:tostation)}
	let(:bike) {double(:bike)}
		

	it 'can check out a bike from a station' do
		expect(fromstation).to receive(:checkout)
		aperson.takebike(fromstation)
	end

	it 'can return a bike to a different station' do
		expect(tostation).to receive(:checkin)
		aperson.returnbike(tostation)
	end

	it 'can alert the bike station that a bike is broken' do
		expect(bike).to receive (:break!) 
		aperson.brokenbikealert(bike)
	end

	# it 'can return a bike to the same station' do

	# end

	it 'will show that the person has the bike' do
		
		
	end


end
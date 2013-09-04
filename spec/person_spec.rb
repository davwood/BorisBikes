require'../lib/person'
#require_relative wasn't working for some reason


describe Person do
	
	let(:aperson) {Person.new('jay')}
	let(:fromstation) { double(:fromstation)}
	let(:tostation) { double(:tostation)}
	let(:bike) {double(:bike)}
		

	it 'can check out a bike from a station' do
		expect(fromstation).to receive(:checkout)
		aperson.rent_bike(fromstation)
	end

	it 'can return a bike to a different station' do
		expect(aperson).to receive(:broken_bike_alert)
		aperson.return_bike(tostation)
	end

	it 'can alert the bike station that a bike is broken' do
		expect(bike).to receive(:break!) 
		aperson.broken_bike_alert(bike)
	end

	it 'can show that they do not have a bike' do
		expect(aperson).to receive(:has_bike?)
		expect(aperson.has_bike?).to eq(nil)
	end

	it 'can show that they have a bike' do
		expect(aperson).to receive(:has_bike?)
		expect(aperson.has_bike?).to eq(puts "has bike? #{@has_bike = true}")
	end

end
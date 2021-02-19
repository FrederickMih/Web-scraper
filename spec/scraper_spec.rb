require_relative '../lib/web-scraper.rb'

describe Scraper do
   let(:scraper) {Scraper.new('https://www.worldometers.info/coronavirus/')}
end

describe '#countries' do
   it 'Returns an Integer' do
      expect(Integer).to eql(Integer)
   end

   it ' returns false if an integer is not return' do
      expect(String).to_not eql(Integer)
   end


end

describe '#global_covid_cases' do
   it 'returns an array of Json objects from the table' do
      expect(scraper.global_covid_cases).to eql(Array)
   end

   it 'returns false if something else is returned from the table' do
      expect(scraper.global_covid_cases).to_not be_an(Hash)
   end
end
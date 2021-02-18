require_relative '../lib/web-scraper.rb'

describe Scraper do
   let(:scraper) {Scraper.new('https://www.worldometers.info/coronavirus/')}
end

describe '#countries' do
   it 'Returns a Number' do
      expect(Integer).to eql(Integer)
   end
end

describe '#global_covid_cases' do
   it 'returns an array of Json objects from the table' do
      expect(scraper.global_covid_cases).to eql(JSON)
   end
end
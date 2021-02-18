require_relative '../lib/web-scraper.rb'

describe Scraper do
   let(:scraper) {Scraper.new('https://www.worldometers.info/coronavirus/')}
end

describe '#countries' do
   it 'Returns a Number' do
      expect(Integer).to eql(Integer)
   end
end
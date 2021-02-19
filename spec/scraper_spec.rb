require_relative '../lib/scraper'

describe Scraper do
   let(:scraper) { Scraper.new('https://www.worldometers.info/coronavirus/') }

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
      expect(scraper.global_covid_cases).to be_an(Array)
   end

   it 'returns false if something else is returned from the table' do
      expect(scraper.global_covid_cases).to_not eql(Hash)
   end
end

describe '#search_country_by_name' do
   it 'returns a json array' do
      expect(scraper.search_country_by_name('India')).to be_an(Array)
   end

   it 'returns false if the json array is not return' do
      expect(scraper.search_country_by_name('India')).to_not eql(Hash)
   end
end

end



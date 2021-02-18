require_relative '../lib/web-scraper.rb'

scraper = Scraper.new('https://www.worldometers.info/coronavirus/#countries')
exe_app = scraper
byebug
# Iterate through all countries and return an array of hashes
def global_covid_cases
   covid_stats = []
   i = 1
   until i == countries(response)
      covid_stats << table_regist(response, i)
      i += 1
   end
   covid_stats

   
end
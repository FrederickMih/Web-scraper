require_relative '../lib/scraper.rb'


puts scraper = Scraper.new('https://www.worldometers.info/coronavirus/')
exe_app = scraper.global_covid_cases
exe_app
byebug
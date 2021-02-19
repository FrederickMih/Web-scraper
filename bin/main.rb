require_relative '../lib/scraper'

puts scraper = Scraper.new('https://www.worldometers.info/coronavirus/')
exe_app = scraper.global_covid_cases
exe_app

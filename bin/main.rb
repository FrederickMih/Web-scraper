require_relative '../lib/scraper'

puts scraper = Scraper.new('https://www.worldometers.info/coronavirus/')
exe_app = scraper.global_covid_cases
puts scraper.parse_to_json
exe_app

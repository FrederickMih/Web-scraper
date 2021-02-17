require_relative '../lib/web-scraper.rb'

scraper = Scraper.new('https://www.worldometers.info/coronavirus/#countries')
exe_app = scraper
byebug
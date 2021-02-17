require 'nokogiri'
require 'httparty'
require 'byebug'
require 'open-uri'

class Scraper
   def initialize(url)
      request = HTTParty.get('https://www.worldometers.info/coronavirus/#countries')
      response = Nokogiri::HTML(request)
   end

   def countries(response)
      response.css('table#main_table_countries_today > tbody > tr').map(&:text).count  
   end
   
end

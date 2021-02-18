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
      response.css('table#main_table_countries_today').map(&:text).count  
   end

   # method that select and a  return covid table from the site with its index
   def  table_regist(response, index)
      scrape = response.css('table#main_table_countries_today[#{index}]').text
      regist = scrape.split("").delete '%'
      {
         "index": regist[0]
         "countries": regist[1]
         "total_cases": regist[2]
         "tatal_deaths": regist[3]
         "total_recovered": regist[4]
         "total_tests": regist[5]
      } 
   end
   
end

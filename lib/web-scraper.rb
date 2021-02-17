require 'nokogiri'
require 'httparty'
require 'byebug'
require 'open-uri'

class Scraper
   def initialize(url)
      request = HTTParty.get(url)
      @response = Nokogiri::HTML(request)
   end
   
end
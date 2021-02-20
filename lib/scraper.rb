require 'nokogiri'
require 'open-uri'
require 'httparty'
require 'byebug'

class Scraper
  def initialize(url)
    request = HTTParty.get(url)
    @response = Nokogiri::HTML(request)
  end

  
  def global_covid_cases
    @covid_stats = []
    i = 1
    until i == countries(@response)
      @covid_stats << table_regist(@response, i)
      i += 1
    end
    regist_to_csv
    parse_to_json
    @covid_stats
  end

  def countries(response)
    response.css('table#main_table_countries_today > tbody > tr').map(&:text).count
  end

  def table_regist(response, index)
    regist = response.css("tr[#{index}]").text
    regist = regist.split(' ')
    regist.delete '%'
    {
      "index": regist[0],
      "country": regist[1],
      "total_cases": regist[2],
      "tatal_deaths": regist[3],
      "total_recovered": regist[4],
      "total_tests": regist[5]
    }
  end

  def regist_to_csv
    CSV.open('coronavirus.csv', 'w') { |csv| csv << @covid_stats }
  end

  def parse_to_json
    puts JSON.pretty_generate(@covid_stats)
  end

  def search_country_by_name(find_country)
    down_country = find_country.downcase
    select_country = global_covid_cases.select do |coun|
      coun[:country] == down_country
    end
    puts JSON.pretty_generate(select_country)
    select_country
  end
end

require 'open-uri'
require 'json'

module NYCGovJobParser
  BASE_URL = "https://data.cityofnewyork.us/resource/swhp-yxa4.json"

  BASE_QUERY_FOR_SALARY_MIN = "?$where=salary_range_from > "

  BASE_QUERY_FOR_AGENCY = "?$where=agency="

  def self.all_listings
    json_string_response = open(BASE_URL).read

    # Return an array of hashes
    JSON.parse(json_string_response)
  end


  def self.unique_agencies
    agencies_array = []
    listings = self.all_listings
    listings.each do |listing|
      if agencies_array.include?(listing["agency"])
        next
      else
        agencies_array << listing["agency"]
      end
    end
    agencies_array.sort
  end

  def self.min_salary(amount)
    json_string_response = open(BASE_URL + BASE_QUERY_FOR_SALARY_MIN + "\"" + amount +"\"").read

    JSON.parse(json_string_response)
  end

  def self.find_agency(agency)
    json_string_response = open(BASE_URL + BASE_QUERY_FOR_AGENCY + "\"" + agency +"\"").read

    JSON.parse(json_string_response)
    BASE_URL + BASE_QUERY_FOR_AGENCY + "\"" + agency +"\""

  end

  def self.parse_with_agency_and_salary(amount, agency)
    json_string_response = open(BASE_URL + BASE_QUERY_FOR_AGENCY + "\"" + agency + "\"" + "AND salary_range_from > " + "\"" + amount +"\"" ).read

    JSON.parse(json_string_response)
  end

end












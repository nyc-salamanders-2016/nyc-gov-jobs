require 'open-uri'
require 'json'

module NYCGovJobParser
  BASE_URL = "https://data.cityofnewyork.us/resource/swhp-yxa4.json"

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

  def self.preferences(agency, salary)
    listings = self.all_listings
    selected_listings = listings.select do |listing|
      listing["agency"] == agency && listing["salary_range_from"] >= salary
    end
    selected_listings
  end
end


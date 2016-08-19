require 'open-uri'
require 'json'

module NYCGovJobParser
  BASE_URL = "https://data.cityofnewyork.us/resource/swhp-yxa4.json"

  def self.all_listings
    json_string_response = open().read

    # Return an array of hashes
    JSON.parse(json_string_response)
  end
end


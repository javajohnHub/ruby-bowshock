require_relative "helpers"
module Bowshock

  module Apod

    def apod(date = nil, concept_tags = nil)
      base_url = "https://api.nasa.gov/planetary/apod?"

      if date
        Helpers.vali_date date
        base_url += "date=#{date}&"
      end

      if concept_tags
        base_url += "concept_tags=#{concept_tags}&"
      end

      req_url = "#{base_url}api_key=#{Helpers.nasa_api_key}"

      Helpers.getJson(req_url, 'GET')

    end

    module_function :apod
  end
end

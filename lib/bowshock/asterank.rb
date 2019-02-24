require 'json'

module Bowshock
  module Asterank
    def asterank(object)

      base_url = "http://www.asterank.com/api/asterank?"
      if object["query"]
        base_url += "query=#{object["query"].to_json.to_s}&"
      end

      if object["limit"]
        base_url += "limit=#{object["limit"].to_s}"
      end

      Helpers.getJson(base_url, 'GET')

    end

    module_function :asterank
  end
end
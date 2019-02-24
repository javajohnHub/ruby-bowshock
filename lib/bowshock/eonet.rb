module Bowshock
  module Eonet
    def events(object=nil)
      base_url = "https://eonet.sci.gsfc.nasa.gov/api/v2.1/events?"

      if object == nil
        return Helpers.getJson(base_url.slice(0, -1), "GET")
      end

      if object["source"]
        base_url += "source=#{object["source"]}&"
      end

      if object["status"]
        base_url += "status=#{object["status"]}&"
      end

      if object["limit"]
        base_url += "limit=#{object["limit"].to_s}&"
      end

      if object["days"]
        base_url += "days=#{object["days"].to_s}&"
      end

      len = base_url.length() -1
      Helpers.getJson(base_url.slice(0..len), "GET")
    end

    module_function :events

    def layers(id)
      base_url = "https://eonet.sci.gsfc.nasa.gov/api/v2.1/layers/#{id.to_s}"
      Helpers.getJson(base_url, "GET");
    end

    module_function :layers

    def categories(object =nil)
      base_url = "https://eonet.sci.gsfc.nasa.gov/api/v2.1/categories/"

      if object == nil
        len = base_url.length() -2
        return Helpers.getJson(base_url.slice(0..len), "GET");
      end

      base_url += "#{object["id"].to_s}?"

      if object["source"]
        base_url += "source=#{object["source"]}&"
      end

      if object["status"]
        base_url += "status=#{object["status"]}&"
      end

      if object["limit"]
        base_url += "limit=#{object["limit"].to_s}&"
      end

      if object["days"]
        base_url += "days=#{object["days"].to_s}&"
      end

      len = base_url.length() -1
      Helpers.getJson(base_url.slice(0..len), "GET")
    end
    module_function :categories

    def sources(object = nil)
      base_url = "https://eonet.sci.gsfc.nasa.gov/api/v2.1/sources/"

      if object == nil
        len = base_url.length() -2
        return Helpers.getJson(base_url.slice(0..len), "GET");
      end

      base_url += "#{object["id"].to_s}?"

      if object["source"]
        base_url += "source=#{object["source"]}&"
      end

      if object["status"]
        base_url += "status=#{object["status"]}&"
      end

      if object["limit"]
        base_url += "limit=#{object["limit"].to_s}&"
      end

      if object["days"]
        base_url += "days=#{object["days"].to_s }&"
      end

      len = base_url.length() -1
      Helpers.getJson(base_url.slice(0..len), "GET")
    end

    module_function :sources
  end
end
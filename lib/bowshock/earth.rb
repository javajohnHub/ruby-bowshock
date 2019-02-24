module Bowshock
  module Earth
    def imagery(object)
      base_url = "https://api.nasa.gov/planetary/earth/imagery/?"

      if object["lon"] and object["lat"]
        base_url += "lon=#{object["lon"].to_s}&lat=#{object["lat"].to_s}&"
      end

      if object["date"]
        base_url += "date=#{Helpers.vali_date(object["date"])}&"
      end

      if object["cloud_score"]
        base_url += "cloud_score=#{object["cloud_score"]}&"
      end

      if object["dim"]
        base_url += "dim=#{object["dim"]}&"
      end

      req_url = "#{base_url}api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(req_url, "GET")
    end

    module_function :imagery

    def assets(object)
      base_url = "https://api.nasa.gov/planetary/earth/assets?"

      if object["lon"] && object["lat"]
        base_url += "lon=#{object["lon"].to_s}&lat=#{object["lat"].to_s}&"
      end

      if object["begin"]
        base_url += "begin=#{Helpers.vali_date(object["begin"])}&"
      end

      if object["end"]
        base_url += "end=#{Helpers.vali_date(object["end"])}&"
      end

      req_url = "#{base_url}api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(req_url, "GET")
    end

    module_function :assets
  end
end
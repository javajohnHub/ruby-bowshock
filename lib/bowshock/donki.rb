module Bowshock
  module Donki
    def CME(object)
      base_url = "https://api.nasa.gov/DONKI/CME?"
      base_url += "startDate=#{Helpers.vali_date(object["startDate"])}&"

      if object["endDate"]
        base_url += "endDate=#{Helpers.vali_date(object["endDate"])}&"
      end

      base_url += "api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(base_url, "GET")
    end

    module_function :CME

    def CMEA(object)
      base_url = "https://api.nasa.gov/DONKI/CMEAnalysis?"
      base_url += "startDate=#{Helpers.vali_date(object["startDate"])}&"

      if object["endDate"]
        base_url += "endDate=#{Helpers.vali_date(object["endDate"])}&"
      end
      if object["mostAccurateOnly"]
        base_url += "mostAccurateOnly=#{object["mostAccurateOnly"]}&"
      end
      if object["completeEntryOnly"]
        base_url += "completeEntryOnly=#{object["completeEntryOnly"]}&"
      end
      if object["speed"]
        base_url += "speed=#{object["speed"]}&"
      end
      if object["halfAngle"]
        base_url += "halfAngle=#{object["halfAngle"]}&"
      end
      if object["catalog"]
        base_url += "catalog=#{object["catalog"]}&"
      end
      if object["keyword"]
        base_url += "keyword=#{object["keyword"]}&"
      end

      base_url += "api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(base_url, "GET")
    end

    module_function :CMEA

    def GST(object)
      base_url = "https://api.nasa.gov/DONKI/GST?"
      base_url += "startDate=#{Helpers::vali_date(object["startDate"])}&"

      if object["endDate"]
        base_url += "endDate=#{Helpers.vali_date(object["endDate"])}&"
      end

      base_url += "api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(base_url, "GET")
    end

    module_function :GST

    def IPS(object)
      base_url = "https://api.nasa.gov/DONKI/IPS?"
      base_url += "startDate=#{Helpers.vali_date(object["startDate"])}&"

      if object["endDate"]
        base_url += "endDate=#{Helpers.vali_date(object["endDate"])}&"
      end
      if object["location"]
        base_url += "location=#{object["location"]}&"
      end
      if object["catalog"]
        base_url += "catalog=#{object["catalog"]}&"
      end

      base_url += "api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(base_url, "GET")
    end

    module_function :IPS

    def FLR(object)
      base_url = "https://api.nasa.gov/DONKI/FLR?"
      base_url += "startDate=#{Helpers.vali_date(object["startDate"])}&"

      if object["endDate"]
        base_url += "endDate=#{Helpers.vali_date(object["endDate"])}&"
      end

      base_url += "api_key=#{Helpers::nasa_api_key}"
      Helpers.getJson(base_url, "GET")

    end

    module_function :FLR

    def SEP(object)
      base_url = "https://api.nasa.gov/DONKI/SEP?"
      base_url += "startDate=#{Helpers.vali_date(object["startDate"])}&"

      if object["endDate"]
        base_url += "endDate=#{Helpers.vali_date(object["endDate"])}&"
      end

      base_url += "api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(base_url, "GET")
    end

    module_function :SEP

    def MPC(object)
      base_url = "https://api.nasa.gov/DONKI/MPC?"
      base_url += "startDate=#{Helpers.vali_date(object["startDate"])}&"

      if object["endDate"]
        base_url += "endDate=#{Helpers.vali_date(object.endDate)}&"
      end

      base_url += "api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(base_url, "GET");
    end

    module_function :MPC

    def RBE(object)
      base_url = "https://api.nasa.gov/DONKI/RBE?"
      base_url += "startDate=#{Helpers.vali_date(object["startDate"])}&"

      if object["endDate"]
        base_url += "endDate=#{Helpers.vali_date(object["endDate"])}&"
      end

      base_url += "api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(base_url, "GET")
    end

    module_function :RBE

    def HSS(object)
      base_url = "https://api.nasa.gov/DONKI/HSS?"

      base_url += "startDate=#{Helpers.vali_date(object["startDate"])}&"
      if object["endDate"]
        base_url += "endDate=#{Helpers.vali_date(object["endDate"])}&"
      end

      base_url += "api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(base_url, "GET")
    end

    module_function :HSS

    def WSASim(object)
      base_url = "https://api.nasa.gov/DONKI/WSAEnlilSimulations?"
      base_url += "startDate=#{Helpers.vali_date(object["startDate"])}&"

      if object["endDate"]
        base_url += "endDate=#{Helpers.vali_date(object["endDate"])}&"
      end

      base_url += "api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(base_url, "GET");
    end

    module_function :WSASim

    def notifications(object)
      base_url = "https://api.nasa.gov/DONKI/notifications?"
      base_url += "startDate=#{Helpers.vali_date(object["startDate"])}&"

      if object["endDate"]
        base_url += "endDate=#{Helpers.vali_date(object["endDate"])}&"
      end

      if object["type"]
        base_url += "type=#{object["type"]}&"
      end

      base_url += "api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(base_url, "GET")
    end

    module_function :notifications
  end
end
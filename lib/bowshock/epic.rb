module Bowshock
  module Epic
    def natural()
      uri = "https://epic.gsfc.nasa.gov/api/natural"
      Helpers.getJson(uri, "GET")
    end
    module_function :natural
    def naturalAll()
      uri = "https://epic.gsfc.nasa.gov/api/natural/all"
      Helpers.getJson(uri, "GET")
    end
    module_function :naturalAll

    def naturalDate(date)
      uri = "https://epic.gsfc.nasa.gov/api/natural/date/#{Helpers.vali_date(date)}"
      Helpers.getJson(uri, "GET")
    end
    module_function :naturalDate

    def naturalAvailable()
      uri = "https://epic.gsfc.nasa.gov/api/natural/available"
      Helpers.getJson(uri, "GET")
    end

    module_function :naturalAvailable

    def enhanced()
      uri = "https://epic.gsfc.nasa.gov/api/enhanced"
      Helpers.getJson(uri, "GET")
    end
    module_function :enhanced
    def enhancedAll()
      uri = "https://epic.gsfc.nasa.gov/api/enhanced/all"
      Helpers.getJson(uri, "GET")
    end
    module_function :enhancedAll

    def enhancedDate(date)
      uri = "https://epic.gsfc.nasa.gov/api/enhanced/date/#{Helpers.vali_date(date)}"
      Helpers.getJson(uri, "GET")
    end
    module_function :enhancedDate

    def enhancedAvailable()
      uri = "https://epic.gsfc.nasa.gov/api/enhanced/available"
      Helpers.getJson(uri, "GET")
    end

    module_function :enhancedAvailable

  end
end
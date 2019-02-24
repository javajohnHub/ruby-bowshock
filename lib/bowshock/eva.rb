module Bowshock
  module EVA
    def eva()
      Helpers.getJson("https://data.nasa.gov/resource/q8u9-7uq7.json", 'GET')
    end
    module_function :eva
  end
end
module Bowshock
  module GeneLab
    def search(object)
      base_url = "https://genelab-data.ndc.nasa.gov/genelab/data/search?term=#{object["term"]}&type=#{object["type"]}&"

      if (object["from"])
          base_url += "from=#{object["from"]}&"
      end

      if (object["size"])
          base_url += "size=#{object["size"]}&"
      end

      if (object["sort"])
          base_url += "sort=#{object["sort"]}&"
      end

      if (object["order"])
          base_url += "order=#{object["order"]}&"
      end

      if (object["ffield"])
          base_url += "ffield=#{object["ffield"]}&"
      end

      if (object["fvalue"])
          base_url += "fvalue=#{object["fvalue"]}&"
      end

      req_url = "#{base_url}api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(req_url, "GET")
    end
    module_function :search

    def htmlSearch(object)
      base_url = "https://genelab-data.ndc.nasa.gov/genelab/search_studies/?q=#{object["query"]}&data_source=#{object["data_source"]}"

      req_url = "#{base_url}api_key=#{Helpers.nasa_api_key}"
      Helpers.getJson(req_url, "GET")
    end
    module_function :htmlSearch
  end
end
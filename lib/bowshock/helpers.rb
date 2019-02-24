require 'net/http'
require 'uri'

module Helpers
  def getJson(url, type)
    uri = URI url
    return Net::HTTP.get uri
  end
  module_function :getJson

  def nasa_api_key
    ENV["NASA_API_KEY"]
  end
  module_function :nasa_api_key

  def vali_date(date)
    date.gsub! '/', '-'
  end
  module_function :vali_date

  def validate_iso8601(date)
    date.split('T')[0]
  end
  module_function :validate_iso8601
end
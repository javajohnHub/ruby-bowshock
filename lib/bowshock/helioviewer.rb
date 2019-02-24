require "down"
require 'rake'
require 'fileutil'
module Bowshock
  module Helioviewer
    def getjp2image(object)
      base_url = "https://api.helioviewer.org/v2/getJP2Image/?"

      if object["date"][-1] != 'Z'
        object["date"] += 'Z'
      end
      base_url += "date=#{object["date"]}&"

      if object["sourceId"]
          base_url += "sourceId=#{object["sourceId"]}&"
      end
      base_url += "#json=true&jpip=true"

      Helpers.getJson(base_url, 'GET')
    end
    module_function :getjp2image

    def getjp2header(id)
      Helpers.getJson("https://api.helioviewer.org/v2/getJP2Header/?id=#{id}", 'GET')
    end
    module_function :getjp2header

    def getJPX(object)
      base_url = "https://api.helioviewer.org/v2/getJPX/?"

      if object["startTime"][-1] != 'Z'
          object["startTime"] += 'Z'
      end

      base_url += "startTime=#{object["startTime"] }&"

      if object["endTime"][-1] != 'Z'
          object["endTime"] += 'Z'
      end

      base_url += "endTime=#{object["endTime"]}&"

      if object["sourceId"]
          base_url += "sourceId=#{object["sourceId"]}&"
      end
      if object["linked"]
          base_url += "linked=#{object["linked"]}&"
      end
      if object["cadence"]
          base_url += "cadence=#{object["cadence"]}&"
      end
      base_url += "verbose=true&jpip=true"
      Helpers.getJson(base_url, 'GET')
    end
    module_function :getJPX

    def  getJPXClosestToMidPoint(object)
       base_url = "https://api.helioviewer.org/v2/getJPXClosestToMidPoint/?startTimes="
    object["startTimes"].each do |x|
        base_url += "#{x},"
    end
    base_url = "#{base_url.chomp(',') }&endTimes="
    object["endTimes"].each do |x|
        base_url += "#{x},"
    end
    base_url = "#{base_url.chomp(',')}&"
    base_url += "sourceId=#{object["sourceId"]}&"
    if object["linked"]
        base_url += "linked=#{object["linked"]}&"
    end
    base_url += "verbose=true&jpip=true"
    Helpers.getJson(base_url, 'GET')
    end
    module_function :getJPXClosestToMidPoint

    def queueMovie(object)
        base_url = "https://api.helioviewer.org/v2/queueMovie/?"
    if object["startTime"][-1] != 'Z'
        object["startTime"] += 'Z'
    end
    base_url += "startTime=#{object["startTime"]}&"

    if object["endTime"][-1] != 'Z'
        object["endTime"] += 'Z'
    end
    base_url += "endTime=#{object["endTime"]}&"
    base_url += "layers=#{object["layers"]}&"
    base_url += "events=#{object["events"]}&"
    base_url += "eventsLabels=#{object["eventsLabels"]}&"
    base_url += "imageScale=#{object["imageScale"]}&"

    if object["format"]
        base_url += "format=#{object["format"]}&"
    end
    if object["frameRate"]
        base_url += "frameRate=#{object["frameRate"]}&"
    end
    if object["maxFrames"]
        base_url += "maxFrames=#{object["maxFrames"]}&"
    end
    if object["scale"]
        base_url += "scale=#{object["scale"]}&"
    end
    if object["scaleType"]
        base_url += "scaleType=#{object["scaleType"]}&"
    end
    if object["scaleX"]
        base_url += "scaleX=#{object["scaleX"]}&"
    end
    if object["scaleY"]
        base_url += "scaleY=#{object["scaleY"] }&"
    end
    if object["movieLength"]
        base_url += "movieLength=#{object["movieLength"]}&"
    end
    if object["watermark"]
        base_url += "watermark=#{object["watermark"]}&"
    end
    if object["width"]
        base_url += "width=#{object["width"]}&"
    end
    if object["height"]
        base_url += "height=#{object["height"]}&"
    end
    if object["x0"]
        base_url += "x0=#{object["x0"]}&"
    end
    if object["y0"]
        base_url += "y0=#{object["y0"]}&"
    end
    if object["x1"]
        base_url += "x1=#{object["x1"]}&"
    end
    if object["y1"]
        base_url += "y1=#{object["y1"]}&"
    end
    if object["x2"]
        base_url += "x2=#{object["x2"]}&"
    end
    if object["y2"]
        base_url += "y2=#{object["y2"]}&"
    end
    if object["callback"]
        base_url += "callback='#{object["callback"]}&"
    end
    Helpers.getJson(base_url.chomp('&'), 'GET')
    end

    module_function :queueMovie

    def reQueueMovie(id)
      Helpers.getJson("https://api.helioviewer.org/v2/reQueueMovie/?id=#{id}", 'GET')
    end
    module_function :reQueueMovie

    def getMovieStatus(object)
      base_url = "https://api.helioviewer.org/v2/getMovieStatus/?id=#{object["id"]}&format=#{object["format"]}&"
      if object["verbose"]
          base_url += "verbose=#{object["verbose"]}&"
      end
      if object["callback"]
          base_url += "callback=#{object["callback"]}&";
      end
      if object["token"]
          base_url += "token=#{object["token"]}&";
      end
      return Helpers.getJson(base_url.chomp('&'), 'GET')
    end
    module_function :getMovieStatus

  def downloadMovie(object)
    base_url = "https://api.helioviewer.org/v2/downloadMovie/?id=#{object["id"]}&format=#{object["format"]}&"
    if object["hq"]
        base_url += "hq=#{object["hq"]}"
    end
    directory_name = "movies"
    Dir.mkdir(directory_name) unless File.exists?(directory_name)
    if File.exists?(directory_name)
      Down.download(base_url, destination: directory_name, progress_proc: -> (progress) do
      puts "downloading... #{object["id"]}.#{object["format"]}"
      end)
      Dir.glob("#{directory_name}/*").each do |filename|
        FileUtils.mv( filename, filename.ext("mp4"))
      end
    end
  end
    module_function :downloadMovie
    end
end
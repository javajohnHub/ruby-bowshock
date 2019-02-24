require 'dotenv'
Dotenv.load("../.env")
require_relative "bowshock/version"
require_relative "bowshock/helpers"
require_relative "bowshock/apod"
require_relative "bowshock/asterank"
require_relative "bowshock/donki"
require_relative "bowshock/earth"
require_relative "bowshock/eonet"
require_relative "bowshock/epic"
require_relative "bowshock/eva"
require_relative "bowshock/exoplanet"
require_relative "bowshock/genelab"
require_relative "bowshock/helioviewer"
module Bowshock
  include Bowshock::Apod
  include Bowshock::Asterank
  include Bowshock::Donki
  include Bowshock::Earth
  include Bowshock::Eonet
  include Bowshock::Epic
  include Bowshock::EVA
  include Bowshock::ExoPlanet
  include Bowshock::GeneLab
  include Bowshock::Helioviewer
end

#instance = Bowshock::Apod.apod
#instance = Bowshock::Apod.apod "2018/2/15"
#instance = Bowshock::Asterank.asterank({"query" => {"e" =>{"$lt" => 0.1},"i" => {"$lt" => 4},"a" => {"$lt" => 1.5}}, "limit" => 10})
#instance = Bowshock::Donki.CME({"startDate" => "2018/09/09"})
#instance = Bowshock::Donki.CMEA({"startDate" => "2018/09/09"})
#instance = Bowshock::Donki.GST({"startDate" => "2018/09/09"})
#instance = Bowshock::Donki.IPS({"startDate" => "2018/09/09"})
#instance = Bowshock::Donki.FLR({"startDate" => "2018/09/09"})
#instance = Bowshock::Donki.SEP({"startDate" => "2017/05/09"})
#instance = Bowshock::Donki.MPC({"startDate" => "2017/05/09"})
#instance = Bowshock::Donki.RBE({"startDate" => "2017/05/09"})
#instance = Bowshock::Donki.HSS({"startDate" => "2017/05/09"})
#instance = Bowshock::Donki.WSASim({"startDate" => "2017/05/09"})
#instance = Bowshock::Donki.notifications({"startDate" => "2017/05/09"})
# instance = Bowshock::Earth.imagery({"lon" => 100.75, "lat" => 1.5, "date" => "2014/02/04"})
#instance = Bowshock::Earth.assets({"lon" => 100.75, "lat" => 1.5, "begin" => "2014/02/01"})
#instance = Bowshock::Eonet.events({"source" => "InciWeb,EO","status" => "closed","limit" => 5, "days" => 25})
#instance  = Bowshock::Eonet.categories({"id" => 8, "source" => "InciWeb,EO", "status" => "open","limit" => 5, "days" => 25})
#instance  = Bowshock::Eonet.sources()
#instance = Bowshock::Epic.natural()
#instance = Bowshock::Epic.naturalAll()
#instance = Bowshock::Epic.naturalDate("2018/12/12")
#instance = Bowshock::Epic.naturalAvailable()
#instance = Bowshock::Epic.enhanced()
#instance = Bowshock::Epic.enhancedAll()
#instance = Bowshock::Epic.enhancedDate("2018/12/12")
#instance = Bowshock::Epic.enhancedAvailable()
#instance = Bowshock::EVA.eva()
#instance = Bowshock::ExoPlanet.allConfirmedPlanetsAndCols()
#instance = Bowshock::ExoPlanet.confirmedPlanetsInKeplerField()
#instance = Bowshock::ExoPlanet.starsKnownToHostExoPlanets()
#instance = Bowshock::ExoPlanet.confirmedPlanetsThatTransitHostStars()
#instance = Bowshock::ExoPlanet.currentNonConfirmedPlanetCandidates()
#instance = Bowshock::ExoPlanet.k2TargetsFromCapaign9()
#instance = Bowshock::ExoPlanet.confirmedPlanetsInMissionStarList()
#instance = Bowshock::ExoPlanet.getSingleKOI('K00007.01')
#instance = Bowshock::ExoPlanet.allMicrolensingPlanetsWithTimeSeries()
#instance = Bowshock::ExoPlanet.allPlanetaryCandidatesSmallerThan2ReWithEquilibriumTemperaturesBetween180and303K()
#instance = Bowshock::GeneLab.search({"type" =>"cgene", "term" => "a"})
#instance = Bowshock::GeneLab.htmlSearch({"query" =>"cgene", "data_source" => "a"})
#instance = Bowshock::Helioviewer.getjp2image({"date" => "2014-01-01T23:59:59", "sourceId" => 14})
#instance = Bowshock::Helioviewer.getjp2header(17654321)
#instance = Bowshock::Helioviewer.getJPX({"startTime" => "2014-01-01T00:00:00", "endTime" => "2014-01-01T00:45:00" , "sourceId" => 14, "cadence" => 12})
#instance = Bowshock::Helioviewer.getJPXClosestToMidPoint({"startTimes" => [1306886400,1306887000,1306887600], "endTimes" => [1306886700,1306887300,1306887900] , "sourceId" => 14, "linked" => true});
=begin
instance = Bowshock::Helioviewer.queueMovie({"startTime" => "2010-03-01T12:12:12",
                                             "endTime" => "2010-03-04T12:12:12",
                                             "layers" => "[3,1,100],[4,1,100]",
                                             "events" => "[AR,HMI_HARP;,SPoCA,1],[CH,all,1]",
                                             "eventsLabels" => false,
                                             "imageScale" => 21.04,
                                             "format" => "mp4",
                                             "frameRate" => 15,
                                             "maxFrames" => 300,
                                             "scale" => true,
                                             "scaleType" => "earth",
                                             "scaleX" => -1000,
                                             "scaleY" => -500,
                                             "movieLength" => 4.3333,
                                             "watermark" => true,
                                             "width" => 1920,
                                             "height" => 1200,
                                             "x0" => 0,
                                             "y0" => 0,
                                             "x1" => -5000,
                                             "y1" => -5000,
                                             "x2" => 5000,
                                             "y2" => 5000,
                                             #callback: "Wrap the response object in a function call of your choosing."
                                            })
=end
#instance = Bowshock::Helioviewer.reQueueMovie("VXvX5")
#instance = Bowshock::Helioviewer.getMovieStatus({"id" => "F3Dh5", "format" => "mp4", "verbose" => true, #"callback" => "callback", #"token" => "4673d6db4e2a3365ab361267f2a9a112"})
#instance = Bowshock::Helioviewer.downloadMovie({"id" => "VXvX5", "format" => "mp4", "hq" => true})
#puts instance
module Bowshock
  module ExoPlanet
    def allConfirmedPlanetsAndCols()
      uri = "https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?&table=exoplanets&format=json"
      Helpers.getJson(uri, 'GET')
    end
    module_function :allConfirmedPlanetsAndCols

    def confirmedPlanetsInKeplerField()
      uri = "https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?&table=exoplanets&format=json&where=pl_kepflag=1"
      Helpers.getJson(uri, 'GET')
    end
    module_function :confirmedPlanetsInKeplerField

    def starsKnownToHostExoPlanets()
      uri = "https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?&table=exoplanets&select=distinct pl_hostname&order=pl_hostname&format=json"
      Helpers.getJson(uri, 'GET')
    end
    module_function :starsKnownToHostExoPlanets

    def confirmedPlanetsThatTransitHostStars()
      uri = "https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?&table=exoplanets&format=json&where=pl_tranflag=1"
      Helpers.getJson(uri, 'GET')
    end
    module_function :confirmedPlanetsThatTransitHostStars

    def currentNonConfirmedPlanetCandidates()
      uri = "https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?&table=cumulative&format=json&where=koi_disposition like 'CANDIDATE'"
      Helpers.getJson(uri, 'GET')
    end
    module_function :currentNonConfirmedPlanetCandidates

    def k2TargetsFromCapaign9()
      uri = "https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?&table=k2targets&format=json&where=k2_campaign=9"
      Helpers.getJson(uri, 'GET')
    end
    module_function :k2TargetsFromCapaign9

    def confirmedPlanetsInMissionStarList()
      uri = "https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?&table=missionstars&format=json&where=st_ppnum>0"
      Helpers.getJson(uri, 'GET')
    end
    module_function :confirmedPlanetsInMissionStarList

    def getSingleKOI(kepoi_name)
      uri = "https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?&table=koi&format=json&where=kepoi_name='#{kepoi_name}'"
      Helpers.getJson(uri, 'GET')
    end
    module_function :getSingleKOI

    def allMicrolensingPlanetsWithTimeSeries()
      uri = "https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?&table=exoplanets&format=json&where=pl_discmethod like 'Microlensing' and st_nts > 0"
      Helpers.getJson(uri, 'GET')
    end
    module_function :allMicrolensingPlanetsWithTimeSeries

    def allPlanetaryCandidatesSmallerThan2ReWithEquilibriumTemperaturesBetween180and303K()
      uri = "https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?table=cumulative&format=json&where=koi_prad<2 and koi_teq>180 and koi_teq<303 and koi_disposition like 'CANDIDATE'"
      Helpers.getJson(uri, 'GET')
    end
    module_function :allPlanetaryCandidatesSmallerThan2ReWithEquilibriumTemperaturesBetween180and303K
  end
end

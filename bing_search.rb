require 'rest-client'

class BingSearch

  def initialize
    @url = 'https://www.bing.com/search' 
  end

  def getQuery(query)
    RestClient.get (@url, {params})
  end

  def displayQuery
    getQuery
  end
  


end





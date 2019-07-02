require 'rest-client'

class BingSearch

  def initialize(query)
    @query = query 
    @url = 'https://www.bing.com/search'
  end

  def display_query
    getQuery.code
    getQuery.body
    getQuery.cookies
    getQuery.headers
  end
  
  def query=(query)
    @query = query    
  end
  def query
    @query 
  end

  private
  attr_reader :query, :url

  def getQuery
    @response ||= RestClient.get url, {params: {q: query}}
  end

end

query = gets.chomp
results = BingSearch.new(query)
p results.display_query




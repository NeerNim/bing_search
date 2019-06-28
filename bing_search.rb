require 'rest-client'

class BingSearch
  attr_accessor :response, :query
  def initialize(query)
    @query = query 
    @url = 'https://www.bing.com/search'
  end

  def getQuery
    RestClient.get @url, {params: {q: @query}}
  end

  def display_query
    p getQuery.code
    p getQuery.body
  end


end

results = BingSearch.new("hey")
results.display_query


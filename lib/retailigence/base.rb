require 'httparty'
module Retailigence
  class Base

    def self.apikey=(key)
      @@apikey = key
    end

    def self.perform_graph_request(endpoint, params={}, method="get")
    resp = HTTParty.get("http://apitest.retailigence.com/v2.0/#{endpoint}", :query => params)
    puts resp

    end

  end
  
end

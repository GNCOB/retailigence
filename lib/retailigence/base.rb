require 'httparty'
module Retailigence
  class Base
    include HTTParty
    base_uri 'http://apitest.retailigence.com/v2.0'

    def self.apikey=(key)
      @@apikey = key
    end

  end
  
end

require 'httparty'
module Retailigence
  class Base
    include HTTParty
    @api_key = nil

    def self.api_key=(key)
      @api_key = key
    end

    def self.api_key
      @api_key
    end

    def self.base_uri=(uri)
      base_uri uri
    end

  end
  
end

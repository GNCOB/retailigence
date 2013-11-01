module Retailigence

  class Product < Retailigence::Base

    def search(params={})
      key = {apikey: Base.api_key}
      params.merge! key

      self.class.get '/products', query: params
    end

  end
  
end

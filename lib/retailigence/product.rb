module Retailigence

  class Product < Retailigence::Base

    def search(params={})
      self.class.get '/products', query: params
    end

  end
  
end

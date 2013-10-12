require_relative '../../spec/spec_helper'

describe Retailigence::Base do
  describe "default attrs" do

    it "must include httparty methods" do
      Retailigence::Base.must_include HTTParty
    end

    it "must have the base url set to the Retaligence API endpoint" do
      Retailigence::Base.base_uri.must_equal 'http://apitest.retailigence.com/v2.0'
    end

  end


=begin
  describe "get products" do
    require 'securerandom'
    requestorId = SecureRandom.uuid

    location_params = {
        format:'json',
        userlocation: '20852',
        range: 40,
        units: 'k',
        requestorid: requestorId,
        apikey: 'aIzdHVPfx5e20bav-Lx7xtdP7MK7usst'

    }
  end
=end

end

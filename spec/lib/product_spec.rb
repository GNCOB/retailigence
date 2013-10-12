require_relative '../../spec/spec_helper'

describe Retailigence::Product do

  describe "search Products" do
    require 'securerandom'
    requestorId = SecureRandom.uuid
    let(:product) { Retailigence::Product.new}

    valid_params = {
        format:'json',
        userlocation: '20852',
        #category: '' ,
        keywords: 'shirt',
        range: 40,
        units: 'k',
        requestorid: requestorId,
        apikey: 'aIzdHVPfx5e20bav-Lx7xtdP7MK7usst'

    }

    before do
      VCR.insert_cassette 'products', record: :new_episodes
    end

    after do
      VCR.eject_cassette
    end

    it 'must have a search method' do
      product.must_respond_to :search
    end

    it 'must parse the response from json to hash' do
      product.search(valid_params).must_be_instance_of Hash
    end


  end


end
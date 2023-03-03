require 'spec_helper'

RSpec.describe SuapApi::Connect do
  describe '.get_json_by_uri' do
    api = SuapApi::Connect.new(ENV['USER'], ENV['PASSWORD'])
  
    uris = [
      SuapApi::FREQUENCY_OF_DAY,
      SuapApi::MY_DATA,
    ]

    uris.each do |uri|
      it "should return a hash when accessing uri #{uri}", :vcr do
        expect(api.get_json_by_uri(uri)).to have_json_type(Hash)
      end
    end
  end
end

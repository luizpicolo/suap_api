require 'spec_helper'

RSpec.describe SuapApi::MyData do
  describe '.get' do

    let(:json){
      connection = SuapApi::Connect.new(ENV['USERNAME'], ENV['PASSWORD'])
      SuapApi::MyData.get(connection)
    }

    it 'should have hash with key (id)', :vcr do
      expect(json).to have_json_path('id')
      expect(json).to have_json_type(Integer).at_path('id')
    end

    it 'should have hash with key (matricula)', :vcr do
      expect(json).to have_json_path('matricula')
      expect(json).to have_json_type(String).at_path('matricula')
    end

    ## Implementar novos metodos
  end
end

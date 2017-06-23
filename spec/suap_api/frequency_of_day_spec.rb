require 'spec_helper'

RSpec.describe SuapApi::FrequencyOfDay do
  describe '.get' do

    let(:json){
      connection = SuapApi::Connect.new(ENV['USERNAME'], ENV['PASSWORD'])
      SuapApi::FrequencyOfDay.get(connection)
    }

    it 'should have hash with key (frequencias_hoje)', :vcr do
      expect(json).to have_json_path('frequencias_hoje')
      expect(json).to have_json_type(Array).at_path('frequencias_hoje')
    end

    it 'should have hash with key (acao)', :vcr do
      expect(json).to have_json_path('frequencias_hoje/0/acao')
    end

    it 'should have hash with key (horario)', :vcr do
      expect(json).to have_json_path('frequencias_hoje/0/horario')
    end

    it 'should have hash with key (total_tempo_semana)', :vcr do
      expect(json).to have_json_path('total_tempo_semana')
      expect(json).to have_json_type(String).at_path('total_tempo_semana')
    end

    it 'should have hash with key (total_tempo_hoje)', :vcr do
      expect(json).to have_json_path('total_tempo_hoje')
      expect(json).to have_json_type(String).at_path('total_tempo_hoje')
    end
  end
end

require 'spec_helper'

RSpec.describe SuapApi::FrequencyOfDay do
  describe '#get' do

    let(:json){
      connection = SuapApi::Connect.new('', '')
      SuapApi::FrequencyOfDay.get(connection)
    }

    it 'should return hash' do
      expect(json).to have_json_type(Hash)
    end

    it 'should have hash with key (frequencias_hoje)' do
      expect(json).to have_json_path('frequencias_hoje')
      expect(json).to have_json_type(Array).at_path('frequencias_hoje')
    end

    it 'should have hash with key (acao)' do
      expect(json).to have_json_path('frequencias_hoje/0/acao')
    end

    it 'should have hash with key (horario)' do
      expect(json).to have_json_path('frequencias_hoje/0/horario')
    end

    it 'should have hash with key (total_tempo_semana)' do
      expect(json).to have_json_path('total_tempo_semana')
      expect(json).to have_json_type(String).at_path('total_tempo_semana')
    end

    it 'should have hash with key (total_tempo_hoje)' do
      expect(json).to have_json_path('total_tempo_hoje')
      expect(json).to have_json_type(String).at_path('total_tempo_hoje')
    end
  end
end

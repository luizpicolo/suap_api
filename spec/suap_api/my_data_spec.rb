require 'spec_helper'

RSpec.describe SuapApi::MyData do
  describe '#get' do

    let(:json){
      connection = SuapApi::Connect.new(ENV['USERNAME'], ENV['PASSWORD'])
      SuapApi::MyData.get(connection)
    }

    it 'should return hash' do
      expect(json).to have_json_type(Hash)
    end

    it 'should have hash with key (id)' do
      expect(json).to have_json_path('id')
      expect(json).to have_json_type(Integer).at_path('id')
    end

    it 'should have hash with key (matricula)' do
      expect(json).to have_json_path('matricula')
      expect(json).to have_json_type(String).at_path('matricula')
    end

    # it 'should have hash with key (horario)' do
    #   expect(json).to have_json_path('frequencias_hoje/0/horario')
    # end
    #
    # it 'should have hash with key (total_tempo_semana)' do
    #   expect(json).to have_json_path('total_tempo_semana')
    #   expect(json).to have_json_type(String).at_path('total_tempo_semana')
    # end
    #
    # it 'should have hash with key (total_tempo_hoje)' do
    #   expect(json).to have_json_path('total_tempo_hoje')
    #   expect(json).to have_json_type(String).at_path('total_tempo_hoje')
    # end
  end
end

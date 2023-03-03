require 'spec_helper'

RSpec.describe SuapApi::FrequencyOfDay do
  describe '.get' do
    let(:connection) { SuapApi::Connect.new(ENV['USER'], ENV['PASSWORD']) }
    let(:json) { SuapApi::FrequencyOfDay.get(connection) }

    context 'when called with valid connection' do
      it 'calls connection.get_json_by_uri with FREQUENCY_OF_DAY' do
        expect(connection).to receive(:get_json_by_uri).with(SuapApi::FREQUENCY_OF_DAY)
        json
      end

      it 'should have hash with key (frequencias_hoje)', :vcr do
        expect(json).to have_json_path('frequencias_hoje')
        expect(json).to have_json_type(Array).at_path('frequencias_hoje')
      end

      it 'should have hash with key (total_tempo_semana)', :vcr do
        expect(json).to have_json_path('total_tempo_semana')
      end

      it 'should have hash with key (total_tempo_hoje)', :vcr do
        expect(json).to have_json_path('total_tempo_hoje')
      end
    end
  end
end

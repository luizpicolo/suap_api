require 'spec_helper'

RSpec.describe SuapApi::MyData do
  describe '.get' do
    let(:connection) { SuapApi::Connect.new(ENV['USER'], ENV['PASSWORD']) } 
    let(:json){ SuapApi::MyData.get(connection) }

    context 'when called with valid connection' do
      it 'should have hash with key (id)', :vcr do
        expect(json).to have_json_path('id')
        expect(json).to have_json_type(Integer).at_path('id')
      end

      it 'should have hash with key (matricula)', :vcr do
        expect(json).to have_json_path('matricula')
        expect(json).to have_json_type(String).at_path('matricula')
      end

      it 'should have hash with key (email)' do
        expect(json).to have_json_path('email')
        expect(json).to have_json_type(String).at_path('email')
      end

      it 'should have hash with key (vinculo)' do
        expect(json).to have_json_path('vinculo')
      end
  
      it 'should have hash with key (nome) in vinculo' do
        expect(json).to have_json_path('vinculo/nome')
        expect(json).to have_json_type(String).at_path('vinculo/nome')
      end

      it 'should have hash with key (cpf)', :vcr do
        expect(json).to have_json_path('cpf')
        expect(json).to have_json_type(String).at_path('cpf')
      end
    end
  end
end

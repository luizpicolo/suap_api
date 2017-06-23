require 'spec_helper'

RSpec.describe SuapApi do
  it 'should return correct "BASE_URL"' do
    expect(SuapApi::BASE_URL).to eq('https://suap.ifms.edu.br')
    expect(SuapApi::BASE_URL).not_to be nil
  end

  it 'should return correct uri "FREQUENCY_OF_DAY"' do
    uri = '/api/v2/minhas-informacoes/minhas-frequencias/?format=json'
    expect(SuapApi::FREQUENCY_OF_DAY).to eq(uri)
    expect(SuapApi::FREQUENCY_OF_DAY).not_to be nil
  end

  it 'should return correct uri "MY_DATA"' do
    uri = '/api/v2/minhas-informacoes/meus-dados/?format=json'
    expect(SuapApi::MY_DATA).to eq(uri)
    expect(SuapApi::MY_DATA).not_to be nil
  end
end

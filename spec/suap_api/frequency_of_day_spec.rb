require "spec_helper"

RSpec.describe SuapApi::FrequencyOfDay do
  describe '#show_entries' do
    it 'should return a data' do
      expect(SuapApi::FrequencyOfDay.show_entries).to eq(['2017-06-09T07:06:47'])
    end
  end
end

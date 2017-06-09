require "spec_helper"

RSpec.describe SuapApi do
  it "has a version number" do
    expect(SuapApi::VERSION).not_to be nil
  end
end

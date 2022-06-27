require 'rails_helper'


describe 'F1Data' do
  it "returns data correctly" do
     expect(F1dataCall.api_call).to  be_kind_of(Array)
  end
end



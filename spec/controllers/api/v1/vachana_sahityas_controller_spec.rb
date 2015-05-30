require 'rails_helper'

RSpec.describe Api::V1::VachanaSahityasController, type: :controller do
 describe "GET #show" do
    before(:each) do
      @vachana_sahityas = FactoryGirl.create :vachana_sahitya
      get :show, id: @vachana_sahityas.id
    end

    it "returns the information about a reporter on a hash" do
      vachana_sahityas_response = json_response
      expect(vachana_sahityas_response[:vachana]).to eql @vachana_sahityas.vachana
    end

    it { should respond_with 200 }
  end
end

require 'rails_helper'

RSpec.describe "Api::V1::Samples", :type => :request do
  describe "GET /api_v1_samples" do
    it "works! (now write some real specs)" do
      get api_v1_samples_path
      expect(response.status).to be(200)
    end
  end
end

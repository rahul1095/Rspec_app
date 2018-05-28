require 'rails_helper'

RSpec.describe "Convertions", :type => :request do
  describe "GET /convertions" do
    it "works! (now write some real specs)" do
      get convertions_path
      expect(response).to have_http_status(200)
    end
  end
end

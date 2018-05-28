require "rails_helper"

RSpec.describe ConvertionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/convertions").to route_to("convertions#index")
    end

    it "routes to #new" do
      expect(:get => "/convertions/new").to route_to("convertions#new")
    end

    it "routes to #show" do
      expect(:get => "/convertions/1").to route_to("convertions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/convertions/1/edit").to route_to("convertions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/convertions").to route_to("convertions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/convertions/1").to route_to("convertions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/convertions/1").to route_to("convertions#destroy", :id => "1")
    end

  end
end

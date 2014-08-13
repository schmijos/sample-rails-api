require "rails_helper"

RSpec.describe Api::V1::SamplesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/v1/samples").to route_to(controller: 'api/v1/samples', action: 'index', format: :json)
    end

    it "routes to #new" do
      expect(:get => "/api/v1/samples/new").to route_to(controller: 'api/v1/samples', action: 'new', format: :json)
    end

    it "routes to #show" do
      expect(:get => "/api/v1/samples/1").to route_to(controller: 'api/v1/samples', action: 'show', format: :json, id: "1")
    end

    it "routes to #edit" do
      expect(:get => "/api/v1/samples/1/edit").to route_to(controller: 'api/v1/samples', action: 'edit', format: :json, id: "1")
    end

    it "routes to #create" do
      expect(:post => "/api/v1/samples").to route_to(controller: 'api/v1/samples', action: 'create', format: :json)
    end

    it "routes to #update" do
      expect(:put => "/api/v1/samples/1").to route_to(controller: 'api/v1/samples', action: 'update', format: :json, id: "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/v1/samples/1").to route_to(controller: 'api/v1/samples', action: 'destroy', format: :json, id: "1")
    end

  end
end

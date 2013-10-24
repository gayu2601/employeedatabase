require "spec_helper"

describe TeachingsController do
  describe "routing" do

    it "routes to #index" do
      get("/teachings").should route_to("teachings#index")
    end

    it "routes to #new" do
      get("/teachings/new").should route_to("teachings#new")
    end

    it "routes to #show" do
      get("/teachings/1").should route_to("teachings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/teachings/1/edit").should route_to("teachings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/teachings").should route_to("teachings#create")
    end

    it "routes to #update" do
      put("/teachings/1").should route_to("teachings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/teachings/1").should route_to("teachings#destroy", :id => "1")
    end

  end
end

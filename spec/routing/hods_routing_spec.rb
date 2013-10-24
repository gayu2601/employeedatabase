require "spec_helper"

describe HodsController do
  describe "routing" do

    it "routes to #index" do
      get("/hods").should route_to("hods#index")
    end

    it "routes to #new" do
      get("/hods/new").should route_to("hods#new")
    end

    it "routes to #show" do
      get("/hods/1").should route_to("hods#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hods/1/edit").should route_to("hods#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hods").should route_to("hods#create")
    end

    it "routes to #update" do
      put("/hods/1").should route_to("hods#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hods/1").should route_to("hods#destroy", :id => "1")
    end

  end
end

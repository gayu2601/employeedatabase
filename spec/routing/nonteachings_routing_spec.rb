require "spec_helper"

describe NonteachingsController do
  describe "routing" do

    it "routes to #index" do
      get("/nonteachings").should route_to("nonteachings#index")
    end

    it "routes to #new" do
      get("/nonteachings/new").should route_to("nonteachings#new")
    end

    it "routes to #show" do
      get("/nonteachings/1").should route_to("nonteachings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nonteachings/1/edit").should route_to("nonteachings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nonteachings").should route_to("nonteachings#create")
    end

    it "routes to #update" do
      put("/nonteachings/1").should route_to("nonteachings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nonteachings/1").should route_to("nonteachings#destroy", :id => "1")
    end

  end
end

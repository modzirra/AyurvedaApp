require "spec_helper"

describe FlavorsController do
  describe "routing" do

    it "routes to #index" do
      get("/flavors").should route_to("flavors#index")
    end

    it "routes to #new" do
      get("/flavors/new").should route_to("flavors#new")
    end

    it "routes to #show" do
      get("/flavors/1").should route_to("flavors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/flavors/1/edit").should route_to("flavors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/flavors").should route_to("flavors#create")
    end

    it "routes to #update" do
      put("/flavors/1").should route_to("flavors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/flavors/1").should route_to("flavors#destroy", :id => "1")
    end

  end
end

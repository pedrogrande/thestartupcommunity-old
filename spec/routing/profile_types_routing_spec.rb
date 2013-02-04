require "spec_helper"

describe ProfileTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/profile_types").should route_to("profile_types#index")
    end

    it "routes to #new" do
      get("/profile_types/new").should route_to("profile_types#new")
    end

    it "routes to #show" do
      get("/profile_types/1").should route_to("profile_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/profile_types/1/edit").should route_to("profile_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/profile_types").should route_to("profile_types#create")
    end

    it "routes to #update" do
      put("/profile_types/1").should route_to("profile_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/profile_types/1").should route_to("profile_types#destroy", :id => "1")
    end

  end
end

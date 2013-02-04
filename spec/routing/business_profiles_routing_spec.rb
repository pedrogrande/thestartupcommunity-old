require "spec_helper"

describe BusinessProfilesController do
  describe "routing" do

    it "routes to #index" do
      get("/business_profiles").should route_to("business_profiles#index")
    end

    it "routes to #new" do
      get("/business_profiles/new").should route_to("business_profiles#new")
    end

    it "routes to #show" do
      get("/business_profiles/1").should route_to("business_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/business_profiles/1/edit").should route_to("business_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/business_profiles").should route_to("business_profiles#create")
    end

    it "routes to #update" do
      put("/business_profiles/1").should route_to("business_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/business_profiles/1").should route_to("business_profiles#destroy", :id => "1")
    end

  end
end

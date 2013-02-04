require 'spec_helper'

describe "ProfileTypes" do
  describe "GET /profile_types" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get profile_types_path
      response.status.should be(200)
    end
  end
end

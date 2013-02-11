class SitemapsController < ApplicationController
  respond_to :xml
  caches_page :show
  def show
    @user_profiles = UserProfile.all
    @business_profiles = BusinessProfile.all
    @other_routes = ["/","/about", "/terms", "/privacy", "/contact_forms/new", "/startup_maps", "/user_profiles", "/business_profiles"]
    respond_to do |format|
     format.xml
    end
  end
end

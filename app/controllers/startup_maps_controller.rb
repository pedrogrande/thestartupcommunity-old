class StartupMapsController < ApplicationController
  layout "startup_map"
  def index
    
    @json = BusinessProfile.all.to_gmaps4rails
  end
end

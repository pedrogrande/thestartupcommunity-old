class StartupMapsController < ApplicationController
  before_filter :check_for_mobile
  layout "startup_map"
  def index
    
    @json = BusinessProfile.all.to_gmaps4rails
  end
end

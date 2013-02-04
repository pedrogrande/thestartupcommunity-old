class HomeController < ApplicationController
  def index
    @users = User.all
    @business_profiles = BusinessProfile.all
    @user_profiles = UserProfile.all
  end
end

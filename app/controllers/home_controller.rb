class HomeController < ApplicationController
  before_filter :check_for_mobile
  def index
    @users = User.all
    @business_profiles = BusinessProfile.all
    @user_profiles = UserProfile.all
  end
end

class HomeController < ApplicationController
  before_filter :check_for_mobile
  def index
    @users = User.all
    @business_profiles = BusinessProfile.limit(5)
    @user_profiles = UserProfile.limit(5)
  end
end

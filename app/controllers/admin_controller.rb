class AdminController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @profile_types = ProfileType.all
    @users = User.all
    @business_profiles = BusinessProfile.all
  end
end

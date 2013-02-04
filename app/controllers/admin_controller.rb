class AdminController < ApplicationController
  def index
    @profile_types = ProfileType.all
  end
end

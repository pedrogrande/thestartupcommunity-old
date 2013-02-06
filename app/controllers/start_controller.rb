class StartController < ApplicationController
  before_filter :authenticate_user!, :check_for_mobile
  def index
  end
end

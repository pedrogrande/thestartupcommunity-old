class BusinessProfilesController < ApplicationController
  caches_page :index

  before_filter :authenticate_user!, :except => [:show, :index]
  before_filter :check_for_mobile

  def join
    @business_profile = BusinessProfile.find(params[:id])
    @user = current_user

    if not @user.works_here?(@business_profile)
      @business_profile.users << @user
      flash[:notice] = 'You have been added to this business'
    else
      flash[:error] = 'You are already associated with this business_profile'
    end
    redirect_to @business_profile
  end

  def leave
    @business_profile = BusinessProfile.find(params[:id])
    @user = current_user

    if @user.works_here?(@business_profile)
      @user.business_profiles.delete(@business_profile)
      flash[:notice] = 'You have been removed from this business'

    else
      flash[:error] = 'You are not associated with this business_profile'
    end
    redirect_to @business_profile
  end

  def remove
    @business_profile = BusinessProfile.find(params[:id])
    @user = User.find(params[:user])

    if current_user.id == @business_profile.owner
      @user.business_profiles.delete(@business_profile)
      flash[:notice] = "You have removed the user from your business profile"
    else
      flash[:error] = "You are not authorised to remove the user"
    end
    redirect_to @business_profile
  end

  # GET /business_profiles
  # GET /business_profiles.json
  def index
    @profile_types = ProfileType.all
    @tag = params[:tag]
    if params[:tag].present?
      tag_value = params[:tag]
      @business_profiles = BusinessProfile.joins(:business_profile_types).where(:business_profile_types => {:profile_type_id => tag_value})
    else
      @business_profiles = BusinessProfile.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_profiles }
    end
  end

  # GET /business_profiles/1
  # GET /business_profiles/1.json
  def show
    @business_profile = BusinessProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_profile }
    end
  end

  # GET /business_profiles/new
  # GET /business_profiles/new.json
  def new
    @business_profile = BusinessProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_profile }
    end
  end

  # GET /business_profiles/1/edit
  def edit
    @business_profile = BusinessProfile.find(params[:id])
    authorize! :edit, @business_profile
  end

  # POST /business_profiles
  # POST /business_profiles.json
  def create
    @business_profile = BusinessProfile.new(params[:business_profile])
    @business_profile.users << current_user
    @business_profile.owner = current_user.id
    expire_page :action => :index
    respond_to do |format|
      if @business_profile.save
        format.html { redirect_to @business_profile, notice: 'Business profile was successfully created.' }
        format.json { render json: @business_profile, status: :created, location: @business_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @business_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /business_profiles/1
  # PUT /business_profiles/1.json
  def update
    @business_profile = BusinessProfile.find(params[:id])
    expire_page :action => :index
    respond_to do |format|
      if @business_profile.update_attributes(params[:business_profile])
        format.html { redirect_to @business_profile, notice: 'Business profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_profiles/1
  # DELETE /business_profiles/1.json
  def destroy
    @business_profile = BusinessProfile.find(params[:id])
    @business_profile.destroy

    respond_to do |format|
      format.html { redirect_to business_profiles_url }
      format.json { head :no_content }
    end
  end
end

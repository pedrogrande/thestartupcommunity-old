class ProfileTypesController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /profile_types
  # GET /profile_types.json
  def index
    @profile_types = ProfileType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profile_types }
    end
  end

  # GET /profile_types/1
  # GET /profile_types/1.json
  def show
    @profile_type = ProfileType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile_type }
    end
  end

  # GET /profile_types/new
  # GET /profile_types/new.json
  def new
    @profile_type = ProfileType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile_type }
    end
  end

  # GET /profile_types/1/edit
  def edit
    @profile_type = ProfileType.find(params[:id])
  end

  # POST /profile_types
  # POST /profile_types.json
  def create
    @profile_type = ProfileType.new(params[:profile_type])

    respond_to do |format|
      if @profile_type.save
        format.html { redirect_to admin_path, notice: 'Profile type was successfully created.' }
        format.json { render json: @profile_type, status: :created, location: @profile_type }
      else
        format.html { render action: "new" }
        format.json { render json: @profile_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profile_types/1
  # PUT /profile_types/1.json
  def update
    @profile_type = ProfileType.find(params[:id])

    respond_to do |format|
      if @profile_type.update_attributes(params[:profile_type])
        format.html { redirect_to admin_path, notice: 'Profile type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_types/1
  # DELETE /profile_types/1.json
  def destroy
    @profile_type = ProfileType.find(params[:id])
    @profile_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_path }
      format.json { head :no_content }
    end
  end
end

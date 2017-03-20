class ProfilesController < ApplicationController

  def new
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.build_profile
    @profile.act = params[:profile][:act]
    @profile.bio = params[:profile][:bio]
    @profile.lat = params[:profile][:lat]
    @profile.lng = params[:profile][:lng]

    if @profile.save
      redirect_to user_profile_path(current_user), notice: "Profile for '#{current_user.name}' was saved successfully."
    else
      flash.now[:alert] = "Sorry, but that didn't compute... There was an error creating your profile. Please try again."
      render :new
    end
  end

  def edit
    @profile = current_user.profile
  end

  def show
    @profile = current_user.profile
  end

end

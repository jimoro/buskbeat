class ProfilesController < ApplicationController

  def new
    if current_user.profile
      flash[:notice] = 'You already created a profile'
      redirect_to root_path
    else
      @profile = current_user.build_profile
    end
  end

  def show
    @profile = current_user.profile
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
      flash.now[:alert] = "Hmm... There was an error creating your profile. Please try again."
      render :new
    end
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    @profile.act = params[:profile][:act]
    @profile.bio = params[:profile][:bio]
    @profile.lat = params[:profile][:lat]
    @profile.lng = params[:profile][:lng]

    if @profile.save
      flash[:notice] = "Profile update for '#{current_user[:name]}' was saved."
      redirect_to user_profile_path
    else
      flash.now[:alert] = "Oops, it looks like there was an error updating your profile. Please try again."
      render :edit
    end
  end

end

class ProfilesController < ApplicationController
  def new
    @profile = current_user.build_profile
  end
end

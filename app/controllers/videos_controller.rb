class VideosController < ApplicationController

  def index
    @videos = Video.order('created_at DESC')
  end

  def new
    @video = Video.new
  end

  def create
    @video = current_user.videos.new(video_params)
    if @video.save
      flash[:success] = 'Video added!'
      redirect_to user_profile_path(current_user)
    else
      flash.now[:alert] = "There was a problem creating the embedded video. Please try again."
      render :new
    end
  end

  def show
    @video = Video.all
  end


  private

  def video_params
    params.require(:video).permit(:uri)
  end

end

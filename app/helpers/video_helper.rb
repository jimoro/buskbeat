require 'youtube_embed'

  module VideoHelper

  def embed_video_for(url)
    video = YoutubeEmbed::Video.new(url)
    video.iframe
  end

end

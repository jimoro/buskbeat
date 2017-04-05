class Video < ApplicationRecord
  belongs_to :user

#  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i

  validates :uri, presence: true #, format: YT_LINK_FORMAT

end

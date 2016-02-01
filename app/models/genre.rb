class Genre < ActiveRecord::Base

  enum genre_type: [:video, :audio]

  has_many :videos
  has_many :audios

  after_save :refresh_view

  private
    def refresh_view
      MvVideo.refresh_view
      MvAudio.refresh_view
    end

end

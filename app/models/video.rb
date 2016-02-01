class Video < ActiveRecord::Base

  belongs_to :genre

  after_save :refresh_view

  private
    def refresh_view
      MvVideo.refresh_view
    end
end

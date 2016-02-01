class Audio < ActiveRecord::Base

  belongs_to :genre

  after_save :refresh_view

  private
    def refresh_view
      MvAudio.refresh_view
    end
end

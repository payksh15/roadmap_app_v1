class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_last_seen_at
  before_action :authenticate_user!

  private
    def set_last_seen_at
      current_user.set_last_seen unless current_user.get_last_seen.try{ |ls| ls > 1.minutes.ago }
    end
end

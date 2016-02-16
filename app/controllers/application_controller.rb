class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :loger

  private
    def loger
        Loger.send("#{controller_name}: #{action_name}")
    end
end

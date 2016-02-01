class MvAudio < ActiveRecord::Base

  self.primary_key = 'id'

  include ModuleForViews

end

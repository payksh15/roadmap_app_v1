class MvVideo < ActiveRecord::Base

  self.primary_key = 'id'

  include ModuleForViews

end

module ModuleForViews

  extend ActiveSupport::Concern

  included do
    def self.refresh_view
      ActiveRecord::Base.connection.execute("REFRESH MATERIALIZED VIEW #{table_name}")
    end
  end

end

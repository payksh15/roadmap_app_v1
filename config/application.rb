require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AppV1
  class Application < Rails::Application
    config.autoload_paths += Dir["#{config.root}/lib", "#{config.root}/lib/**"]
    config.autoload_paths += Dir["#{Rails.root}/app/jobs/*.rb"]
    config.active_record.raise_in_transactional_callbacks = true
  end
end

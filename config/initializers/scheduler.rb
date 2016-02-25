require 'sidekiq/scheduler'
Sidekiq.schedule = YAML.load_file(
                    File.expand_path(
                      Rails.root.join('config', 'scheduler.yml'),
                      __FILE__
                    )
                  )

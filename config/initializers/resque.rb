require 'resque'
require 'resque-scheduler'
require 'resque/scheduler/server'

Resque.redis = Redis.new(
                            :host => "localhost",
                            :port => 6379,
                            :db => 0
                          )

Resque::Scheduler.dynamic = true
Resque.schedule = YAML.load_file("#{Rails.root}/config/rescue_schedule.yml")
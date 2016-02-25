require 'rufus-scheduler'

scheduler = Rufus::Scheduler::singleton

scheduler.every '10m' do
  Delayed::Job.enqueue UpdateLastSeenJob.new
end
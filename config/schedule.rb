# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
set :output, "/home/onyx/rails_workspace/13-march-2014/playgym/log/cron.log"
set :environment, "development"

every :day, :at => '09:14pm' do
	Sidekiq::Cron::Job.create(name: 'Member worker - every 2min', cron: '*/2 * * * *', klass: 'MemberWorker')
end
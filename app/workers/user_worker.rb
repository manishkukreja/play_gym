class UserWorker
	include Sidekiq::Worker

	def perform
		%x[rake members:status]
	end
end
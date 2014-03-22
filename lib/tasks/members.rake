namespace :members do

	task :status => :environment do
	    Member.where("end_date < ? AND status = true", Date.today).update_all("status = false")
	end

end
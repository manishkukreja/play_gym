namespace :members do

	task :status => :environment do
    Member.where("end_date < ? AND status = 'active'", Date.today).update_all("status = 'inactive'")
	end

end  

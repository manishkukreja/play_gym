class RegistrationsController < Devise::RegistrationsController
	def new
		@user = User.new
		render "/devise/registrations/new.html.erb"
	end
	def create
		user = User.new(params.require(:user).permit(:email, :first_name, :last_name, :username, :password, :password_confirmation))
		if user.save
			UserMailer.invitation(current_user).deliver 
			sign_in :user, user
			redirect_to root_path
		else
			raise Exception.new, user.errors.full_messages.join(", ")
		end		
	rescue Exception => e
		flash[:error] = e.message
		redirect_to new_user_registration_path and return
	end
end

class Admin::AdminController < ActionController::Base
	layout "admin"
	include ApplicationHelper
	before_filter :authenticate_user!
	before_filter :authenticate_admin

	def authenticate_admin
		if !current_user.admin
			flash[:error] = "You are not authorized to access this page!"
			redirect_to root_path
		end
	end
end
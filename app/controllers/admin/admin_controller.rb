class Admin::AdminController < ActionController::Base
	layout "admin"
	include ApplicationHelper
	before_filter :authenticate_admin

	def authenticate_admin
		@current_admin = User.where(admin: true).first.first_name rescue "ABC"
	end
end
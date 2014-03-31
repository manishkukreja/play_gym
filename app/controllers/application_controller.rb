require Rails.root.to_s+'/lib/authentication'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def authenticate_admin
      if !current_user.admin
        flash[:error] = "You don't have priviliges to access this page!";
        redirect_to root_path
      end
  end
end

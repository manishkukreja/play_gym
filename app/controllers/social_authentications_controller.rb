class SocialAuthenticationsController < ApplicationController
  def index
    @social_authentications = SocialAuthentication.all
  end

  def create
    omniauth = request.env['omniauth.auth']
    @social_authentication = SocialAuthentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
    if @social_authentication
      # User is already registered via social network with application
      flash[:notice] = 'Signed in successfully.'
      sign_in_and_redirect(:user,@social_authentication.user)
    elsif current_user
      # User is signed in but has not already authenticated with this social network
      current_user.social_authentications.create!(:provider => omniauth['provider'], :uid => omniauth['uid'])
      #current_user.apply_omniauth(omniauth)
      current_user.save
      flash[:notice] = 'Authentication successful.'
      redirect_to root_url
    else
    
      # User is new to this application
      generate_password
      user = User.new(:first_name=>omniauth[:info][:first_name],
                      :last_name=>omniauth[:info][:last_name],
                      :username =>omniauth[:info][:email], 
                      :provider => omniauth['provider'], 
                      :uid => omniauth['uid'],:email=> omniauth[:info][:email],
                      :password => @random_password,
                      :password_confirmation => @random_password )
      if user.save!
        user.social_authentications.create!(:provider => omniauth['provider'], 
                                          :uid => omniauth['uid'])
        flash[:notice] = "User created and signed in successfully.Your temperory password for PlayGym is #{@random_password}, Please change it from current screen"
        sign_in_and_redirect(user,nil)
        #edit_user_password
      else
        session[:omniauth] = omniauth.except('extra')
        redirect_to new_user_path
      end  
    end  


  end

  def destroy
    @social_authentication = SocialAuthentication.find(params[:id])
    @social_authentication.destroy
    redirect_to social_authentications_url, :notice => "Successfully destroyed social authentication."
  end

  def generate_password
    @random_password = ('0'..'z').to_a.shuffle.first(8).join
    @random_password
  end
end

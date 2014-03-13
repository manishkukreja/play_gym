class HomeController < ApplicationController
	
	def index
		# @hash = Gmaps4rails.build_markers(@users) do |user, marker|
		# marker.lat user.latitude
		# marker.lng user.longitude
		#end
	end

	def invite_friends
    	#render layout: false
        UserMailer.invitation(params).deliver
        flash[:notice] = "Invitation sent sucessfully"
  	end

  	def about_us
  		render layout: false
  	end

  	def privacy
  		render layout: false
  	end

  	def terms_of_service
  		render layout: false
  	end

    def coming_soon    
    end

end

class UserMailer < ActionMailer::Base
	layout "user_mailer"
	  def invitation(member)
		  @member = member
    	mail(to: @member.email, from: "help.playgym@gmail.com", subject: "Welcome to PlayGym !!!!!")
  	end 

  	def birthday_notification(member)
		  @member = member
    	mail(to: @member.email, from: "help.playgym@gmail.com", subject: "Welcome to PlayGym !!!!!")
  	end 

  	def last_day_reminder(member)
  		#raise member.inspect
		  @member = member
    	mail(to: member.email, from: "help.playgym@gmail.com", subject: "PlayGym membership expiring today !!!!")
  	end
end	
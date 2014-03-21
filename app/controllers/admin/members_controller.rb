class Admin::MembersController < Admin::AdminController
  def index
    @members = Member.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @members }
    end
  end

  def send_birthday_mail
  	@member = Member.find(params[:member_id]) rescue nil
  	UserMailer.birthday_notification(@member).deliver if @member.present?
  end

  def send_last_day_reminder_mail
  	@member = Member.find(params[:member_id]) rescue nil
  	UserMailer.last_day_reminder(@member).deliver if @member.present?
  end
end

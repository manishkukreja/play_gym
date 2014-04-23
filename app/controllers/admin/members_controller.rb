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

  def expire
    @members = Member.where(id: params[:member_ids].split(",")) rescue nil
    @members.each do |member|
      member.status = false
      member.save
    end
    render json: {success: true, message: "Successfully status changed!"} and return
  end

  def send_last_day_reminder_mail
  	@member = Member.find(params[:member_id]) rescue nil
  	UserMailer.last_day_reminder(@member).deliver if @member.present?
  end

  def show
    @member = Member.find(params[:id])
  end

end

class MembersController < ApplicationController
    before_filter :authenticate_user!
    before_filter :authenticate_admin
  # GET /members
  # GET /members.json
  def index
    @members = Member.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @members }
    end
  end

  # GET /members/1
  # GET /members/1.json
  def show
    @member = Member.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @member }
    end
  end

  # GET /members/new
  # GET /members/new.json
  def new
    @member = Member.new
    @default_flat_200 = Charge.default_flat_200
    @per_hr_200 = Charge.per_hr_200
    @summer_1_per_hr_per_week = Charge.summer_1_per_hr_per_week
    @summer_2_per_hr_per_week = Charge.summer_2_per_hr_per_week
    @summer_3_per_hr_per_week = Charge.summer_3_per_hr_per_week

    @default_flat_2000 = Charge.default_flat_2000
    @member_3_per_week = Charge.member_3_per_week
    @member_4_per_week = Charge.member_4_per_week
    @member_5_per_week = Charge.member_5_per_week

    @member_summer_1_per_week = Charge.member_summer_1_per_week
    @member_summer_2_per_week = Charge.member_summer_2_per_week
    @member_summer_3_per_week = Charge.member_summer_3_per_week

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @member }
    end
  end

  # # GET /members/1/edit
  # def edit
  #   @member = Member.find(params[:id])
  # end

  # POST /members
  # POST /members.json
  def create
    if params[:date_validate] == "false"
      @flash = { status: :none }
    else
      @member = Member.new(as_params(params))
      @member.childrens_attributes = params[:member][:childrens_attributes]
      @member.status = true
      _charge_ids = []
      if [2,3,4,5].include?(params[:member][:membership_type].to_i)
        if params[:default_flat_2000].present? && params[:default_flat_2000] == "DEFAULT_FLAT_2000"
          _charge_ids = _charge_ids + Charge.where("freq_flag = 'DEFAULT_FLAT_2000'").collect(&:id)
        end
        Charge.where(freq_flag: ["MEMBER_3_PER_WEEK","MEMBER_4_PER_WEEK","MEMBER_5_PER_WEEK"]).each_with_index do |charge, index|
          _charge_ids << params["member_#{charge.activity.id}_#{index}"] if params.has_key?("member_#{charge.activity.id}_#{index}")
        end
        Charge.where(freq_flag: ["MEMBER_SUMMER_1_PER_WEEK","MEMBER_SUMMER_2_PER_WEEK","MEMBER_SUMMER_3_PER_WEEK"]).each_with_index do |charge, index|
          _charge_ids << params["member_summer_#{charge.activity.id}_#{index}"] if params.has_key?("member_summer_#{charge.activity.id}_#{index}")
        end
        @member.charge_ids = _charge_ids
      end
      if @member.save
        UserMailer.invitation(@member).deliver
        @flash = { status: :success, message: 'Member is successfully created.' }
      else
        @flash = { status: :warning, message: @member.errors.full_messages.join(',') }
      end
    end
  rescue Exception => e
    @flash = { status: :danger, message: e.message }
  end

  # # PUT /members/1
  # # PUT /members/1.json
  # def update
  #   @member = Member.find(params[:id])

  #   respond_to do |format|
  #     if @member.update_attributes(as_params(params))
  #       format.html { redirect_to @member, notice: 'Member was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @member.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /members/1
  # # DELETE /members/1.json
  # def destroy
  #   @member = Member.find(params[:id])
  #   @member.destroy

  #   respond_to do |format|
  #     format.html { redirect_to members_url }
  #     format.json { head :no_content }
  #   end
  # end

  def find_birthday
    
  end

  def find_last_day
    @members_list = Member.where(:end_date => Date.today)
    # for member in @members_list
    #   if member.end_date.eql?(Date.today)
    #     @member = member
    #     raise @member.inspect
    #     UserMailer.last_day_reminder(member).deliver 
    #   end
    #end
  end

  def trigger_email(members_list)
    UserMailer.last_day_reminder(members_list).deliver
  end
    
  private
  def as_params params
    params.require(:member).permit(:first_name, :last_name, :email, :membership_type, :start_date, :end_date, :dob, :phone1, :phone2, :childrens_attributes)
  end

end

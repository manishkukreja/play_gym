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
    @member = Member.new(as_params(params))
    @member.status = true
    respond_to do |format|
      if @member.save
        UserMailer.invitation(@member).deliver
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
        format.json { render json: @member, status: :created, location: @member }
      else
        format.html { render action: "new" }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
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
    params.require(:member).permit(:first_name, :last_name, :email, :membership_type, :start_date, :end_date, :dob, :phone1, :phone2)
  end

end

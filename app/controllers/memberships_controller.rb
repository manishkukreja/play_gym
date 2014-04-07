class MembershipsController < ApplicationController
  before_filter :user_logged_in?, except: [:index, :show]
  before_filter :user_admin? , only: [:create,:update,:edit,:destroy]

	def index
		@memberships = Membership.order('charge')

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

		@discount = Discount.all
		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @memberships }
		end
	end

  def show
    @membership = Membership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @membership }
    end
  end

  def new
    @membership = Membership.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @membership }
    end
  end

  def edit
    @membership = Membership.find(params[:id])
  end

  def create
    @membership = Membership.new(params[:membership])

    respond_to do |format|
      if @membership.save
        format.html { redirect_to @membership, notice: 'Membership was successfully created.' }
        format.json { render json: @membership, status: :created, location: @membership }
      else
        format.html { render action: "new" }
        format.json { render json: @membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /memberships/1
  # PUT /memberships/1.json
  def update
    @membership = Membership.find(params[:id])

    respond_to do |format|
      if @membership.update_attributes(params[:membership])
        format.html { redirect_to @membership, notice: 'Membership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memberships/1
  # DELETE /memberships/1.json
  def destroy
    @membership = Membership.find(params[:id])
    @membership.destroy

    respond_to do |format|
      format.html { redirect_to memberships_url }
      format.json { head :no_content }
    end
  end

end

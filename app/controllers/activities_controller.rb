class ActivitiesController < ApplicationController
	before_filter :user_logged_in? , except: [:index,:show,:events_list]
	before_filter :user_admin? , only: [:create,:update,:edit,:destroy]
	
	# GET /programs
	# GET /programs.json
	def index
		@activities = Activity.find_by_programs

		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @activities }
		end
	end

	# GET /programs/1
	# GET /programs/1.json
	def show
		@activity = Activity.find(params[:id])
		@activity_skills = ActivitySkill.find_all_by_program_id(@activity.id)
		@activity_comments = Comment.find_all_by_commentable_id(@activity.id)

		respond_to do |format|
			format.html # show.html.erb
			format.json { render json: @activity }
		end
	end

	# GET /programs/new
	# GET /programs/new.json
	def new
		@activity = Activity.new
		@categories = Categories.all
		@skills = Skill.all
		respond_to do |format|
			format.html # new.html.erb
			format.json { render json: @activity }
		end
	end

	# GET /programs/1/edit
	def edit
		@activity = Activity.find(params[:id])
		@categories = Categories.all
		@skills = Skill.all
		@activity_skills = activity_skill_list(@activity)
	end


	# POST /programs
	# POST /programs.json
	def create
		@activity = Activity.new(params[:activity])
		respond_to do |format|
			if @activity.save
				if @activity.categories.eql?('Program')
					params[:skill_ids].each do |skill|
						@activity_skill= ActivitySkill.new(:program_id => @activity.id , :skill_id=> skill)
						@activity_skill.save!
					end
				end    
				format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
				format.json { render json: @activity, status: :created, location: @activity }
			else
				format.html { render action: "new" }
				format.json { render json: @Activity.errors, status: :unprocessable_entity }
			end
		end
	end

	# PUT /programs/1
	# PUT /programs/1.json
	def update
		@activity = Activity.find(params[:id])
		if activity_type.eql?('Program')
			@activity_skill = ActivitySkill.destroy_all(:program_id => params[:id])
			params[:skill_ids].each do |skill|
				@activity_skill= ActivitySkill.new(:program_id => @activity.id , :skill_id=> skill)
				@activity_skill.save!
			end
		end              
    	respond_to do |format|
	      	if @activity.update_attributes(params[:activity])

        		format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        		format.json { head :no_content }
      		else
        		format.html { render action: "edit" }
        		format.json { render json: @activity.errors, status: :unprocessable_entity }
      		end
    	end
  	end

  	# DELETE /programs/1
  	# DELETE /programs/1.json
	def destroy
    	@activity = Activity.find(params[:id])
    	@activity.destroy

		respond_to do |format|
      		format.html { redirect_to activities_url }
      		format.json { head :no_content }
    	end
  	end

	def events_list
    	@events = Activity.find_by_events
  	end
  
  	def activity_skill_list(var)
    	skill_list=[]
    	ActivitySkill.find_all_by_program_id(var.id).each do |a_skill|
      		skill_list << a_skill.skill_id
    	end
    	return skill_list
  	end

    def activity_type
      if Activity.find_by_events
        return 'Event'
      else
        return 'Program'
      end  
    end
end

#require Rails.root.to_s+'/lib/authentication'  
  class ActivitySkillsController < ApplicationController
    #include Playgym::Authentication
    # GET /program_skills
    # GET /program_skills.json
    def index
      @activity_skills = ActivitySkill.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @activity_skills }
      end
    end

    # GET /program_skills/1
    # GET /program_skills/1.json
    def show
      @activity_skill = ActivitySkill.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @activity_skill }
      end
    end

    # GET /program_skills/new
    # GET /program_skills/new.json
    def new
      @activity_skill = ActivitySkill.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @activity_skill }
      end
    end

    # GET /program_skills/1/edit
    def edit
      @activity_skill = ActivitySkill.find(params[:id])
    end

    # POST /program_skills
    # POST /program_skills.json
    def create
      @activity_skill = ActivitySkill.new(params[:program_skill])

      respond_to do |format|
        if @activity_skill.save
          format.html { redirect_to @activity_skill, notice: 'Program skill was successfully created.' }
          format.json { render json: @activity_skill, status: :created, location: @activity_skill }
        else
          format.html { render action: "new" }
          format.json { render json: @activity_skill.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /program_skills/1
    # PUT /program_skills/1.json
    def update
      @activity_skill = ActivitySkill.find(params[:id])

      respond_to do |format|
        if @activity_skill.update_attributes(params[:program_skill])
          format.html { redirect_to @activity_skill, notice: 'Program skill was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @activity_skill.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /program_skills/1
    # DELETE /program_skills/1.json
    def destroy
      @activity_skill = ActivitySkill.find(params[:id])
      @activity_skill.destroy

      respond_to do |format|
        format.html { redirect_to activity_skills_url }
        format.json { head :no_content }
      end
    end
  end

class ProgramSkillsController < ApplicationController
  # GET /program_skills
  # GET /program_skills.json
  def index
    @program_skills = ProgramSkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @program_skills }
    end
  end

  # GET /program_skills/1
  # GET /program_skills/1.json
  def show
    @program_skill = ProgramSkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @program_skill }
    end
  end

  # GET /program_skills/new
  # GET /program_skills/new.json
  def new
    @program_skill = ProgramSkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @program_skill }
    end
  end

  # GET /program_skills/1/edit
  def edit
    @program_skill = ProgramSkill.find(params[:id])
  end

  # POST /program_skills
  # POST /program_skills.json
  def create
    @program_skill = ProgramSkill.new(params[:program_skill])

    respond_to do |format|
      if @program_skill.save
        format.html { redirect_to @program_skill, notice: 'Program skill was successfully created.' }
        format.json { render json: @program_skill, status: :created, location: @program_skill }
      else
        format.html { render action: "new" }
        format.json { render json: @program_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /program_skills/1
  # PUT /program_skills/1.json
  def update
    @program_skill = ProgramSkill.find(params[:id])

    respond_to do |format|
      if @program_skill.update_attributes(params[:program_skill])
        format.html { redirect_to @program_skill, notice: 'Program skill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @program_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_skills/1
  # DELETE /program_skills/1.json
  def destroy
    @program_skill = ProgramSkill.find(params[:id])
    @program_skill.destroy

    respond_to do |format|
      format.html { redirect_to program_skills_url }
      format.json { head :no_content }
    end
  end
end

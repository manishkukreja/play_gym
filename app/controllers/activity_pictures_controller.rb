class ActivityPicturesController < ApplicationController
  # GET /activity_pictures
  # GET /activity_pictures.json
  def index
    @activity_pictures = ActivityPicture.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @activity_pictures }
    end
  end

  # GET /activity_pictures/1
  # GET /activity_pictures/1.json
  def show
    @activity_picture = ActivityPicture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @activity_picture }
    end
  end

  # GET /activity_pictures/new
  # GET /activity_pictures/new.json
  def new
    @activity_picture = ActivityPicture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @activity_picture }
    end
  end

  # GET /activity_pictures/1/edit
  def edit
    @activity_picture = ActivityPicture.find(params[:id])
  end

  # POST /activity_pictures
  # POST /activity_pictures.json
  def create
    @activity_picture = ActivityPicture.new(params[:activity_picture])

    respond_to do |format|
      if @activity_picture.save
        format.html { redirect_to @activity_picture, notice: 'Activity picture was successfully created.' }
        format.json { render json: @activity_picture, status: :created, location: @activity_picture }
      else
        format.html { render action: "new" }
        format.json { render json: @activity_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /activity_pictures/1
  # PUT /activity_pictures/1.json
  def update
    @activity_picture = ActivityPicture.find(params[:id])

    respond_to do |format|
      if @activity_picture.update_attributes(params[:activity_picture])
        format.html { redirect_to @activity_picture, notice: 'Activity picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @activity_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_pictures/1
  # DELETE /activity_pictures/1.json
  def destroy
    @activity_picture = ActivityPicture.find(params[:id])
    @activity_picture.destroy

    respond_to do |format|
      format.html { redirect_to activity_pictures_url }
      format.json { head :no_content }
    end
  end
end

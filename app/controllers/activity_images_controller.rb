class ActivityImagesController < ApplicationController
  # GET /activity_images
  # GET /activity_images.json
  def index
    @activity_images = ActivityImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @activity_images }
    end
  end

  # GET /activity_images/1
  # GET /activity_images/1.json
  def show
    @activity_image = ActivityImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @activity_image }
    end
  end

  # GET /activity_images/new
  # GET /activity_images/new.json
  def new
    @activity_image = ActivityImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @activity_image }
    end
  end

  # GET /activity_images/1/edit
  def edit
    @activity_image = ActivityImage.find(params[:id])
  end

  # POST /activity_images
  # POST /activity_images.json
  def create
    @activity_image = ActivityImage.new(params[:activity_image])

    respond_to do |format|
      if @activity_image.save
        format.html { redirect_to @activity_image, notice: 'Activity image was successfully created.' }
        format.json { render json: @activity_image, status: :created, location: @activity_image }
      else
        format.html { render action: "new" }
        format.json { render json: @activity_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /activity_images/1
  # PUT /activity_images/1.json
  def update
    @activity_image = ActivityImage.find(params[:id])

    respond_to do |format|
      if @activity_image.update_attributes(params[:activity_image])
        format.html { redirect_to @activity_image, notice: 'Activity image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @activity_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_images/1
  # DELETE /activity_images/1.json
  def destroy
    @activity_image = ActivityImage.find(params[:id])
    @activity_image.destroy

    respond_to do |format|
      format.html { redirect_to activity_images_url }
      format.json { head :no_content }
    end
  end
end

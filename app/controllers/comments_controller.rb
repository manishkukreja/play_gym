#require Rails.root.to_s+'/lib/authentication'

class CommentsController < ApplicationController
  #include Playgym::Authentication
  # GET /comments
  # GET /comments.json
  # before_filter :user_logged_in?
  #before_filter :user_admin? , :except=> [:index]

  def index
    #@commentable = find_commentable
    #@comments = @commentable.comments
    @comments = Comment.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @all_comments }
    end
  end
  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  def post_comment
    print "------------params = #{params.to_json}-----------------"
    comment = Comment.new(email: params[:email], content: params[:comment])
    comment.phone = params[:phone] if !params[:phone].blank?
    if params[:activity]
      comment.commentable_id = params[:activity]
      comment.commentable_type = "Activity"
    end
    comment.save
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(:content=> params[:comment][:content],
                           :user_id=> current_user.id,
                           :commentable_id=> params[:comment][:commentable_id],
                           :commentable_type => params[:comment][:commentable_type] )
    
    respond_to do |format|
      if @comment.save
        format.html { redirect_to activity_path(@comment.commentable_id), notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # def create
  #   @commentable = find_commentable
  #   @comment = @commentable.comments.build(:content=> params[:comment][:content],:user_id=> current_user.id)
  #   if @comment.save
  #     flash[:notice] = "Successfully saved comment."
  #     redirect_to :id => nil
  #   else
  #     render :action => 'new'
  #   end
  # end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])
    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @all_comments = Comment.all

    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to all_comments_comments_url }
      format.json { head :no_content }
    end
  end

  def all_comments
    @all_comments = Comment.all
  end

# private
#   def find_commentable
#     params.each do|name,value|
#       if name =~ /(.+)_id$/
#         return $1.classify.constantize.find(value)
#       end
#     end
#     nil  
#   end

end

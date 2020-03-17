class CommentsController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.topic_id = @topic.id

    if @comment.save
      redirect_to topic_path(@topic.id)
    else
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :body, :category)
  end
end

class TopicsController < ApplicationController

  before_action :authenticate_user!

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user_id = current_user.id

    if @topic.save
      redirect_to topic_path(@topic.id)
    else
      render :new
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path
  end

  def show
    @topic = Topic.find(params[:id])
    @comments = Comment.where(topic_id: @topic.id)
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update(topic_params)

    if @topic.save
      redirect_to topic_path(@topic.id)
    else
      render :edit
    end
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :body, category_ids: [])
  end

end

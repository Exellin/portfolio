class TopicsController < ApplicationController
  include ApplicationHelper
  before_action :require_admin
  before_action :set_topic, only: [:edit, :show, :update, :destroy]

  def new
    @topic = Topic.new
  end

  def edit; end

  def show
    @articles = @topic.articles
  end

  def index
    @topics = Topic.all
  end

  def update
    if @topic.update(topic_params)
      flash[:success] = 'Topic was successfully updated'
      redirect_to topic_path(@topic)
    else
      render 'edit'
    end
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      flash[:success] = 'Topic was successfully created'
      redirect_to topic_path(@topic)
    else
      render 'new'
    end
  end

  def destroy
    if @topic.articles.nil?
      @topic.destroy
      flash[:danger] = 'Topic was successfully deleted'
      redirect_to topics_path
    else
      flash[:notice] = 'You still have articles using this topic'
      redirect_to topic_path(@topic)
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:name)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end
end

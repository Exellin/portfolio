class ArticlesController < ApplicationController
  include ApplicationHelper
  before_action :require_admin, except: [:show, :index]
  before_action :set_article, only: [:edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit; end

  def update
    if @article.update(article_params)
      flash[:success] = "Article was successfully updated"
      redirect_to article_path(@article.title)
    else
      render 'edit'
    end
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      flash[:success] = "Article was successfully created"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def show
    title = params[:title].tr('-', ' ')
    @article = Article.find_by_title(title)
  end

  def destroy
    @article.destroy
    flash[:danger] = "Article was successfully deleted"
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :user_id, topic_ids: [])
  end

  def set_article
    @article = Article.find(params[:id])
  end
end

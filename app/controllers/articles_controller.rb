class ArticlesController < ApplicationController
  before_action :require_admin, except: [:index, :show]
  before_action :set_article, only: [:edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:success] = "Article was successfully updated"
      redirect_to articles_path
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
    title = params[:title].gsub('-', ' ')
    @article = Article.find_by_title(title)
  end

  def destroy
    @article.destroy
    flash[:danger] = "Article was successfully deleted"
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def require_admin
    current_user.nil? ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
  end
end

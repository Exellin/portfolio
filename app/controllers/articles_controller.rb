class ArticlesController < ApplicationController
  before_action :require_admin, only: [:new]

  def new
    @article = Article.new
  end

  private

  def require_admin
    current_user.nil? ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
  end
end

class WelcomeController < ApplicationController
  def home
    @articles = Article.all
    @projects = Project.all
  end
end

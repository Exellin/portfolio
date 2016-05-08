class WelcomeController < ApplicationController
  def home
    @articles = Article.all
  end
end

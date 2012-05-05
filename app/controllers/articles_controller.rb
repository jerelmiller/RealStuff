class ArticlesController < ApplicationController
  # GET /news
  # GET /news.xml
  def index
    @articles = Article.find(:all, :limit => 2)
  end

  def show
    @article = Article.find(params[:id])
  end

end

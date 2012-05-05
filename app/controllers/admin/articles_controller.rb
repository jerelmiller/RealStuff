class Admin::ArticlesController < Admin::AdminController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      flash[:success] = "You have successfully created #{@article.title}"
      redirect_to admin_articles_path
    else
      flash[:error] = 'There was an error creating this article'
      render :action => 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update_attributes(params[:article])
      flash[:success] = "You have successfully updated #{@article.title}"
      redirect_to admin_article_path(@article)
    else
      flash[:error] = 'There was a problem updating the article'
      render :action => 'edit'
    end
  end

end

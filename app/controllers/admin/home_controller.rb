class Admin::HomeController < Admin::AdminController

  def index
    @products_count = Product.all.count
    @flavors_count = Flavor.all.count
    @news_count = Article.all.count
    @events_count = Event.all.count
  end
end

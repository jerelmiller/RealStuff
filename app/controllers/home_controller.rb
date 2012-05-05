class HomeController < ApplicationController
  def index
    @feature_flavors = Flavor.find(:all, :conditions => {:feature_flavor => true}, :order => :product_id)
    @articles = Article.find(:all, :limit => 2, :order => 'created_at DESC')
  end

  def products
  end

end

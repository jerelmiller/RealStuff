class HomeController < ApplicationController
  def index
    @feature_flavors = Flavor.find(:all, :conditions => {:feature_flavor => true}, :order => :product_id)
  end

  def products
  end

end

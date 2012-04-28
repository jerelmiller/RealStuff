class ApplicationController < ActionController::Base
  protect_from_forgery
  include UrlHelper

  def not_authenticated
    flash[:error] = 'First login to access this page'
    redirect_to admin_login_url
  end 
end

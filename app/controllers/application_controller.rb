class ApplicationController < ActionController::Base
  protect_from_forgery
  include UrlHelper

  def not_authenticated
    redirect_to admin_login_url, :alert => 'First login to access this page'
  end 
end

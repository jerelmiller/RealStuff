class Admin::SessionsController < ApplicationController
  layout 'admin'
  def new
    if current_user
      redirect_to admin_home_url
    end 
  end

  def create
    user = login(params[:email], params[:password])
    if user
      redirect_back_or_to admin_home_url, :notice => 'Logged in'
    else
      flash[:error] = 'Email or password was invalid'
      render :action => 'new'
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => 'Logged out'
  end

end

class LoginsController < ApplicationController

  def new
  end
  
  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end
  
  helper_method :current_user

  def create
    user = User.find_by_email(params[:email])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to articles_path
    else
      raise "Invalid login."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to articles_url
  end

  def authorize
    if current_user.nil?
      redirect_to login_path
    end
  end
end
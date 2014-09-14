class LoginsController < ApplicationController

  skip_before_filter :authorize, :only => [:new, :create]

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
      redirect_to root_path, :notice => "You are now logged in as #{current_user.email}"
    else
      raise "Invalid login."
    end
  end

  def destroy
    session[:user_id] = nil #could also call 'reset_session' to clear the entire session
    redirect_to root_path, :notice => "You have successfully logged out."
  end
  
end
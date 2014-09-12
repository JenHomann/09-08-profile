class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authorize
  before_filter :session_id

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
  
  helper_method :current_user
  
  def authorize
    if current_user.nil?
      redirect_to logins_path, :alert => "You need to log in to do that."
    end
  end
  
  def session_id
    session[:ip_address] = request.remote_ip
  end

end
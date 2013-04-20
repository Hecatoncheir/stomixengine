class ApplicationController < ActionController::Base
  protect_from_forgery

  
private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user
  
  def auth
    return if User.count == 0
    redirect_to login_url, alert: "Not a Admin" if current_user.nil?
  end
  
end

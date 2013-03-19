class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to admin_url, notice: "Not bad!"
      else
        flash.now.alert = "NOOOOOOO! Email or Pass Fail!"
        render :new
      end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "By!"
  end
  
end

class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    if User.count.zero?
      redirect_to new_user_url
    else
    user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to admin_url, notice: "Not bad!"
      else
        flash.now.alert = "NOOOOOOO! Email or Pass Fail!"
        render :new
      end
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "By!"
  end
  
end

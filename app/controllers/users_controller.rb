class UsersController < ApplicationController
  
  before_filter :auth, only: [:new]
  
  def new
    @user = User.new
  end
  
  def create 
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Ok! You are Admin"
    else
      render :new, notice: "No, no, no..."
    end
  end
  
end

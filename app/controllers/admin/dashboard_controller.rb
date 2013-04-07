class Admin::DashboardController < ApplicationController

  before_filter :auth
  
  rescue_from ActiveRecord::RecordNotFound, with: :user_not_found
  
  def user_not_found
    redirect_to root_url, notice: "Ti znaesh chto delatb"
  end
  
  def index
  end
end

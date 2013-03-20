class Admin::DashboardController < ApplicationController
  
  before_filter :auth
  
  def index
  end
end

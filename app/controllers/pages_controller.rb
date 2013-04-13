class PagesController < ApplicationController
  
  helper_method :items, :feedback_items
  
  def index
    render :home
  end
  
  def services
    
  end
  
private
 
  def items
    @items = Item.where(page: '#{controller.action_name}')
  end

  def feedback_items
    @feedback_items = items.where(page: 'feedback')
  end
  
end

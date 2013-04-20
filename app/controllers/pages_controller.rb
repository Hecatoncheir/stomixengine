class PagesController < ApplicationController
  
  helper_method :items, :items_for_all
  
  def index
    render :home
  end
  
  def services
  end
  
  def tech
  end
  
  def certifications
  end
  
private
 
  def items
    Item.where(page: "#{self.action_name}")
  end
  
  def items_for_all
    Item.where(page: 'all')
  end
  
end

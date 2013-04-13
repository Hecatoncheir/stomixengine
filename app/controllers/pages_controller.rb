class PagesController < ApplicationController
  
  helper_method :items, :items_for_all
  
  def index
    render :home
  end
  
  def services
    
  end
  
private
 
  def items
    @items = Item.where(page: "#{self.action_name}")
  end
  
  def items_for_all
    @item_for_all = Item.where(page: 'all')
  end
  
end

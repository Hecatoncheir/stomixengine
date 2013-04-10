module ApplicationHelper
  
  def page_title(title)
      @page_title = title.to_s
  end
  
  def title
    default_title = "Czech-Fasad"
    if @page_title.nil? || @page_title.empty?
      default_title
    else
      "#{@page_title} |  #{default_title}"
    end
  end
  
  
end

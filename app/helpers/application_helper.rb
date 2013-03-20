module ApplicationHelper
  
  def page_title(title)
      @page_title = title.to_s
  end
  
  def title
    default_title = "Stomix"
    if @page_title.nil?
      default_title
    else
      "#{@page_title} |  #{default_title}"
    end
  end
  
  
end

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
  
  def nav_link (text, path)
    
    active_class = if current_page?(path)
        "active"
      else
         "link"
       end
    
    content_tag(:li) do
      link_to(text, path, class: active_class)
    end
  end
  
  
end

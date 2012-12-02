module ApplicationHelper
  def nav_link title, path, current_page
    is_current = (current_page == title)
    content_tag(:li, class: is_current ? "current" : "") do
      link_to title, path
    end
  end
end

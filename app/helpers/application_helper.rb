# encoding: utf-8
module ApplicationHelper
  def nav_link title, path, current_page
    is_current = (current_page == title)
    content_tag(:li, class: is_current ? "current" : "") do
      link_to title, path
    end
  end

  def photo file_name, options = {}
    classes = "photo " + (options[:class] || "")
    content_tag(:span, class: classes) do
      image_tag "pages/#{file_name}.jpg", title: "All rights reserved ©#{Date.today.year}."
    end
  end
end

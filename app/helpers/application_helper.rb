module ApplicationHelper
  def full_title(page_title)
    base_title = "KeystoneApp"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def show_left_menu?
    (controller_name == 'users' && action_name == 'new') ? false : true
  end
end

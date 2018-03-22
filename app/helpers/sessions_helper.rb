module SessionsHelper
  def flash_message(action)
    if flash[action]
      content_tag :p, flash[action], class: "flash #{action.to_s}"
    end
  end
end

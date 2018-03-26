module ApplicationHelper
  def current_year
    Time.current.year
  end

  def github_url
    content_tag(:a, 'TestGuru', href: 'https://github.com/Serg3/TestGuru/', target: 'blank')
  end

  def set_header_title(resource)
    if resource.new_record?
      content_tag('h1', "Create new #{resource.class}")
    else
      content_tag('h1', "Edit #{resource.class} №#{resource.id}")
    end
  end

  def flash_message(action, message)
    content_tag :p, message, class: "flash #{action}"
  end
end

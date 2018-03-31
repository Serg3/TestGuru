module ApplicationHelper
  def current_year
    Time.current.year
  end

  def github_url
    content_tag(:a, 'TestGuru', href: 'https://github.com/Serg3/TestGuru/', target: 'blank')
  end

  def set_header_title(resource)
    if resource.new_record?
      content_tag('h1', t('common.header.new', resource: resource.class))
    else
      content_tag('h1', t('common.header.edit', resource: resource.class, id: resource.id))
    end
  end

  def flash_message(action, message)
    content_tag :div, message, class: "alert #{action}"
  end
end

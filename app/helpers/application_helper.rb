module ApplicationHelper
  def current_year
    Time.current.year
  end

  def github_url
    content_tag(:a, 'TestGuru', href: 'https://github.com/Serg3/TestGuru/', target: 'blank')
  end
end

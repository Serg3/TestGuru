module ApplicationHelper
  def current_year
    Time.current.year
  end

  def github_url
    "<a href='https://github.com/Serg3/TestGuru/' target='_blank'>TestGuru</a>".html_safe
  end
end

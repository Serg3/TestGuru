module QuestionsHelper
  def question_header(resource)
    title = if resource.new_record?
              "<h1>Create New #{resource.test.title} Question</h1>"
            else
              "<h1>Edit #{resource.test.title} Question</h1>"
            end
    title.html_safe
  end
end

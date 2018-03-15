module QuestionsHelper
  def question_header(test, method)
    title = if method == :new
              "<h1>Create New #{test.title} Question</h1>"
            elsif method == :edit
              "<h1>Edit #{test.title} Question</h1>"
            end
    title.html_safe
  end
end

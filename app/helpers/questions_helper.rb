module QuestionsHelper
  def question_header(question)
    if question.new_record?
      content_tag('h1', "Create New #{question.test.title} Question")
    else
      content_tag('h1', "Edit New #{question.test.title} Question")
    end
  end
end

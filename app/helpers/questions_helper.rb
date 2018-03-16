module QuestionsHelper
  def question_header(resource)
    if resource.new_record?
      content_tag('h1', "Create New #{resource.test.title} Question")
    else
      content_tag('h1', "Edit New #{resource.test.title} Question")
    end
  end
end

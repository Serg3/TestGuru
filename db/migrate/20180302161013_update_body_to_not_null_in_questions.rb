class UpdateBodyToNotNullInQuestions < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:questions, :body, true)
  end
end

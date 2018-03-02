class UpdateBodyToNotNullInAnswers < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:answers, :body, true)
  end
end

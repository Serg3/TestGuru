class UpdateTitleToNotNullInTests < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:tests, :title, true)
  end
end

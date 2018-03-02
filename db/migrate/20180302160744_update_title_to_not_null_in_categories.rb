class UpdateTitleToNotNullInCategories < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:categories, :title, true)
  end
end

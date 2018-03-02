class UpdateNameToNotNullInUsers < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:users, :name, true)
  end
end

class AddLevelWithDefaultToTests < ActiveRecord::Migration[5.1]
  def change
    add_column(:tests, :level, :int, default: 0, null: false)
  end
end

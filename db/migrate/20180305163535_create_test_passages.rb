class CreateTestPassages < ActiveRecord::Migration[5.1]
  def change
    create_table :test_passages do |t|
      t.string :status
      t.references :user, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end

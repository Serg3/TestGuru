class CreatePassedTests < ActiveRecord::Migration[5.1]
  def change
    create_table :passed_tests do |t|
      t.references :user, foreign_key: true
      t.references :test, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end

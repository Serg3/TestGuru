class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :title
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end

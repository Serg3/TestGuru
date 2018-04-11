class CreateBadges < ActiveRecord::Migration[5.1]
  def change
    create_table :badges do |t|
      t.string :title, null: false
      t.text :image
      t.string :rule
      t.string :parameter

      t.timestamps
    end
  end
end

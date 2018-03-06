class AddAuthorToTests < ActiveRecord::Migration[5.1]
  def change
    add_reference :tests, :author, foreign_key: true
  end
end

class Test < ApplicationRecord
  belongs_to :category

  def self.by_category(title)
    joins(:category).where(categories: { title: title }).order(title: :desc).pluck(:title)
  end
end

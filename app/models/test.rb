class Test < ApplicationRecord
  has_many :test_passages
  has_many :users , through: :test_passages
  belongs_to :category

  def self.by_category(title)
    joins(:category).where(categories: { title: title }).order(title: :desc).pluck(:title)
  end

  def self.by_level(level)
    where(level: level)
  end
end

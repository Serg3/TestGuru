class Test < ApplicationRecord
  has_many :test_passages
  has_many :users , through: :test_passages
  belongs_to :category

  scope :by_level, ->(level) { where(level: level) }

  def self.by_category(title)
    joins(:category).where(categories: { title: title }).order(title: :desc).pluck(:title)
  end
end

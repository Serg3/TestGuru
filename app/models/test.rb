class Test < ApplicationRecord
  has_many :test_passages
  has_many :questions
  has_many :users, through: :test_passages
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  scope :by_level, ->(level) { where(level: level) }
  scope :by_category, ->(title) { joins(:category)
                                  .where(categories: { title: title })
                                  .order(title: :desc)
                                  .pluck(:title)
                                }
  scope :easy, -> { where(level: 0..1) }
  scope :normal, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }
end

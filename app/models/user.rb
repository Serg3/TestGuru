class User < ApplicationRecord
  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :author_tests, class_name: 'Test', foreign_key: :author_id

  validates :name, :email, presence: true

  def passed_tests(level)
    tests.by_level(level)
  end
end

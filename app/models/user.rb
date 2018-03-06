class User < ApplicationRecord
  has_many :test_passages
  has_many :tests , through: :test_passages

  def passed_tests(level)
    tests.by_level(level)
  end
end

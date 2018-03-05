class User < ApplicationRecord
  has_many :test_passages
  has_many :tests , through: :test_passages

  def passed_tests(level)
    tests.where(test_passages: { user_id: id }).by_level(level)
  end
end

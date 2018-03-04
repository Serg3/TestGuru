class User < ApplicationRecord
  has_many :passed_tests
  has_many :tests , through: :passed_tests

  def passed_tests(level)
    tests.where(passed_tests: { user_id: id }).by_level(level)
  end
end

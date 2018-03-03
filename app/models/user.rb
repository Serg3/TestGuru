class User < ApplicationRecord
  def passed_tests(level)
    Test.select(:title).where('level = ?', level)
  end
end

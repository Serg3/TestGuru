class User < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :author_tests, class_name: 'Test', foreign_key: :author_id
  has_many :gists

  # VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  VALID_EMAIL = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates :password, presence: true
  validates :email, format: VALID_EMAIL, uniqueness: true

  def passed_tests(level)
    tests.by_level(level)
  end

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end

  def admin?
    self.is_a?(Admin)
  end

  def full_name
    "#{self.last_name} #{self.first_name}"
  end
end

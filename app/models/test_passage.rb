class TestPassage < ApplicationRecord
  belongs_to :user
  belongs_to :test

  validates :status, presence: true
end

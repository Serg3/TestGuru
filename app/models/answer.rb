class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :validate_quantity

  scope :corrects, -> { where(correct: true) }

  private

  def validate_quantity
    errors.add(:Quantity, 'Must be 4 maximum.') if question.answers.size >= 4
  end
end

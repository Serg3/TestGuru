class TestPassage < ApplicationRecord
  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true

  before_save :before_save_set_question
  before_update :before_update_check_timer

  def completed?
    current_question.nil?
  end

  def accept!(answer_ids)
    self.correct_questions += 1 if correct_answer?(answer_ids) unless time_over?
    save!
  end

  def result
    100 * self.correct_questions / test.questions.count
  end

  def passed?
    result >= 85
  end

  def current_question_number
    total_questions_count - remaining_questions.count
  end

  def total_questions_count
    test.questions.count
  end

  def time_left
    (expires_at - Time.current).to_i
  end

  private

  def before_save_set_question
    self.current_question = self.current_question.nil? ? test.questions.first : next_question
  end

  def before_update_check_timer
    self.current_question = nil if time_over?
  end

  def correct_answer?(answer_ids)
    correct_answers.ids.sort == answer_ids.map(&:to_i).sort
  end

  def correct_answers
    current_question.answers.correct
  end

  def next_question
    remaining_questions.first
  end

  def remaining_questions
    test.questions.order(:id).where('id > ?', current_question.id)
  end

  def expires_at
    created_at + test.timer.minutes
  end

  def time_over?
    expires_at < Time.now
  end
end

class QuestionsController < ApplicationController
  # before_action :find_test, only: [:index, :new, :create]
  before_action :find_test, only: [:new, :create]
  before_action :find_question, only: [:show, :edit, :update, :destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def show
    @answers = @question.answers
  end

  def new
    @question = @test.questions.build
  end

  def edit
  end

  def create
    @question = @test.questions.build(question_params)
    if @question.save
      redirect_to @question
    else
      render :new
    end
  end

  def update
    if @question.update_attributes(question_params)
      redirect_to @question
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to @question.test
  end

  private

    def question_params
      params.require(:question).permit(:body)
    end

    def find_test
      @test = Test.find(params[:test_id])
    end

    def find_question
      @question = Question.find(params[:id])
    end

    def rescue_with_question_not_found
      render html: '<h1>Question not found!</h1>'.html_safe
    end
end

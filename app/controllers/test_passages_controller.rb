class TestPassagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_test_passage, only: [:show, :update, :result, :gist]

  def show

  end

  def result

  end

  def update
    if check_timer
      @test_passage.finish!
    else
      @test_passage.accept!(params[:answer_ids])
    end

    if @test_passage.completed?
      RewardWithBadges.new(@test_passage).call
      TestsMailer.completed_test(@test_passage).deliver_now

      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

  def gist
    result = GistQuestionService.new(@test_passage.current_question).call

    unless result.html_url.blank?
      current_user.gists.create(question: @test_passage.current_question, url: result.html_url)

      flash["alert-info"] = t('.success', url: result.html_url)
    else
      flash["alert-danger"] = t('.failure')
    end

    redirect_to @test_passage
  end

  private

  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end

  def check_timer
    @test_passage.test.timer_exists? && @test_passage.time_over?
  end
end

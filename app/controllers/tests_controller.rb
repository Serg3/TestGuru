class TestsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_test, only: :start

  def index
    @tests = Test.all
  end

  def start
    current_user.test_passages.create(test_id: @test.id, status: 'In progress')
    redirect_to current_user.test_passage(@test), notice: {
                                                            text: t('.wish'),
                                                            div_class: "alert-info"
                                                          }
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end
end

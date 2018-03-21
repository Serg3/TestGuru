class TestsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_test, only: [:show, :edit, :update, :destroy, :start]

  def index
    @tests = Test.all
  end

  def show
    @questions = @test.questions
  end

  def new
    @test = Test.new
  end

  def edit
  end

  def create
    @test = Test.new(test_params)
    @test.author = User.first
    if @test.save
      redirect_to @test
    else
      render :new
    end
  end

  def update
    if @test.update_attributes(test_params)
      redirect_to @test
    else
      render :edit
    end
  end

  def destroy
    @test.destroy
    redirect_to tests_path
  end

  def start
    #@user.tests.push(@test)
    TestPassage.create(user_id: current_user.id, test_id: @test.id, status: 'In progress')
    redirect_to current_user.test_passage(@test)
  end

  private

  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end

  def find_test
    @test = Test.find(params[:id])
  end
end

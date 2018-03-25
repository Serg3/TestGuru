class Admin::TestsController < Admin::BaseController
  before_action :find_test, only: [:show, :edit, :update, :destroy, :start]

  def index
    @tests = Test.all
  end

  def show
  end

  def new
    @test = Test.new
  end

  def edit
  end

  def create
    @test = current_user.author_tests.new(test_params)
    if @test.save
      redirect_to admin_tests_path
    else
      render :new
    end
  end

  def update
    if @test.update_attributes(test_params)
      redirect_to admin_tests_path
    else
      render :edit
    end
  end

  def destroy
    @test.destroy
    redirect_to admin_tests_path
  end

  private

  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end

  def find_test
    @test = Test.find(params[:id])
  end
end

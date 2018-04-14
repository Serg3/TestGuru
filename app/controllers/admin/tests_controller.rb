class Admin::TestsController < Admin::BaseController
  before_action :set_tests, only: [:index, :update_inline]
  before_action :find_test, only: [:show, :edit, :update, :destroy, :start, :update_inline]

  def index
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
      flash["alert-success"] = t('.success')
      redirect_to admin_tests_path
    else
      render :new
    end
  end

  def update
    if @test.update(test_params)
      flash["alert-info"] = t('.success')
      redirect_to admin_tests_path
    else
      render :edit
    end
  end

  def update_inline
    if @test.update(test_params)
      redirect_to admin_tests_path
    else
      render :index
    end
  end

  def destroy
    @test.destroy
    flash["alert-warning"] = t('.success')
    redirect_to admin_tests_path
  end

  private

  def set_tests
    @tests = Test.all
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id, :timer)
  end

  def find_test
    @test = Test.find(params[:id])
  end
end

class FeedbacksController < ApplicationController
  def new
    @feedback = current_user.feedbacks.build
  end

  def create
    @feedback = current_user.feedbacks.build(feedback_params)

    if @feedback.save
      FeedbacksMailer.feedback(@feedback).deliver_now
      flash["alert-info"] = t('.success')
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:title, :body)
  end
end

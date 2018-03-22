class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      #redirect_to tests_path
      cookies[:path] = root_path
      redirect_to cookies[:path]
    else
      flash.now[:alert] = 'Are you a Guru? Check your email and password!'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end
end

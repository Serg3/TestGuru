class Users::SessionsController < Devise::SessionsController
  def create
    super
    set_flash_message!(:notice, "Hello, #{current_user.full_name}!")
  end
end

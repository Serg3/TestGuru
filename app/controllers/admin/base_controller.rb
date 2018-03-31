class Admin::BaseController < ApplicationController
  layout 'admin'

  before_action :authenticate_user!
  before_action :admin_required!

  private

  def admin_required!
    unless current_user.admin?
      flash["alert-danger"] = t('common.flash.unauthorized')
      redirect_to root_path
    end
  end
end

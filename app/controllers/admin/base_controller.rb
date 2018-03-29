class Admin::BaseController < ApplicationController
  layout 'admin'

  before_action :authenticate_user!
  before_action :admin_required!

  private

  def admin_required!
    redirect_to root_path, alert: {
                                    text: t('common.flash.unauthorized'),
                                    div_class: "alert-danger"
                                  } unless current_user.admin?
  end
end

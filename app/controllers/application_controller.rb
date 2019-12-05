class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def admin_required
    if !current_user.admin?
      redirect_to "/",alert:"非管理员无法登陆"
    end
  end
end

class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  def require_user_logged_in
    return if logged_in?

    flash[:danger] = 'ログインしてください。'
    redirect_to login_url
  end
end

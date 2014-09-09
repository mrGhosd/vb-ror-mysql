module SessionHelper

  def current_user=(user)
    @current_user = user
  end

  def log_in?
    !current_user.nil?
  end

  def current_user
    remember_token = User.encrypt(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end
end
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  skip_before_filter  :verify_authenticity_token
  # before_action :current_user?
  include SessionHelper

  def new
    ::Callback.new
  end

  def login
    user = User.login(params[:login], params[:password])
    if user.nil? || !user.confirmed
      render_fail
    else
      log_in user
      render json: {success: true}, status: 200
    end
  end

  def confirm_user
    user = User.login(params[:login], params[:password])
    unless user.confirmed
      user.update(confirmed: true)
      log_in user
    end
    redirect_to root_path
  end

  def delete_current_user
    logout
    redirect_to root_path
  end

  def logout
    if params[:logout]
     log_out
      redirect_to root_path
    end
  end

  def check_admin
   if current_user.blank? || !current_user.is_admin?
     redirect_to root_path
   end
  end

  private

  def log_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    self.current_user = user
  end

  def log_out
    current_user.update_attribute(:remember_token,
                                  User.encrypt(User.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end

  def render_fail
    render json:"Пользователя с такими данными не существует", status: 302
  end
end

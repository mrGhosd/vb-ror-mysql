class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  # skip_before_filter  :verify_authenticity_token
  before_action :current_user?

  def new
    ::Callback.new
  end

  def login
    if params[:login] && params[:password]
      @current_user = User.login(params[:login], params[:password])
      session[:current_user] = @current_user.id
      @current_user.session = session[:current_user]
      @current_user.save
      cookies[:current_user] = { value: @current_user.id, expires: 1.week.from_now }
      UserMailer.login_email(@current_user).deliver
      redirect_to root_path
    end
  end

  def current_user?
    if cookies[:current_user] || session[:current_user]
     current_user
    end
  end

  def delete_current_user
    logout
    redirect_to root_path
  end


  def current_user
    @current_user = User.find_by session: session[:current_user]
  end

  def logout
    if params[:logout]
      session.delete(:current_user)
      cookies.delete(:current_user)
      redirect_to root_path
    end
  end

  def user_cabinet
    @user = User.find(@current_user.id)
    render 'shared/user_cabinet'
  end

  def check_admin
   if @current_user.blank? || !@current_user.is_admin?
     redirect_to root_path
   end
  end

end

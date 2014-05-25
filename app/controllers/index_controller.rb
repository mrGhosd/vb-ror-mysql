class IndexController < ApplicationController

  def index
    if session[:user_id]
      current_user
    end

  end

  def private_office

  end

  def login
    if params[:login] && params[:password]
      create_current_user(params[:login], params[:password])
      redirect_to root_path
    end
  end

  def current_user?

  end

  def create_current_user(login, password)
    @current_user = User.find_by login: login, password: password
    session[:user_id] = @current_user.user_id
    @current_user.session = session[:user_id]
    @current_user.save
  end

  def current_user
    @current_user = User.find_by session: session[:user_id]
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
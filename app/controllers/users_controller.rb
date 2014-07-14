class UsersController < ApplicationController
  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

private
  def user_params
    params.require(:user).permit(:surname, :name, :secondname, :contact_phone)
  end


end
module Api
  class UsersController < ApplicationController

    def index
      @user = User.all
      render json: @user, status: 200
    end

    def login
      @user = User.find_by(login: params[:login], password: params[:password])
      render json: @user, status: 200
    end
  end
end
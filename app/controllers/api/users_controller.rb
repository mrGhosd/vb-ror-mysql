module Api
  class UsersController < ApplicationController
    protect_from_forgery except: [:login, :create]

    def create
      user = User.new(mobile_user_params)
       if user.save
         UserMailer.register_email(user).deliver if Rails.env.development?
         render json: {success: true}, status: :ok
       else
         render json: {success: false}, status: :forbidden
       end
    end

    def index
      @user = User.all
      render json: @user, status: 200
    end

    def login
      @user = User.api_request.find_by(login: params[:user][:login], password: params[:user][:password])
      full_info @user
    end

    def show
      user = User.find(params[:id])
      full_info user
    end

    private
    def mobile_user_params
      if params[:user][:operation] == "Loan"
        operation = {loans_attributes: [sum: params[:user][:loans_attributes][:sum],
                                        begin_date: params[:user][:loans_attributes][:begin_date],
                                        end_date: params[:user][:loans_attributes][:end_date],
                                        percent_id:params[:user][:loans_attributes][:percent]]}
      elsif params[:user][:operation] == "Deposit"
        operation = {deposits_attributes: [current_amount: params[:user][:deposits_attributes][:current_amount],
                                           percent_id:params[:user][:deposits_attributes][:percent]]}
      end
      params.require(:user).permit(:surname, :name, :secondname,
                                   :contact_phone, :role_id,
                                   :sex, :date_of_birth, :place_of_birth,
                                    contact_information_attributes: [:email]).merge(operation)
    end

    def full_info(user)
      render json: user.full_json_data
    end
  end
end
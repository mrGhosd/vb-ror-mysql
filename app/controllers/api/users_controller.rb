module Api
  class UsersController < ApplicationController
    protect_from_forgery except: [:login, :create]

    def create
      binding.pry
      @user = User.create(mobile_user_params)
      # @user = User.create(surname: params[:user][:surname],
      #                     name: params[:user][:name],
      #                     secondname: params[:user][:secondname],
      #                     sex: true,
      #                     date_of_birth: params[:user][:date_of_birth].to_date,
      #                     role_id: params[:user][:role].to_i,
      #                     contact_phone: params[:user][:phone])
      # contact = @user.build_contact_information(email: params[:user][:email])
      # contact.save
      # if params[:user][:type] == "Loan"
      #   percent = RolesPercent.includes(:percent).where(role_id: params[:user][:role].to_i, percents: {loan_or_deposit: true}).last.try(:percent_id)
      #   @loan = @user.loans.build(sum: params[:user][:sum], percent_id: percent,
      #                     begin_date: Time.zone.now,
      #                     end_date: Time.zone.now + params[:user][:time].try(:to_i).months)
      #   @loan.save
      # elsif params[:user][:type] == "Deposit"
      #   percent = RolesPercent.includes(:percent).where(role_id: params[:user][:role].to_i, percents: {loan_or_deposit: false}).last.try(:percent_id)
      #   @deposit = @user.deposits.build(deposit_current_sum: params[:user][:sum], percent_id: percent.percent_id)
      #   @deposit.save
      # end
      # if @user && (@loan || @deposit)
      #   render json: {success: true}
      # end
    end

    def index
      @user = User.all
      render json: @user, status: 200
    end

    def login
      @user = User.api_request.find_by(login: params[:user][:login], password: params[:user][:password])
      render json: {  main: @user.to_json(methods: [:avatar_url, :user_role, :user_sex]),
                      loans: @user.loans.to_json(methods: [:date_in_days, :date_in_months, :everymonth_pay, :closest_payment_date, :current_day_in_loan_history, :payed_sum, :repayments]),
                      deposits: @user.deposits.to_json(methods: [:accounts, :days_diff]),
                      passport: @user.passport.to_json,
                      voen_pasport: @user.voen_pasport.to_json(methods: [:user_nationality, :user_education, :user_relationship, :user_specialization, :user_sport_mastery]),
                      contact_information: @user.contact_information.to_json,
                      role: @user.role.to_json
                   }
    end

    def show
      user = User.find(params[:id])
      render json: user.to_json(methods: [:avatar_url])
    end

    private
    def mobile_user_params
      params.require(:user).permit(:surname, :name, :secondname, :contact_phone, :role_id, :sex, :date_of_birth, :place_of_birth,
                                    contact_information_attributes: [:email])
    end
  end
end
module Api
  class UsersController < ApplicationController
    protect_from_forgery except: [:login, :create]

    def create
      @user = User.create(surname: params[:surname],
                          name: params[:name],
                          secondname: params[:secondname],
                          sex: true,
                          date_of_birth: params[:date_of_birth].to_date,
                          role_id: params[:role].to_i,
                          contact_phone: params[:phone])
      contact = @user.build_contact_information(email: params[:email])
      contact.save
      if params[:type] == "Loan"
        percent = RolesPercent.includes(:percent).where(role_id: params[:role].to_i, percents: {loan_or_deposit: true}).last.try(:percent_id)
        @loan = @user.loans.build(loan_sum: params[:sum], percent_id: percent,
                          begin_date: Time.zone.now,
                          end_date: Time.zone.now + params[:time].try(:to_i).months)
        @loan.save
      elsif params[:type] == "Deposit"
        percent = RolesPercent.includes(:percent).where(role_id: params[:role].to_i, percents: {loan_or_deposit: false}).last.try(:percent_id)
        @deposit = @user.deposits.build(deposit_current_sum: params[:sum], percent_id: percent.percent_id)
        @deposit.save
      end
      if @user && (@loan || @deposit)
        render json: {success: true}
      end
    end

    def index
      @user = User.all
      render json: @user, status: 200
    end

    def login
      @user = User.api_request.find_by(login: params[:login], password: params[:password])
      render json: {  main: @user.to_json(methods: [:avatar_url]),
                      loans: @user.loans.to_json(methods: [:date_in_days, :date_in_months, :everymonth_pay, :closest_payment_date, :current_day_in_loan_history, :payed_sum]),
                      deposits: @user.deposits.to_json,
                      passport: @user.passport.to_json,
                      voen_pasport: @user.voen_pasport.to_json,
                      contact_information: @user.contact_information.to_json,
                      role: @user.role.to_json
                   }
    end

    def show
      user = User.find(params[:id])
      render json: user.to_json(methods: [:avatar_url])
    end
  end
end
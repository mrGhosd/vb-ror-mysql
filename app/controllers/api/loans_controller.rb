module Api
  class LoansController < ApplicationController
    def show
      loan = Loan.find(params[:id])
      render json: loan_info(loan)
    end

    def index
      user = User.find(params[:user_id])
      render json: loan_info(user.loans)
    end

    def repayments
      loan = Loan.find(params[:id])
      render json: loan.loan_repayments.to_json
    end

    private

    def loan_info(loan)
      loan.to_json(methods: [:date_in_days,
                             :date_in_months, :everymonth_pay,
                             :closest_payment_date,
                             :current_day_in_loan_history,
                             :payed_sum, :repayments])
    end
  end
end
module Api
  class DepositsController < ApplicationController

    def index
      user = User.find(params[:user_id])
      render json: deposit_info(user.deposits)
    end

    def show
      deposit = Deposit.find(params[:id])
      render json: deposit_info(deposit)
    end

    def accounts
      deposit = Deposit.find(params[:id])
      render json: deposit.contribution_account.to_json
    end

    private
    def deposit_info(deposit)
      deposit.to_json(methods: [:accounts, :days_diff])
    end

  end
end
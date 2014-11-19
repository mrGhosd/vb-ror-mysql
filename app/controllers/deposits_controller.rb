class DepositsController < ApplicationController

  def new
    @user = User.new
    @deposit = @user.deposits.build
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: {notice: "Спасибо за вклад"}
    else
      render json:{ errors: @user.errors }, status: :forbidden
    end
  end

  def deposit_request
    if current_user
      current_user_new_deposit(current_user)
      render json: {response: 'Спасибо за ваш вклад!'}
    else
      new
      render  partial: 'deposit_request',
              locals: { current_amount: params[:amount],
                        percent: Percent.find_by_value(0.42).id
              },
              layout: false
    end

  end

  def deposits_contribution_list
    deposit = Deposit.find(params[:id])
    @payment = ContributionAccount.where(deposit_id: deposit.id)
  end

  private

  def user_params
    params.require(:user).permit(:surname, :name, :secondname,
                                 :contact_phone, deposits_attributes:
            [:id, :user_id, :current_amount, :percent_id])
  end

  def current_user_new_deposit(user)
    Deposit.create(user_id: current_user.id,
                   current_amount: params[:amount],
                   percent_id: params[:percent])
  end

end
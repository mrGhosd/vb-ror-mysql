class DepositsController < ApplicationController

  def new
    @user = User.new
    @deposit = @user.deposits.build
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to root_path
  end

  def deposit_request
    self.new
    render  partial: 'deposit_request',
            locals: { current_amount: params[:amount],
                      percent: Percent.find_by_value(0.42).id
                    },
            layout: false
  end

  private

  def user_params
    params.require(:user).permit(:surname, :name, :secondname, :contact_phone, deposits_attributes: [:id, :user_id, :deposit_current_summ, :percent_id])
  end

end
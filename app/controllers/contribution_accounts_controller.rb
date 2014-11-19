class ContributionAccountsController < ApplicationController

  def index
    deposit = Deposit.find(params[:deposit_id])
    @contrib = ContributionAccount.where(deposit_id: deposit.id)
    render 'index', locals: { contrib: @contrib, deposit: deposit }
  end

  def new
    deposit = Deposit.find(params[:deposit_id])
    @contib = deposit.contribution_accounts.build
  end

  def create
    @contrib = ContributionAccount.new(contribution_accounts_params)
    check_type_of_contrib(@contrib)
    @contrib.save
    redirect_to users_path
  end


  private
  def contribution_accounts_params
    params.require(:contribution).permit(:deposit_id, :operation_summ, :removed_brought)
  end

  def check_type_of_contrib(contrib)
    deposit = Deposit.find(contrib.deposit_id)
    deposit_sum = deposit.current_amount.to_i
    contrib_sum = contrib.operation_summ.to_i
    result = if contrib.removed_brought
      deposit_sum += contrib_sum
    else
      deposit_sum -= contrib_sum
    end
    deposit.current_amount = result
    deposit.save
  end
end
class LoanRepaymentsController < ApplicationController

  def index
    loan = Loan.find(params[:loan_id])
    @payment = LoanRepayment.where(loan_id: loan.id)
  end

  def new
    loan = Loan.find(params[:id])
    @payment = loan.loan_repayments.build
  end

  def create
    @payment = LoanRepayment.new(loan_repayments_params)
    @payment.save
    redirect_to users_path
  end

  private
  def loan_repayments_params
    params.require(:repayment).permit(:loan_id, :granted_summ)
  end
end